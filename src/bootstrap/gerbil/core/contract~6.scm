(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g80166_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80167_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80168_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80169_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80170_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80175_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80176_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80177_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80180_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80181_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80182_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80183_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80186_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46594%_)
        (let* ((_%__stx7497974980%_ _%stx46594%_)
               (_%g4660346806%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7497974980%_))))
          (let ((_%__kont7498274983%_
                 (lambda (_%L47715%_
                          _%L47717%_
                          _%L47718%_
                          _%L47719%_
                          _%L47720%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47720%_ (cons _%L47719%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47720%_
                                                       (cons _%L47718%_
                                                             (cons _%L47717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4776347766%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4776447769%_)
                  (cons _%g4776347766%_ _%g4776447769%_))
                '()
                _%L47715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7498674987%_
                 (lambda (_%L47573%_
                          _%L47575%_
                          _%L47576%_
                          _%L47577%_
                          _%L47578%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47578%_ (cons _%L47577%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47578%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f ':-)
                                       (cons _%L47575%_ '())))
                           (foldr (lambda (_%g4760947612%_ _%g4761047615%_)
                                    (cons _%g4760947612%_ _%g4761047615%_))
                                  '()
                                  _%L47573%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7499074991%_
                 (lambda (_%L47345%_ _%L47347%_ _%L47348%_ _%L47349%_)
                   (let ((_%meta47386%_
                          (gx#syntax-local-value _%L47347%_ false)))
                     (if (let () (declare (not safe)) (not _%meta47386%_))
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unknown type"
                            _%stx46594%_
                            _%L47347%_))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta47386%_))
                             (let ()
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%L47349%_
                                                 (cons _%L47348%_
                                                       (cons _%L47347%_ '())))
                                           (foldr (lambda (_%g4739247395%_
                                                           _%g4739347398%_)
                                                    (cons _%g4739247395%_
                                                          _%g4739347398%_))
                                                  '()
                                                  _%L47345%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    _%meta47386%_))
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'with-class)
                                         (cons (cons _%L47349%_
                                                     (cons _%L47348%_
                                                           (cons _%L47347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (foldr (lambda (_%g4740247405%_
                                                               _%g4740347408%_)
                                                        (cons _%g4740247405%_
                                                              _%g4740347408%_))
                                                      '()
                                                      _%L47345%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                        _%meta47386%_))
                                     (let ()
                                       (let* ((_%g4741347421%_
                                               (lambda (_%g4741447417%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g4741447417%_)))
                                              (_%g4741247450%_
                                               (lambda (_%g4741447425%_)
                                                 ((lambda (_%L47428%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'using)
                                                            (cons (cons _%L47349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L47348%_ (cons _%L47428%_ '())))
                          (foldr (lambda (_%g4744147444%_ _%g4744247447%_)
                                   (cons _%g4744147444%_ _%g4744247447%_))
                                 '()
                                 _%L47345%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g4741447425%_))))
                                         (_%g4741247450%_
                                          (let ((__obj79995 _%meta47386%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj79995
                                                   'gerbil/core/contract~TypeReference#type-reference::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj79995
                                                   '1
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                 __obj79995
                                                 'identifier))))))
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad type; must be an interface, struct, or class with complete type information"
                                        _%stx46594%_
                                        _%L47347%_
                                        _%meta47386%_)))))))))
                (_%__kont7499474995%_
                 (lambda (_%L47223%_ _%L47225%_ _%L47226%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47226%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47225%_ '())))
                               (foldr (lambda (_%g4724947252%_ _%g4725047255%_)
                                        (cons _%g4724947252%_ _%g4725047255%_))
                                      '()
                                      _%L47223%_)))))
                (_%__kont7499874999%_
                 (lambda (_%L47095%_ _%L47097%_ _%L47098%_ _%L47099%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L47099%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47098%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47099%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':-)
                                                             (cons _%L47097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4712747130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4712847133%_)
                  (cons _%g4712747130%_ _%g4712847133%_))
                '()
                _%L47095%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7500275003%_
                 (lambda (_%L46957%_ _%L46959%_ _%L46960%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons _%L46960%_
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46959%_
                                                 (foldr (lambda (_%g4697946982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4698046985%_)
                  (cons _%g4697946982%_ _%g4698046985%_))
                '()
                _%L46957%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7500675007%_
                 (lambda (_%L46863%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4688146884%_ _%g4688246887%_)
                                        (cons _%g4688146884%_ _%g4688246887%_))
                                      '()
                                      _%L46863%_))))))
            (let* ((_%__match7531475315%_
                    (lambda (_%e4678846813%_
                             _%hd4678746817%_
                             _%tl4678646820%_
                             _%e4679146823%_
                             _%hd4679046827%_
                             _%tl4678946830%_
                             _%__splice7500875009%_
                             _%target4679246833%_
                             _%tl4679446836%_)
                      (letrec ((_%loop4679546839%_
                                (lambda (_%hd4679346843%_ _%body4679946846%_)
                                  (if (gx#stx-pair? _%hd4679346843%_)
                                      (let ((_%e4679646849%_
                                             (gx#syntax-e _%hd4679346843%_)))
                                        (let ((_%lp-tl4679846856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4679646849%_)))
                                              (_%lp-hd4679746853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4679646849%_))))
                                          (_%loop4679546839%_
                                           _%lp-tl4679846856%_
                                           (cons _%lp-hd4679746853%_
                                                 _%body4679946846%_))))
                                      (let ((_%body4680046859%_
                                             (reverse _%body4679946846%_)))
                                        (_%__kont7500675007%_
                                         _%body4680046859%_))))))
                        (_%loop4679546839%_ _%target4679246833%_ '()))))
                   (_%__match7529275293%_
                    (lambda (_%e4676946897%_
                             _%hd4676846901%_
                             _%tl4676746904%_
                             _%e4677246907%_
                             _%hd4677146911%_
                             _%tl4677046914%_
                             _%e4677546917%_
                             _%hd4677446921%_
                             _%tl4677346924%_
                             _%__splice7500475005%_
                             _%target4677646927%_
                             _%tl4677846930%_)
                      (letrec ((_%loop4677946933%_
                                (lambda (_%hd4677746937%_ _%body4678346940%_)
                                  (if (gx#stx-pair? _%hd4677746937%_)
                                      (let ((_%e4678046943%_
                                             (gx#syntax-e _%hd4677746937%_)))
                                        (let ((_%lp-tl4678246950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4678046943%_)))
                                              (_%lp-hd4678146947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4678046943%_))))
                                          (_%loop4677946933%_
                                           _%lp-tl4678246950%_
                                           (cons _%lp-hd4678146947%_
                                                 _%body4678346940%_))))
                                      (let ((_%body4678446953%_
                                             (reverse _%body4678346940%_)))
                                        (_%__kont7500275003%_
                                         _%body4678446953%_
                                         _%tl4677346924%_
                                         _%hd4677446921%_))))))
                        (_%loop4677946933%_ _%target4677646927%_ '()))))
                   (_%__match7526675267%_
                    (lambda (_%e4673646995%_
                             _%hd4673546999%_
                             _%tl4673447002%_
                             _%e4673947005%_
                             _%hd4673847009%_
                             _%tl4673747012%_
                             _%e4674247015%_
                             _%hd4674147019%_
                             _%tl4674047022%_
                             _%e4674547025%_
                             _%hd4674447029%_
                             _%tl4674347032%_
                             _%e4674847035%_
                             _%hd4674747039%_
                             _%tl4674647042%_
                             _%e4675147045%_
                             _%hd4675047049%_
                             _%tl4674947052%_
                             _%e4675447055%_
                             _%hd4675347059%_
                             _%tl4675247062%_
                             _%__splice7500075001%_
                             _%target4675547065%_
                             _%tl4675747068%_)
                      (letrec ((_%loop4675847071%_
                                (lambda (_%hd4675647075%_ _%body4676247078%_)
                                  (if (gx#stx-pair? _%hd4675647075%_)
                                      (let ((_%e4675947081%_
                                             (gx#syntax-e _%hd4675647075%_)))
                                        (let ((_%lp-tl4676147088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4675947081%_)))
                                              (_%lp-hd4676047085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4675947081%_))))
                                          (_%loop4675847071%_
                                           _%lp-tl4676147088%_
                                           (cons _%lp-hd4676047085%_
                                                 _%body4676247078%_))))
                                      (let ((_%body4676347091%_
                                             (reverse _%body4676247078%_)))
                                        (let ((_%L47095%_ _%body4676347091%_)
                                              (_%L47097%_ _%hd4675347059%_)
                                              (_%L47098%_ _%hd4674747039%_)
                                              (_%L47099%_ _%hd4674147019%_))
                                          (if (and (gx#identifier? _%L47099%_)
                                                   (gx#identifier? _%L47097%_))
                                              (_%__kont7499874999%_
                                               _%L47095%_
                                               _%L47097%_
                                               _%L47098%_
                                               _%L47099%_)
                                              (_%__match7529275293%_
                                               _%e4673646995%_
                                               _%hd4673546999%_
                                               _%tl4673447002%_
                                               _%e4673947005%_
                                               _%hd4673847009%_
                                               _%tl4673747012%_
                                               _%e4674247015%_
                                               _%hd4674147019%_
                                               _%tl4674047022%_
                                               _%__splice7500075001%_
                                               _%target4675547065%_
                                               _%tl4675747068%_))))))))
                        (_%loop4675847071%_ _%target4675547065%_ '()))))
                   (_%__match7520675207%_
                    (lambda (_%e4670847143%_
                             _%hd4670747147%_
                             _%tl4670647150%_
                             _%e4671147153%_
                             _%hd4671047157%_
                             _%tl4670947160%_
                             _%e4671447163%_
                             _%hd4671347167%_
                             _%tl4671247170%_
                             _%e4671747173%_
                             _%hd4671647177%_
                             _%tl4671547180%_
                             _%e4672047183%_
                             _%hd4671947187%_
                             _%tl4671847190%_
                             _%__splice7499674997%_
                             _%target4672147193%_
                             _%tl4672347196%_)
                      (letrec ((_%loop4672447199%_
                                (lambda (_%hd4672247203%_ _%body4672847206%_)
                                  (if (gx#stx-pair? _%hd4672247203%_)
                                      (let ((_%e4672547209%_
                                             (gx#syntax-e _%hd4672247203%_)))
                                        (let ((_%lp-tl4672747216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4672547209%_)))
                                              (_%lp-hd4672647213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4672547209%_))))
                                          (_%loop4672447199%_
                                           _%lp-tl4672747216%_
                                           (cons _%lp-hd4672647213%_
                                                 _%body4672847206%_))))
                                      (let ((_%body4672947219%_
                                             (reverse _%body4672847206%_)))
                                        (let ((_%L47223%_ _%body4672947219%_)
                                              (_%L47225%_ _%hd4671947187%_)
                                              (_%L47226%_ _%hd4671347167%_))
                                          (if (gx#identifier? _%L47226%_)
                                              (_%__kont7499474995%_
                                               _%L47223%_
                                               _%L47225%_
                                               _%L47226%_)
                                              (_%__match7529275293%_
                                               _%e4670847143%_
                                               _%hd4670747147%_
                                               _%tl4670647150%_
                                               _%e4671147153%_
                                               _%hd4671047157%_
                                               _%tl4670947160%_
                                               _%e4671447163%_
                                               _%hd4671347167%_
                                               _%tl4671247170%_
                                               _%__splice7499674997%_
                                               _%target4672147193%_
                                               _%tl4672347196%_))))))))
                        (_%loop4672447199%_ _%target4672147193%_ '()))))
                   (_%__match7518675187%_
                    (lambda (_%e4670847143%_
                             _%hd4670747147%_
                             _%tl4670647150%_
                             _%e4671147153%_
                             _%hd4671047157%_
                             _%tl4670947160%_
                             _%e4671447163%_
                             _%hd4671347167%_
                             _%tl4671247170%_
                             _%e4671747173%_
                             _%hd4671647177%_
                             _%tl4671547180%_)
                      (if (gx#identifier? _%hd4671647177%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80166_|
                               _%hd4671647177%_)
                              (if (gx#stx-pair? _%tl4671547180%_)
                                  (let ((_%e4672047183%_
                                         (gx#syntax-e _%tl4671547180%_)))
                                    (let ((_%tl4671847190%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4672047183%_)))
                                          (_%hd4671947187%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4672047183%_))))
                                      (if (gx#stx-null? _%tl4671847190%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4670947160%_)
                                              (let ((_%__splice7499674997%_
                                                     (gx#syntax-split-splice
                                                      _%tl4670947160%_
                                                      '0)))
                                                (let ((_%tl4672347196%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7499674997%_
                                                          '1)))
                                                      (_%target4672147193%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7499674997%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4672347196%_)
                                                      (_%__match7520675207%_
                                                       _%e4670847143%_
                                                       _%hd4670747147%_
                                                       _%tl4670647150%_
                                                       _%e4671147153%_
                                                       _%hd4671047157%_
                                                       _%tl4670947160%_
                                                       _%e4671447163%_
                                                       _%hd4671347167%_
                                                       _%tl4671247170%_
                                                       _%e4671747173%_
                                                       _%hd4671647177%_
                                                       _%tl4671547180%_
                                                       _%e4672047183%_
                                                       _%hd4671947187%_
                                                       _%tl4671847190%_
                                                       _%__splice7499674997%_
                                                       _%target4672147193%_
                                                       _%tl4672347196%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4660346806%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))
                                          (if (gx#stx-pair? _%tl4671847190%_)
                                              (let ((_%e4675147045%_
                                                     (gx#syntax-e
                                                      _%tl4671847190%_)))
                                                (let ((_%tl4674947052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4675147045%_)))
                                                      (_%hd4675047049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4675147045%_))))
                                                  (if (gx#identifier?
                                                       _%hd4675047049%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80167_|
                                                           _%hd4675047049%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4674947052%_)
                                                              (let ((_%e4675447055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4674947052%_)))
                        (let ((_%tl4675247062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4675447055%_)))
                              (_%hd4675347059%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4675447055%_))))
                          (if (gx#stx-null? _%tl4675247062%_)
                              (if (gx#stx-pair/null? _%tl4670947160%_)
                                  (let ((_%__splice7500075001%_
                                         (gx#syntax-split-splice
                                          _%tl4670947160%_
                                          '0)))
                                    (let ((_%tl4675747068%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500075001%_
                                              '1)))
                                          (_%target4675547065%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500075001%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675747068%_)
                                          (_%__match7526675267%_
                                           _%e4670847143%_
                                           _%hd4670747147%_
                                           _%tl4670647150%_
                                           _%e4671147153%_
                                           _%hd4671047157%_
                                           _%tl4670947160%_
                                           _%e4671447163%_
                                           _%hd4671347167%_
                                           _%tl4671247170%_
                                           _%e4671747173%_
                                           _%hd4671647177%_
                                           _%tl4671547180%_
                                           _%e4672047183%_
                                           _%hd4671947187%_
                                           _%tl4671847190%_
                                           _%e4675147045%_
                                           _%hd4675047049%_
                                           _%tl4674947052%_
                                           _%e4675447055%_
                                           _%hd4675347059%_
                                           _%tl4675247062%_
                                           _%__splice7500075001%_
                                           _%target4675547065%_
                                           _%tl4675747068%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))
                              (if (gx#stx-pair/null? _%tl4670947160%_)
                                  (let ((_%__splice7500475005%_
                                         (gx#syntax-split-splice
                                          _%tl4670947160%_
                                          '0)))
                                    (let ((_%tl4677846930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '1)))
                                          (_%target4677646927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677846930%_)
                                          (_%__match7529275293%_
                                           _%e4670847143%_
                                           _%hd4670747147%_
                                           _%tl4670647150%_
                                           _%e4671147153%_
                                           _%hd4671047157%_
                                           _%tl4670947160%_
                                           _%e4671447163%_
                                           _%hd4671347167%_
                                           _%tl4671247170%_
                                           _%__splice7500475005%_
                                           _%target4677646927%_
                                           _%tl4677846930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_))))))
                      (if (gx#stx-pair/null? _%tl4670947160%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4670947160%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4670847143%_
                                   _%hd4670747147%_
                                   _%tl4670647150%_
                                   _%e4671147153%_
                                   _%hd4671047157%_
                                   _%tl4670947160%_
                                   _%e4671447163%_
                                   _%hd4671347167%_
                                   _%tl4671247170%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))
                  (if (gx#stx-pair/null? _%tl4670947160%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4670947160%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4670847143%_
                               _%hd4670747147%_
                               _%tl4670647150%_
                               _%e4671147153%_
                               _%hd4671047157%_
                               _%tl4670947160%_
                               _%e4671447163%_
                               _%hd4671347167%_
                               _%tl4671247170%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_))))
              (if (gx#stx-pair/null? _%tl4670947160%_)
                  (let ((_%__splice7500475005%_
                         (gx#syntax-split-splice _%tl4670947160%_ '0)))
                    (let ((_%tl4677846930%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '1)))
                          (_%target4677646927%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '0))))
                      (if (gx#stx-null? _%tl4677846930%_)
                          (_%__match7529275293%_
                           _%e4670847143%_
                           _%hd4670747147%_
                           _%tl4670647150%_
                           _%e4671147153%_
                           _%hd4671047157%_
                           _%tl4670947160%_
                           _%e4671447163%_
                           _%hd4671347167%_
                           _%tl4671247170%_
                           _%__splice7500475005%_
                           _%target4677646927%_
                           _%tl4677846930%_)
                          (let () (declare (not safe)) (_%g4660346806%_)))))
                  (let () (declare (not safe)) (_%g4660346806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4670947160%_)
                                                  (let ((_%__splice7500475005%_
                                                         (gx#syntax-split-splice
                                                          _%tl4670947160%_
                                                          '0)))
                                                    (let ((_%tl4677846930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7500475005%_
                                                              '1)))
                                                          (_%target4677646927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7500475005%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4677846930%_)
                                                          (_%__match7529275293%_
                                                           _%e4670847143%_
                                                           _%hd4670747147%_
                                                           _%tl4670647150%_
                                                           _%e4671147153%_
                                                           _%hd4671047157%_
                                                           _%tl4670947160%_
                                                           _%e4671447163%_
                                                           _%hd4671347167%_
                                                           _%tl4671247170%_
                                                           _%__splice7500475005%_
                                                           _%target4677646927%_
                                                           _%tl4677846930%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4660346806%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))))
                                  (if (gx#stx-pair/null? _%tl4670947160%_)
                                      (let ((_%__splice7500475005%_
                                             (gx#syntax-split-splice
                                              _%tl4670947160%_
                                              '0)))
                                        (let ((_%tl4677846930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '1)))
                                              (_%target4677646927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4677846930%_)
                                              (_%__match7529275293%_
                                               _%e4670847143%_
                                               _%hd4670747147%_
                                               _%tl4670647150%_
                                               _%e4671147153%_
                                               _%hd4671047157%_
                                               _%tl4670947160%_
                                               _%e4671447163%_
                                               _%hd4671347167%_
                                               _%tl4671247170%_
                                               _%__splice7500475005%_
                                               _%target4677646927%_
                                               _%tl4677846930%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_))))
                              (if (gx#stx-pair/null? _%tl4670947160%_)
                                  (let ((_%__splice7500475005%_
                                         (gx#syntax-split-splice
                                          _%tl4670947160%_
                                          '0)))
                                    (let ((_%tl4677846930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '1)))
                                          (_%target4677646927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677846930%_)
                                          (_%__match7529275293%_
                                           _%e4670847143%_
                                           _%hd4670747147%_
                                           _%tl4670647150%_
                                           _%e4671147153%_
                                           _%hd4671047157%_
                                           _%tl4670947160%_
                                           _%e4671447163%_
                                           _%hd4671347167%_
                                           _%tl4671247170%_
                                           _%__splice7500475005%_
                                           _%target4677646927%_
                                           _%tl4677846930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_))))
                          (if (gx#stx-pair/null? _%tl4670947160%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4670947160%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4670847143%_
                                       _%hd4670747147%_
                                       _%tl4670647150%_
                                       _%e4671147153%_
                                       _%hd4671047157%_
                                       _%tl4670947160%_
                                       _%e4671447163%_
                                       _%hd4671347167%_
                                       _%tl4671247170%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_))))))
                   (_%__match7516275163%_
                    (lambda (_%e4668147265%_
                             _%hd4668047269%_
                             _%tl4667947272%_
                             _%e4668447275%_
                             _%hd4668347279%_
                             _%tl4668247282%_
                             _%e4668747285%_
                             _%hd4668647289%_
                             _%tl4668547292%_
                             _%e4669047295%_
                             _%hd4668947299%_
                             _%tl4668847302%_
                             _%e4669347305%_
                             _%hd4669247309%_
                             _%tl4669147312%_
                             _%__splice7499274993%_
                             _%target4669447315%_
                             _%tl4669647318%_)
                      (letrec ((_%loop4669747321%_
                                (lambda (_%hd4669547325%_ _%body4670147328%_)
                                  (if (gx#stx-pair? _%hd4669547325%_)
                                      (let ((_%e4669847331%_
                                             (gx#syntax-e _%hd4669547325%_)))
                                        (let ((_%lp-tl4670047338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4669847331%_)))
                                              (_%lp-hd4669947335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4669847331%_))))
                                          (_%loop4669747321%_
                                           _%lp-tl4670047338%_
                                           (cons _%lp-hd4669947335%_
                                                 _%body4670147328%_))))
                                      (let ((_%body4670247341%_
                                             (reverse _%body4670147328%_)))
                                        (let ((_%L47345%_ _%body4670247341%_)
                                              (_%L47347%_ _%hd4669247309%_)
                                              (_%L47348%_ _%hd4668947299%_)
                                              (_%L47349%_ _%hd4668647289%_))
                                          (if (and (gx#identifier? _%L47349%_)
                                                   (gx#identifier? _%L47347%_)
                                                   (gx#identifier? _%L47348%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47348%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47348%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47348%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47348%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7499074991%_
                                               _%L47345%_
                                               _%L47347%_
                                               _%L47348%_
                                               _%L47349%_)
                                              (_%__match7518675187%_
                                               _%e4668147265%_
                                               _%hd4668047269%_
                                               _%tl4667947272%_
                                               _%e4668447275%_
                                               _%hd4668347279%_
                                               _%tl4668247282%_
                                               _%e4668747285%_
                                               _%hd4668647289%_
                                               _%tl4668547292%_
                                               _%e4669047295%_
                                               _%hd4668947299%_
                                               _%tl4668847302%_))))))))
                        (_%loop4669747321%_ _%target4669447315%_ '()))))
                   (_%__match7512275123%_
                    (lambda (_%e4664447463%_
                             _%hd4664347467%_
                             _%tl4664247470%_
                             _%e4664747473%_
                             _%hd4664647477%_
                             _%tl4664547480%_
                             _%e4665047483%_
                             _%hd4664947487%_
                             _%tl4664847490%_
                             _%e4665347493%_
                             _%hd4665247497%_
                             _%tl4665147500%_
                             _%e4665647503%_
                             _%hd4665547507%_
                             _%tl4665447510%_
                             _%e4665947513%_
                             _%hd4665847517%_
                             _%tl4665747520%_
                             _%e4666247523%_
                             _%hd4666147527%_
                             _%tl4666047530%_
                             _%e4666547533%_
                             _%hd4666447537%_
                             _%tl4666347540%_
                             _%__splice7498874989%_
                             _%target4666647543%_
                             _%tl4666847546%_)
                      (letrec ((_%loop4666947549%_
                                (lambda (_%hd4666747553%_ _%body4667347556%_)
                                  (if (gx#stx-pair? _%hd4666747553%_)
                                      (let ((_%e4667047559%_
                                             (gx#syntax-e _%hd4666747553%_)))
                                        (let ((_%lp-tl4667247566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4667047559%_)))
                                              (_%lp-hd4667147563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4667047559%_))))
                                          (_%loop4666947549%_
                                           _%lp-tl4667247566%_
                                           (cons _%lp-hd4667147563%_
                                                 _%body4667347556%_))))
                                      (let ((_%body4667447569%_
                                             (reverse _%body4667347556%_)))
                                        (let ((_%L47573%_ _%body4667447569%_)
                                              (_%L47575%_ _%hd4666447537%_)
                                              (_%L47576%_ _%hd4665847517%_)
                                              (_%L47577%_ _%hd4665247497%_)
                                              (_%L47578%_ _%hd4664947487%_))
                                          (if (and (gx#identifier? _%L47578%_)
                                                   (gx#identifier? _%L47575%_))
                                              (_%__kont7498674987%_
                                               _%L47573%_
                                               _%L47575%_
                                               _%L47576%_
                                               _%L47577%_
                                               _%L47578%_)
                                              (_%__match7518675187%_
                                               _%e4664447463%_
                                               _%hd4664347467%_
                                               _%tl4664247470%_
                                               _%e4664747473%_
                                               _%hd4664647477%_
                                               _%tl4664547480%_
                                               _%e4665047483%_
                                               _%hd4664947487%_
                                               _%tl4664847490%_
                                               _%e4665347493%_
                                               _%hd4665247497%_
                                               _%tl4665147500%_))))))))
                        (_%loop4666947549%_ _%target4666647543%_ '()))))
                   (_%__match7508675087%_
                    (lambda (_%e4664447463%_
                             _%hd4664347467%_
                             _%tl4664247470%_
                             _%e4664747473%_
                             _%hd4664647477%_
                             _%tl4664547480%_
                             _%e4665047483%_
                             _%hd4664947487%_
                             _%tl4664847490%_
                             _%e4665347493%_
                             _%hd4665247497%_
                             _%tl4665147500%_
                             _%e4665647503%_
                             _%hd4665547507%_
                             _%tl4665447510%_)
                      (if (gx#identifier? _%hd4665547507%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80168_|
                               _%hd4665547507%_)
                              (if (gx#stx-pair? _%tl4665447510%_)
                                  (let ((_%e4665947513%_
                                         (gx#syntax-e _%tl4665447510%_)))
                                    (let ((_%tl4665747520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4665947513%_)))
                                          (_%hd4665847517%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4665947513%_))))
                                      (if (gx#stx-pair? _%tl4665747520%_)
                                          (let ((_%e4666247523%_
                                                 (gx#syntax-e
                                                  _%tl4665747520%_)))
                                            (let ((_%tl4666047530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4666247523%_)))
                                                  (_%hd4666147527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4666247523%_))))
                                              (if (gx#identifier?
                                                   _%hd4666147527%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80169_|
                                                       _%hd4666147527%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4666047530%_)
                                                          (let ((_%e4666547533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4666047530%_)))
                    (let ((_%tl4666347540%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4666547533%_)))
                          (_%hd4666447537%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4666547533%_))))
                      (if (gx#stx-null? _%tl4666347540%_)
                          (if (gx#stx-pair/null? _%tl4664547480%_)
                              (let ((_%__splice7498874989%_
                                     (gx#syntax-split-splice
                                      _%tl4664547480%_
                                      '0)))
                                (let ((_%tl4666847546%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7498874989%_
                                          '1)))
                                      (_%target4666647543%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7498874989%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4666847546%_)
                                      (_%__match7512275123%_
                                       _%e4664447463%_
                                       _%hd4664347467%_
                                       _%tl4664247470%_
                                       _%e4664747473%_
                                       _%hd4664647477%_
                                       _%tl4664547480%_
                                       _%e4665047483%_
                                       _%hd4664947487%_
                                       _%tl4664847490%_
                                       _%e4665347493%_
                                       _%hd4665247497%_
                                       _%tl4665147500%_
                                       _%e4665647503%_
                                       _%hd4665547507%_
                                       _%tl4665447510%_
                                       _%e4665947513%_
                                       _%hd4665847517%_
                                       _%tl4665747520%_
                                       _%e4666247523%_
                                       _%hd4666147527%_
                                       _%tl4666047530%_
                                       _%e4666547533%_
                                       _%hd4666447537%_
                                       _%tl4666347540%_
                                       _%__splice7498874989%_
                                       _%target4666647543%_
                                       _%tl4666847546%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_)))
                          (if (gx#stx-pair/null? _%tl4664547480%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4664547480%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4664447463%_
                                       _%hd4664347467%_
                                       _%tl4664247470%_
                                       _%e4664747473%_
                                       _%hd4664647477%_
                                       _%tl4664547480%_
                                       _%e4665047483%_
                                       _%hd4664947487%_
                                       _%tl4664847490%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_))))))
                  (if (gx#identifier? _%hd4665247497%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/contract~Using[1]#_g80166_|
                           _%hd4665247497%_)
                          (if (gx#identifier? _%hd4665847517%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80167_|
                                   _%hd4665847517%_)
                                  (if (gx#stx-null? _%tl4666047530%_)
                                      (if (gx#stx-pair/null? _%tl4664547480%_)
                                          (let ((_%__splice7500075001%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664547480%_
                                                  '0)))
                                            (let ((_%tl4675747068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500075001%_
                                                      '1)))
                                                  (_%target4675547065%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500075001%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4675747068%_)
                                                  (_%__match7526675267%_
                                                   _%e4664447463%_
                                                   _%hd4664347467%_
                                                   _%tl4664247470%_
                                                   _%e4664747473%_
                                                   _%hd4664647477%_
                                                   _%tl4664547480%_
                                                   _%e4665047483%_
                                                   _%hd4664947487%_
                                                   _%tl4664847490%_
                                                   _%e4665347493%_
                                                   _%hd4665247497%_
                                                   _%tl4665147500%_
                                                   _%e4665647503%_
                                                   _%hd4665547507%_
                                                   _%tl4665447510%_
                                                   _%e4665947513%_
                                                   _%hd4665847517%_
                                                   _%tl4665747520%_
                                                   _%e4666247523%_
                                                   _%hd4666147527%_
                                                   _%tl4666047530%_
                                                   _%__splice7500075001%_
                                                   _%target4675547065%_
                                                   _%tl4675747068%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))
                                      (if (gx#stx-pair/null? _%tl4664547480%_)
                                          (let ((_%__splice7500475005%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664547480%_
                                                  '0)))
                                            (let ((_%tl4677846930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '1)))
                                                  (_%target4677646927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677846930%_)
                                                  (_%__match7529275293%_
                                                   _%e4664447463%_
                                                   _%hd4664347467%_
                                                   _%tl4664247470%_
                                                   _%e4664747473%_
                                                   _%hd4664647477%_
                                                   _%tl4664547480%_
                                                   _%e4665047483%_
                                                   _%hd4664947487%_
                                                   _%tl4664847490%_
                                                   _%__splice7500475005%_
                                                   _%target4677646927%_
                                                   _%tl4677846930%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_))))
                                  (if (gx#stx-pair/null? _%tl4664547480%_)
                                      (let ((_%__splice7500475005%_
                                             (gx#syntax-split-splice
                                              _%tl4664547480%_
                                              '0)))
                                        (let ((_%tl4677846930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '1)))
                                              (_%target4677646927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4677846930%_)
                                              (_%__match7529275293%_
                                               _%e4664447463%_
                                               _%hd4664347467%_
                                               _%tl4664247470%_
                                               _%e4664747473%_
                                               _%hd4664647477%_
                                               _%tl4664547480%_
                                               _%e4665047483%_
                                               _%hd4664947487%_
                                               _%tl4664847490%_
                                               _%__splice7500475005%_
                                               _%target4677646927%_
                                               _%tl4677846930%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_))))
                              (if (gx#stx-pair/null? _%tl4664547480%_)
                                  (let ((_%__splice7500475005%_
                                         (gx#syntax-split-splice
                                          _%tl4664547480%_
                                          '0)))
                                    (let ((_%tl4677846930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '1)))
                                          (_%target4677646927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677846930%_)
                                          (_%__match7529275293%_
                                           _%e4664447463%_
                                           _%hd4664347467%_
                                           _%tl4664247470%_
                                           _%e4664747473%_
                                           _%hd4664647477%_
                                           _%tl4664547480%_
                                           _%e4665047483%_
                                           _%hd4664947487%_
                                           _%tl4664847490%_
                                           _%__splice7500475005%_
                                           _%target4677646927%_
                                           _%tl4677846930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_))))
                          (if (gx#stx-pair/null? _%tl4664547480%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4664547480%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4664447463%_
                                       _%hd4664347467%_
                                       _%tl4664247470%_
                                       _%e4664747473%_
                                       _%hd4664647477%_
                                       _%tl4664547480%_
                                       _%e4665047483%_
                                       _%hd4664947487%_
                                       _%tl4664847490%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_))))
                      (if (gx#stx-pair/null? _%tl4664547480%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4664547480%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4664447463%_
                                   _%hd4664347467%_
                                   _%tl4664247470%_
                                   _%e4664747473%_
                                   _%hd4664647477%_
                                   _%tl4664547480%_
                                   _%e4665047483%_
                                   _%hd4664947487%_
                                   _%tl4664847490%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_)))))
              (if (gx#identifier? _%hd4665247497%_)
                  (if (gx#free-identifier=?
                       |gerbil/core/contract~Using[1]#_g80166_|
                       _%hd4665247497%_)
                      (if (gx#identifier? _%hd4665847517%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80167_|
                               _%hd4665847517%_)
                              (if (gx#stx-null? _%tl4666047530%_)
                                  (if (gx#stx-pair/null? _%tl4664547480%_)
                                      (let ((_%__splice7500075001%_
                                             (gx#syntax-split-splice
                                              _%tl4664547480%_
                                              '0)))
                                        (let ((_%tl4675747068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500075001%_
                                                  '1)))
                                              (_%target4675547065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500075001%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4675747068%_)
                                              (_%__match7526675267%_
                                               _%e4664447463%_
                                               _%hd4664347467%_
                                               _%tl4664247470%_
                                               _%e4664747473%_
                                               _%hd4664647477%_
                                               _%tl4664547480%_
                                               _%e4665047483%_
                                               _%hd4664947487%_
                                               _%tl4664847490%_
                                               _%e4665347493%_
                                               _%hd4665247497%_
                                               _%tl4665147500%_
                                               _%e4665647503%_
                                               _%hd4665547507%_
                                               _%tl4665447510%_
                                               _%e4665947513%_
                                               _%hd4665847517%_
                                               _%tl4665747520%_
                                               _%e4666247523%_
                                               _%hd4666147527%_
                                               _%tl4666047530%_
                                               _%__splice7500075001%_
                                               _%target4675547065%_
                                               _%tl4675747068%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))
                                  (if (gx#stx-pair/null? _%tl4664547480%_)
                                      (let ((_%__splice7500475005%_
                                             (gx#syntax-split-splice
                                              _%tl4664547480%_
                                              '0)))
                                        (let ((_%tl4677846930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '1)))
                                              (_%target4677646927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4677846930%_)
                                              (_%__match7529275293%_
                                               _%e4664447463%_
                                               _%hd4664347467%_
                                               _%tl4664247470%_
                                               _%e4664747473%_
                                               _%hd4664647477%_
                                               _%tl4664547480%_
                                               _%e4665047483%_
                                               _%hd4664947487%_
                                               _%tl4664847490%_
                                               _%__splice7500475005%_
                                               _%target4677646927%_
                                               _%tl4677846930%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_))))
                              (if (gx#stx-pair/null? _%tl4664547480%_)
                                  (let ((_%__splice7500475005%_
                                         (gx#syntax-split-splice
                                          _%tl4664547480%_
                                          '0)))
                                    (let ((_%tl4677846930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '1)))
                                          (_%target4677646927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677846930%_)
                                          (_%__match7529275293%_
                                           _%e4664447463%_
                                           _%hd4664347467%_
                                           _%tl4664247470%_
                                           _%e4664747473%_
                                           _%hd4664647477%_
                                           _%tl4664547480%_
                                           _%e4665047483%_
                                           _%hd4664947487%_
                                           _%tl4664847490%_
                                           _%__splice7500475005%_
                                           _%target4677646927%_
                                           _%tl4677846930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_))))
                          (if (gx#stx-pair/null? _%tl4664547480%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4664547480%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4664447463%_
                                       _%hd4664347467%_
                                       _%tl4664247470%_
                                       _%e4664747473%_
                                       _%hd4664647477%_
                                       _%tl4664547480%_
                                       _%e4665047483%_
                                       _%hd4664947487%_
                                       _%tl4664847490%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_))))
                      (if (gx#stx-pair/null? _%tl4664547480%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4664547480%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4664447463%_
                                   _%hd4664347467%_
                                   _%tl4664247470%_
                                   _%e4664747473%_
                                   _%hd4664647477%_
                                   _%tl4664547480%_
                                   _%e4665047483%_
                                   _%hd4664947487%_
                                   _%tl4664847490%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))
                  (if (gx#stx-pair/null? _%tl4664547480%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4664547480%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4664447463%_
                               _%hd4664347467%_
                               _%tl4664247470%_
                               _%e4664747473%_
                               _%hd4664647477%_
                               _%tl4664547480%_
                               _%e4665047483%_
                               _%hd4664947487%_
                               _%tl4664847490%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4665247497%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80166_|
                                                           _%hd4665247497%_)
                                                          (if (gx#identifier?
                                                               _%hd4665847517%_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core/contract~Using[1]#_g80167_|
                           _%hd4665847517%_)
                          (if (gx#stx-null? _%tl4666047530%_)
                              (if (gx#stx-pair/null? _%tl4664547480%_)
                                  (let ((_%__splice7500075001%_
                                         (gx#syntax-split-splice
                                          _%tl4664547480%_
                                          '0)))
                                    (let ((_%tl4675747068%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500075001%_
                                              '1)))
                                          (_%target4675547065%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500075001%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675747068%_)
                                          (_%__match7526675267%_
                                           _%e4664447463%_
                                           _%hd4664347467%_
                                           _%tl4664247470%_
                                           _%e4664747473%_
                                           _%hd4664647477%_
                                           _%tl4664547480%_
                                           _%e4665047483%_
                                           _%hd4664947487%_
                                           _%tl4664847490%_
                                           _%e4665347493%_
                                           _%hd4665247497%_
                                           _%tl4665147500%_
                                           _%e4665647503%_
                                           _%hd4665547507%_
                                           _%tl4665447510%_
                                           _%e4665947513%_
                                           _%hd4665847517%_
                                           _%tl4665747520%_
                                           _%e4666247523%_
                                           _%hd4666147527%_
                                           _%tl4666047530%_
                                           _%__splice7500075001%_
                                           _%target4675547065%_
                                           _%tl4675747068%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))
                              (if (gx#stx-pair/null? _%tl4664547480%_)
                                  (let ((_%__splice7500475005%_
                                         (gx#syntax-split-splice
                                          _%tl4664547480%_
                                          '0)))
                                    (let ((_%tl4677846930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '1)))
                                          (_%target4677646927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677846930%_)
                                          (_%__match7529275293%_
                                           _%e4664447463%_
                                           _%hd4664347467%_
                                           _%tl4664247470%_
                                           _%e4664747473%_
                                           _%hd4664647477%_
                                           _%tl4664547480%_
                                           _%e4665047483%_
                                           _%hd4664947487%_
                                           _%tl4664847490%_
                                           _%__splice7500475005%_
                                           _%target4677646927%_
                                           _%tl4677846930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_))))
                          (if (gx#stx-pair/null? _%tl4664547480%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4664547480%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4664447463%_
                                       _%hd4664347467%_
                                       _%tl4664247470%_
                                       _%e4664747473%_
                                       _%hd4664647477%_
                                       _%tl4664547480%_
                                       _%e4665047483%_
                                       _%hd4664947487%_
                                       _%tl4664847490%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_))))
                      (if (gx#stx-pair/null? _%tl4664547480%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4664547480%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4664447463%_
                                   _%hd4664347467%_
                                   _%tl4664247470%_
                                   _%e4664747473%_
                                   _%hd4664647477%_
                                   _%tl4664547480%_
                                   _%e4665047483%_
                                   _%hd4664947487%_
                                   _%tl4664847490%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))
                  (if (gx#stx-pair/null? _%tl4664547480%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4664547480%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4664447463%_
                               _%hd4664347467%_
                               _%tl4664247470%_
                               _%e4664747473%_
                               _%hd4664647477%_
                               _%tl4664547480%_
                               _%e4665047483%_
                               _%hd4664947487%_
                               _%tl4664847490%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_))))
              (if (gx#stx-pair/null? _%tl4664547480%_)
                  (let ((_%__splice7500475005%_
                         (gx#syntax-split-splice _%tl4664547480%_ '0)))
                    (let ((_%tl4677846930%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '1)))
                          (_%target4677646927%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '0))))
                      (if (gx#stx-null? _%tl4677846930%_)
                          (_%__match7529275293%_
                           _%e4664447463%_
                           _%hd4664347467%_
                           _%tl4664247470%_
                           _%e4664747473%_
                           _%hd4664647477%_
                           _%tl4664547480%_
                           _%e4665047483%_
                           _%hd4664947487%_
                           _%tl4664847490%_
                           _%__splice7500475005%_
                           _%target4677646927%_
                           _%tl4677846930%_)
                          (let () (declare (not safe)) (_%g4660346806%_)))))
                  (let () (declare (not safe)) (_%g4660346806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4664547480%_)
                                              (let ((_%__splice7500475005%_
                                                     (gx#syntax-split-splice
                                                      _%tl4664547480%_
                                                      '0)))
                                                (let ((_%tl4677846930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '1)))
                                                      (_%target4677646927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4677846930%_)
                                                      (_%__match7529275293%_
                                                       _%e4664447463%_
                                                       _%hd4664347467%_
                                                       _%tl4664247470%_
                                                       _%e4664747473%_
                                                       _%hd4664647477%_
                                                       _%tl4664547480%_
                                                       _%e4665047483%_
                                                       _%hd4664947487%_
                                                       _%tl4664847490%_
                                                       _%__splice7500475005%_
                                                       _%target4677646927%_
                                                       _%tl4677846930%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4660346806%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_))))))
                                  (if (gx#stx-null? _%tl4665447510%_)
                                      (if (gx#stx-pair/null? _%tl4664547480%_)
                                          (let ((_%__splice7499274993%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664547480%_
                                                  '0)))
                                            (let ((_%tl4669647318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7499274993%_
                                                      '1)))
                                                  (_%target4669447315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7499274993%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4669647318%_)
                                                  (_%__match7516275163%_
                                                   _%e4664447463%_
                                                   _%hd4664347467%_
                                                   _%tl4664247470%_
                                                   _%e4664747473%_
                                                   _%hd4664647477%_
                                                   _%tl4664547480%_
                                                   _%e4665047483%_
                                                   _%hd4664947487%_
                                                   _%tl4664847490%_
                                                   _%e4665347493%_
                                                   _%hd4665247497%_
                                                   _%tl4665147500%_
                                                   _%e4665647503%_
                                                   _%hd4665547507%_
                                                   _%tl4665447510%_
                                                   _%__splice7499274993%_
                                                   _%target4669447315%_
                                                   _%tl4669647318%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))
                                      (if (gx#stx-pair/null? _%tl4664547480%_)
                                          (let ((_%__splice7500475005%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664547480%_
                                                  '0)))
                                            (let ((_%tl4677846930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '1)))
                                                  (_%target4677646927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677846930%_)
                                                  (_%__match7529275293%_
                                                   _%e4664447463%_
                                                   _%hd4664347467%_
                                                   _%tl4664247470%_
                                                   _%e4664747473%_
                                                   _%hd4664647477%_
                                                   _%tl4664547480%_
                                                   _%e4665047483%_
                                                   _%hd4664947487%_
                                                   _%tl4664847490%_
                                                   _%__splice7500475005%_
                                                   _%target4677646927%_
                                                   _%tl4677846930%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                              (if (gx#stx-null? _%tl4665447510%_)
                                  (if (gx#stx-pair/null? _%tl4664547480%_)
                                      (let ((_%__splice7499274993%_
                                             (gx#syntax-split-splice
                                              _%tl4664547480%_
                                              '0)))
                                        (let ((_%tl4669647318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7499274993%_
                                                  '1)))
                                              (_%target4669447315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7499274993%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4669647318%_)
                                              (_%__match7516275163%_
                                               _%e4664447463%_
                                               _%hd4664347467%_
                                               _%tl4664247470%_
                                               _%e4664747473%_
                                               _%hd4664647477%_
                                               _%tl4664547480%_
                                               _%e4665047483%_
                                               _%hd4664947487%_
                                               _%tl4664847490%_
                                               _%e4665347493%_
                                               _%hd4665247497%_
                                               _%tl4665147500%_
                                               _%e4665647503%_
                                               _%hd4665547507%_
                                               _%tl4665447510%_
                                               _%__splice7499274993%_
                                               _%target4669447315%_
                                               _%tl4669647318%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))
                                  (if (gx#identifier? _%hd4665247497%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80166_|
                                           _%hd4665247497%_)
                                          (if (gx#stx-pair? _%tl4665447510%_)
                                              (let ((_%e4675147045%_
                                                     (gx#syntax-e
                                                      _%tl4665447510%_)))
                                                (let ((_%tl4674947052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4675147045%_)))
                                                      (_%hd4675047049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4675147045%_))))
                                                  (if (gx#identifier?
                                                       _%hd4675047049%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80167_|
                                                           _%hd4675047049%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4674947052%_)
                                                              (let ((_%e4675447055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4674947052%_)))
                        (let ((_%tl4675247062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4675447055%_)))
                              (_%hd4675347059%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4675447055%_))))
                          (if (gx#stx-null? _%tl4675247062%_)
                              (if (gx#stx-pair/null? _%tl4664547480%_)
                                  (let ((_%__splice7500075001%_
                                         (gx#syntax-split-splice
                                          _%tl4664547480%_
                                          '0)))
                                    (let ((_%tl4675747068%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500075001%_
                                              '1)))
                                          (_%target4675547065%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500075001%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675747068%_)
                                          (_%__match7526675267%_
                                           _%e4664447463%_
                                           _%hd4664347467%_
                                           _%tl4664247470%_
                                           _%e4664747473%_
                                           _%hd4664647477%_
                                           _%tl4664547480%_
                                           _%e4665047483%_
                                           _%hd4664947487%_
                                           _%tl4664847490%_
                                           _%e4665347493%_
                                           _%hd4665247497%_
                                           _%tl4665147500%_
                                           _%e4665647503%_
                                           _%hd4665547507%_
                                           _%tl4665447510%_
                                           _%e4675147045%_
                                           _%hd4675047049%_
                                           _%tl4674947052%_
                                           _%e4675447055%_
                                           _%hd4675347059%_
                                           _%tl4675247062%_
                                           _%__splice7500075001%_
                                           _%target4675547065%_
                                           _%tl4675747068%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))
                              (if (gx#stx-pair/null? _%tl4664547480%_)
                                  (let ((_%__splice7500475005%_
                                         (gx#syntax-split-splice
                                          _%tl4664547480%_
                                          '0)))
                                    (let ((_%tl4677846930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '1)))
                                          (_%target4677646927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677846930%_)
                                          (_%__match7529275293%_
                                           _%e4664447463%_
                                           _%hd4664347467%_
                                           _%tl4664247470%_
                                           _%e4664747473%_
                                           _%hd4664647477%_
                                           _%tl4664547480%_
                                           _%e4665047483%_
                                           _%hd4664947487%_
                                           _%tl4664847490%_
                                           _%__splice7500475005%_
                                           _%target4677646927%_
                                           _%tl4677846930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_))))))
                      (if (gx#stx-pair/null? _%tl4664547480%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4664547480%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4664447463%_
                                   _%hd4664347467%_
                                   _%tl4664247470%_
                                   _%e4664747473%_
                                   _%hd4664647477%_
                                   _%tl4664547480%_
                                   _%e4665047483%_
                                   _%hd4664947487%_
                                   _%tl4664847490%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))
                  (if (gx#stx-pair/null? _%tl4664547480%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4664547480%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4664447463%_
                               _%hd4664347467%_
                               _%tl4664247470%_
                               _%e4664747473%_
                               _%hd4664647477%_
                               _%tl4664547480%_
                               _%e4665047483%_
                               _%hd4664947487%_
                               _%tl4664847490%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_))))
              (if (gx#stx-pair/null? _%tl4664547480%_)
                  (let ((_%__splice7500475005%_
                         (gx#syntax-split-splice _%tl4664547480%_ '0)))
                    (let ((_%tl4677846930%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '1)))
                          (_%target4677646927%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '0))))
                      (if (gx#stx-null? _%tl4677846930%_)
                          (_%__match7529275293%_
                           _%e4664447463%_
                           _%hd4664347467%_
                           _%tl4664247470%_
                           _%e4664747473%_
                           _%hd4664647477%_
                           _%tl4664547480%_
                           _%e4665047483%_
                           _%hd4664947487%_
                           _%tl4664847490%_
                           _%__splice7500475005%_
                           _%target4677646927%_
                           _%tl4677846930%_)
                          (let () (declare (not safe)) (_%g4660346806%_)))))
                  (let () (declare (not safe)) (_%g4660346806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4664547480%_)
                                                  (let ((_%__splice7500475005%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664547480%_
                                                          '0)))
                                                    (let ((_%tl4677846930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7500475005%_
                                                              '1)))
                                                          (_%target4677646927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7500475005%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4677846930%_)
                                                          (_%__match7529275293%_
                                                           _%e4664447463%_
                                                           _%hd4664347467%_
                                                           _%tl4664247470%_
                                                           _%e4664747473%_
                                                           _%hd4664647477%_
                                                           _%tl4664547480%_
                                                           _%e4665047483%_
                                                           _%hd4664947487%_
                                                           _%tl4664847490%_
                                                           _%__splice7500475005%_
                                                           _%target4677646927%_
                                                           _%tl4677846930%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4660346806%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4664547480%_)
                                              (let ((_%__splice7500475005%_
                                                     (gx#syntax-split-splice
                                                      _%tl4664547480%_
                                                      '0)))
                                                (let ((_%tl4677846930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '1)))
                                                      (_%target4677646927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4677846930%_)
                                                      (_%__match7529275293%_
                                                       _%e4664447463%_
                                                       _%hd4664347467%_
                                                       _%tl4664247470%_
                                                       _%e4664747473%_
                                                       _%hd4664647477%_
                                                       _%tl4664547480%_
                                                       _%e4665047483%_
                                                       _%hd4664947487%_
                                                       _%tl4664847490%_
                                                       _%__splice7500475005%_
                                                       _%target4677646927%_
                                                       _%tl4677846930%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4660346806%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_))))
                                      (if (gx#stx-pair/null? _%tl4664547480%_)
                                          (let ((_%__splice7500475005%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664547480%_
                                                  '0)))
                                            (let ((_%tl4677846930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '1)))
                                                  (_%target4677646927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677846930%_)
                                                  (_%__match7529275293%_
                                                   _%e4664447463%_
                                                   _%hd4664347467%_
                                                   _%tl4664247470%_
                                                   _%e4664747473%_
                                                   _%hd4664647477%_
                                                   _%tl4664547480%_
                                                   _%e4665047483%_
                                                   _%hd4664947487%_
                                                   _%tl4664847490%_
                                                   _%__splice7500475005%_
                                                   _%target4677646927%_
                                                   _%tl4677846930%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_))))))
                          (if (gx#stx-null? _%tl4665447510%_)
                              (if (gx#stx-pair/null? _%tl4664547480%_)
                                  (let ((_%__splice7499274993%_
                                         (gx#syntax-split-splice
                                          _%tl4664547480%_
                                          '0)))
                                    (let ((_%tl4669647318%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7499274993%_
                                              '1)))
                                          (_%target4669447315%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7499274993%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4669647318%_)
                                          (_%__match7516275163%_
                                           _%e4664447463%_
                                           _%hd4664347467%_
                                           _%tl4664247470%_
                                           _%e4664747473%_
                                           _%hd4664647477%_
                                           _%tl4664547480%_
                                           _%e4665047483%_
                                           _%hd4664947487%_
                                           _%tl4664847490%_
                                           _%e4665347493%_
                                           _%hd4665247497%_
                                           _%tl4665147500%_
                                           _%e4665647503%_
                                           _%hd4665547507%_
                                           _%tl4665447510%_
                                           _%__splice7499274993%_
                                           _%target4669447315%_
                                           _%tl4669647318%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))
                              (if (gx#identifier? _%hd4665247497%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80166_|
                                       _%hd4665247497%_)
                                      (if (gx#stx-pair? _%tl4665447510%_)
                                          (let ((_%e4675147045%_
                                                 (gx#syntax-e
                                                  _%tl4665447510%_)))
                                            (let ((_%tl4674947052%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4675147045%_)))
                                                  (_%hd4675047049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4675147045%_))))
                                              (if (gx#identifier?
                                                   _%hd4675047049%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80167_|
                                                       _%hd4675047049%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4674947052%_)
                                                          (let ((_%e4675447055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4674947052%_)))
                    (let ((_%tl4675247062%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4675447055%_)))
                          (_%hd4675347059%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4675447055%_))))
                      (if (gx#stx-null? _%tl4675247062%_)
                          (if (gx#stx-pair/null? _%tl4664547480%_)
                              (let ((_%__splice7500075001%_
                                     (gx#syntax-split-splice
                                      _%tl4664547480%_
                                      '0)))
                                (let ((_%tl4675747068%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500075001%_
                                          '1)))
                                      (_%target4675547065%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500075001%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675747068%_)
                                      (_%__match7526675267%_
                                       _%e4664447463%_
                                       _%hd4664347467%_
                                       _%tl4664247470%_
                                       _%e4664747473%_
                                       _%hd4664647477%_
                                       _%tl4664547480%_
                                       _%e4665047483%_
                                       _%hd4664947487%_
                                       _%tl4664847490%_
                                       _%e4665347493%_
                                       _%hd4665247497%_
                                       _%tl4665147500%_
                                       _%e4665647503%_
                                       _%hd4665547507%_
                                       _%tl4665447510%_
                                       _%e4675147045%_
                                       _%hd4675047049%_
                                       _%tl4674947052%_
                                       _%e4675447055%_
                                       _%hd4675347059%_
                                       _%tl4675247062%_
                                       _%__splice7500075001%_
                                       _%target4675547065%_
                                       _%tl4675747068%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_)))
                          (if (gx#stx-pair/null? _%tl4664547480%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4664547480%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4664447463%_
                                       _%hd4664347467%_
                                       _%tl4664247470%_
                                       _%e4664747473%_
                                       _%hd4664647477%_
                                       _%tl4664547480%_
                                       _%e4665047483%_
                                       _%hd4664947487%_
                                       _%tl4664847490%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_))))))
                  (if (gx#stx-pair/null? _%tl4664547480%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4664547480%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4664447463%_
                               _%hd4664347467%_
                               _%tl4664247470%_
                               _%e4664747473%_
                               _%hd4664647477%_
                               _%tl4664547480%_
                               _%e4665047483%_
                               _%hd4664947487%_
                               _%tl4664847490%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_))))
              (if (gx#stx-pair/null? _%tl4664547480%_)
                  (let ((_%__splice7500475005%_
                         (gx#syntax-split-splice _%tl4664547480%_ '0)))
                    (let ((_%tl4677846930%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '1)))
                          (_%target4677646927%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '0))))
                      (if (gx#stx-null? _%tl4677846930%_)
                          (_%__match7529275293%_
                           _%e4664447463%_
                           _%hd4664347467%_
                           _%tl4664247470%_
                           _%e4664747473%_
                           _%hd4664647477%_
                           _%tl4664547480%_
                           _%e4665047483%_
                           _%hd4664947487%_
                           _%tl4664847490%_
                           _%__splice7500475005%_
                           _%target4677646927%_
                           _%tl4677846930%_)
                          (let () (declare (not safe)) (_%g4660346806%_)))))
                  (let () (declare (not safe)) (_%g4660346806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664547480%_)
                                                      (let ((_%__splice7500475005%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664547480%_
                                                              '0)))
                                                        (let ((_%tl4677846930%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '1)))
                      (_%target4677646927%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '0))))
                  (if (gx#stx-null? _%tl4677846930%_)
                      (_%__match7529275293%_
                       _%e4664447463%_
                       _%hd4664347467%_
                       _%tl4664247470%_
                       _%e4664747473%_
                       _%hd4664647477%_
                       _%tl4664547480%_
                       _%e4665047483%_
                       _%hd4664947487%_
                       _%tl4664847490%_
                       _%__splice7500475005%_
                       _%target4677646927%_
                       _%tl4677846930%_)
                      (let () (declare (not safe)) (_%g4660346806%_)))))
              (let () (declare (not safe)) (_%g4660346806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4664547480%_)
                                              (let ((_%__splice7500475005%_
                                                     (gx#syntax-split-splice
                                                      _%tl4664547480%_
                                                      '0)))
                                                (let ((_%tl4677846930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '1)))
                                                      (_%target4677646927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4677846930%_)
                                                      (_%__match7529275293%_
                                                       _%e4664447463%_
                                                       _%hd4664347467%_
                                                       _%tl4664247470%_
                                                       _%e4664747473%_
                                                       _%hd4664647477%_
                                                       _%tl4664547480%_
                                                       _%e4665047483%_
                                                       _%hd4664947487%_
                                                       _%tl4664847490%_
                                                       _%__splice7500475005%_
                                                       _%target4677646927%_
                                                       _%tl4677846930%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4660346806%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_))))
                                      (if (gx#stx-pair/null? _%tl4664547480%_)
                                          (let ((_%__splice7500475005%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664547480%_
                                                  '0)))
                                            (let ((_%tl4677846930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '1)))
                                                  (_%target4677646927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677846930%_)
                                                  (_%__match7529275293%_
                                                   _%e4664447463%_
                                                   _%hd4664347467%_
                                                   _%tl4664247470%_
                                                   _%e4664747473%_
                                                   _%hd4664647477%_
                                                   _%tl4664547480%_
                                                   _%e4665047483%_
                                                   _%hd4664947487%_
                                                   _%tl4664847490%_
                                                   _%__splice7500475005%_
                                                   _%target4677646927%_
                                                   _%tl4677846930%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_))))
                                  (if (gx#stx-pair/null? _%tl4664547480%_)
                                      (let ((_%__splice7500475005%_
                                             (gx#syntax-split-splice
                                              _%tl4664547480%_
                                              '0)))
                                        (let ((_%tl4677846930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '1)))
                                              (_%target4677646927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4677846930%_)
                                              (_%__match7529275293%_
                                               _%e4664447463%_
                                               _%hd4664347467%_
                                               _%tl4664247470%_
                                               _%e4664747473%_
                                               _%hd4664647477%_
                                               _%tl4664547480%_
                                               _%e4665047483%_
                                               _%hd4664947487%_
                                               _%tl4664847490%_
                                               _%__splice7500475005%_
                                               _%target4677646927%_
                                               _%tl4677846930%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_))))))))
                   (_%__match7505675057%_
                    (lambda (_%e4661247625%_
                             _%hd4661147629%_
                             _%tl4661047632%_
                             _%e4661547635%_
                             _%hd4661447639%_
                             _%tl4661347642%_
                             _%e4661847645%_
                             _%hd4661747649%_
                             _%tl4661647652%_
                             _%e4662147655%_
                             _%hd4662047659%_
                             _%tl4661947662%_
                             _%e4662447665%_
                             _%hd4662347669%_
                             _%tl4662247672%_
                             _%e4662747675%_
                             _%hd4662647679%_
                             _%tl4662547682%_
                             _%__splice7498474985%_
                             _%target4662847685%_
                             _%tl4663047688%_)
                      (letrec ((_%loop4663147691%_
                                (lambda (_%hd4662947695%_ _%body4663547698%_)
                                  (if (gx#stx-pair? _%hd4662947695%_)
                                      (let ((_%e4663247701%_
                                             (gx#syntax-e _%hd4662947695%_)))
                                        (let ((_%lp-tl4663447708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4663247701%_)))
                                              (_%lp-hd4663347705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4663247701%_))))
                                          (_%loop4663147691%_
                                           _%lp-tl4663447708%_
                                           (cons _%lp-hd4663347705%_
                                                 _%body4663547698%_))))
                                      (let ((_%body4663647711%_
                                             (reverse _%body4663547698%_)))
                                        (let ((_%L47715%_ _%body4663647711%_)
                                              (_%L47717%_ _%hd4662647679%_)
                                              (_%L47718%_ _%hd4662347669%_)
                                              (_%L47719%_ _%hd4662047659%_)
                                              (_%L47720%_ _%hd4661747649%_))
                                          (if (and (gx#identifier? _%L47720%_)
                                                   (gx#identifier? _%L47718%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47718%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7498274983%_
                                               _%L47715%_
                                               _%L47717%_
                                               _%L47718%_
                                               _%L47719%_
                                               _%L47720%_)
                                              (_%__match7508675087%_
                                               _%e4661247625%_
                                               _%hd4661147629%_
                                               _%tl4661047632%_
                                               _%e4661547635%_
                                               _%hd4661447639%_
                                               _%tl4661347642%_
                                               _%e4661847645%_
                                               _%hd4661747649%_
                                               _%tl4661647652%_
                                               _%e4662147655%_
                                               _%hd4662047659%_
                                               _%tl4661947662%_
                                               _%e4662447665%_
                                               _%hd4662347669%_
                                               _%tl4662247672%_))))))))
                        (_%loop4663147691%_ _%target4662847685%_ '())))))
              (if (gx#stx-pair? _%__stx7497974980%_)
                  (let ((_%e4661247625%_ (gx#syntax-e _%__stx7497974980%_)))
                    (let ((_%tl4661047632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661247625%_)))
                          (_%hd4661147629%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661247625%_))))
                      (if (gx#stx-pair? _%tl4661047632%_)
                          (let ((_%e4661547635%_
                                 (gx#syntax-e _%tl4661047632%_)))
                            (let ((_%tl4661347642%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661547635%_)))
                                  (_%hd4661447639%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661547635%_))))
                              (if (gx#stx-pair? _%hd4661447639%_)
                                  (let ((_%e4661847645%_
                                         (gx#syntax-e _%hd4661447639%_)))
                                    (let ((_%tl4661647652%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4661847645%_)))
                                          (_%hd4661747649%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4661847645%_))))
                                      (if (gx#stx-pair? _%tl4661647652%_)
                                          (let ((_%e4662147655%_
                                                 (gx#syntax-e
                                                  _%tl4661647652%_)))
                                            (let ((_%tl4661947662%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4662147655%_)))
                                                  (_%hd4662047659%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4662147655%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4661947662%_)
                                                  (let ((_%e4662447665%_
                                                         (gx#syntax-e
                                                          _%tl4661947662%_)))
                                                    (let ((_%tl4662247672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4662447665%_)))
                                                          (_%hd4662347669%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4662447665%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4662247672%_)
                                                          (let ((_%e4662747675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4662247672%_)))
                    (let ((_%tl4662547682%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4662747675%_)))
                          (_%hd4662647679%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4662747675%_))))
                      (if (gx#stx-null? _%tl4662547682%_)
                          (if (gx#stx-pair/null? _%tl4661347642%_)
                              (let ((_%__splice7498474985%_
                                     (gx#syntax-split-splice
                                      _%tl4661347642%_
                                      '0)))
                                (let ((_%tl4663047688%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7498474985%_
                                          '1)))
                                      (_%target4662847685%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7498474985%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4663047688%_)
                                      (_%__match7505675057%_
                                       _%e4661247625%_
                                       _%hd4661147629%_
                                       _%tl4661047632%_
                                       _%e4661547635%_
                                       _%hd4661447639%_
                                       _%tl4661347642%_
                                       _%e4661847645%_
                                       _%hd4661747649%_
                                       _%tl4661647652%_
                                       _%e4662147655%_
                                       _%hd4662047659%_
                                       _%tl4661947662%_
                                       _%e4662447665%_
                                       _%hd4662347669%_
                                       _%tl4662247672%_
                                       _%e4662747675%_
                                       _%hd4662647679%_
                                       _%tl4662547682%_
                                       _%__splice7498474985%_
                                       _%target4662847685%_
                                       _%tl4663047688%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_)))
                          (if (gx#identifier? _%hd4662347669%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80168_|
                                   _%hd4662347669%_)
                                  (if (gx#stx-pair? _%tl4662547682%_)
                                      (let ((_%e4666247523%_
                                             (gx#syntax-e _%tl4662547682%_)))
                                        (let ((_%tl4666047530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4666247523%_)))
                                              (_%hd4666147527%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4666247523%_))))
                                          (if (gx#identifier? _%hd4666147527%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80169_|
                                                   _%hd4666147527%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4666047530%_)
                                                      (let ((_%e4666547533%_
                                                             (gx#syntax-e
                                                              _%tl4666047530%_)))
                                                        (let ((_%tl4666347540%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4666547533%_)))
                      (_%hd4666447537%_
                       (let () (declare (not safe)) (##car _%e4666547533%_))))
                  (if (gx#stx-null? _%tl4666347540%_)
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7498874989%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4666847546%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7498874989%_ '1)))
                                  (_%target4666647543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7498874989%_
                                      '0))))
                              (if (gx#stx-null? _%tl4666847546%_)
                                  (_%__match7512275123%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%e4662147655%_
                                   _%hd4662047659%_
                                   _%tl4661947662%_
                                   _%e4662447665%_
                                   _%hd4662347669%_
                                   _%tl4662247672%_
                                   _%e4662747675%_
                                   _%hd4662647679%_
                                   _%tl4662547682%_
                                   _%e4666247523%_
                                   _%hd4666147527%_
                                   _%tl4666047530%_
                                   _%e4666547533%_
                                   _%hd4666447537%_
                                   _%tl4666347540%_
                                   _%__splice7498874989%_
                                   _%target4666647543%_
                                   _%tl4666847546%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_)))
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))))
              (if (gx#identifier? _%hd4662047659%_)
                  (if (gx#free-identifier=?
                       |gerbil/core/contract~Using[1]#_g80166_|
                       _%hd4662047659%_)
                      (if (gx#identifier? _%hd4662647679%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80167_|
                               _%hd4662647679%_)
                              (if (gx#stx-null? _%tl4666047530%_)
                                  (if (gx#stx-pair/null? _%tl4661347642%_)
                                      (let ((_%__splice7500075001%_
                                             (gx#syntax-split-splice
                                              _%tl4661347642%_
                                              '0)))
                                        (let ((_%tl4675747068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500075001%_
                                                  '1)))
                                              (_%target4675547065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500075001%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4675747068%_)
                                              (_%__match7526675267%_
                                               _%e4661247625%_
                                               _%hd4661147629%_
                                               _%tl4661047632%_
                                               _%e4661547635%_
                                               _%hd4661447639%_
                                               _%tl4661347642%_
                                               _%e4661847645%_
                                               _%hd4661747649%_
                                               _%tl4661647652%_
                                               _%e4662147655%_
                                               _%hd4662047659%_
                                               _%tl4661947662%_
                                               _%e4662447665%_
                                               _%hd4662347669%_
                                               _%tl4662247672%_
                                               _%e4662747675%_
                                               _%hd4662647679%_
                                               _%tl4662547682%_
                                               _%e4666247523%_
                                               _%hd4666147527%_
                                               _%tl4666047530%_
                                               _%__splice7500075001%_
                                               _%target4675547065%_
                                               _%tl4675747068%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))
                                  (if (gx#stx-pair/null? _%tl4661347642%_)
                                      (let ((_%__splice7500475005%_
                                             (gx#syntax-split-splice
                                              _%tl4661347642%_
                                              '0)))
                                        (let ((_%tl4677846930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '1)))
                                              (_%target4677646927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4677846930%_)
                                              (_%__match7529275293%_
                                               _%e4661247625%_
                                               _%hd4661147629%_
                                               _%tl4661047632%_
                                               _%e4661547635%_
                                               _%hd4661447639%_
                                               _%tl4661347642%_
                                               _%e4661847645%_
                                               _%hd4661747649%_
                                               _%tl4661647652%_
                                               _%__splice7500475005%_
                                               _%target4677646927%_
                                               _%tl4677846930%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_))))
                              (if (gx#stx-pair/null? _%tl4661347642%_)
                                  (let ((_%__splice7500475005%_
                                         (gx#syntax-split-splice
                                          _%tl4661347642%_
                                          '0)))
                                    (let ((_%tl4677846930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '1)))
                                          (_%target4677646927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677846930%_)
                                          (_%__match7529275293%_
                                           _%e4661247625%_
                                           _%hd4661147629%_
                                           _%tl4661047632%_
                                           _%e4661547635%_
                                           _%hd4661447639%_
                                           _%tl4661347642%_
                                           _%e4661847645%_
                                           _%hd4661747649%_
                                           _%tl4661647652%_
                                           _%__splice7500475005%_
                                           _%target4677646927%_
                                           _%tl4677846930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_))))
                          (if (gx#stx-pair/null? _%tl4661347642%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4661347642%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4661247625%_
                                       _%hd4661147629%_
                                       _%tl4661047632%_
                                       _%e4661547635%_
                                       _%hd4661447639%_
                                       _%tl4661347642%_
                                       _%e4661847645%_
                                       _%hd4661747649%_
                                       _%tl4661647652%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_))))
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))
                  (if (gx#stx-pair/null? _%tl4661347642%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4661347642%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4661247625%_
                               _%hd4661147629%_
                               _%tl4661047632%_
                               _%e4661547635%_
                               _%hd4661447639%_
                               _%tl4661347642%_
                               _%e4661847645%_
                               _%hd4661747649%_
                               _%tl4661647652%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4662047659%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80166_|
                                                           _%hd4662047659%_)
                                                          (if (gx#identifier?
                                                               _%hd4662647679%_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core/contract~Using[1]#_g80167_|
                           _%hd4662647679%_)
                          (if (gx#stx-null? _%tl4666047530%_)
                              (if (gx#stx-pair/null? _%tl4661347642%_)
                                  (let ((_%__splice7500075001%_
                                         (gx#syntax-split-splice
                                          _%tl4661347642%_
                                          '0)))
                                    (let ((_%tl4675747068%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500075001%_
                                              '1)))
                                          (_%target4675547065%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500075001%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4675747068%_)
                                          (_%__match7526675267%_
                                           _%e4661247625%_
                                           _%hd4661147629%_
                                           _%tl4661047632%_
                                           _%e4661547635%_
                                           _%hd4661447639%_
                                           _%tl4661347642%_
                                           _%e4661847645%_
                                           _%hd4661747649%_
                                           _%tl4661647652%_
                                           _%e4662147655%_
                                           _%hd4662047659%_
                                           _%tl4661947662%_
                                           _%e4662447665%_
                                           _%hd4662347669%_
                                           _%tl4662247672%_
                                           _%e4662747675%_
                                           _%hd4662647679%_
                                           _%tl4662547682%_
                                           _%e4666247523%_
                                           _%hd4666147527%_
                                           _%tl4666047530%_
                                           _%__splice7500075001%_
                                           _%target4675547065%_
                                           _%tl4675747068%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))
                              (if (gx#stx-pair/null? _%tl4661347642%_)
                                  (let ((_%__splice7500475005%_
                                         (gx#syntax-split-splice
                                          _%tl4661347642%_
                                          '0)))
                                    (let ((_%tl4677846930%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '1)))
                                          (_%target4677646927%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7500475005%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677846930%_)
                                          (_%__match7529275293%_
                                           _%e4661247625%_
                                           _%hd4661147629%_
                                           _%tl4661047632%_
                                           _%e4661547635%_
                                           _%hd4661447639%_
                                           _%tl4661347642%_
                                           _%e4661847645%_
                                           _%hd4661747649%_
                                           _%tl4661647652%_
                                           _%__splice7500475005%_
                                           _%target4677646927%_
                                           _%tl4677846930%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_))))
                          (if (gx#stx-pair/null? _%tl4661347642%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4661347642%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4661247625%_
                                       _%hd4661147629%_
                                       _%tl4661047632%_
                                       _%e4661547635%_
                                       _%hd4661447639%_
                                       _%tl4661347642%_
                                       _%e4661847645%_
                                       _%hd4661747649%_
                                       _%tl4661647652%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_))))
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))
                  (if (gx#stx-pair/null? _%tl4661347642%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4661347642%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4661247625%_
                               _%hd4661147629%_
                               _%tl4661047632%_
                               _%e4661547635%_
                               _%hd4661447639%_
                               _%tl4661347642%_
                               _%e4661847645%_
                               _%hd4661747649%_
                               _%tl4661647652%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_))))
              (if (gx#stx-pair/null? _%tl4661347642%_)
                  (let ((_%__splice7500475005%_
                         (gx#syntax-split-splice _%tl4661347642%_ '0)))
                    (let ((_%tl4677846930%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '1)))
                          (_%target4677646927%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '0))))
                      (if (gx#stx-null? _%tl4677846930%_)
                          (_%__match7529275293%_
                           _%e4661247625%_
                           _%hd4661147629%_
                           _%tl4661047632%_
                           _%e4661547635%_
                           _%hd4661447639%_
                           _%tl4661347642%_
                           _%e4661847645%_
                           _%hd4661747649%_
                           _%tl4661647652%_
                           _%__splice7500475005%_
                           _%target4677646927%_
                           _%tl4677846930%_)
                          (let () (declare (not safe)) (_%g4660346806%_)))))
                  (let () (declare (not safe)) (_%g4660346806%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4662047659%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80166_|
                                                       _%hd4662047659%_)
                                                      (if (gx#identifier?
                                                           _%hd4662647679%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~Using[1]#_g80167_|
                                                               _%hd4662647679%_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4666047530%_)
                          (if (gx#stx-pair/null? _%tl4661347642%_)
                              (let ((_%__splice7500075001%_
                                     (gx#syntax-split-splice
                                      _%tl4661347642%_
                                      '0)))
                                (let ((_%tl4675747068%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500075001%_
                                          '1)))
                                      (_%target4675547065%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500075001%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4675747068%_)
                                      (_%__match7526675267%_
                                       _%e4661247625%_
                                       _%hd4661147629%_
                                       _%tl4661047632%_
                                       _%e4661547635%_
                                       _%hd4661447639%_
                                       _%tl4661347642%_
                                       _%e4661847645%_
                                       _%hd4661747649%_
                                       _%tl4661647652%_
                                       _%e4662147655%_
                                       _%hd4662047659%_
                                       _%tl4661947662%_
                                       _%e4662447665%_
                                       _%hd4662347669%_
                                       _%tl4662247672%_
                                       _%e4662747675%_
                                       _%hd4662647679%_
                                       _%tl4662547682%_
                                       _%e4666247523%_
                                       _%hd4666147527%_
                                       _%tl4666047530%_
                                       _%__splice7500075001%_
                                       _%target4675547065%_
                                       _%tl4675747068%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_)))
                          (if (gx#stx-pair/null? _%tl4661347642%_)
                              (let ((_%__splice7500475005%_
                                     (gx#syntax-split-splice
                                      _%tl4661347642%_
                                      '0)))
                                (let ((_%tl4677846930%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '1)))
                                      (_%target4677646927%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7500475005%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677846930%_)
                                      (_%__match7529275293%_
                                       _%e4661247625%_
                                       _%hd4661147629%_
                                       _%tl4661047632%_
                                       _%e4661547635%_
                                       _%hd4661447639%_
                                       _%tl4661347642%_
                                       _%e4661847645%_
                                       _%hd4661747649%_
                                       _%tl4661647652%_
                                       _%__splice7500475005%_
                                       _%target4677646927%_
                                       _%tl4677846930%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_)))))
                              (let () (declare (not safe)) (_%g4660346806%_))))
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))
                  (if (gx#stx-pair/null? _%tl4661347642%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4661347642%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4661247625%_
                               _%hd4661147629%_
                               _%tl4661047632%_
                               _%e4661547635%_
                               _%hd4661447639%_
                               _%tl4661347642%_
                               _%e4661847645%_
                               _%hd4661747649%_
                               _%tl4661647652%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_))))
              (if (gx#stx-pair/null? _%tl4661347642%_)
                  (let ((_%__splice7500475005%_
                         (gx#syntax-split-splice _%tl4661347642%_ '0)))
                    (let ((_%tl4677846930%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '1)))
                          (_%target4677646927%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '0))))
                      (if (gx#stx-null? _%tl4677846930%_)
                          (_%__match7529275293%_
                           _%e4661247625%_
                           _%hd4661147629%_
                           _%tl4661047632%_
                           _%e4661547635%_
                           _%hd4661447639%_
                           _%tl4661347642%_
                           _%e4661847645%_
                           _%hd4661747649%_
                           _%tl4661647652%_
                           _%__splice7500475005%_
                           _%target4677646927%_
                           _%tl4677846930%_)
                          (let () (declare (not safe)) (_%g4660346806%_)))))
                  (let () (declare (not safe)) (_%g4660346806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4661347642%_)
                                                      (let ((_%__splice7500475005%_
                                                             (gx#syntax-split-splice
                                                              _%tl4661347642%_
                                                              '0)))
                                                        (let ((_%tl4677846930%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '1)))
                      (_%target4677646927%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '0))))
                  (if (gx#stx-null? _%tl4677846930%_)
                      (_%__match7529275293%_
                       _%e4661247625%_
                       _%hd4661147629%_
                       _%tl4661047632%_
                       _%e4661547635%_
                       _%hd4661447639%_
                       _%tl4661347642%_
                       _%e4661847645%_
                       _%hd4661747649%_
                       _%tl4661647652%_
                       _%__splice7500475005%_
                       _%target4677646927%_
                       _%tl4677846930%_)
                      (let () (declare (not safe)) (_%g4660346806%_)))))
              (let () (declare (not safe)) (_%g4660346806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair/null? _%tl4661347642%_)
                                          (let ((_%__splice7500475005%_
                                                 (gx#syntax-split-splice
                                                  _%tl4661347642%_
                                                  '0)))
                                            (let ((_%tl4677846930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '1)))
                                                  (_%target4677646927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677846930%_)
                                                  (_%__match7529275293%_
                                                   _%e4661247625%_
                                                   _%hd4661147629%_
                                                   _%tl4661047632%_
                                                   _%e4661547635%_
                                                   _%hd4661447639%_
                                                   _%tl4661347642%_
                                                   _%e4661847645%_
                                                   _%hd4661747649%_
                                                   _%tl4661647652%_
                                                   _%__splice7500475005%_
                                                   _%target4677646927%_
                                                   _%tl4677846930%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_))))
                                  (if (gx#identifier? _%hd4662047659%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80166_|
                                           _%hd4662047659%_)
                                          (if (gx#identifier? _%hd4662647679%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80167_|
                                                   _%hd4662647679%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4662547682%_)
                                                      (let ((_%e4675447055%_
                                                             (gx#syntax-e
                                                              _%tl4662547682%_)))
                                                        (let ((_%tl4675247062%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4675447055%_)))
                      (_%hd4675347059%_
                       (let () (declare (not safe)) (##car _%e4675447055%_))))
                  (if (gx#stx-null? _%tl4675247062%_)
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7500075001%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4675747068%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500075001%_ '1)))
                                  (_%target4675547065%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500075001%_
                                      '0))))
                              (if (gx#stx-null? _%tl4675747068%_)
                                  (_%__match7526675267%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%e4662147655%_
                                   _%hd4662047659%_
                                   _%tl4661947662%_
                                   _%e4662447665%_
                                   _%hd4662347669%_
                                   _%tl4662247672%_
                                   _%e4662747675%_
                                   _%hd4662647679%_
                                   _%tl4662547682%_
                                   _%e4675447055%_
                                   _%hd4675347059%_
                                   _%tl4675247062%_
                                   _%__splice7500075001%_
                                   _%target4675547065%_
                                   _%tl4675747068%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_)))
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_))))))
              (if (gx#stx-pair/null? _%tl4661347642%_)
                  (let ((_%__splice7500475005%_
                         (gx#syntax-split-splice _%tl4661347642%_ '0)))
                    (let ((_%tl4677846930%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '1)))
                          (_%target4677646927%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7500475005%_ '0))))
                      (if (gx#stx-null? _%tl4677846930%_)
                          (_%__match7529275293%_
                           _%e4661247625%_
                           _%hd4661147629%_
                           _%tl4661047632%_
                           _%e4661547635%_
                           _%hd4661447639%_
                           _%tl4661347642%_
                           _%e4661847645%_
                           _%hd4661747649%_
                           _%tl4661647652%_
                           _%__splice7500475005%_
                           _%target4677646927%_
                           _%tl4677846930%_)
                          (let () (declare (not safe)) (_%g4660346806%_)))))
                  (let () (declare (not safe)) (_%g4660346806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4661347642%_)
                                                      (let ((_%__splice7500475005%_
                                                             (gx#syntax-split-splice
                                                              _%tl4661347642%_
                                                              '0)))
                                                        (let ((_%tl4677846930%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '1)))
                      (_%target4677646927%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '0))))
                  (if (gx#stx-null? _%tl4677846930%_)
                      (_%__match7529275293%_
                       _%e4661247625%_
                       _%hd4661147629%_
                       _%tl4661047632%_
                       _%e4661547635%_
                       _%hd4661447639%_
                       _%tl4661347642%_
                       _%e4661847645%_
                       _%hd4661747649%_
                       _%tl4661647652%_
                       _%__splice7500475005%_
                       _%target4677646927%_
                       _%tl4677846930%_)
                      (let () (declare (not safe)) (_%g4660346806%_)))))
              (let () (declare (not safe)) (_%g4660346806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4661347642%_)
                                                  (let ((_%__splice7500475005%_
                                                         (gx#syntax-split-splice
                                                          _%tl4661347642%_
                                                          '0)))
                                                    (let ((_%tl4677846930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7500475005%_
                                                              '1)))
                                                          (_%target4677646927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7500475005%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4677846930%_)
                                                          (_%__match7529275293%_
                                                           _%e4661247625%_
                                                           _%hd4661147629%_
                                                           _%tl4661047632%_
                                                           _%e4661547635%_
                                                           _%hd4661447639%_
                                                           _%tl4661347642%_
                                                           _%e4661847645%_
                                                           _%hd4661747649%_
                                                           _%tl4661647652%_
                                                           _%__splice7500475005%_
                                                           _%target4677646927%_
                                                           _%tl4677846930%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4660346806%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4661347642%_)
                                              (let ((_%__splice7500475005%_
                                                     (gx#syntax-split-splice
                                                      _%tl4661347642%_
                                                      '0)))
                                                (let ((_%tl4677846930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '1)))
                                                      (_%target4677646927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4677846930%_)
                                                      (_%__match7529275293%_
                                                       _%e4661247625%_
                                                       _%hd4661147629%_
                                                       _%tl4661047632%_
                                                       _%e4661547635%_
                                                       _%hd4661447639%_
                                                       _%tl4661347642%_
                                                       _%e4661847645%_
                                                       _%hd4661747649%_
                                                       _%tl4661647652%_
                                                       _%__splice7500475005%_
                                                       _%target4677646927%_
                                                       _%tl4677846930%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4660346806%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_))))
                                      (if (gx#stx-pair/null? _%tl4661347642%_)
                                          (let ((_%__splice7500475005%_
                                                 (gx#syntax-split-splice
                                                  _%tl4661347642%_
                                                  '0)))
                                            (let ((_%tl4677846930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '1)))
                                                  (_%target4677646927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677846930%_)
                                                  (_%__match7529275293%_
                                                   _%e4661247625%_
                                                   _%hd4661147629%_
                                                   _%tl4661047632%_
                                                   _%e4661547635%_
                                                   _%hd4661447639%_
                                                   _%tl4661347642%_
                                                   _%e4661847645%_
                                                   _%hd4661747649%_
                                                   _%tl4661647652%_
                                                   _%__splice7500475005%_
                                                   _%target4677646927%_
                                                   _%tl4677846930%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))))
                              (if (gx#identifier? _%hd4662047659%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80166_|
                                       _%hd4662047659%_)
                                      (if (gx#identifier? _%hd4662647679%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~Using[1]#_g80167_|
                                               _%hd4662647679%_)
                                              (if (gx#stx-pair?
                                                   _%tl4662547682%_)
                                                  (let ((_%e4675447055%_
                                                         (gx#syntax-e
                                                          _%tl4662547682%_)))
                                                    (let ((_%tl4675247062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4675447055%_)))
                                                          (_%hd4675347059%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4675447055%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4675247062%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4661347642%_)
                                                              (let ((_%__splice7500075001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4661347642%_ '0)))
                        (let ((_%tl4675747068%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500075001%_ '1)))
                              (_%target4675547065%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500075001%_ '0))))
                          (if (gx#stx-null? _%tl4675747068%_)
                              (_%__match7526675267%_
                               _%e4661247625%_
                               _%hd4661147629%_
                               _%tl4661047632%_
                               _%e4661547635%_
                               _%hd4661447639%_
                               _%tl4661347642%_
                               _%e4661847645%_
                               _%hd4661747649%_
                               _%tl4661647652%_
                               _%e4662147655%_
                               _%hd4662047659%_
                               _%tl4661947662%_
                               _%e4662447665%_
                               _%hd4662347669%_
                               _%tl4662247672%_
                               _%e4662747675%_
                               _%hd4662647679%_
                               _%tl4662547682%_
                               _%e4675447055%_
                               _%hd4675347059%_
                               _%tl4675247062%_
                               _%__splice7500075001%_
                               _%target4675547065%_
                               _%tl4675747068%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_)))
                  (if (gx#stx-pair/null? _%tl4661347642%_)
                      (let ((_%__splice7500475005%_
                             (gx#syntax-split-splice _%tl4661347642%_ '0)))
                        (let ((_%tl4677846930%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '1)))
                              (_%target4677646927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7500475005%_ '0))))
                          (if (gx#stx-null? _%tl4677846930%_)
                              (_%__match7529275293%_
                               _%e4661247625%_
                               _%hd4661147629%_
                               _%tl4661047632%_
                               _%e4661547635%_
                               _%hd4661447639%_
                               _%tl4661347642%_
                               _%e4661847645%_
                               _%hd4661747649%_
                               _%tl4661647652%_
                               _%__splice7500475005%_
                               _%target4677646927%_
                               _%tl4677846930%_)
                              (let ()
                                (declare (not safe))
                                (_%g4660346806%_)))))
                      (let () (declare (not safe)) (_%g4660346806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4661347642%_)
                                                      (let ((_%__splice7500475005%_
                                                             (gx#syntax-split-splice
                                                              _%tl4661347642%_
                                                              '0)))
                                                        (let ((_%tl4677846930%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '1)))
                      (_%target4677646927%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '0))))
                  (if (gx#stx-null? _%tl4677846930%_)
                      (_%__match7529275293%_
                       _%e4661247625%_
                       _%hd4661147629%_
                       _%tl4661047632%_
                       _%e4661547635%_
                       _%hd4661447639%_
                       _%tl4661347642%_
                       _%e4661847645%_
                       _%hd4661747649%_
                       _%tl4661647652%_
                       _%__splice7500475005%_
                       _%target4677646927%_
                       _%tl4677846930%_)
                      (let () (declare (not safe)) (_%g4660346806%_)))))
              (let () (declare (not safe)) (_%g4660346806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4661347642%_)
                                                  (let ((_%__splice7500475005%_
                                                         (gx#syntax-split-splice
                                                          _%tl4661347642%_
                                                          '0)))
                                                    (let ((_%tl4677846930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7500475005%_
                                                              '1)))
                                                          (_%target4677646927%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7500475005%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4677846930%_)
                                                          (_%__match7529275293%_
                                                           _%e4661247625%_
                                                           _%hd4661147629%_
                                                           _%tl4661047632%_
                                                           _%e4661547635%_
                                                           _%hd4661447639%_
                                                           _%tl4661347642%_
                                                           _%e4661847645%_
                                                           _%hd4661747649%_
                                                           _%tl4661647652%_
                                                           _%__splice7500475005%_
                                                           _%target4677646927%_
                                                           _%tl4677846930%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4660346806%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4661347642%_)
                                              (let ((_%__splice7500475005%_
                                                     (gx#syntax-split-splice
                                                      _%tl4661347642%_
                                                      '0)))
                                                (let ((_%tl4677846930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '1)))
                                                      (_%target4677646927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4677846930%_)
                                                      (_%__match7529275293%_
                                                       _%e4661247625%_
                                                       _%hd4661147629%_
                                                       _%tl4661047632%_
                                                       _%e4661547635%_
                                                       _%hd4661447639%_
                                                       _%tl4661347642%_
                                                       _%e4661847645%_
                                                       _%hd4661747649%_
                                                       _%tl4661647652%_
                                                       _%__splice7500475005%_
                                                       _%target4677646927%_
                                                       _%tl4677846930%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4660346806%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_))))
                                      (if (gx#stx-pair/null? _%tl4661347642%_)
                                          (let ((_%__splice7500475005%_
                                                 (gx#syntax-split-splice
                                                  _%tl4661347642%_
                                                  '0)))
                                            (let ((_%tl4677846930%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '1)))
                                                  (_%target4677646927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500475005%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677846930%_)
                                                  (_%__match7529275293%_
                                                   _%e4661247625%_
                                                   _%hd4661147629%_
                                                   _%tl4661047632%_
                                                   _%e4661547635%_
                                                   _%hd4661447639%_
                                                   _%tl4661347642%_
                                                   _%e4661847645%_
                                                   _%hd4661747649%_
                                                   _%tl4661647652%_
                                                   _%__splice7500475005%_
                                                   _%target4677646927%_
                                                   _%tl4677846930%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_))))
                                  (if (gx#stx-pair/null? _%tl4661347642%_)
                                      (let ((_%__splice7500475005%_
                                             (gx#syntax-split-splice
                                              _%tl4661347642%_
                                              '0)))
                                        (let ((_%tl4677846930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '1)))
                                              (_%target4677646927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7500475005%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4677846930%_)
                                              (_%__match7529275293%_
                                               _%e4661247625%_
                                               _%hd4661147629%_
                                               _%tl4661047632%_
                                               _%e4661547635%_
                                               _%hd4661447639%_
                                               _%tl4661347642%_
                                               _%e4661847645%_
                                               _%hd4661747649%_
                                               _%tl4661647652%_
                                               _%__splice7500475005%_
                                               _%target4677646927%_
                                               _%tl4677846930%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_))))))))
                  (if (gx#stx-null? _%tl4662247672%_)
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7499274993%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4669647318%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7499274993%_ '1)))
                                  (_%target4669447315%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7499274993%_
                                      '0))))
                              (if (gx#stx-null? _%tl4669647318%_)
                                  (_%__match7516275163%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%e4662147655%_
                                   _%hd4662047659%_
                                   _%tl4661947662%_
                                   _%e4662447665%_
                                   _%hd4662347669%_
                                   _%tl4662247672%_
                                   _%__splice7499274993%_
                                   _%target4669447315%_
                                   _%tl4669647318%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_)))
                      (if (gx#stx-pair/null? _%tl4661347642%_)
                          (let ((_%__splice7500475005%_
                                 (gx#syntax-split-splice _%tl4661347642%_ '0)))
                            (let ((_%tl4677846930%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7500475005%_ '1)))
                                  (_%target4677646927%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7500475005%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677846930%_)
                                  (_%__match7529275293%_
                                   _%e4661247625%_
                                   _%hd4661147629%_
                                   _%tl4661047632%_
                                   _%e4661547635%_
                                   _%hd4661447639%_
                                   _%tl4661347642%_
                                   _%e4661847645%_
                                   _%hd4661747649%_
                                   _%tl4661647652%_
                                   _%__splice7500475005%_
                                   _%target4677646927%_
                                   _%tl4677846930%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4660346806%_)))))
                          (let () (declare (not safe)) (_%g4660346806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4661347642%_)
                                                      (let ((_%__splice7500475005%_
                                                             (gx#syntax-split-splice
                                                              _%tl4661347642%_
                                                              '0)))
                                                        (let ((_%tl4677846930%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '1)))
                      (_%target4677646927%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7500475005%_ '0))))
                  (if (gx#stx-null? _%tl4677846930%_)
                      (_%__match7529275293%_
                       _%e4661247625%_
                       _%hd4661147629%_
                       _%tl4661047632%_
                       _%e4661547635%_
                       _%hd4661447639%_
                       _%tl4661347642%_
                       _%e4661847645%_
                       _%hd4661747649%_
                       _%tl4661647652%_
                       _%__splice7500475005%_
                       _%target4677646927%_
                       _%tl4677846930%_)
                      (let () (declare (not safe)) (_%g4660346806%_)))))
              (let () (declare (not safe)) (_%g4660346806%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4661347642%_)
                                              (let ((_%__splice7500475005%_
                                                     (gx#syntax-split-splice
                                                      _%tl4661347642%_
                                                      '0)))
                                                (let ((_%tl4677846930%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '1)))
                                                      (_%target4677646927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7500475005%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4677846930%_)
                                                      (_%__match7529275293%_
                                                       _%e4661247625%_
                                                       _%hd4661147629%_
                                                       _%tl4661047632%_
                                                       _%e4661547635%_
                                                       _%hd4661447639%_
                                                       _%tl4661347642%_
                                                       _%e4661847645%_
                                                       _%hd4661747649%_
                                                       _%tl4661647652%_
                                                       _%__splice7500475005%_
                                                       _%target4677646927%_
                                                       _%tl4677846930%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4660346806%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4660346806%_))))))
                                  (if (gx#stx-null? _%hd4661447639%_)
                                      (if (gx#stx-pair/null? _%tl4661347642%_)
                                          (let ((_%__splice7500875009%_
                                                 (gx#syntax-split-splice
                                                  _%tl4661347642%_
                                                  '0)))
                                            (let ((_%tl4679446836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500875009%_
                                                      '1)))
                                                  (_%target4679246833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7500875009%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679446836%_)
                                                  (_%__match7531475315%_
                                                   _%e4661247625%_
                                                   _%hd4661147629%_
                                                   _%tl4661047632%_
                                                   _%e4661547635%_
                                                   _%hd4661447639%_
                                                   _%tl4661347642%_
                                                   _%__splice7500875009%_
                                                   _%target4679246833%_
                                                   _%tl4679446836%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4660346806%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4660346806%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4660346806%_))))))
                          (let () (declare (not safe)) (_%g4660346806%_)))))
                  (let () (declare (not safe)) (_%g4660346806%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47783%_)
        (let* ((_%g4778747821%_
                (lambda (_%g4778847817%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4778847817%_)))
               (_%g4778647944%_
                (lambda (_%g4778847825%_)
                  (if (gx#stx-pair? _%g4778847825%_)
                      (let ((_%e4779447828%_ (gx#syntax-e _%g4778847825%_)))
                        (let ((_%hd4779347832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4779447828%_)))
                              (_%tl4779247835%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4779447828%_))))
                          (if (gx#stx-pair? _%tl4779247835%_)
                              (let ((_%e4779747838%_
                                     (gx#syntax-e _%tl4779247835%_)))
                                (let ((_%hd4779647842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4779747838%_)))
                                      (_%tl4779547845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4779747838%_))))
                                  (if (gx#stx-pair? _%hd4779647842%_)
                                      (let ((_%e4780047848%_
                                             (gx#syntax-e _%hd4779647842%_)))
                                        (let ((_%hd4779947852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4780047848%_)))
                                              (_%tl4779847855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4780047848%_))))
                                          (if (gx#stx-pair? _%tl4779847855%_)
                                              (let ((_%e4780347858%_
                                                     (gx#syntax-e
                                                      _%tl4779847855%_)))
                                                (let ((_%hd4780247862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4780347858%_)))
                                                      (_%tl4780147865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4780347858%_))))
                                                  (if (gx#identifier?
                                                       _%hd4780247862%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80170_|
                                                           _%hd4780247862%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4780147865%_)
                                                              (let ((_%e4780647868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4780147865%_)))
                        (let ((_%hd4780547872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4780647868%_)))
                              (_%tl4780447875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4780647868%_))))
                          (if (gx#stx-null? _%tl4780447875%_)
                              (if (gx#stx-pair/null? _%tl4779547845%_)
                                  (let ((_g80171_
                                         (gx#syntax-split-splice
                                          _%tl4779547845%_
                                          '0)))
                                    (begin
                                      (let ((_g80172_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g80171_)
                                                   (##vector-length _g80171_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g80172_ 2)))
                                            (error "Context expects 2 values"
                                                   _g80172_)))
                                      (let ((_%target4780747878%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80171_ 0)))
                                            (_%tl4780947881%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80171_ 1))))
                                        (if (gx#stx-null? _%tl4780947881%_)
                                            (letrec ((_%loop4781047884%_
                                                      (lambda (_%hd4780847888%_
                                                               _%body4781447891%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4780847888%_)
                                                            (let ((_%e4781147894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4780847888%_)))
                      (let ((_%lp-hd4781247898%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4781147894%_)))
                            (_%lp-tl4781347901%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4781147894%_))))
                        (_%loop4781047884%_
                         _%lp-tl4781347901%_
                         (cons _%lp-hd4781247898%_ _%body4781447891%_))))
                    (let ((_%body4781547904%_ (reverse _%body4781447891%_)))
                      ((lambda (_%L47908%_ _%L47910%_ _%L47911%_)
                         (if (gx#identifier? _%L47911%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47910%_
                                               (cons _%L47911%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4793547938%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4793647941%_)
                            (cons _%g4793547938%_ _%g4793647941%_))
                          '()
                          _%L47908%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47910%_ (cons _%L47911%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4778747821%_ _%g4778847825%_)))
                       _%body4781547904%_
                       _%hd4780547872%_
                       _%hd4779947852%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4781047884%_
                                               _%target4780747878%_
                                               '()))
                                            (_%g4778747821%_
                                             _%g4778847825%_)))))
                                  (_%g4778747821%_ _%g4778847825%_))
                              (_%g4778747821%_ _%g4778847825%_))))
                      (_%g4778747821%_ _%g4778847825%_))
                  (_%g4778747821%_ _%g4778847825%_))
              (_%g4778747821%_ _%g4778847825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4778747821%_
                                               _%g4778847825%_))))
                                      (_%g4778747821%_ _%g4778847825%_))))
                              (_%g4778747821%_ _%g4778847825%_))))
                      (_%g4778747821%_ _%g4778847825%_)))))
          (_%g4778647944%_ _%$stx47783%_))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47995%_)
        (if (gx#identifier? _%id47995%_)
            (let ((_%index4799747999%_
                   (string-index
                    (symbol->string (gx#stx-e _%id47995%_))
                    '#\.)))
              (if _%index4799747999%_
                  (let ((_%index48003%_ _%index4799747999%_))
                    (> _%index48003%_ '0))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47988%_ _%id47990%_)
        (let ((_%parts47992%_
               (string-split (symbol->string (gx#stx-e _%id47990%_)) '#\.)))
          (if (find string-empty? _%parts47992%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47988%_
               _%id47990%_)
              (cons (gx#stx-identifier _%id47990%_ (car _%parts47992%_))
                    (map string->symbol (cdr _%parts47992%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47969%_ _%klass-or-id47971%_ _%slot47972%_)
        (let* ((_%klass47974%_
                (if (gx#identifier? _%klass-or-id47971%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47969%_
                       _%klass-or-id47971%_))
                    _%klass-or-id47971%_))
               (_%accessors47977%_
                (let ((__obj79996 _%klass47974%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj79996
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj79996 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj79996
                       'unchecked-accessors)))))
          (let ((_%$e47982%_ (assgetq _%slot47972%_ _%accessors47977%_)))
            (if _%$e47982%_
                _%$e47982%_
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"no accessor for slot"
                   _%stx47969%_
                   _%klass47974%_
                   _%slot47972%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47949%_
               _%klass-or-id47951%_
               _%slot47952%_
               _%checked?47953%_)
        (let* ((_%klass47955%_
                (if (gx#identifier? _%klass-or-id47951%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47949%_
                       _%klass-or-id47951%_))
                    _%klass-or-id47951%_))
               (_%mutators47958%_
                (if _%checked?47953%_
                    (let ((__obj79997 _%klass47955%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj79997
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj79997 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj79997
                           'mutators)))
                    (let ((__obj79998 _%klass47955%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj79998
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj79998 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj79998
                           'unchecked-mutators))))))
          (let ((_%$e47963%_ (assgetq _%slot47952%_ _%mutators47958%_)))
            (if _%$e47963%_
                _%$e47963%_
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"no mutator for slot"
                   _%stx47949%_
                   _%klass47955%_
                   _%slot47952%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48006%_)
        (letrec ((_%expand-body48009%_
                  (lambda (_%klass48578%_
                           _%var48580%_
                           _%Type48581%_
                           _%body48582%_
                           _%checked?48583%_)
                    (let* ((_%g4858548629%_
                            (lambda (_%g4858648625%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4858648625%_)))
                           (_%g4858448786%_
                            (lambda (_%g4858648633%_)
                              (if (gx#stx-pair? _%g4858648633%_)
                                  (let ((_%e4859648636%_
                                         (gx#syntax-e _%g4858648633%_)))
                                    (let ((_%hd4859548640%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4859648636%_)))
                                          (_%tl4859448643%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4859648636%_))))
                                      (if (gx#stx-pair? _%tl4859448643%_)
                                          (let ((_%e4859948646%_
                                                 (gx#syntax-e
                                                  _%tl4859448643%_)))
                                            (let ((_%hd4859848650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4859948646%_)))
                                                  (_%tl4859748653%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4859948646%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4859748653%_)
                                                  (let ((_%e4860248656%_
                                                         (gx#syntax-e
                                                          _%tl4859748653%_)))
                                                    (let ((_%hd4860148660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4860248656%_)))
                                                          (_%tl4860048663%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4860248656%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4860048663%_)
                                                          (let ((_%e4860548666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4860048663%_)))
                    (let ((_%hd4860448670%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4860548666%_)))
                          (_%tl4860348673%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4860548666%_))))
                      (if (gx#stx-pair? _%tl4860348673%_)
                          (let ((_%e4860848676%_
                                 (gx#syntax-e _%tl4860348673%_)))
                            (let ((_%hd4860748680%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4860848676%_)))
                                  (_%tl4860648683%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4860848676%_))))
                              (if (gx#stx-pair? _%tl4860648683%_)
                                  (let ((_%e4861148686%_
                                         (gx#syntax-e _%tl4860648683%_)))
                                    (let ((_%hd4861048690%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4861148686%_)))
                                          (_%tl4860948693%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4861148686%_))))
                                      (if (gx#stx-pair? _%tl4860948693%_)
                                          (let ((_%e4861448696%_
                                                 (gx#syntax-e
                                                  _%tl4860948693%_)))
                                            (let ((_%hd4861348700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4861448696%_)))
                                                  (_%tl4861248703%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4861448696%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4861348700%_)
                                                  (let ((_g80173_
                                                         (gx#syntax-split-splice
                                                          _%hd4861348700%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80174_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80173_)
                           (##vector-length _g80173_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80174_ 2)))
                    (error "Context expects 2 values" _g80174_)))
              (let ((_%target4861548706%_
                     (let () (declare (not safe)) (##vector-ref _g80173_ 0)))
                    (_%tl4861748709%_
                     (let () (declare (not safe)) (##vector-ref _g80173_ 1))))
                (if (gx#stx-null? _%tl4861748709%_)
                    (letrec ((_%loop4861848712%_
                              (lambda (_%hd4861648716%_ _%body4862248719%_)
                                (if (gx#stx-pair? _%hd4861648716%_)
                                    (let ((_%e4861948722%_
                                           (gx#syntax-e _%hd4861648716%_)))
                                      (let ((_%lp-hd4862048726%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4861948722%_)))
                                            (_%lp-tl4862148729%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4861948722%_))))
                                        (_%loop4861848712%_
                                         _%lp-tl4862148729%_
                                         (cons _%lp-hd4862048726%_
                                               _%body4862248719%_))))
                                    (let ((_%body4862348732%_
                                           (reverse _%body4862248719%_)))
                                      (if (gx#stx-null? _%tl4861248703%_)
                                          ((lambda (_%L48736%_
                                                    _%L48738%_
                                                    _%L48739%_
                                                    _%L48740%_
                                                    _%L48741%_
                                                    _%L48742%_
                                                    _%L48743%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L48741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L48742%_ '()))
                                           (cons _%L48741%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L48743%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L48741%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L48740%_ '()))
                                 (cons _%L48739%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L48738%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4877748780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4877848783%_)
                        (cons _%g4877748780%_ _%g4877848783%_))
                      '()
                      _%L48736%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4862348732%_
                                           _%hd4861048690%_
                                           _%hd4860748680%_
                                           _%hd4860448670%_
                                           _%hd4860148660%_
                                           _%hd4859848650%_
                                           _%hd4859548640%_)
                                          (_%g4858548629%_
                                           _%g4858648633%_)))))))
                      (_%loop4861848712%_ _%target4861548706%_ '()))
                    (_%g4858548629%_ _%g4858648633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4858548629%_
                                                   _%g4858648633%_))))
                                          (_%g4858548629%_ _%g4858648633%_))))
                                  (_%g4858548629%_ _%g4858648633%_))))
                          (_%g4858548629%_ _%g4858648633%_))))
                  (_%g4858548629%_ _%g4858648633%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4858548629%_
                                                   _%g4858648633%_))))
                                          (_%g4858548629%_ _%g4858648633%_))))
                                  (_%g4858548629%_ _%g4858648633%_)))))
                      (_%g4858448786%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj79999 _%klass48578%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj79999
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj79999
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj79999
                                    'type-descriptor)))
                             _%var48580%_
                             _%klass48578%_
                             _%checked?48583%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body48582%_)))))
                 (_%expand48011%_
                  (lambda (_%var48475%_
                           _%Type48477%_
                           _%body48478%_
                           _%checked?48479%_
                           _%maybe?48480%_)
                    (let* ((_%klass48482%_
                            (gx#syntax-local-value _%Type48477%_ false))
                           (_%expr-body48485%_
                            (_%expand-body48009%_
                             _%klass48482%_
                             _%var48475%_
                             _%Type48477%_
                             _%body48478%_
                             _%checked?48479%_)))
                      (if _%checked?48479%_
                          (let* ((_%g4849048509%_
                                  (lambda (_%g4849148505%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4849148505%_)))
                                 (_%g4848948571%_
                                  (lambda (_%g4849148513%_)
                                    (if (gx#stx-pair? _%g4849148513%_)
                                        (let ((_%e4849748516%_
                                               (gx#syntax-e _%g4849148513%_)))
                                          (let ((_%hd4849648520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4849748516%_)))
                                                (_%tl4849548523%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4849748516%_))))
                                            (if (gx#stx-pair? _%tl4849548523%_)
                                                (let ((_%e4850048526%_
                                                       (gx#syntax-e
                                                        _%tl4849548523%_)))
                                                  (let ((_%hd4849948530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4850048526%_)))
                                                        (_%tl4849848533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4850048526%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4849848533%_)
                                                        (let ((_%e4850348536%_
                                                               (gx#syntax-e
                                                                _%tl4849848533%_)))
                                                          (let ((_%hd4850248540%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4850348536%_)))
                        (_%tl4850148543%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4850348536%_))))
                    (if (gx#stx-null? _%tl4850148543%_)
                        ((lambda (_%L48546%_ _%L48548%_ _%L48549%_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'with-contract)
                                   (cons (cons _%L48548%_
                                               (cons (gx#datum->syntax '#f ':~)
                                                     (cons _%L48549%_ '())))
                                         (cons _%L48546%_ '())))))
                         _%hd4850248540%_
                         _%hd4849948530%_
                         _%hd4849648520%_)
                        (_%g4849048509%_ _%g4849148513%_))))
                (_%g4849048509%_ _%g4849148513%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4849048509%_
                                                 _%g4849148513%_))))
                                        (_%g4849048509%_ _%g4849148513%_)))))
                            (_%g4848948571%_
                             (list (let ((_%instance?48575%_
                                          (let ((__obj80000 _%klass48482%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80000
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80000
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj80000
                                                 'predicate)))))
                                     (if _%maybe?48480%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?48575%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?48575%_))
                                   _%var48475%_
                                   _%expr-body48485%_)))
                          _%expr-body48485%_)))))
          (let* ((_%__stx7531775318%_ _%stx48006%_)
                 (_%g4801548103%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7531775318%_))))
            (let ((_%__kont7532075321%_
                   (lambda (_%L48436%_ _%L48438%_ _%L48439%_)
                     (_%expand48011%_
                      _%L48439%_
                      _%L48438%_
                      (foldr (lambda (_%g4846248465%_ _%g4846348468%_)
                               (cons _%g4846248465%_ _%g4846348468%_))
                             '()
                             _%L48436%_)
                      '#t
                      '#f)))
                  (_%__kont7532475325%_
                   (lambda (_%L48314%_ _%L48316%_ _%L48317%_)
                     (_%expand48011%_
                      _%L48317%_
                      _%L48316%_
                      (foldr (lambda (_%g4834048343%_ _%g4834148346%_)
                               (cons _%g4834048343%_ _%g4834148346%_))
                             '()
                             _%L48314%_)
                      '#t
                      '#t)))
                  (_%__kont7532875329%_
                   (lambda (_%L48190%_ _%L48192%_ _%L48193%_)
                     (_%expand48011%_
                      _%L48193%_
                      _%L48192%_
                      (foldr (lambda (_%g4821848221%_ _%g4821948224%_)
                               (cons _%g4821848221%_ _%g4821948224%_))
                             '()
                             _%L48190%_)
                      '#f
                      '#f))))
              (let* ((_%__match7546475465%_
                      (lambda (_%e4807648110%_
                               _%hd4807548114%_
                               _%tl4807448117%_
                               _%e4807948120%_
                               _%hd4807848124%_
                               _%tl4807748127%_
                               _%e4808248130%_
                               _%hd4808148134%_
                               _%tl4808048137%_
                               _%e4808548140%_
                               _%hd4808448144%_
                               _%tl4808348147%_
                               _%e4808848150%_
                               _%hd4808748154%_
                               _%tl4808648157%_
                               _%__splice7533075331%_
                               _%target4808948160%_
                               _%tl4809148163%_)
                        (letrec ((_%loop4809248166%_
                                  (lambda (_%hd4809048170%_ _%body4809648173%_)
                                    (if (gx#stx-pair? _%hd4809048170%_)
                                        (let ((_%e4809348176%_
                                               (gx#syntax-e _%hd4809048170%_)))
                                          (let ((_%lp-tl4809548183%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4809348176%_)))
                                                (_%lp-hd4809448180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4809348176%_))))
                                            (_%loop4809248166%_
                                             _%lp-tl4809548183%_
                                             (cons _%lp-hd4809448180%_
                                                   _%body4809648173%_))))
                                        (let ((_%body4809748186%_
                                               (reverse _%body4809648173%_)))
                                          (let ((_%L48190%_ _%body4809748186%_)
                                                (_%L48192%_ _%hd4808748154%_)
                                                (_%L48193%_ _%hd4808148134%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48192%_))
                                                (_%__kont7532875329%_
                                                 _%L48190%_
                                                 _%L48192%_
                                                 _%L48193%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4801548103%_)))))))))
                          (_%loop4809248166%_ _%target4808948160%_ '()))))
                     (_%__match7542075421%_
                      (lambda (_%e4804948234%_
                               _%hd4804848238%_
                               _%tl4804748241%_
                               _%e4805248244%_
                               _%hd4805148248%_
                               _%tl4805048251%_
                               _%e4805548254%_
                               _%hd4805448258%_
                               _%tl4805348261%_
                               _%e4805848264%_
                               _%hd4805748268%_
                               _%tl4805648271%_
                               _%e4806148274%_
                               _%hd4806048278%_
                               _%tl4805948281%_
                               _%__splice7532675327%_
                               _%target4806248284%_
                               _%tl4806448287%_)
                        (letrec ((_%loop4806548290%_
                                  (lambda (_%hd4806348294%_ _%body4806948297%_)
                                    (if (gx#stx-pair? _%hd4806348294%_)
                                        (let ((_%e4806648300%_
                                               (gx#syntax-e _%hd4806348294%_)))
                                          (let ((_%lp-tl4806848307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4806648300%_)))
                                                (_%lp-hd4806748304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4806648300%_))))
                                            (_%loop4806548290%_
                                             _%lp-tl4806848307%_
                                             (cons _%lp-hd4806748304%_
                                                   _%body4806948297%_))))
                                        (let ((_%body4807048310%_
                                               (reverse _%body4806948297%_)))
                                          (let ((_%L48314%_ _%body4807048310%_)
                                                (_%L48316%_ _%hd4806048278%_)
                                                (_%L48317%_ _%hd4805448258%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48316%_))
                                                (_%__kont7532475325%_
                                                 _%L48314%_
                                                 _%L48316%_
                                                 _%L48317%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4801548103%_)))))))))
                          (_%loop4806548290%_ _%target4806248284%_ '()))))
                     (_%__match7537675377%_
                      (lambda (_%e4802248356%_
                               _%hd4802148360%_
                               _%tl4802048363%_
                               _%e4802548366%_
                               _%hd4802448370%_
                               _%tl4802348373%_
                               _%e4802848376%_
                               _%hd4802748380%_
                               _%tl4802648383%_
                               _%e4803148386%_
                               _%hd4803048390%_
                               _%tl4802948393%_
                               _%e4803448396%_
                               _%hd4803348400%_
                               _%tl4803248403%_
                               _%__splice7532275323%_
                               _%target4803548406%_
                               _%tl4803748409%_)
                        (letrec ((_%loop4803848412%_
                                  (lambda (_%hd4803648416%_ _%body4804248419%_)
                                    (if (gx#stx-pair? _%hd4803648416%_)
                                        (let ((_%e4803948422%_
                                               (gx#syntax-e _%hd4803648416%_)))
                                          (let ((_%lp-tl4804148429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4803948422%_)))
                                                (_%lp-hd4804048426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4803948422%_))))
                                            (_%loop4803848412%_
                                             _%lp-tl4804148429%_
                                             (cons _%lp-hd4804048426%_
                                                   _%body4804248419%_))))
                                        (let ((_%body4804348432%_
                                               (reverse _%body4804248419%_)))
                                          (let ((_%L48436%_ _%body4804348432%_)
                                                (_%L48438%_ _%hd4803348400%_)
                                                (_%L48439%_ _%hd4802748380%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48438%_))
                                                (_%__kont7532075321%_
                                                 _%L48436%_
                                                 _%L48438%_
                                                 _%L48439%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4801548103%_)))))))))
                          (_%loop4803848412%_ _%target4803548406%_ '())))))
                (if (gx#stx-pair? _%__stx7531775318%_)
                    (let ((_%e4802248356%_ (gx#syntax-e _%__stx7531775318%_)))
                      (let ((_%tl4802048363%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4802248356%_)))
                            (_%hd4802148360%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4802248356%_))))
                        (if (gx#stx-pair? _%tl4802048363%_)
                            (let ((_%e4802548366%_
                                   (gx#syntax-e _%tl4802048363%_)))
                              (let ((_%tl4802348373%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4802548366%_)))
                                    (_%hd4802448370%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4802548366%_))))
                                (if (gx#stx-pair? _%hd4802448370%_)
                                    (let ((_%e4802848376%_
                                           (gx#syntax-e _%hd4802448370%_)))
                                      (let ((_%tl4802648383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4802848376%_)))
                                            (_%hd4802748380%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4802848376%_))))
                                        (if (gx#stx-pair? _%tl4802648383%_)
                                            (let ((_%e4803148386%_
                                                   (gx#syntax-e
                                                    _%tl4802648383%_)))
                                              (let ((_%tl4802948393%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4803148386%_)))
                                                    (_%hd4803048390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4803148386%_))))
                                                (if (gx#identifier?
                                                     _%hd4803048390%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80175_|
                                                         _%hd4803048390%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4802948393%_)
                                                            (let ((_%e4803448396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4802948393%_)))
                      (let ((_%tl4803248403%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4803448396%_)))
                            (_%hd4803348400%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4803448396%_))))
                        (if (gx#stx-null? _%tl4803248403%_)
                            (if (gx#stx-pair/null? _%tl4802348373%_)
                                (let ((_%__splice7532275323%_
                                       (gx#syntax-split-splice
                                        _%tl4802348373%_
                                        '0)))
                                  (let ((_%tl4803748409%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7532275323%_
                                            '1)))
                                        (_%target4803548406%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7532275323%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4803748409%_)
                                        (_%__match7537675377%_
                                         _%e4802248356%_
                                         _%hd4802148360%_
                                         _%tl4802048363%_
                                         _%e4802548366%_
                                         _%hd4802448370%_
                                         _%tl4802348373%_
                                         _%e4802848376%_
                                         _%hd4802748380%_
                                         _%tl4802648383%_
                                         _%e4803148386%_
                                         _%hd4803048390%_
                                         _%tl4802948393%_
                                         _%e4803448396%_
                                         _%hd4803348400%_
                                         _%tl4803248403%_
                                         _%__splice7532275323%_
                                         _%target4803548406%_
                                         _%tl4803748409%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4801548103%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4801548103%_)))
                            (let () (declare (not safe)) (_%g4801548103%_)))))
                    (let () (declare (not safe)) (_%g4801548103%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80176_|
                     _%hd4803048390%_)
                    (if (gx#stx-pair? _%tl4802948393%_)
                        (let ((_%e4806148274%_ (gx#syntax-e _%tl4802948393%_)))
                          (let ((_%tl4805948281%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4806148274%_)))
                                (_%hd4806048278%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4806148274%_))))
                            (if (gx#stx-null? _%tl4805948281%_)
                                (if (gx#stx-pair/null? _%tl4802348373%_)
                                    (let ((_%__splice7532675327%_
                                           (gx#syntax-split-splice
                                            _%tl4802348373%_
                                            '0)))
                                      (let ((_%tl4806448287%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7532675327%_
                                                '1)))
                                            (_%target4806248284%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7532675327%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4806448287%_)
                                            (_%__match7542075421%_
                                             _%e4802248356%_
                                             _%hd4802148360%_
                                             _%tl4802048363%_
                                             _%e4802548366%_
                                             _%hd4802448370%_
                                             _%tl4802348373%_
                                             _%e4802848376%_
                                             _%hd4802748380%_
                                             _%tl4802648383%_
                                             _%e4803148386%_
                                             _%hd4803048390%_
                                             _%tl4802948393%_
                                             _%e4806148274%_
                                             _%hd4806048278%_
                                             _%tl4805948281%_
                                             _%__splice7532675327%_
                                             _%target4806248284%_
                                             _%tl4806448287%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4801548103%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4801548103%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4801548103%_)))))
                        (let () (declare (not safe)) (_%g4801548103%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80177_|
                         _%hd4803048390%_)
                        (if (gx#stx-pair? _%tl4802948393%_)
                            (let ((_%e4808848150%_
                                   (gx#syntax-e _%tl4802948393%_)))
                              (let ((_%tl4808648157%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4808848150%_)))
                                    (_%hd4808748154%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4808848150%_))))
                                (if (gx#stx-null? _%tl4808648157%_)
                                    (if (gx#stx-pair/null? _%tl4802348373%_)
                                        (let ((_%__splice7533075331%_
                                               (gx#syntax-split-splice
                                                _%tl4802348373%_
                                                '0)))
                                          (let ((_%tl4809148163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7533075331%_
                                                    '1)))
                                                (_%target4808948160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7533075331%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4809148163%_)
                                                (_%__match7546475465%_
                                                 _%e4802248356%_
                                                 _%hd4802148360%_
                                                 _%tl4802048363%_
                                                 _%e4802548366%_
                                                 _%hd4802448370%_
                                                 _%tl4802348373%_
                                                 _%e4802848376%_
                                                 _%hd4802748380%_
                                                 _%tl4802648383%_
                                                 _%e4803148386%_
                                                 _%hd4803048390%_
                                                 _%tl4802948393%_
                                                 _%e4808848150%_
                                                 _%hd4808748154%_
                                                 _%tl4808648157%_
                                                 _%__splice7533075331%_
                                                 _%target4808948160%_
                                                 _%tl4809148163%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4801548103%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4801548103%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4801548103%_)))))
                            (let () (declare (not safe)) (_%g4801548103%_)))
                        (let () (declare (not safe)) (_%g4801548103%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4801548103%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4801548103%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4801548103%_)))))
                            (let () (declare (not safe)) (_%g4801548103%_)))))
                    (let () (declare (not safe)) (_%g4801548103%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx48794%_)
        (letrec ((_%expand-body48797%_
                  (lambda (_%var49614%_
                           _%Interface49616%_
                           _%body49617%_
                           _%checked?49618%_)
                    (let* ((_%type49620%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx48794%_
                               _%Interface49616%_)))
                           (_%g4962349667%_
                            (lambda (_%g4962449663%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4962449663%_)))
                           (_%g4962249825%_
                            (lambda (_%g4962449671%_)
                              (if (gx#stx-pair? _%g4962449671%_)
                                  (let ((_%e4963449674%_
                                         (gx#syntax-e _%g4962449671%_)))
                                    (let ((_%hd4963349678%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4963449674%_)))
                                          (_%tl4963249681%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4963449674%_))))
                                      (if (gx#stx-pair? _%tl4963249681%_)
                                          (let ((_%e4963749684%_
                                                 (gx#syntax-e
                                                  _%tl4963249681%_)))
                                            (let ((_%hd4963649688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4963749684%_)))
                                                  (_%tl4963549691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4963749684%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4963549691%_)
                                                  (let ((_%e4964049694%_
                                                         (gx#syntax-e
                                                          _%tl4963549691%_)))
                                                    (let ((_%hd4963949698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4964049694%_)))
                                                          (_%tl4963849701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4964049694%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4963849701%_)
                                                          (let ((_%e4964349704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4963849701%_)))
                    (let ((_%hd4964249708%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4964349704%_)))
                          (_%tl4964149711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4964349704%_))))
                      (if (gx#stx-pair? _%tl4964149711%_)
                          (let ((_%e4964649714%_
                                 (gx#syntax-e _%tl4964149711%_)))
                            (let ((_%hd4964549718%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4964649714%_)))
                                  (_%tl4964449721%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4964649714%_))))
                              (if (gx#stx-pair? _%tl4964449721%_)
                                  (let ((_%e4964949724%_
                                         (gx#syntax-e _%tl4964449721%_)))
                                    (let ((_%hd4964849728%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4964949724%_)))
                                          (_%tl4964749731%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4964949724%_))))
                                      (if (gx#stx-pair? _%tl4964749731%_)
                                          (let ((_%e4965249734%_
                                                 (gx#syntax-e
                                                  _%tl4964749731%_)))
                                            (let ((_%hd4965149738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965249734%_)))
                                                  (_%tl4965049741%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965249734%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4965149738%_)
                                                  (let ((_g80178_
                                                         (gx#syntax-split-splice
                                                          _%hd4965149738%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80179_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80178_)
                           (##vector-length _g80178_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80179_ 2)))
                    (error "Context expects 2 values" _g80179_)))
              (let ((_%target4965349744%_
                     (let () (declare (not safe)) (##vector-ref _g80178_ 0)))
                    (_%tl4965549747%_
                     (let () (declare (not safe)) (##vector-ref _g80178_ 1))))
                (if (gx#stx-null? _%tl4965549747%_)
                    (letrec ((_%loop4965649750%_
                              (lambda (_%hd4965449754%_ _%body4966049757%_)
                                (if (gx#stx-pair? _%hd4965449754%_)
                                    (let ((_%e4965749760%_
                                           (gx#syntax-e _%hd4965449754%_)))
                                      (let ((_%lp-hd4965849764%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4965749760%_)))
                                            (_%lp-tl4965949767%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4965749760%_))))
                                        (_%loop4965649750%_
                                         _%lp-tl4965949767%_
                                         (cons _%lp-hd4965849764%_
                                               _%body4966049757%_))))
                                    (let ((_%body4966149770%_
                                           (reverse _%body4966049757%_)))
                                      (if (gx#stx-null? _%tl4965049741%_)
                                          ((lambda (_%L49774%_
                                                    _%L49776%_
                                                    _%L49777%_
                                                    _%L49778%_
                                                    _%L49779%_
                                                    _%L49780%_
                                                    _%L49781%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L49778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L49779%_ '()))
                                           (cons _%L49778%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L49781%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L49778%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L49780%_ '()))
                                 (cons _%L49777%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L49776%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4981649819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4981749822%_)
                        (cons _%g4981649819%_ _%g4981749822%_))
                      '()
                      _%L49774%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4966149770%_
                                           _%hd4964849728%_
                                           _%hd4964549718%_
                                           _%hd4964249708%_
                                           _%hd4963949698%_
                                           _%hd4963649688%_
                                           _%hd4963349678%_)
                                          (_%g4962349667%_
                                           _%g4962449671%_)))))))
                      (_%loop4965649750%_ _%target4965349744%_ '()))
                    (_%g4962349667%_ _%g4962449671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4962349667%_
                                                   _%g4962449671%_))))
                                          (_%g4962349667%_ _%g4962449671%_))))
                                  (_%g4962349667%_ _%g4962449671%_))))
                          (_%g4962349667%_ _%g4962449671%_))))
                  (_%g4962349667%_ _%g4962449671%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4962349667%_
                                                   _%g4962449671%_))))
                                          (_%g4962349667%_ _%g4962449671%_))))
                                  (_%g4962349667%_ _%g4962449671%_)))))
                      (_%g4962249825%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type49620%_
                             (let ((__obj80001 _%type49620%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80001
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80001
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj80001
                                    'instance-type)))
                             _%var49614%_
                             _%checked?49618%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49617%_)))))
                 (_%expand48799%_
                  (lambda (_%var49413%_
                           _%Interface49415%_
                           _%body49416%_
                           _%checked?49417%_
                           _%checked-methods?49418%_
                           _%maybe?49419%_)
                    (let* ((_%g4942149429%_
                            (lambda (_%g4942249425%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4942249425%_)))
                           (_%g4942049606%_
                            (lambda (_%g4942249433%_)
                              ((lambda (_%L49436%_)
                                 (let ()
                                   (if _%checked?49417%_
                                       (if _%maybe?49419%_
                                           (let* ((_%g4944849463%_
                                                   (lambda (_%g4944949459%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4944949459%_)))
                                                  (_%g4944749509%_
                                                   (lambda (_%g4944949467%_)
                                                     (if (gx#stx-pair?
                                                          _%g4944949467%_)
                                                         (let ((_%e4945449470%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4944949467%_)))
                   (let ((_%hd4945349474%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4945449470%_)))
                         (_%tl4945249477%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4945449470%_))))
                     (if (gx#stx-pair? _%tl4945249477%_)
                         (let ((_%e4945749480%_
                                (gx#syntax-e _%tl4945249477%_)))
                           (let ((_%hd4945649484%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4945749480%_)))
                                 (_%tl4945549487%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4945749480%_))))
                             (if (gx#stx-null? _%tl4945549487%_)
                                 ((lambda (_%L49490%_ _%L49492%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49492%_
                                                        (cons (cons _%L49490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49492%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons _%L49492%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49436%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'nil-dereference!)
                                              (cons _%L49492%_ '()))
                                        '()))))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd4945649484%_
                                  _%hd4945349474%_)
                                 (_%g4944849463%_ _%g4944949467%_))))
                         (_%g4944849463%_ _%g4944949467%_))))
                 (_%g4944849463%_ _%g4944949467%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4944749509%_
                                              (list _%var49413%_
                                                    _%Interface49415%_)))
                                           (let* ((_%g4951349528%_
                                                   (lambda (_%g4951449524%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4951449524%_)))
                                                  (_%g4951249572%_
                                                   (lambda (_%g4951449532%_)
                                                     (if (gx#stx-pair?
                                                          _%g4951449532%_)
                                                         (let ((_%e4951949535%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4951449532%_)))
                   (let ((_%hd4951849539%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4951949535%_)))
                         (_%tl4951749542%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4951949535%_))))
                     (if (gx#stx-pair? _%tl4951749542%_)
                         (let ((_%e4952249545%_
                                (gx#syntax-e _%tl4951749542%_)))
                           (let ((_%hd4952149549%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4952249545%_)))
                                 (_%tl4952049552%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4952249545%_))))
                             (if (gx#stx-null? _%tl4952049552%_)
                                 ((lambda (_%L49555%_ _%L49557%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49557%_
                                                        (cons (cons _%L49555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49557%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L49436%_ '())))))
                                  _%hd4952149549%_
                                  _%hd4951849539%_)
                                 (_%g4951349528%_ _%g4951449532%_))))
                         (_%g4951349528%_ _%g4951449532%_))))
                 (_%g4951349528%_ _%g4951449532%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4951249572%_
                                              (list _%var49413%_
                                                    _%Interface49415%_))))
                                       (if _%maybe?49419%_
                                           (let* ((_%g4957649584%_
                                                   (lambda (_%g4957749580%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4957749580%_)))
                                                  (_%g4957549602%_
                                                   (lambda (_%g4957749588%_)
                                                     ((lambda (_%L49591%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L49591%_
                              (cons _%L49436%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'nil-dereference!)
                                                (cons _%L49591%_ '()))
                                          '()))))))
              _%g4957749588%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4957549602%_ _%var49413%_))
                                           _%L49436%_))))
                               _%g4942249433%_))))
                      (_%g4942049606%_
                       (_%expand-body48797%_
                        _%var49413%_
                        _%Interface49415%_
                        _%body49416%_
                        (let ((_%$e49610%_ _%checked?49417%_))
                          (if _%$e49610%_
                              _%$e49610%_
                              _%checked-methods?49418%_))))))))
          (let* ((_%__stx7546775468%_ _%stx48794%_)
                 (_%g4880448919%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7546775468%_))))
            (let ((_%__kont7547075471%_
                   (lambda (_%L49374%_ _%L49376%_ _%L49377%_)
                     (_%expand48799%_
                      _%L49377%_
                      _%L49376%_
                      (foldr (lambda (_%g4940049403%_ _%g4940149406%_)
                               (cons _%g4940049403%_ _%g4940149406%_))
                             '()
                             _%L49374%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7547475475%_
                   (lambda (_%L49252%_ _%L49254%_ _%L49255%_)
                     (_%expand48799%_
                      _%L49255%_
                      _%L49254%_
                      (foldr (lambda (_%g4927849281%_ _%g4927949284%_)
                               (cons _%g4927849281%_ _%g4927949284%_))
                             '()
                             _%L49252%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7547875479%_
                   (lambda (_%L49130%_ _%L49132%_ _%L49133%_)
                     (_%expand48799%_
                      _%L49133%_
                      _%L49132%_
                      (foldr (lambda (_%g4915649159%_ _%g4915749162%_)
                               (cons _%g4915649159%_ _%g4915749162%_))
                             '()
                             _%L49130%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7548275483%_
                   (lambda (_%L49006%_ _%L49008%_ _%L49009%_)
                     (_%expand48799%_
                      _%L49009%_
                      _%L49008%_
                      (foldr (lambda (_%g4903449037%_ _%g4903549040%_)
                               (cons _%g4903449037%_ _%g4903549040%_))
                             '()
                             _%L49006%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7566275663%_
                      (lambda (_%e4889248926%_
                               _%hd4889148930%_
                               _%tl4889048933%_
                               _%e4889548936%_
                               _%hd4889448940%_
                               _%tl4889348943%_
                               _%e4889848946%_
                               _%hd4889748950%_
                               _%tl4889648953%_
                               _%e4890148956%_
                               _%hd4890048960%_
                               _%tl4889948963%_
                               _%e4890448966%_
                               _%hd4890348970%_
                               _%tl4890248973%_
                               _%__splice7548475485%_
                               _%target4890548976%_
                               _%tl4890748979%_)
                        (letrec ((_%loop4890848982%_
                                  (lambda (_%hd4890648986%_ _%body4891248989%_)
                                    (if (gx#stx-pair? _%hd4890648986%_)
                                        (let ((_%e4890948992%_
                                               (gx#syntax-e _%hd4890648986%_)))
                                          (let ((_%lp-tl4891148999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4890948992%_)))
                                                (_%lp-hd4891048996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4890948992%_))))
                                            (_%loop4890848982%_
                                             _%lp-tl4891148999%_
                                             (cons _%lp-hd4891048996%_
                                                   _%body4891248989%_))))
                                        (let ((_%body4891349002%_
                                               (reverse _%body4891248989%_)))
                                          (let ((_%L49006%_ _%body4891349002%_)
                                                (_%L49008%_ _%hd4890348970%_)
                                                (_%L49009%_ _%hd4889748950%_))
                                            (if (and (gx#identifier?
                                                      _%L49009%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49008%_)))
                                                (_%__kont7548275483%_
                                                 _%L49006%_
                                                 _%L49008%_
                                                 _%L49009%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4880448919%_)))))))))
                          (_%loop4890848982%_ _%target4890548976%_ '()))))
                     (_%__match7561875619%_
                      (lambda (_%e4886549050%_
                               _%hd4886449054%_
                               _%tl4886349057%_
                               _%e4886849060%_
                               _%hd4886749064%_
                               _%tl4886649067%_
                               _%e4887149070%_
                               _%hd4887049074%_
                               _%tl4886949077%_
                               _%e4887449080%_
                               _%hd4887349084%_
                               _%tl4887249087%_
                               _%e4887749090%_
                               _%hd4887649094%_
                               _%tl4887549097%_
                               _%__splice7548075481%_
                               _%target4887849100%_
                               _%tl4888049103%_)
                        (letrec ((_%loop4888149106%_
                                  (lambda (_%hd4887949110%_ _%body4888549113%_)
                                    (if (gx#stx-pair? _%hd4887949110%_)
                                        (let ((_%e4888249116%_
                                               (gx#syntax-e _%hd4887949110%_)))
                                          (let ((_%lp-tl4888449123%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4888249116%_)))
                                                (_%lp-hd4888349120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4888249116%_))))
                                            (_%loop4888149106%_
                                             _%lp-tl4888449123%_
                                             (cons _%lp-hd4888349120%_
                                                   _%body4888549113%_))))
                                        (let ((_%body4888649126%_
                                               (reverse _%body4888549113%_)))
                                          (let ((_%L49130%_ _%body4888649126%_)
                                                (_%L49132%_ _%hd4887649094%_)
                                                (_%L49133%_ _%hd4887049074%_))
                                            (if (and (gx#identifier?
                                                      _%L49133%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49132%_)))
                                                (_%__kont7547875479%_
                                                 _%L49130%_
                                                 _%L49132%_
                                                 _%L49133%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4880448919%_)))))))))
                          (_%loop4888149106%_ _%target4887849100%_ '()))))
                     (_%__match7557475575%_
                      (lambda (_%e4883849172%_
                               _%hd4883749176%_
                               _%tl4883649179%_
                               _%e4884149182%_
                               _%hd4884049186%_
                               _%tl4883949189%_
                               _%e4884449192%_
                               _%hd4884349196%_
                               _%tl4884249199%_
                               _%e4884749202%_
                               _%hd4884649206%_
                               _%tl4884549209%_
                               _%e4885049212%_
                               _%hd4884949216%_
                               _%tl4884849219%_
                               _%__splice7547675477%_
                               _%target4885149222%_
                               _%tl4885349225%_)
                        (letrec ((_%loop4885449228%_
                                  (lambda (_%hd4885249232%_ _%body4885849235%_)
                                    (if (gx#stx-pair? _%hd4885249232%_)
                                        (let ((_%e4885549238%_
                                               (gx#syntax-e _%hd4885249232%_)))
                                          (let ((_%lp-tl4885749245%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4885549238%_)))
                                                (_%lp-hd4885649242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4885549238%_))))
                                            (_%loop4885449228%_
                                             _%lp-tl4885749245%_
                                             (cons _%lp-hd4885649242%_
                                                   _%body4885849235%_))))
                                        (let ((_%body4885949248%_
                                               (reverse _%body4885849235%_)))
                                          (let ((_%L49252%_ _%body4885949248%_)
                                                (_%L49254%_ _%hd4884949216%_)
                                                (_%L49255%_ _%hd4884349196%_))
                                            (if (and (gx#identifier?
                                                      _%L49255%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49254%_)))
                                                (_%__kont7547475475%_
                                                 _%L49252%_
                                                 _%L49254%_
                                                 _%L49255%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4880448919%_)))))))))
                          (_%loop4885449228%_ _%target4885149222%_ '()))))
                     (_%__match7553075531%_
                      (lambda (_%e4881149294%_
                               _%hd4881049298%_
                               _%tl4880949301%_
                               _%e4881449304%_
                               _%hd4881349308%_
                               _%tl4881249311%_
                               _%e4881749314%_
                               _%hd4881649318%_
                               _%tl4881549321%_
                               _%e4882049324%_
                               _%hd4881949328%_
                               _%tl4881849331%_
                               _%e4882349334%_
                               _%hd4882249338%_
                               _%tl4882149341%_
                               _%__splice7547275473%_
                               _%target4882449344%_
                               _%tl4882649347%_)
                        (letrec ((_%loop4882749350%_
                                  (lambda (_%hd4882549354%_ _%body4883149357%_)
                                    (if (gx#stx-pair? _%hd4882549354%_)
                                        (let ((_%e4882849360%_
                                               (gx#syntax-e _%hd4882549354%_)))
                                          (let ((_%lp-tl4883049367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4882849360%_)))
                                                (_%lp-hd4882949364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4882849360%_))))
                                            (_%loop4882749350%_
                                             _%lp-tl4883049367%_
                                             (cons _%lp-hd4882949364%_
                                                   _%body4883149357%_))))
                                        (let ((_%body4883249370%_
                                               (reverse _%body4883149357%_)))
                                          (let ((_%L49374%_ _%body4883249370%_)
                                                (_%L49376%_ _%hd4882249338%_)
                                                (_%L49377%_ _%hd4881649318%_))
                                            (if (and (gx#identifier?
                                                      _%L49377%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49376%_)))
                                                (_%__kont7547075471%_
                                                 _%L49374%_
                                                 _%L49376%_
                                                 _%L49377%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4880448919%_)))))))))
                          (_%loop4882749350%_ _%target4882449344%_ '())))))
                (if (gx#stx-pair? _%__stx7546775468%_)
                    (let ((_%e4881149294%_ (gx#syntax-e _%__stx7546775468%_)))
                      (let ((_%tl4880949301%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4881149294%_)))
                            (_%hd4881049298%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4881149294%_))))
                        (if (gx#stx-pair? _%tl4880949301%_)
                            (let ((_%e4881449304%_
                                   (gx#syntax-e _%tl4880949301%_)))
                              (let ((_%tl4881249311%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4881449304%_)))
                                    (_%hd4881349308%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4881449304%_))))
                                (if (gx#stx-pair? _%hd4881349308%_)
                                    (let ((_%e4881749314%_
                                           (gx#syntax-e _%hd4881349308%_)))
                                      (let ((_%tl4881549321%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4881749314%_)))
                                            (_%hd4881649318%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4881749314%_))))
                                        (if (gx#stx-pair? _%tl4881549321%_)
                                            (let ((_%e4882049324%_
                                                   (gx#syntax-e
                                                    _%tl4881549321%_)))
                                              (let ((_%tl4881849331%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4882049324%_)))
                                                    (_%hd4881949328%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4882049324%_))))
                                                (if (gx#identifier?
                                                     _%hd4881949328%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80180_|
                                                         _%hd4881949328%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4881849331%_)
                                                            (let ((_%e4882349334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4881849331%_)))
                      (let ((_%tl4882149341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4882349334%_)))
                            (_%hd4882249338%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4882349334%_))))
                        (if (gx#stx-null? _%tl4882149341%_)
                            (if (gx#stx-pair/null? _%tl4881249311%_)
                                (let ((_%__splice7547275473%_
                                       (gx#syntax-split-splice
                                        _%tl4881249311%_
                                        '0)))
                                  (let ((_%tl4882649347%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7547275473%_
                                            '1)))
                                        (_%target4882449344%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7547275473%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4882649347%_)
                                        (_%__match7553075531%_
                                         _%e4881149294%_
                                         _%hd4881049298%_
                                         _%tl4880949301%_
                                         _%e4881449304%_
                                         _%hd4881349308%_
                                         _%tl4881249311%_
                                         _%e4881749314%_
                                         _%hd4881649318%_
                                         _%tl4881549321%_
                                         _%e4882049324%_
                                         _%hd4881949328%_
                                         _%tl4881849331%_
                                         _%e4882349334%_
                                         _%hd4882249338%_
                                         _%tl4882149341%_
                                         _%__splice7547275473%_
                                         _%target4882449344%_
                                         _%tl4882649347%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4880448919%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4880448919%_)))
                            (let () (declare (not safe)) (_%g4880448919%_)))))
                    (let () (declare (not safe)) (_%g4880448919%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80181_|
                     _%hd4881949328%_)
                    (if (gx#stx-pair? _%tl4881849331%_)
                        (let ((_%e4885049212%_ (gx#syntax-e _%tl4881849331%_)))
                          (let ((_%tl4884849219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4885049212%_)))
                                (_%hd4884949216%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4885049212%_))))
                            (if (gx#stx-null? _%tl4884849219%_)
                                (if (gx#stx-pair/null? _%tl4881249311%_)
                                    (let ((_%__splice7547675477%_
                                           (gx#syntax-split-splice
                                            _%tl4881249311%_
                                            '0)))
                                      (let ((_%tl4885349225%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7547675477%_
                                                '1)))
                                            (_%target4885149222%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7547675477%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4885349225%_)
                                            (_%__match7557475575%_
                                             _%e4881149294%_
                                             _%hd4881049298%_
                                             _%tl4880949301%_
                                             _%e4881449304%_
                                             _%hd4881349308%_
                                             _%tl4881249311%_
                                             _%e4881749314%_
                                             _%hd4881649318%_
                                             _%tl4881549321%_
                                             _%e4882049324%_
                                             _%hd4881949328%_
                                             _%tl4881849331%_
                                             _%e4885049212%_
                                             _%hd4884949216%_
                                             _%tl4884849219%_
                                             _%__splice7547675477%_
                                             _%target4885149222%_
                                             _%tl4885349225%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4880448919%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4880448919%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4880448919%_)))))
                        (let () (declare (not safe)) (_%g4880448919%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80182_|
                         _%hd4881949328%_)
                        (if (gx#stx-pair? _%tl4881849331%_)
                            (let ((_%e4887749090%_
                                   (gx#syntax-e _%tl4881849331%_)))
                              (let ((_%tl4887549097%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4887749090%_)))
                                    (_%hd4887649094%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4887749090%_))))
                                (if (gx#stx-null? _%tl4887549097%_)
                                    (if (gx#stx-pair/null? _%tl4881249311%_)
                                        (let ((_%__splice7548075481%_
                                               (gx#syntax-split-splice
                                                _%tl4881249311%_
                                                '0)))
                                          (let ((_%tl4888049103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7548075481%_
                                                    '1)))
                                                (_%target4887849100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7548075481%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4888049103%_)
                                                (_%__match7561875619%_
                                                 _%e4881149294%_
                                                 _%hd4881049298%_
                                                 _%tl4880949301%_
                                                 _%e4881449304%_
                                                 _%hd4881349308%_
                                                 _%tl4881249311%_
                                                 _%e4881749314%_
                                                 _%hd4881649318%_
                                                 _%tl4881549321%_
                                                 _%e4882049324%_
                                                 _%hd4881949328%_
                                                 _%tl4881849331%_
                                                 _%e4887749090%_
                                                 _%hd4887649094%_
                                                 _%tl4887549097%_
                                                 _%__splice7548075481%_
                                                 _%target4887849100%_
                                                 _%tl4888049103%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4880448919%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4880448919%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4880448919%_)))))
                            (let () (declare (not safe)) (_%g4880448919%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80183_|
                             _%hd4881949328%_)
                            (if (gx#stx-pair? _%tl4881849331%_)
                                (let ((_%e4890448966%_
                                       (gx#syntax-e _%tl4881849331%_)))
                                  (let ((_%tl4890248973%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4890448966%_)))
                                        (_%hd4890348970%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4890448966%_))))
                                    (if (gx#stx-null? _%tl4890248973%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4881249311%_)
                                            (let ((_%__splice7548475485%_
                                                   (gx#syntax-split-splice
                                                    _%tl4881249311%_
                                                    '0)))
                                              (let ((_%tl4890748979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7548475485%_
                                                        '1)))
                                                    (_%target4890548976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7548475485%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4890748979%_)
                                                    (_%__match7566275663%_
                                                     _%e4881149294%_
                                                     _%hd4881049298%_
                                                     _%tl4880949301%_
                                                     _%e4881449304%_
                                                     _%hd4881349308%_
                                                     _%tl4881249311%_
                                                     _%e4881749314%_
                                                     _%hd4881649318%_
                                                     _%tl4881549321%_
                                                     _%e4882049324%_
                                                     _%hd4881949328%_
                                                     _%tl4881849331%_
                                                     _%e4890448966%_
                                                     _%hd4890348970%_
                                                     _%tl4890248973%_
                                                     _%__splice7548475485%_
                                                     _%target4890548976%_
                                                     _%tl4890748979%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4880448919%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4880448919%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4880448919%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4880448919%_)))
                            (let () (declare (not safe)) (_%g4880448919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4880448919%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4880448919%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4880448919%_)))))
                            (let () (declare (not safe)) (_%g4880448919%_)))))
                    (let () (declare (not safe)) (_%g4880448919%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx49834%_)
        (let* ((_%__stx7566575666%_ _%stx49834%_)
               (_%g4983949899%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7566575666%_))))
          (let ((_%__kont7566875669%_
                 (lambda (_%L50476%_ _%L50478%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L50478%_ '()))
                               (foldr (lambda (_%g5049450497%_ _%g5049550500%_)
                                        (cons _%g5049450497%_ _%g5049550500%_))
                                      '()
                                      _%L50476%_)))))
                (_%__kont7567275673%_
                 (lambda (_%L50047%_ _%L50049%_)
                   (if (let ()
                         (declare (not safe))
                         (|gerbil/core/contract~Using[1]#dotted-identifier?|
                          _%L50049%_))
                       (let* ((_%g5006950076%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                  _%stx49834%_
                                  _%L50049%_)))
                              (_%E5007150082%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5006950076%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5007250395%_
                               (lambda (_%parts50086%_ _%var50088%_)
                                 (let ((_%$e50090%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50088%_))))
                                   (if _%$e50090%_
                                       ((lambda (_%te50094%_)
                                          (let _%loop50097%_ ((_%parts50100%_
                                                               _%parts50086%_)
                                                              (_%type50102%_
                                                               (##direct-structure-ref
                                                                _%te50094%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50103%_
                                                               _%var50088%_)
                                                              (_%nil-check?50104%_
                                                               '#f))
                                            (let* ((_%parts5010550113%_
                                                    _%parts50100%_)
                                                   (_%else5010750174%_
                                                    (lambda ()
                                                      (let* ((_%g5012550133%_
                                                              (lambda (_%g5012650129%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5012650129%_)))
                     (_%g5012450170%_
                      (lambda (_%g5012650137%_)
                        ((lambda (_%L50140%_)
                           (let ()
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons _%L50140%_
                                         (foldr (lambda (_%g5016150164%_
                                                         _%g5016250167%_)
                                                  (cons _%g5016150164%_
                                                        _%g5016250167%_))
                                                '()
                                                _%L50047%_)))))
                         _%g5012650137%_))))
                (_%g5012450170%_ _%object50103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5010950369%_
                                                    (lambda (_%rest50178%_
                                                             _%part50180%_)
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (not _%nil-check?50104%_))
                       (let ((__tmp80184 (symbol->string _%part50180%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp80184)))
                  (let ()
                    (let ((_%str50184%_ (symbol->string _%part50180%_)))
                      (_%loop50097%_
                       (cons (let ((__tmp80185
                                    (substring
                                     _%str50184%_
                                     '1
                                     (string-length _%str50184%_))))
                               (declare (not safe))
                               (##string->symbol __tmp80185))
                             _%rest50178%_)
                       _%type50102%_
                       _%object50103%_
                       '#t)))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50102%_))
                      (let ()
                        (let* ((_%g5018950204%_
                                (lambda (_%g5019050200%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5019050200%_)))
                               (_%g5018850281%_
                                (lambda (_%g5019050208%_)
                                  (if (gx#stx-pair? _%g5019050208%_)
                                      (let ((_%e5019550211%_
                                             (gx#syntax-e _%g5019050208%_)))
                                        (let ((_%hd5019450215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5019550211%_)))
                                              (_%tl5019350218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5019550211%_))))
                                          (if (gx#stx-pair? _%tl5019350218%_)
                                              (let ((_%e5019850221%_
                                                     (gx#syntax-e
                                                      _%tl5019350218%_)))
                                                (let ((_%hd5019750225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5019850221%_)))
                                                      (_%tl5019650228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5019850221%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5019650228%_)
                                                      ((lambda (_%L50231%_
                                                                _%L50233%_)
                                                         (let ()
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (null? _%rest50178%_))
                       (let ()
                         (if _%nil-check?50104%_
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons (cons _%L50231%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'check-nil!)
                                                           (cons _%L50233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (foldr (lambda (_%g5025250255%_
                                                         _%g5025350258%_)
                                                  (cons _%g5025250255%_
                                                        _%g5025350258%_))
                                                '()
                                                _%L50047%_)))
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons (cons _%L50231%_
                                               (cons _%L50233%_ '()))
                                         (foldr (lambda (_%g5026050263%_
                                                         _%g5026150266%_)
                                                  (cons _%g5026050263%_
                                                        _%g5026150266%_))
                                                '()
                                                _%L50047%_)))))
                       (let ((_%$e50269%_
                              (let ()
                                (declare (not safe))
                                (gerbil/core/mop~MOP-2#!class-slot-type
                                 _%type50102%_
                                 _%part50180%_))))
                         (if _%$e50269%_
                             ((lambda (_%type50273%_)
                                (let ((_%type50276%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx49834%_
                                          _%type50273%_))))
                                  (if _%nil-check?50104%_
                                      (_%loop50097%_
                                       _%rest50178%_
                                       _%type50276%_
                                       (cons _%L50231%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'check-nil!)
                                                         (cons _%L50233%_ '()))
                                                   '()))
                                       '#f)
                                      (_%loop50097%_
                                       _%rest50178%_
                                       _%type50276%_
                                       (cons _%L50231%_ (cons _%L50233%_ '()))
                                       '#f))))
                              _%$e50269%_)
                             (let ()
                               (gx#raise-syntax-error
                                '#f
                                '"unresolved dotted reference; unknown type for slot"
                                _%stx49834%_
                                _%L50049%_
                                _%part50180%_)))))))
               _%hd5019750225%_
               _%hd5019450215%_)
              (_%g5018950204%_ _%g5019050208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5018950204%_
                                               _%g5019050208%_))))
                                      (_%g5018950204%_ _%g5019050208%_)))))
                          (_%g5018850281%_
                           (list _%object50103%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                    _%stx49834%_
                                    _%type50102%_
                                    _%part50180%_))))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50102%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest50178%_))
                                (let* ((_%g5028750302%_
                                        (lambda (_%g5028850298%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g5028850298%_)))
                                       (_%g5028650363%_
                                        (lambda (_%g5028850306%_)
                                          (if (gx#stx-pair? _%g5028850306%_)
                                              (let ((_%e5029350309%_
                                                     (gx#syntax-e
                                                      _%g5028850306%_)))
                                                (let ((_%hd5029250313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5029350309%_)))
                                                      (_%tl5029150316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5029350309%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5029150316%_)
                                                      (let ((_%e5029650319%_
                                                             (gx#syntax-e
                                                              _%tl5029150316%_)))
                                                        (let ((_%hd5029550323%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5029650319%_)))
                      (_%tl5029450326%_
                       (let () (declare (not safe)) (##cdr _%e5029650319%_))))
                  (if (gx#stx-null? _%tl5029450326%_)
                      ((lambda (_%L50329%_ _%L50331%_)
                         (let ()
                           (if _%nil-check?50104%_
                               (cons (gx#datum->syntax '#f '%%app)
                                     (cons (cons (gx#datum->syntax '#f '%%ref)
                                                 (cons _%L50329%_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'check-nil!)
                                                       (cons _%L50331%_ '()))
                                                 (foldr (lambda (_%g5034650349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5034750352%_)
                  (cons _%g5034650349%_ _%g5034750352%_))
                '()
                _%L50047%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons (gx#datum->syntax '#f '%%app)
                                     (cons (cons (gx#datum->syntax '#f '%%ref)
                                                 (cons _%L50329%_ '()))
                                           (cons _%L50331%_
                                                 (foldr (lambda (_%g5035450357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5035550360%_)
                  (cons _%g5035450357%_ _%g5035550360%_))
                '()
                _%L50047%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _%hd5029550323%_
                       _%hd5029250313%_)
                      (_%g5028750302%_ _%g5028850306%_))))
              (_%g5028750302%_ _%g5028850306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5028750302%_
                                               _%g5028850306%_)))))
                                  (_%g5028650363%_
                                   (list _%object50103%_
                                         (gx#syntax-local-introduce
                                          (make-symbol
                                           (if (##direct-structure-ref
                                                _%te50094%_
                                                '3
                                                gerbil/core/contract~TypeEnv#type-env::t
                                                '#f)
                                               '"&"
                                               '"")
                                           (let ((__obj80002 _%type50102%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj80002
                                                    'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj80002
                                                    '1
                                                    '#f
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/contract~InterfaceInfo#interface-info::t
                                                  __obj80002
                                                  'name)))
                                           '"-"
                                           _%part50180%_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"illegal dotted reference; interface has no slots"
                                 _%stx49834%_
                                 _%L50049%_
                                 _%part50180%_)))
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"unexpected type"
                             _%stx49834%_
                             _%type50102%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5010550113%_))
                                                  (let ((_%hd5011050373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5010550113%_)))
                                                        (_%tl5011150376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5010550113%_))))
                                                    (let* ((_%part50379%_
                                                            _%hd5011050373%_)
                                                           (_%rest50382%_
                                                            _%tl5011150376%_))
                                                      (_%K5010950369%_
                                                       _%rest50382%_
                                                       _%part50379%_)))
                                                  (_%else5010750174%_)))))
                                        _%$e50090%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f '%%app)
                                               (cons _%L50049%_
                                                     (foldr (lambda (_%g5038650389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5038750392%_)
                      (cons _%g5038650389%_ _%g5038750392%_))
                    '()
                    _%L50047%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5006950076%_))
                             (let ((_%hd5007350399%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5006950076%_)))
                                   (_%tl5007450402%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5006950076%_))))
                               (let* ((_%var50405%_ _%hd5007350399%_)
                                      (_%parts50408%_ _%tl5007450402%_))
                                 (_%K5007250395%_
                                  _%parts50408%_
                                  _%var50405%_)))
                             (_%E5007150082%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50049%_
                                   (foldr (lambda (_%g5041050413%_
                                                   _%g5041150416%_)
                                            (cons _%g5041050413%_
                                                  _%g5041150416%_))
                                          '()
                                          _%L50047%_))))))
                (_%__kont7567675677%_
                 (lambda (_%L49946%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g4996149964%_ _%g4996249967%_)
                                  (cons _%g4996149964%_ _%g4996249967%_))
                                '()
                                _%L49946%_)))))
            (let* ((_%__match7575275753%_
                    (lambda (_%e4988449906%_
                             _%hd4988349910%_
                             _%tl4988249913%_
                             _%__splice7567875679%_
                             _%target4988549916%_
                             _%tl4988749919%_)
                      (letrec ((_%loop4988849922%_
                                (lambda (_%hd4988649926%_ _%arg4989249929%_)
                                  (if (gx#stx-pair? _%hd4988649926%_)
                                      (let ((_%e4988949932%_
                                             (gx#syntax-e _%hd4988649926%_)))
                                        (let ((_%lp-tl4989149939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4988949932%_)))
                                              (_%lp-hd4989049936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4988949932%_))))
                                          (_%loop4988849922%_
                                           _%lp-tl4989149939%_
                                           (cons _%lp-hd4989049936%_
                                                 _%arg4989249929%_))))
                                      (let ((_%arg4989349942%_
                                             (reverse _%arg4989249929%_)))
                                        (_%__kont7567675677%_
                                         _%arg4989349942%_))))))
                        (_%loop4988849922%_ _%target4988549916%_ '()))))
                   (_%__match7573875739%_
                    (lambda (_%e4986249977%_
                             _%hd4986149981%_
                             _%tl4986049984%_
                             _%e4986549987%_
                             _%hd4986449991%_
                             _%tl4986349994%_
                             _%e4986849997%_
                             _%hd4986750001%_
                             _%tl4986650004%_
                             _%e4987150007%_
                             _%hd4987050011%_
                             _%tl4986950014%_
                             _%__splice7567475675%_
                             _%target4987250017%_
                             _%tl4987450020%_)
                      (letrec ((_%loop4987550023%_
                                (lambda (_%hd4987350027%_ _%rand4987950030%_)
                                  (if (gx#stx-pair? _%hd4987350027%_)
                                      (let ((_%e4987650033%_
                                             (gx#syntax-e _%hd4987350027%_)))
                                        (let ((_%lp-tl4987850040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4987650033%_)))
                                              (_%lp-hd4987750037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4987650033%_))))
                                          (_%loop4987550023%_
                                           _%lp-tl4987850040%_
                                           (cons _%lp-hd4987750037%_
                                                 _%rand4987950030%_))))
                                      (let ((_%rand4988050043%_
                                             (reverse _%rand4987950030%_)))
                                        (_%__kont7567275673%_
                                         _%rand4988050043%_
                                         _%hd4987050011%_))))))
                        (_%loop4987550023%_ _%target4987250017%_ '()))))
                   (_%__match7571275713%_
                    (lambda (_%e4986249977%_
                             _%hd4986149981%_
                             _%tl4986049984%_
                             _%e4986549987%_
                             _%hd4986449991%_
                             _%tl4986349994%_)
                      (if (gx#stx-pair? _%hd4986449991%_)
                          (let ((_%e4986849997%_
                                 (gx#syntax-e _%hd4986449991%_)))
                            (let ((_%tl4986650004%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4986849997%_)))
                                  (_%hd4986750001%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4986849997%_))))
                              (if (gx#identifier? _%hd4986750001%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80186_|
                                       _%hd4986750001%_)
                                      (if (gx#stx-pair? _%tl4986650004%_)
                                          (let ((_%e4987150007%_
                                                 (gx#syntax-e
                                                  _%tl4986650004%_)))
                                            (let ((_%tl4986950014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4987150007%_)))
                                                  (_%hd4987050011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4987150007%_))))
                                              (if (gx#stx-null?
                                                   _%tl4986950014%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4986349994%_)
                                                      (let ((_%__splice7567475675%_
                                                             (gx#syntax-split-splice
                                                              _%tl4986349994%_
                                                              '0)))
                                                        (let ((_%tl4987450020%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7567475675%_ '1)))
                      (_%target4987250017%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7567475675%_ '0))))
                  (if (gx#stx-null? _%tl4987450020%_)
                      (_%__match7573875739%_
                       _%e4986249977%_
                       _%hd4986149981%_
                       _%tl4986049984%_
                       _%e4986549987%_
                       _%hd4986449991%_
                       _%tl4986349994%_
                       _%e4986849997%_
                       _%hd4986750001%_
                       _%tl4986650004%_
                       _%e4987150007%_
                       _%hd4987050011%_
                       _%tl4986950014%_
                       _%__splice7567475675%_
                       _%target4987250017%_
                       _%tl4987450020%_)
                      (if (gx#stx-pair/null? _%tl4986049984%_)
                          (let ((_%__splice7567875679%_
                                 (gx#syntax-split-splice _%tl4986049984%_ '0)))
                            (let ((_%tl4988749919%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7567875679%_ '1)))
                                  (_%target4988549916%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7567875679%_
                                      '0))))
                              (if (gx#stx-null? _%tl4988749919%_)
                                  (_%__match7575275753%_
                                   _%e4986249977%_
                                   _%hd4986149981%_
                                   _%tl4986049984%_
                                   _%__splice7567875679%_
                                   _%target4988549916%_
                                   _%tl4988749919%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4983949899%_)))))
                          (let () (declare (not safe)) (_%g4983949899%_))))))
              (if (gx#stx-pair/null? _%tl4986049984%_)
                  (let ((_%__splice7567875679%_
                         (gx#syntax-split-splice _%tl4986049984%_ '0)))
                    (let ((_%tl4988749919%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7567875679%_ '1)))
                          (_%target4988549916%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7567875679%_ '0))))
                      (if (gx#stx-null? _%tl4988749919%_)
                          (_%__match7575275753%_
                           _%e4986249977%_
                           _%hd4986149981%_
                           _%tl4986049984%_
                           _%__splice7567875679%_
                           _%target4988549916%_
                           _%tl4988749919%_)
                          (let () (declare (not safe)) (_%g4983949899%_)))))
                  (let () (declare (not safe)) (_%g4983949899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4986049984%_)
                                                      (let ((_%__splice7567875679%_
                                                             (gx#syntax-split-splice
                                                              _%tl4986049984%_
                                                              '0)))
                                                        (let ((_%tl4988749919%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7567875679%_ '1)))
                      (_%target4988549916%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7567875679%_ '0))))
                  (if (gx#stx-null? _%tl4988749919%_)
                      (_%__match7575275753%_
                       _%e4986249977%_
                       _%hd4986149981%_
                       _%tl4986049984%_
                       _%__splice7567875679%_
                       _%target4988549916%_
                       _%tl4988749919%_)
                      (let () (declare (not safe)) (_%g4983949899%_)))))
              (let () (declare (not safe)) (_%g4983949899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4986049984%_)
                                              (let ((_%__splice7567875679%_
                                                     (gx#syntax-split-splice
                                                      _%tl4986049984%_
                                                      '0)))
                                                (let ((_%tl4988749919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7567875679%_
                                                          '1)))
                                                      (_%target4988549916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7567875679%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4988749919%_)
                                                      (_%__match7575275753%_
                                                       _%e4986249977%_
                                                       _%hd4986149981%_
                                                       _%tl4986049984%_
                                                       _%__splice7567875679%_
                                                       _%target4988549916%_
                                                       _%tl4988749919%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4983949899%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4983949899%_))))
                                      (if (gx#stx-pair/null? _%tl4986049984%_)
                                          (let ((_%__splice7567875679%_
                                                 (gx#syntax-split-splice
                                                  _%tl4986049984%_
                                                  '0)))
                                            (let ((_%tl4988749919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7567875679%_
                                                      '1)))
                                                  (_%target4988549916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7567875679%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4988749919%_)
                                                  (_%__match7575275753%_
                                                   _%e4986249977%_
                                                   _%hd4986149981%_
                                                   _%tl4986049984%_
                                                   _%__splice7567875679%_
                                                   _%target4988549916%_
                                                   _%tl4988749919%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4983949899%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4983949899%_))))
                                  (if (gx#stx-pair/null? _%tl4986049984%_)
                                      (let ((_%__splice7567875679%_
                                             (gx#syntax-split-splice
                                              _%tl4986049984%_
                                              '0)))
                                        (let ((_%tl4988749919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7567875679%_
                                                  '1)))
                                              (_%target4988549916%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7567875679%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4988749919%_)
                                              (_%__match7575275753%_
                                               _%e4986249977%_
                                               _%hd4986149981%_
                                               _%tl4986049984%_
                                               _%__splice7567875679%_
                                               _%target4988549916%_
                                               _%tl4988749919%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4983949899%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4983949899%_))))))
                          (if (gx#stx-pair/null? _%tl4986049984%_)
                              (let ((_%__splice7567875679%_
                                     (gx#syntax-split-splice
                                      _%tl4986049984%_
                                      '0)))
                                (let ((_%tl4988749919%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7567875679%_
                                          '1)))
                                      (_%target4988549916%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7567875679%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4988749919%_)
                                      (_%__match7575275753%_
                                       _%e4986249977%_
                                       _%hd4986149981%_
                                       _%tl4986049984%_
                                       _%__splice7567875679%_
                                       _%target4988549916%_
                                       _%tl4988749919%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4983949899%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4983949899%_))))))
                   (_%__match7570075701%_
                    (lambda (_%e4984550426%_
                             _%hd4984450430%_
                             _%tl4984350433%_
                             _%e4984850436%_
                             _%hd4984750440%_
                             _%tl4984650443%_
                             _%__splice7567075671%_
                             _%target4984950446%_
                             _%tl4985150449%_)
                      (letrec ((_%loop4985250452%_
                                (lambda (_%hd4985050456%_ _%rand4985650459%_)
                                  (if (gx#stx-pair? _%hd4985050456%_)
                                      (let ((_%e4985350462%_
                                             (gx#syntax-e _%hd4985050456%_)))
                                        (let ((_%lp-tl4985550469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4985350462%_)))
                                              (_%lp-hd4985450466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4985350462%_))))
                                          (_%loop4985250452%_
                                           _%lp-tl4985550469%_
                                           (cons _%lp-hd4985450466%_
                                                 _%rand4985650459%_))))
                                      (let ((_%rand4985750472%_
                                             (reverse _%rand4985650459%_)))
                                        (let ((_%L50476%_ _%rand4985750472%_)
                                              (_%L50478%_ _%hd4984750440%_))
                                          (if (gx#identifier? _%L50478%_)
                                              (_%__kont7566875669%_
                                               _%L50476%_
                                               _%L50478%_)
                                              (_%__match7571275713%_
                                               _%e4984550426%_
                                               _%hd4984450430%_
                                               _%tl4984350433%_
                                               _%e4984850436%_
                                               _%hd4984750440%_
                                               _%tl4984650443%_))))))))
                        (_%loop4985250452%_ _%target4984950446%_ '())))))
              (if (gx#stx-pair? _%__stx7566575666%_)
                  (let ((_%e4984550426%_ (gx#syntax-e _%__stx7566575666%_)))
                    (let ((_%tl4984350433%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4984550426%_)))
                          (_%hd4984450430%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4984550426%_))))
                      (if (gx#stx-pair? _%tl4984350433%_)
                          (let ((_%e4984850436%_
                                 (gx#syntax-e _%tl4984350433%_)))
                            (let ((_%tl4984650443%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4984850436%_)))
                                  (_%hd4984750440%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4984850436%_))))
                              (if (gx#stx-pair/null? _%tl4984650443%_)
                                  (let ((_%__splice7567075671%_
                                         (gx#syntax-split-splice
                                          _%tl4984650443%_
                                          '0)))
                                    (let ((_%tl4985150449%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7567075671%_
                                              '1)))
                                          (_%target4984950446%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7567075671%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4985150449%_)
                                          (_%__match7570075701%_
                                           _%e4984550426%_
                                           _%hd4984450430%_
                                           _%tl4984350433%_
                                           _%e4984850436%_
                                           _%hd4984750440%_
                                           _%tl4984650443%_
                                           _%__splice7567075671%_
                                           _%target4984950446%_
                                           _%tl4985150449%_)
                                          (if (gx#stx-pair? _%hd4984750440%_)
                                              (let ((_%e4986849997%_
                                                     (gx#syntax-e
                                                      _%hd4984750440%_)))
                                                (let ((_%tl4986650004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4986849997%_)))
                                                      (_%hd4986750001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4986849997%_))))
                                                  (if (gx#identifier?
                                                       _%hd4986750001%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80186_|
                                                           _%hd4986750001%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4986650004%_)
                                                              (let ((_%e4987150007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4986650004%_)))
                        (let ((_%tl4986950014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4987150007%_)))
                              (_%hd4987050011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4987150007%_))))
                          (if (gx#stx-pair/null? _%tl4984350433%_)
                              (let ((_%__splice7567875679%_
                                     (gx#syntax-split-splice
                                      _%tl4984350433%_
                                      '0)))
                                (let ((_%tl4988749919%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7567875679%_
                                          '1)))
                                      (_%target4988549916%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7567875679%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4988749919%_)
                                      (_%__match7575275753%_
                                       _%e4984550426%_
                                       _%hd4984450430%_
                                       _%tl4984350433%_
                                       _%__splice7567875679%_
                                       _%target4988549916%_
                                       _%tl4988749919%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4983949899%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4983949899%_)))))
                      (if (gx#stx-pair/null? _%tl4984350433%_)
                          (let ((_%__splice7567875679%_
                                 (gx#syntax-split-splice _%tl4984350433%_ '0)))
                            (let ((_%tl4988749919%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7567875679%_ '1)))
                                  (_%target4988549916%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7567875679%_
                                      '0))))
                              (if (gx#stx-null? _%tl4988749919%_)
                                  (_%__match7575275753%_
                                   _%e4984550426%_
                                   _%hd4984450430%_
                                   _%tl4984350433%_
                                   _%__splice7567875679%_
                                   _%target4988549916%_
                                   _%tl4988749919%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4983949899%_)))))
                          (let () (declare (not safe)) (_%g4983949899%_))))
                  (if (gx#stx-pair/null? _%tl4984350433%_)
                      (let ((_%__splice7567875679%_
                             (gx#syntax-split-splice _%tl4984350433%_ '0)))
                        (let ((_%tl4988749919%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7567875679%_ '1)))
                              (_%target4988549916%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7567875679%_ '0))))
                          (if (gx#stx-null? _%tl4988749919%_)
                              (_%__match7575275753%_
                               _%e4984550426%_
                               _%hd4984450430%_
                               _%tl4984350433%_
                               _%__splice7567875679%_
                               _%target4988549916%_
                               _%tl4988749919%_)
                              (let ()
                                (declare (not safe))
                                (_%g4983949899%_)))))
                      (let () (declare (not safe)) (_%g4983949899%_))))
              (if (gx#stx-pair/null? _%tl4984350433%_)
                  (let ((_%__splice7567875679%_
                         (gx#syntax-split-splice _%tl4984350433%_ '0)))
                    (let ((_%tl4988749919%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7567875679%_ '1)))
                          (_%target4988549916%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7567875679%_ '0))))
                      (if (gx#stx-null? _%tl4988749919%_)
                          (_%__match7575275753%_
                           _%e4984550426%_
                           _%hd4984450430%_
                           _%tl4984350433%_
                           _%__splice7567875679%_
                           _%target4988549916%_
                           _%tl4988749919%_)
                          (let () (declare (not safe)) (_%g4983949899%_)))))
                  (let () (declare (not safe)) (_%g4983949899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4984350433%_)
                                                  (let ((_%__splice7567875679%_
                                                         (gx#syntax-split-splice
                                                          _%tl4984350433%_
                                                          '0)))
                                                    (let ((_%tl4988749919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7567875679%_
                                                              '1)))
                                                          (_%target4988549916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7567875679%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4988749919%_)
                                                          (_%__match7575275753%_
                                                           _%e4984550426%_
                                                           _%hd4984450430%_
                                                           _%tl4984350433%_
                                                           _%__splice7567875679%_
                                                           _%target4988549916%_
                                                           _%tl4988749919%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4983949899%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4983949899%_)))))))
                                  (if (gx#stx-pair? _%hd4984750440%_)
                                      (let ((_%e4986849997%_
                                             (gx#syntax-e _%hd4984750440%_)))
                                        (let ((_%tl4986650004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4986849997%_)))
                                              (_%hd4986750001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4986849997%_))))
                                          (if (gx#identifier? _%hd4986750001%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80186_|
                                                   _%hd4986750001%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4986650004%_)
                                                      (let ((_%e4987150007%_
                                                             (gx#syntax-e
                                                              _%tl4986650004%_)))
                                                        (let ((_%tl4986950014%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4987150007%_)))
                      (_%hd4987050011%_
                       (let () (declare (not safe)) (##car _%e4987150007%_))))
                  (if (gx#stx-pair/null? _%tl4984350433%_)
                      (let ((_%__splice7567875679%_
                             (gx#syntax-split-splice _%tl4984350433%_ '0)))
                        (let ((_%tl4988749919%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7567875679%_ '1)))
                              (_%target4988549916%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7567875679%_ '0))))
                          (if (gx#stx-null? _%tl4988749919%_)
                              (_%__match7575275753%_
                               _%e4984550426%_
                               _%hd4984450430%_
                               _%tl4984350433%_
                               _%__splice7567875679%_
                               _%target4988549916%_
                               _%tl4988749919%_)
                              (let ()
                                (declare (not safe))
                                (_%g4983949899%_)))))
                      (let () (declare (not safe)) (_%g4983949899%_)))))
              (if (gx#stx-pair/null? _%tl4984350433%_)
                  (let ((_%__splice7567875679%_
                         (gx#syntax-split-splice _%tl4984350433%_ '0)))
                    (let ((_%tl4988749919%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7567875679%_ '1)))
                          (_%target4988549916%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7567875679%_ '0))))
                      (if (gx#stx-null? _%tl4988749919%_)
                          (_%__match7575275753%_
                           _%e4984550426%_
                           _%hd4984450430%_
                           _%tl4984350433%_
                           _%__splice7567875679%_
                           _%target4988549916%_
                           _%tl4988749919%_)
                          (let () (declare (not safe)) (_%g4983949899%_)))))
                  (let () (declare (not safe)) (_%g4983949899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4984350433%_)
                                                      (let ((_%__splice7567875679%_
                                                             (gx#syntax-split-splice
                                                              _%tl4984350433%_
                                                              '0)))
                                                        (let ((_%tl4988749919%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7567875679%_ '1)))
                      (_%target4988549916%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7567875679%_ '0))))
                  (if (gx#stx-null? _%tl4988749919%_)
                      (_%__match7575275753%_
                       _%e4984550426%_
                       _%hd4984450430%_
                       _%tl4984350433%_
                       _%__splice7567875679%_
                       _%target4988549916%_
                       _%tl4988749919%_)
                      (let () (declare (not safe)) (_%g4983949899%_)))))
              (let () (declare (not safe)) (_%g4983949899%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4984350433%_)
                                                  (let ((_%__splice7567875679%_
                                                         (gx#syntax-split-splice
                                                          _%tl4984350433%_
                                                          '0)))
                                                    (let ((_%tl4988749919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7567875679%_
                                                              '1)))
                                                          (_%target4988549916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7567875679%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4988749919%_)
                                                          (_%__match7575275753%_
                                                           _%e4984550426%_
                                                           _%hd4984450430%_
                                                           _%tl4984350433%_
                                                           _%__splice7567875679%_
                                                           _%target4988549916%_
                                                           _%tl4988749919%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4983949899%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4983949899%_))))))
                                      (if (gx#stx-pair/null? _%tl4984350433%_)
                                          (let ((_%__splice7567875679%_
                                                 (gx#syntax-split-splice
                                                  _%tl4984350433%_
                                                  '0)))
                                            (let ((_%tl4988749919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7567875679%_
                                                      '1)))
                                                  (_%target4988549916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7567875679%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4988749919%_)
                                                  (_%__match7575275753%_
                                                   _%e4984550426%_
                                                   _%hd4984450430%_
                                                   _%tl4984350433%_
                                                   _%__splice7567875679%_
                                                   _%target4988549916%_
                                                   _%tl4988749919%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4983949899%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4983949899%_)))))))
                          (if (gx#stx-pair/null? _%tl4984350433%_)
                              (let ((_%__splice7567875679%_
                                     (gx#syntax-split-splice
                                      _%tl4984350433%_
                                      '0)))
                                (let ((_%tl4988749919%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7567875679%_
                                          '1)))
                                      (_%target4988549916%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7567875679%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4988749919%_)
                                      (_%__match7575275753%_
                                       _%e4984550426%_
                                       _%hd4984450430%_
                                       _%tl4984350433%_
                                       _%__splice7567875679%_
                                       _%target4988549916%_
                                       _%tl4988749919%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4983949899%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4983949899%_))))))
                  (let () (declare (not safe)) (_%g4983949899%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx50510%_)
        (let* ((_%__stx7575575756%_ _%stx50510%_)
               (_%g5051450535%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7575575756%_))))
          (let ((_%__kont7575875759%_
                 (lambda (_%L50603%_)
                   (let* ((_%g5061550622%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50510%_
                              _%L50603%_)))
                          (_%E5061750628%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5061550622%_
                                    '([var . parts]))
                             (void)))
                          (_%K5061850844%_
                           (lambda (_%parts50632%_ _%var50634%_)
                             (let ((_%$e50636%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var50634%_))))
                               (if _%$e50636%_
                                   ((lambda (_%te50640%_)
                                      (let _%loop50643%_ ((_%parts50646%_
                                                           _%parts50632%_)
                                                          (_%type50648%_
                                                           (##direct-structure-ref
                                                            _%te50640%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object50649%_
                                                           _%var50634%_)
                                                          (_%nil-check?50650%_
                                                           '#f))
                                        (let* ((_%parts5065150659%_
                                                _%parts50646%_)
                                               (_%else5065350671%_
                                                (lambda () _%object50649%_))
                                               (_%K5065550826%_
                                                (lambda (_%rest50675%_
                                                         _%part50677%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?50650%_))
                                                           (let ((__tmp80187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part50677%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80187)))
              (let ()
                (let ((_%str50681%_ (symbol->string _%part50677%_)))
                  (_%loop50643%_
                   (cons (let ((__tmp80188
                                (substring
                                 _%str50681%_
                                 '1
                                 (string-length _%str50681%_))))
                           (declare (not safe))
                           (##string->symbol __tmp80188))
                         _%rest50675%_)
                   _%type50648%_
                   _%object50649%_
                   '#t)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type50648%_))
                  (let ()
                    (let* ((_%g5068650701%_
                            (lambda (_%g5068750697%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5068750697%_)))
                           (_%g5068550818%_
                            (lambda (_%g5068750705%_)
                              (if (gx#stx-pair? _%g5068750705%_)
                                  (let ((_%e5069250708%_
                                         (gx#syntax-e _%g5068750705%_)))
                                    (let ((_%hd5069150712%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5069250708%_)))
                                          (_%tl5069050715%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5069250708%_))))
                                      (if (gx#stx-pair? _%tl5069050715%_)
                                          (let ((_%e5069550718%_
                                                 (gx#syntax-e
                                                  _%tl5069050715%_)))
                                            (let ((_%hd5069450722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5069550718%_)))
                                                  (_%tl5069350725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5069550718%_))))
                                              (if (gx#stx-null?
                                                   _%tl5069350725%_)
                                                  ((lambda (_%L50728%_
                                                            _%L50730%_)
                                                     (let ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%rest50675%_))
                                                           (let ()
                                                             (let ((_%$e50760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gerbil/core/mop~MOP-2#!class-slot-type
                               _%type50648%_
                               _%part50677%_))))
                       (if _%$e50760%_
                           ((lambda (_%slot-type50764%_)
                              (let* ((_%g5076750775%_
                                      (lambda (_%g5076850771%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5076850771%_)))
                                     (_%g5076650798%_
                                      (lambda (_%g5076850779%_)
                                        ((lambda (_%L50782%_)
                                           (let ()
                                             (if _%nil-check?50650%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@type)
                           (cons _%L50782%_ '()))
                     (cons (cons _%L50728%_
                                 (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                             (cons _%L50730%_ '()))
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
                           (cons _%L50782%_ '()))
                     (cons (cons _%L50728%_ (cons _%L50730%_ '())) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g5076850779%_))))
                                (_%g5076650798%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                    _%stx50510%_
                                    _%type50648%_)))))
                            _%$e50760%_)
                           (if _%nil-check?50650%_
                               (let ()
                                 (cons _%L50728%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L50730%_ '()))
                                             '())))
                               (let ()
                                 (cons _%L50728%_ (cons _%L50730%_ '())))))))
                   (let ((_%$e50806%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#!class-slot-type
                             _%type50648%_
                             _%part50677%_))))
                     (if _%$e50806%_
                         ((lambda (_%type50810%_)
                            (let ((_%type50813%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50510%_
                                      _%type50810%_))))
                              (if _%nil-check?50650%_
                                  (_%loop50643%_
                                   _%rest50675%_
                                   _%type50813%_
                                   (cons _%L50728%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'check-nil!)
                                                     (cons _%L50730%_ '()))
                                               '()))
                                   '#f)
                                  (_%loop50643%_
                                   _%rest50675%_
                                   _%type50813%_
                                   (cons _%L50728%_ (cons _%L50730%_ '()))
                                   '#f))))
                          _%$e50806%_)
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unresolved dotted reference; unknown type for slot"
                            _%stx50510%_
                            _%L50603%_
                            _%part50677%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd5069450722%_
                                                   _%hd5069150712%_)
                                                  (_%g5068650701%_
                                                   _%g5068750705%_))))
                                          (_%g5068650701%_ _%g5068750705%_))))
                                  (_%g5068650701%_ _%g5068750705%_)))))
                      (_%g5068550818%_
                       (list _%object50649%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50510%_
                                _%type50648%_
                                _%part50677%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type50648%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50510%_
                         _%type50648%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5065150659%_))
                                              (let ((_%hd5065650830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5065150659%_)))
                                                    (_%tl5065750833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5065150659%_))))
                                                (let* ((_%part50836%_
                                                        _%hd5065650830%_)
                                                       (_%rest50839%_
                                                        _%tl5065750833%_))
                                                  (_%K5065550826%_
                                                   _%rest50839%_
                                                   _%part50836%_)))
                                              (_%else5065350671%_)))))
                                    _%$e50636%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f '%%ref)
                                           (cons _%L50603%_ '()))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5061550622%_))
                         (let ((_%hd5061950848%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5061550622%_)))
                               (_%tl5062050851%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5061550622%_))))
                           (let* ((_%var50854%_ _%hd5061950848%_)
                                  (_%parts50857%_ _%tl5062050851%_))
                             (_%K5061850844%_ _%parts50857%_ _%var50854%_)))
                         (_%E5061750628%_)))))
                (_%__kont7576075761%_
                 (lambda (_%L50562%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L50562%_ '())))))
            (let ((_%__match7577675777%_
                   (lambda (_%e5051950583%_
                            _%hd5051850587%_
                            _%tl5051750590%_
                            _%e5052250593%_
                            _%hd5052150597%_
                            _%tl5052050600%_)
                     (let ((_%L50603%_ _%hd5052150597%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L50603%_))
                           (_%__kont7575875759%_ _%L50603%_)
                           (_%__kont7576075761%_ _%hd5052150597%_))))))
              (if (gx#stx-pair? _%__stx7575575756%_)
                  (let ((_%e5051950583%_ (gx#syntax-e _%__stx7575575756%_)))
                    (let ((_%tl5051750590%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5051950583%_)))
                          (_%hd5051850587%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5051950583%_))))
                      (if (gx#stx-pair? _%tl5051750590%_)
                          (let ((_%e5052250593%_
                                 (gx#syntax-e _%tl5051750590%_)))
                            (let ((_%tl5052050600%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5052250593%_)))
                                  (_%hd5052150597%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5052250593%_))))
                              (if (gx#stx-null? _%tl5052050600%_)
                                  (_%__match7577675777%_
                                   _%e5051950583%_
                                   _%hd5051850587%_
                                   _%tl5051750590%_
                                   _%e5052250593%_
                                   _%hd5052150597%_
                                   _%tl5052050600%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5051450535%_)))))
                          (let () (declare (not safe)) (_%g5051450535%_)))))
                  (let () (declare (not safe)) (_%g5051450535%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx50864%_)
        (let* ((_%__stx7579375794%_ _%stx50864%_)
               (_%g5086850897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7579375794%_))))
          (let ((_%__kont7579675797%_
                 (lambda (_%L50989%_ _%L50991%_)
                   (let* ((_%g5100551012%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50864%_
                              _%L50991%_)))
                          (_%E5100751018%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5100551012%_
                                    '([var . parts]))
                             (void)))
                          (_%K5100851251%_
                           (lambda (_%parts51022%_ _%var51024%_)
                             (let ((_%$e51026%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51024%_))))
                               (if _%$e51026%_
                                   ((lambda (_%te51030%_)
                                      (let _%loop51033%_ ((_%parts51036%_
                                                           _%parts51022%_)
                                                          (_%type51038%_
                                                           (##direct-structure-ref
                                                            _%te51030%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51039%_
                                                           _%var51024%_)
                                                          (_%nil-check?51040%_
                                                           '#f))
                                        (let* ((_%parts5104151048%_
                                                _%parts51036%_)
                                               (_%E5104351054%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5104151048%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5104451233%_
                                                (lambda (_%rest51058%_
                                                         _%part51060%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?51040%_))
                                                           (let ((__tmp80189
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51060%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80189)))
              (let ()
                (let ((_%str51064%_ (symbol->string _%part51060%_)))
                  (_%loop51033%_
                   (cons (let ((__tmp80190
                                (substring
                                 _%str51064%_
                                 '1
                                 (string-length _%str51064%_))))
                           (declare (not safe))
                           (##string->symbol __tmp80190))
                         _%rest51058%_)
                   _%type51038%_
                   _%object51039%_
                   '#t)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51038%_))
                  (let ()
                    (if (let () (declare (not safe)) (null? _%rest51058%_))
                        (let ()
                          (let* ((_%g5107151086%_
                                  (lambda (_%g5107251082%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5107251082%_)))
                                 (_%g5107051143%_
                                  (lambda (_%g5107251090%_)
                                    (if (gx#stx-pair? _%g5107251090%_)
                                        (let ((_%e5107751093%_
                                               (gx#syntax-e _%g5107251090%_)))
                                          (let ((_%hd5107651097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5107751093%_)))
                                                (_%tl5107551100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5107751093%_))))
                                            (if (gx#stx-pair? _%tl5107551100%_)
                                                (let ((_%e5108051103%_
                                                       (gx#syntax-e
                                                        _%tl5107551100%_)))
                                                  (let ((_%hd5107951107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5108051103%_)))
                                                        (_%tl5107851110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5108051103%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5107851110%_)
                                                        ((lambda (_%L51113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L51115%_)
                   (let ()
                     (if _%nil-check?51040%_
                         (cons _%L51113%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51115%_ '()))
                                     (cons _%L50989%_ '())))
                         (cons _%L51113%_
                               (cons _%L51115%_ (cons _%L50989%_ '()))))))
                 _%hd5107951107%_
                 _%hd5107651097%_)
                (_%g5107151086%_ _%g5107251090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5107151086%_
                                                 _%g5107251090%_))))
                                        (_%g5107151086%_ _%g5107251090%_)))))
                            (_%g5107051143%_
                             (list _%object51039%_
                                   (let ((__tmp80191
                                          (if (##direct-structure-ref
                                               _%te51030%_
                                               '3
                                               gerbil/core/contract~TypeEnv#type-env::t
                                               '#f)
                                              (let ((_%$e51147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/mop~MOP-2#!class-slot-type
                                                        _%type51038%_
                                                        _%part51060%_))))
                                                (if _%$e51147%_
                                                    _%$e51147%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#!class-slot-contract
                                                       _%type51038%_
                                                       _%part51060%_))))
                                              '#f)))
                                     (declare (not safe))
                                     (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                      _%stx50864%_
                                      _%type51038%_
                                      _%part51060%_
                                      __tmp80191))))))
                        (let ((_%$e51151%_
                               (let ()
                                 (declare (not safe))
                                 (gerbil/core/mop~MOP-2#!class-slot-type
                                  _%type51038%_
                                  _%part51060%_))))
                          (if _%$e51151%_
                              ((lambda (_%type51155%_)
                                 (let* ((_%type51158%_
                                         (let ()
                                           (declare (not safe))
                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                            _%stx50864%_
                                            _%type51155%_)))
                                        (_%g5116151176%_
                                         (lambda (_%g5116251172%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g5116251172%_)))
                                        (_%g5116051223%_
                                         (lambda (_%g5116251180%_)
                                           (if (gx#stx-pair? _%g5116251180%_)
                                               (let ((_%e5116751183%_
                                                      (gx#syntax-e
                                                       _%g5116251180%_)))
                                                 (let ((_%hd5116651187%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5116751183%_)))
                                                       (_%tl5116551190%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5116751183%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl5116551190%_)
                                                       (let ((_%e5117051193%_
                                                              (gx#syntax-e
                                                               _%tl5116551190%_)))
                                                         (let ((_%hd5116951197%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5117051193%_)))
                       (_%tl5116851200%_
                        (let () (declare (not safe)) (##cdr _%e5117051193%_))))
                   (if (gx#stx-null? _%tl5116851200%_)
                       ((lambda (_%L51203%_ _%L51205%_)
                          (let ()
                            (if _%nil-check?51040%_
                                (_%loop51033%_
                                 _%rest51058%_
                                 _%type51158%_
                                 (cons _%L51203%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L51205%_ '()))
                                             '()))
                                 '#f)
                                (_%loop51033%_
                                 _%rest51058%_
                                 _%type51158%_
                                 (cons _%L51203%_ (cons _%L51205%_ '()))
                                 '#f))))
                        _%hd5116951197%_
                        _%hd5116651187%_)
                       (_%g5116151176%_ _%g5116251180%_))))
               (_%g5116151176%_ _%g5116251180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5116151176%_
                                                _%g5116251180%_)))))
                                   (_%g5116051223%_
                                    (list _%object51039%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                             _%stx50864%_
                                             _%type51158%_
                                             _%part51060%_))))))
                               _%$e51151%_)
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"unresolved dotted reference; unknown type for slot"
                                 _%stx50864%_
                                 _%L50991%_
                                 _%part51060%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51038%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50864%_
                         _%type51038%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5104151048%_))
                                              (let ((_%hd5104551237%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5104151048%_)))
                                                    (_%tl5104651240%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5104151048%_))))
                                                (let* ((_%part51243%_
                                                        _%hd5104551237%_)
                                                       (_%rest51246%_
                                                        _%tl5104651240%_))
                                                  (_%K5104451233%_
                                                   _%rest51246%_
                                                   _%part51243%_)))
                                              (_%E5104351054%_)))))
                                    _%$e51026%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'set!)
                                           (cons _%L50991%_
                                                 (cons _%L50989%_ '())))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5100551012%_))
                         (let ((_%hd5100951255%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5100551012%_)))
                               (_%tl5101051258%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5100551012%_))))
                           (let* ((_%var51261%_ _%hd5100951255%_)
                                  (_%parts51264%_ _%tl5101051258%_))
                             (_%K5100851251%_ _%parts51264%_ _%var51261%_)))
                         (_%E5100751018%_)))))
                (_%__kont7579875799%_
                 (lambda (_%L50934%_ _%L50936%_)
                   (cons (gx#datum->syntax '#f 'set!)
                         (cons _%L50936%_ (cons _%L50934%_ '()))))))
            (let ((_%__match7582075821%_
                   (lambda (_%e5087450959%_
                            _%hd5087350963%_
                            _%tl5087250966%_
                            _%e5087750969%_
                            _%hd5087650973%_
                            _%tl5087550976%_
                            _%e5088050979%_
                            _%hd5087950983%_
                            _%tl5087850986%_)
                     (let ((_%L50989%_ _%hd5087950983%_)
                           (_%L50991%_ _%hd5087650973%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L50991%_))
                           (_%__kont7579675797%_ _%L50989%_ _%L50991%_)
                           (_%__kont7579875799%_
                            _%hd5087950983%_
                            _%hd5087650973%_))))))
              (if (gx#stx-pair? _%__stx7579375794%_)
                  (let ((_%e5087450959%_ (gx#syntax-e _%__stx7579375794%_)))
                    (let ((_%tl5087250966%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5087450959%_)))
                          (_%hd5087350963%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5087450959%_))))
                      (if (gx#stx-pair? _%tl5087250966%_)
                          (let ((_%e5087750969%_
                                 (gx#syntax-e _%tl5087250966%_)))
                            (let ((_%tl5087550976%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5087750969%_)))
                                  (_%hd5087650973%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5087750969%_))))
                              (if (gx#stx-pair? _%tl5087550976%_)
                                  (let ((_%e5088050979%_
                                         (gx#syntax-e _%tl5087550976%_)))
                                    (let ((_%tl5087850986%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5088050979%_)))
                                          (_%hd5087950983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5088050979%_))))
                                      (if (gx#stx-null? _%tl5087850986%_)
                                          (_%__match7582075821%_
                                           _%e5087450959%_
                                           _%hd5087350963%_
                                           _%tl5087250966%_
                                           _%e5087750969%_
                                           _%hd5087650973%_
                                           _%tl5087550976%_
                                           _%e5088050979%_
                                           _%hd5087950983%_
                                           _%tl5087850986%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5086850897%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5086850897%_)))))
                          (let () (declare (not safe)) (_%g5086850897%_)))))
                  (let () (declare (not safe)) (_%g5086850897%_))))))))))
