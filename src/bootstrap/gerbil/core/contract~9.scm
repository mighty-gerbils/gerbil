(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84248_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84255_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84258_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84259_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84267_|
    (##structure
     gx#syntax-quote::t
     'lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84268_|
    (##structure
     gx#syntax-quote::t
     'case-lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84269_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84271_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84272_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84273_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84275_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84276_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84277_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84279_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84280_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84281_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84282_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84283_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84284_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84285_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84286_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84287_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84288_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84289_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84290_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84291_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84292_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84293_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84294_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84295_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g84296_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypedDefinitions[1]#is-signature?|
      (lambda (_%formals64204%_)
        (let _%lp64207%_ ((_%rest64210%_ _%formals64204%_))
          (let* ((_%__stx8210582106%_ _%rest64210%_)
                 (_%g6421964288%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8210582106%_))))
            (let ((_%__kont8210882109%_
                   (lambda (_%L64589%_ _%L64591%_) (_%lp64207%_ _%L64589%_)))
                  (_%__kont8211082111%_
                   (lambda (_%L64555%_ _%L64557%_) (_%lp64207%_ _%L64555%_)))
                  (_%__kont8211282113%_
                   (lambda (_%L64501%_ _%L64503%_ _%L64504%_) '#t))
                  (_%__kont8211482115%_
                   (lambda (_%L64457%_ _%L64459%_ _%L64460%_)
                     (_%lp64207%_ _%L64457%_)))
                  (_%__kont8211682117%_
                   (lambda (_%L64409%_ _%L64411%_ _%L64412%_)
                     (_%lp64207%_ _%L64409%_)))
                  (_%__kont8211882119%_
                   (lambda (_%L64336%_ _%L64338%_ _%L64339%_ _%L64340%_) '#t))
                  (_%__kont8212082121%_ (lambda () '#f)))
              (let* ((_%__match8221682217%_
                      (lambda (_%e6427464306%_
                               _%hd6427564310%_
                               _%tl6427664313%_
                               _%e6427764316%_
                               _%hd6427864320%_
                               _%tl6427964323%_
                               _%e6428064326%_
                               _%hd6428164330%_
                               _%tl6428264333%_)
                        (let ((_%L64336%_ _%tl6427964323%_)
                              (_%L64338%_ _%tl6428264333%_)
                              (_%L64339%_ _%hd6428164330%_)
                              (_%L64340%_ _%hd6427564310%_))
                          (if (and (gx#stx-keyword? _%L64340%_)
                                   (gx#identifier? _%L64339%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64338%_)))
                              (_%__kont8211882119%_
                               _%L64336%_
                               _%L64338%_
                               _%L64339%_
                               _%L64340%_)
                              (_%__kont8212082121%_)))))
                     (_%__match8219882199%_
                      (lambda (_%e6425864369%_
                               _%hd6425964373%_
                               _%tl6426064376%_
                               _%e6426164379%_
                               _%hd6426264383%_
                               _%tl6426364386%_
                               _%e6426464389%_
                               _%hd6426564393%_
                               _%tl6426664396%_
                               _%e6426764399%_
                               _%hd6426864403%_
                               _%tl6426964406%_)
                        (let ((_%L64409%_ _%tl6426364386%_)
                              (_%L64411%_ _%hd6426564393%_)
                              (_%L64412%_ _%hd6425964373%_))
                          (if (and (gx#stx-keyword? _%L64412%_)
                                   (gx#identifier? _%L64411%_))
                              (_%__kont8211682117%_
                               _%L64409%_
                               _%L64411%_
                               _%L64412%_)
                              (_%__match8221682217%_
                               _%e6425864369%_
                               _%hd6425964373%_
                               _%tl6426064376%_
                               _%e6426164379%_
                               _%hd6426264383%_
                               _%tl6426364386%_
                               _%e6426464389%_
                               _%hd6426564393%_
                               _%tl6426664396%_)))))
                     (_%__match8217282173%_
                      (lambda (_%e6424964437%_
                               _%hd6425064441%_
                               _%tl6425164444%_
                               _%e6425264447%_
                               _%hd6425364451%_
                               _%tl6425464454%_)
                        (let ((_%L64457%_ _%tl6425464454%_)
                              (_%L64459%_ _%hd6425364451%_)
                              (_%L64460%_ _%hd6425064441%_))
                          (if (and (gx#stx-keyword? _%L64460%_)
                                   (gx#identifier? _%L64459%_))
                              (_%__kont8211482115%_
                               _%L64457%_
                               _%L64459%_
                               _%L64460%_)
                              (if (gx#stx-pair? _%hd6425364451%_)
                                  (let ((_%e6426464389%_
                                         (gx#syntax-e _%hd6425364451%_)))
                                    (let ((_%tl6426664396%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6426464389%_)))
                                          (_%hd6426564393%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6426464389%_))))
                                      (if (gx#stx-pair? _%tl6426664396%_)
                                          (let ((_%e6426764399%_
                                                 (gx#syntax-e
                                                  _%tl6426664396%_)))
                                            (let ((_%tl6426964406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6426764399%_)))
                                                  (_%hd6426864403%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6426764399%_))))
                                              (if (gx#stx-null?
                                                   _%tl6426964406%_)
                                                  (_%__match8219882199%_
                                                   _%e6424964437%_
                                                   _%hd6425064441%_
                                                   _%tl6425164444%_
                                                   _%e6425264447%_
                                                   _%hd6425364451%_
                                                   _%tl6425464454%_
                                                   _%e6426464389%_
                                                   _%hd6426564393%_
                                                   _%tl6426664396%_
                                                   _%e6426764399%_
                                                   _%hd6426864403%_
                                                   _%tl6426964406%_)
                                                  (_%__match8221682217%_
                                                   _%e6424964437%_
                                                   _%hd6425064441%_
                                                   _%tl6425164444%_
                                                   _%e6425264447%_
                                                   _%hd6425364451%_
                                                   _%tl6425464454%_
                                                   _%e6426464389%_
                                                   _%hd6426564393%_
                                                   _%tl6426664396%_))))
                                          (_%__match8221682217%_
                                           _%e6424964437%_
                                           _%hd6425064441%_
                                           _%tl6425164444%_
                                           _%e6425264447%_
                                           _%hd6425364451%_
                                           _%tl6425464454%_
                                           _%e6426464389%_
                                           _%hd6426564393%_
                                           _%tl6426664396%_))))
                                  (_%__kont8212082121%_))))))
                     (_%__match8216082161%_
                      (lambda (_%e6424064481%_
                               _%hd6424164485%_
                               _%tl6424264488%_
                               _%e6424364491%_
                               _%hd6424464495%_
                               _%tl6424564498%_)
                        (let ((_%L64501%_ _%tl6424264488%_)
                              (_%L64503%_ _%tl6424564498%_)
                              (_%L64504%_ _%hd6424464495%_))
                          (if (and (gx#identifier? _%L64504%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64503%_)))
                              (_%__kont8211282113%_
                               _%L64501%_
                               _%L64503%_
                               _%L64504%_)
                              (if (gx#stx-pair? _%tl6424264488%_)
                                  (let ((_%e6425264447%_
                                         (gx#syntax-e _%tl6424264488%_)))
                                    (let ((_%tl6425464454%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6425264447%_)))
                                          (_%hd6425364451%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6425264447%_))))
                                      (_%__match8217282173%_
                                       _%e6424064481%_
                                       _%hd6424164485%_
                                       _%tl6424264488%_
                                       _%e6425264447%_
                                       _%hd6425364451%_
                                       _%tl6425464454%_)))
                                  (_%__kont8212082121%_))))))
                     (_%__match8212882129%_
                      (lambda (_%e6422364579%_
                               _%hd6422464583%_
                               _%tl6422564586%_)
                        (let ((_%L64589%_ _%tl6422564586%_)
                              (_%L64591%_ _%hd6422464583%_))
                          (if (gx#identifier? _%L64591%_)
                              (_%__kont8210882109%_ _%L64589%_ _%L64591%_)
                              (if (gx#stx-pair? _%hd6422464583%_)
                                  (let ((_%e6423164535%_
                                         (gx#syntax-e _%hd6422464583%_)))
                                    (let ((_%tl6423364542%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6423164535%_)))
                                          (_%hd6423264539%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6423164535%_))))
                                      (if (gx#stx-pair? _%tl6423364542%_)
                                          (let ((_%e6423464545%_
                                                 (gx#syntax-e
                                                  _%tl6423364542%_)))
                                            (let ((_%tl6423664552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6423464545%_)))
                                                  (_%hd6423564549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6423464545%_))))
                                              (if (gx#stx-null?
                                                   _%tl6423664552%_)
                                                  (_%__kont8211082111%_
                                                   _%tl6422564586%_
                                                   _%hd6423264539%_)
                                                  (_%__match8216082161%_
                                                   _%e6422364579%_
                                                   _%hd6422464583%_
                                                   _%tl6422564586%_
                                                   _%e6423164535%_
                                                   _%hd6423264539%_
                                                   _%tl6423364542%_))))
                                          (_%__match8216082161%_
                                           _%e6422364579%_
                                           _%hd6422464583%_
                                           _%tl6422564586%_
                                           _%e6423164535%_
                                           _%hd6423264539%_
                                           _%tl6423364542%_))))
                                  (if (gx#stx-pair? _%tl6422564586%_)
                                      (let ((_%e6425264447%_
                                             (gx#syntax-e _%tl6422564586%_)))
                                        (let ((_%tl6425464454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6425264447%_)))
                                              (_%hd6425364451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6425264447%_))))
                                          (_%__match8217282173%_
                                           _%e6422364579%_
                                           _%hd6422464583%_
                                           _%tl6422564586%_
                                           _%e6425264447%_
                                           _%hd6425364451%_
                                           _%tl6425464454%_)))
                                      (_%__kont8212082121%_))))))))
                (if (gx#stx-pair? _%__stx8210582106%_)
                    (let ((_%e6422364579%_ (gx#syntax-e _%__stx8210582106%_)))
                      (let ((_%tl6422564586%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6422364579%_)))
                            (_%hd6422464583%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6422364579%_))))
                        (_%__match8212882129%_
                         _%e6422364579%_
                         _%hd6422464583%_
                         _%tl6422564586%_)))
                    (_%__kont8212082121%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def/c|
      (lambda (_%stx64606%_)
        (letrec ((_%make-definition64609%_
                  (lambda (_%id65707%_
                           _%args65709%_
                           _%return65710%_
                           _%body65711%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~Interface[1]#check-signature!__%|
                       '#f
                       absent-value
                       absent-value
                       _%stx64606%_
                       _%args65709%_
                       _%return65710%_))
                    (if (let ()
                          (declare (not safe))
                          (|gerbil/core/contract~Interface[1]#signature-has-keywords?|
                           _%args65709%_))
                        (_%make-keyword-def64611%_
                         _%id65707%_
                         _%args65709%_
                         _%return65710%_
                         _%body65711%_)
                        (let* ((_%unchecked-id65713%_
                                (gx#stx-identifier
                                 _%id65707%_
                                 '"__"
                                 _%id65707%_))
                               (_%g6571665731%_
                                (lambda (_%g6571765727%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6571765727%_)))
                               (_%g6571565777%_
                                (lambda (_%g6571765735%_)
                                  (if (gx#stx-pair? _%g6571765735%_)
                                      (let ((_%e6572065738%_
                                             (gx#syntax-e _%g6571765735%_)))
                                        (let ((_%hd6572165742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6572065738%_)))
                                              (_%tl6572265745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6572065738%_))))
                                          (if (gx#stx-pair? _%tl6572265745%_)
                                              (let ((_%e6572365748%_
                                                     (gx#syntax-e
                                                      _%tl6572265745%_)))
                                                (let ((_%hd6572465752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6572365748%_)))
                                                      (_%tl6572565755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6572365748%_))))
                                                  (if (gx#stx-null?
                                                       _%tl6572565755%_)
                                                      ((lambda (_%L65758%_
                                                                _%L65760%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _%L65760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L65758%_ '()))))
               _%hd6572465752%_
               _%hd6572165742%_)
              (_%g6571665731%_ _%g6571765735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g6571665731%_
                                               _%g6571765735%_))))
                                      (_%g6571665731%_ _%g6571765735%_)))))
                          (_%g6571565777%_
                           (list (_%make-checked-def64612%_
                                  _%id65707%_
                                  _%unchecked-id65713%_
                                  _%args65709%_
                                  _%return65710%_)
                                 (_%make-unchecked-def64613%_
                                  _%unchecked-id65713%_
                                  _%args65709%_
                                  _%return65710%_
                                  _%body65711%_)))))))
                 (_%make-keyword-def64611%_
                  (lambda (_%id65514%_
                           _%signature65516%_
                           _%return65517%_
                           _%body65518%_)
                    (let* ((_%g6552065560%_
                            (lambda (_%g6552165556%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6552165556%_)))
                           (_%g6551965703%_
                            (lambda (_%g6552165564%_)
                              (if (gx#stx-pair? _%g6552165564%_)
                                  (let ((_%e6552865567%_
                                         (gx#syntax-e _%g6552165564%_)))
                                    (let ((_%hd6552965571%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6552865567%_)))
                                          (_%tl6553065574%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6552865567%_))))
                                      (if (gx#stx-pair? _%tl6553065574%_)
                                          (let ((_%e6553165577%_
                                                 (gx#syntax-e
                                                  _%tl6553065574%_)))
                                            (let ((_%hd6553265581%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6553165577%_)))
                                                  (_%tl6553365584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6553165577%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6553365584%_)
                                                  (let ((_%e6553465587%_
                                                         (gx#syntax-e
                                                          _%tl6553365584%_)))
                                                    (let ((_%hd6553565591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6553465587%_)))
                                                          (_%tl6553665594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6553465587%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6553665594%_)
                                                          (let ((_%e6553765597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6553665594%_)))
                    (let ((_%hd6553865601%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6553765597%_)))
                          (_%tl6553965604%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6553765597%_))))
                      (if (gx#stx-pair? _%tl6553965604%_)
                          (let ((_%e6554065607%_
                                 (gx#syntax-e _%tl6553965604%_)))
                            (let ((_%hd6554165611%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6554065607%_)))
                                  (_%tl6554265614%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6554065607%_))))
                              (if (gx#stx-pair? _%tl6554265614%_)
                                  (let ((_%e6554365617%_
                                         (gx#syntax-e _%tl6554265614%_)))
                                    (let ((_%hd6554465621%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6554365617%_)))
                                          (_%tl6554565624%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6554365617%_))))
                                      (if (gx#stx-pair/null? _%hd6554465621%_)
                                          (let ((_g84242_
                                                 (gx#syntax-split-splice
                                                  _%hd6554465621%_
                                                  '0)))
                                            (begin
                                              (let ((_g84243_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g84242_)
                                                           (##values-length
                                                            _g84242_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g84243_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g84243_)))
                                              (let ((_%target6554665627%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g84242_
                                                        0)))
                                                    (_%tl6554865630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g84242_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl6554865630%_)
                                                    (letrec ((_%loop6554965633%_
                                                              (lambda (_%hd6554765637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6555365640%_)
                        (if (gx#stx-pair? _%hd6554765637%_)
                            (let ((_%e6555065643%_
                                   (gx#syntax-e _%hd6554765637%_)))
                              (let ((_%lp-hd6555165647%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6555065643%_)))
                                    (_%lp-tl6555265650%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6555065643%_))))
                                (_%loop6554965633%_
                                 _%lp-tl6555265650%_
                                 (cons _%lp-hd6555165647%_
                                       _%body6555365640%_))))
                            (let ((_%body6555465653%_
                                   (reverse _%body6555365640%_)))
                              (if (gx#stx-null? _%tl6554565624%_)
                                  ((lambda (_%L65657%_
                                            _%L65659%_
                                            _%L65660%_
                                            _%L65661%_
                                            _%L65662%_
                                            _%L65663%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%L65663%_ _%L65662%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'with-procedure-signature)
                                                              (cons (cons _%L65661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L65660%_ (cons '#f '())))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@type)
                                                    (cons _%L65659%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'with-procedure-contract)
                                                          (cons _%L65661%_
                                                                (foldr (lambda (_%g6569465697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g6569565700%_)
                                 (cons _%g6569465697%_ _%g6569565700%_))
                               '()
                               _%L65657%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _%stx64606%_)))
                                   _%body6555465653%_
                                   _%hd6554165611%_
                                   _%hd6553865601%_
                                   _%hd6553565591%_
                                   _%hd6553265581%_
                                   _%hd6552965571%_)
                                  (_%g6552065560%_ _%g6552165564%_)))))))
              (_%loop6554965633%_ _%target6554665627%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g6552065560%_
                                                     _%g6552165564%_)))))
                                          (_%g6552065560%_ _%g6552165564%_))))
                                  (_%g6552065560%_ _%g6552165564%_))))
                          (_%g6552065560%_ _%g6552165564%_))))
                  (_%g6552065560%_ _%g6552165564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6552065560%_
                                                   _%g6552165564%_))))
                                          (_%g6552065560%_ _%g6552165564%_))))
                                  (_%g6552065560%_ _%g6552165564%_)))))
                      (_%g6551965703%_
                       (list _%id65514%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65516%_))
                             _%signature65516%_
                             _%return65517%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64606%_
                                _%return65517%_))
                             _%body65518%_)))))
                 (_%make-checked-def64612%_
                  (lambda (_%id65295%_
                           _%unchecked-id65297%_
                           _%signature65298%_
                           _%return65299%_)
                    (let* ((_%g6530165345%_
                            (lambda (_%g6530265341%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6530265341%_)))
                           (_%g6530065510%_
                            (lambda (_%g6530265349%_)
                              (if (gx#stx-pair? _%g6530265349%_)
                                  (let ((_%e6531065352%_
                                         (gx#syntax-e _%g6530265349%_)))
                                    (let ((_%hd6531165356%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6531065352%_)))
                                          (_%tl6531265359%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6531065352%_))))
                                      (if (gx#stx-pair? _%tl6531265359%_)
                                          (let ((_%e6531365362%_
                                                 (gx#syntax-e
                                                  _%tl6531265359%_)))
                                            (let ((_%hd6531465366%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6531365362%_)))
                                                  (_%tl6531565369%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6531365362%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6531565369%_)
                                                  (let ((_%e6531665372%_
                                                         (gx#syntax-e
                                                          _%tl6531565369%_)))
                                                    (let ((_%hd6531765376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6531665372%_)))
                                                          (_%tl6531865379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6531665372%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6531865379%_)
                                                          (let ((_%e6531965382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6531865379%_)))
                    (let ((_%hd6532065386%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6531965382%_)))
                          (_%tl6532165389%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6531965382%_))))
                      (if (gx#stx-pair/null? _%hd6532065386%_)
                          (let ((_g84244_
                                 (gx#syntax-split-splice _%hd6532065386%_ '0)))
                            (begin
                              (let ((_g84245_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g84244_)
                                           (##values-length _g84244_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g84245_ 2)))
                                    (error "Context expects 2 values"
                                           _g84245_)))
                              (let ((_%target6532265392%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g84244_ 0)))
                                    (_%tl6532465395%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g84244_ 1))))
                                (if (gx#stx-null? _%tl6532465395%_)
                                    (letrec ((_%loop6532565398%_
                                              (lambda (_%hd6532365402%_
                                                       _%out6532965405%_)
                                                (if (gx#stx-pair?
                                                     _%hd6532365402%_)
                                                    (let ((_%e6532665408%_
                                                           (gx#syntax-e
                                                            _%hd6532365402%_)))
                                                      (let ((_%lp-hd6532765412%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6532665408%_)))
                    (_%lp-tl6532865415%_
                     (let () (declare (not safe)) (##cdr _%e6532665408%_))))
                (_%loop6532565398%_
                 _%lp-tl6532865415%_
                 (cons _%lp-hd6532765412%_ _%out6532965405%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%out6533065418%_
                                                           (reverse _%out6532965405%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl6532165389%_)
                                                          (let ((_%e6533165422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6532165389%_)))
                    (let ((_%hd6533265426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6533165422%_)))
                          (_%tl6533365429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6533165422%_))))
                      (if (gx#stx-pair? _%tl6533365429%_)
                          (let ((_%e6533465432%_
                                 (gx#syntax-e _%tl6533365429%_)))
                            (let ((_%hd6533565436%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6533465432%_)))
                                  (_%tl6533665439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6533465432%_))))
                              (if (gx#stx-pair? _%tl6533665439%_)
                                  (let ((_%e6533765442%_
                                         (gx#syntax-e _%tl6533665439%_)))
                                    (let ((_%hd6533865446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6533765442%_)))
                                          (_%tl6533965449%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6533765442%_))))
                                      (if (gx#stx-null? _%tl6533965449%_)
                                          ((lambda (_%L65452%_
                                                    _%L65454%_
                                                    _%L65455%_
                                                    _%L65456%_
                                                    _%L65457%_
                                                    _%L65458%_
                                                    _%L65459%_)
                                             (if (gx#stx-list? _%L65455%_)
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65457%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65455%_
                                              (cons _%L65454%_
                                                    (cons _%L65458%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65452%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65455%_
                                    (cons (cons _%L65458%_
                                                (foldr (lambda (_%g6549365496%_
                                                                _%g6549465499%_)
                                                         (cons _%g6549365496%_
                                                               _%g6549465499%_))
                                                       '()
                                                       _%L65456%_))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _%stx64606%_))
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65457%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65455%_
                                              (cons _%L65454%_
                                                    (cons _%L65458%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65452%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65455%_
                                    (cons (cons (gx#datum->syntax '#f '##apply)
                                                (cons _%L65458%_
                                                      (foldr (lambda (_%g6550165504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6550265507%_)
                       (cons _%g6550165504%_ _%g6550265507%_))
                     '()
                     _%L65456%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%stx64606%_))))
                                           _%hd6533865446%_
                                           _%hd6533565436%_
                                           _%hd6533265426%_
                                           _%out6533065418%_
                                           _%hd6531765376%_
                                           _%hd6531465366%_
                                           _%hd6531165356%_)
                                          (_%g6530165345%_ _%g6530265349%_))))
                                  (_%g6530165345%_ _%g6530265349%_))))
                          (_%g6530165345%_ _%g6530265349%_))))
                  (_%g6530165345%_ _%g6530265349%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6532565398%_
                                       _%target6532265392%_
                                       '()))
                                    (_%g6530165345%_ _%g6530265349%_)))))
                          (_%g6530165345%_ _%g6530265349%_))))
                  (_%g6530165345%_ _%g6530265349%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6530165345%_
                                                   _%g6530265349%_))))
                                          (_%g6530165345%_ _%g6530265349%_))))
                                  (_%g6530165345%_ _%g6530265349%_)))))
                      (_%g6530065510%_
                       (list _%id65295%_
                             _%unchecked-id65297%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65298%_))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-out|
                                _%signature65298%_))
                             _%signature65298%_
                             _%return65299%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64606%_
                                _%return65299%_)))))))
                 (_%make-unchecked-def64613%_
                  (lambda (_%unchecked-id65120%_
                           _%signature65122%_
                           _%return65123%_
                           _%body65124%_)
                    (let* ((_%g6512665162%_
                            (lambda (_%g6512765158%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6512765158%_)))
                           (_%g6512565291%_
                            (lambda (_%g6512765166%_)
                              (if (gx#stx-pair? _%g6512765166%_)
                                  (let ((_%e6513365169%_
                                         (gx#syntax-e _%g6512765166%_)))
                                    (let ((_%hd6513465173%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6513365169%_)))
                                          (_%tl6513565176%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6513365169%_))))
                                      (if (gx#stx-pair? _%tl6513565176%_)
                                          (let ((_%e6513665179%_
                                                 (gx#syntax-e
                                                  _%tl6513565176%_)))
                                            (let ((_%hd6513765183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6513665179%_)))
                                                  (_%tl6513865186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6513665179%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6513865186%_)
                                                  (let ((_%e6513965189%_
                                                         (gx#syntax-e
                                                          _%tl6513865186%_)))
                                                    (let ((_%hd6514065193%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6513965189%_)))
                                                          (_%tl6514165196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6513965189%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6514165196%_)
                                                          (let ((_%e6514265199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6514165196%_)))
                    (let ((_%hd6514365203%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6514265199%_)))
                          (_%tl6514465206%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6514265199%_))))
                      (if (gx#stx-pair? _%tl6514465206%_)
                          (let ((_%e6514565209%_
                                 (gx#syntax-e _%tl6514465206%_)))
                            (let ((_%hd6514665213%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6514565209%_)))
                                  (_%tl6514765216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6514565209%_))))
                              (if (gx#stx-pair/null? _%hd6514665213%_)
                                  (let ((_g84246_
                                         (gx#syntax-split-splice
                                          _%hd6514665213%_
                                          '0)))
                                    (begin
                                      (let ((_g84247_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84246_)
                                                   (##values-length _g84246_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84247_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84247_)))
                                      (let ((_%target6514865219%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84246_ 0)))
                                            (_%tl6515065222%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84246_ 1))))
                                        (if (gx#stx-null? _%tl6515065222%_)
                                            (letrec ((_%loop6515165225%_
                                                      (lambda (_%hd6514965229%_
                                                               _%body6515565232%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6514965229%_)
                                                            (let ((_%e6515265235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6514965229%_)))
                      (let ((_%lp-hd6515365239%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6515265235%_)))
                            (_%lp-tl6515465242%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6515265235%_))))
                        (_%loop6515165225%_
                         _%lp-tl6515465242%_
                         (cons _%lp-hd6515365239%_ _%body6515565232%_))))
                    (let ((_%body6515665245%_ (reverse _%body6515565232%_)))
                      (if (gx#stx-null? _%tl6514765216%_)
                          ((lambda (_%L65249%_
                                    _%L65251%_
                                    _%L65252%_
                                    _%L65253%_
                                    _%L65254%_)
                             (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _%L65254%_ _%L65253%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'with-procedure-signature)
                                                      (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L65251%_ (cons '#f '())))
                    (cons (cons (gx#datum->syntax
                                 '#f
                                 'with-procedure-unchecked-contract)
                                (cons _%L65252%_
                                      (foldr (lambda (_%g6528265285%_
                                                      _%g6528365288%_)
                                               (cons _%g6528265285%_
                                                     _%g6528365288%_))
                                             '()
                                             _%L65249%_)))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (gx#stx-source _%stx64606%_)))
                           _%body6515665245%_
                           _%hd6514365203%_
                           _%hd6514065193%_
                           _%hd6513765183%_
                           _%hd6513465173%_)
                          (_%g6512665162%_ _%g6512765166%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6515165225%_
                                               _%target6514865219%_
                                               '()))
                                            (_%g6512665162%_
                                             _%g6512765166%_)))))
                                  (_%g6512665162%_ _%g6512765166%_))))
                          (_%g6512665162%_ _%g6512765166%_))))
                  (_%g6512665162%_ _%g6512765166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6512665162%_
                                                   _%g6512765166%_))))
                                          (_%g6512665162%_ _%g6512765166%_))))
                                  (_%g6512665162%_ _%g6512765166%_)))))
                      (_%g6512565291%_
                       (list _%unchecked-id65120%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65122%_))
                             _%signature65122%_
                             _%return65123%_
                             _%body65124%_))))))
          (let* ((_%__stx8221982220%_ _%stx64606%_)
                 (_%g6461864710%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8221982220%_))))
            (let ((_%__kont8222282223%_
                   (lambda (_%L65071%_ _%L65073%_ _%L65074%_ _%L65075%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L65074%_)
                         (_%make-definition64609%_
                          _%L65075%_
                          _%L65074%_
                          _%L65073%_
                          (foldr (lambda (_%g6509965102%_ _%g6510065105%_)
                                   (cons _%g6509965102%_ _%g6510065105%_))
                                 '()
                                 _%L65071%_))
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L65075%_ _%L65074%_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L65073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6510765110%_ _%g6510865113%_)
                        (cons _%g6510765110%_ _%g6510865113%_))
                      '()
                      _%L65071%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8222682227%_
                   (lambda (_%L64945%_ _%L64947%_ _%L64948%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L64947%_)
                         (cons (gx#datum->syntax '#f 'def/c)
                               (cons (cons _%L64948%_ _%L64947%_)
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6496764970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6496864973%_)
                  (cons _%g6496764970%_ _%g6496864973%_))
                '()
                _%L64945%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L64948%_ _%L64947%_)
                                     (foldr (lambda (_%g6497564978%_
                                                     _%g6497664981%_)
                                              (cons _%g6497564978%_
                                                    _%g6497664981%_))
                                            '()
                                            _%L64945%_))))))
                  (_%__kont8223082231%_
                   (lambda (_%L64843%_ _%L64845%_ _%L64846%_ _%L64847%_)
                     (cons (gx#datum->syntax '#f 'def/c)
                           (cons (cons _%L64847%_ _%L64846%_)
                                 (cons (cons (gx#datum->syntax '#f 'lambda/c)
                                             (cons _%L64845%_
                                                   (foldr (lambda (_%g6486964872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g6487064875%_)
                    (cons _%g6486964872%_ _%g6487064875%_))
                  '()
                  _%L64843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont8223482235%_
                   (lambda (_%L64747%_ _%L64749%_)
                     (cons (gx#datum->syntax '#f 'def)
                           (cons _%L64749%_ (cons _%L64747%_ '()))))))
              (let* ((_%__match8235682357%_
                      (lambda (_%e6469664717%_
                               _%hd6469764721%_
                               _%tl6469864724%_
                               _%e6469964727%_
                               _%hd6470064731%_
                               _%tl6470164734%_
                               _%e6470264737%_
                               _%hd6470364741%_
                               _%tl6470464744%_)
                        (let ((_%L64747%_ _%hd6470364741%_)
                              (_%L64749%_ _%hd6470064731%_))
                          (if (gx#identifier? _%L64749%_)
                              (_%__kont8223482235%_ _%L64747%_ _%L64749%_)
                              (let ()
                                (declare (not safe))
                                (_%g6461864710%_))))))
                     (_%__match8233682337%_
                      (lambda (_%e6467364773%_
                               _%hd6467464777%_
                               _%tl6467564780%_
                               _%e6467664783%_
                               _%hd6467764787%_
                               _%tl6467864790%_
                               _%e6467964793%_
                               _%hd6468064797%_
                               _%tl6468164800%_
                               _%e6468264803%_
                               _%hd6468364807%_
                               _%tl6468464810%_
                               _%__splice8223282233%_
                               _%target6468564813%_
                               _%tl6468764816%_)
                        (letrec ((_%loop6468864819%_
                                  (lambda (_%hd6468664823%_ _%body6469264826%_)
                                    (if (gx#stx-pair? _%hd6468664823%_)
                                        (let ((_%e6468964829%_
                                               (gx#syntax-e _%hd6468664823%_)))
                                          (let ((_%lp-tl6469164836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6468964829%_)))
                                                (_%lp-hd6469064833%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6468964829%_))))
                                            (_%loop6468864819%_
                                             _%lp-tl6469164836%_
                                             (cons _%lp-hd6469064833%_
                                                   _%body6469264826%_))))
                                        (let ((_%body6469364839%_
                                               (reverse _%body6469264826%_)))
                                          (_%__kont8223082231%_
                                           _%body6469364839%_
                                           _%tl6468164800%_
                                           _%tl6468464810%_
                                           _%hd6468364807%_))))))
                          (_%loop6468864819%_ _%target6468564813%_ '()))))
                     (_%__match8232282323%_
                      (lambda (_%e6467364773%_
                               _%hd6467464777%_
                               _%tl6467564780%_
                               _%e6467664783%_
                               _%hd6467764787%_
                               _%tl6467864790%_
                               _%e6467964793%_
                               _%hd6468064797%_
                               _%tl6468164800%_)
                        (if (gx#stx-pair? _%hd6468064797%_)
                            (let ((_%e6468264803%_
                                   (gx#syntax-e _%hd6468064797%_)))
                              (let ((_%tl6468464810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6468264803%_)))
                                    (_%hd6468364807%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6468264803%_))))
                                (if (gx#stx-pair/null? _%tl6467864790%_)
                                    (let ((_%__splice8223282233%_
                                           (gx#syntax-split-splice
                                            _%tl6467864790%_
                                            '0)))
                                      (let ((_%tl6468764816%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8223282233%_
                                                '1)))
                                            (_%target6468564813%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8223282233%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6468764816%_)
                                            (_%__match8233682337%_
                                             _%e6467364773%_
                                             _%hd6467464777%_
                                             _%tl6467564780%_
                                             _%e6467664783%_
                                             _%hd6467764787%_
                                             _%tl6467864790%_
                                             _%e6467964793%_
                                             _%hd6468064797%_
                                             _%tl6468164800%_
                                             _%e6468264803%_
                                             _%hd6468364807%_
                                             _%tl6468464810%_
                                             _%__splice8223282233%_
                                             _%target6468564813%_
                                             _%tl6468764816%_)
                                            (if (gx#stx-pair? _%tl6467864790%_)
                                                (let ((_%e6470264737%_
                                                       (gx#syntax-e
                                                        _%tl6467864790%_)))
                                                  (let ((_%tl6470464744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6470264737%_)))
                                                        (_%hd6470364741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6470264737%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6470464744%_)
                                                        (_%__match8235682357%_
                                                         _%e6467364773%_
                                                         _%hd6467464777%_
                                                         _%tl6467564780%_
                                                         _%e6467664783%_
                                                         _%hd6467764787%_
                                                         _%tl6467864790%_
                                                         _%e6470264737%_
                                                         _%hd6470364741%_
                                                         _%tl6470464744%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6461864710%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6461864710%_))))))
                                    (if (gx#stx-pair? _%tl6467864790%_)
                                        (let ((_%e6470264737%_
                                               (gx#syntax-e _%tl6467864790%_)))
                                          (let ((_%tl6470464744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6470264737%_)))
                                                (_%hd6470364741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6470264737%_))))
                                            (if (gx#stx-null? _%tl6470464744%_)
                                                (_%__match8235682357%_
                                                 _%e6467364773%_
                                                 _%hd6467464777%_
                                                 _%tl6467564780%_
                                                 _%e6467664783%_
                                                 _%hd6467764787%_
                                                 _%tl6467864790%_
                                                 _%e6470264737%_
                                                 _%hd6470364741%_
                                                 _%tl6470464744%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6461864710%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6461864710%_))))))
                            (if (gx#stx-pair? _%tl6467864790%_)
                                (let ((_%e6470264737%_
                                       (gx#syntax-e _%tl6467864790%_)))
                                  (let ((_%tl6470464744%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6470264737%_)))
                                        (_%hd6470364741%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6470264737%_))))
                                    (if (gx#stx-null? _%tl6470464744%_)
                                        (_%__match8235682357%_
                                         _%e6467364773%_
                                         _%hd6467464777%_
                                         _%tl6467564780%_
                                         _%e6467664783%_
                                         _%hd6467764787%_
                                         _%tl6467864790%_
                                         _%e6470264737%_
                                         _%hd6470364741%_
                                         _%tl6470464744%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6461864710%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6461864710%_))))))
                     (_%__match8230482305%_
                      (lambda (_%e6465164885%_
                               _%hd6465264889%_
                               _%tl6465364892%_
                               _%e6465464895%_
                               _%hd6465564899%_
                               _%tl6465664902%_
                               _%e6465764905%_
                               _%hd6465864909%_
                               _%tl6465964912%_
                               _%__splice8222882229%_
                               _%target6466064915%_
                               _%tl6466264918%_)
                        (letrec ((_%loop6466364921%_
                                  (lambda (_%hd6466164925%_ _%body6466764928%_)
                                    (if (gx#stx-pair? _%hd6466164925%_)
                                        (let ((_%e6466464931%_
                                               (gx#syntax-e _%hd6466164925%_)))
                                          (let ((_%lp-tl6466664938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6466464931%_)))
                                                (_%lp-hd6466564935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6466464931%_))))
                                            (_%loop6466364921%_
                                             _%lp-tl6466664938%_
                                             (cons _%lp-hd6466564935%_
                                                   _%body6466764928%_))))
                                        (let ((_%body6466864941%_
                                               (reverse _%body6466764928%_)))
                                          (let ((_%L64945%_ _%body6466864941%_)
                                                (_%L64947%_ _%tl6465964912%_)
                                                (_%L64948%_ _%hd6465864909%_))
                                            (if (gx#identifier? _%L64948%_)
                                                (_%__kont8222682227%_
                                                 _%L64945%_
                                                 _%L64947%_
                                                 _%L64948%_)
                                                (_%__match8232282323%_
                                                 _%e6465164885%_
                                                 _%hd6465264889%_
                                                 _%tl6465364892%_
                                                 _%e6465464895%_
                                                 _%hd6465564899%_
                                                 _%tl6465664902%_
                                                 _%e6465764905%_
                                                 _%hd6465864909%_
                                                 _%tl6465964912%_))))))))
                          (_%loop6466364921%_ _%target6466064915%_ '()))))
                     (_%__match8229682297%_
                      (lambda (_%e6465164885%_
                               _%hd6465264889%_
                               _%tl6465364892%_
                               _%e6465464895%_
                               _%hd6465564899%_
                               _%tl6465664902%_
                               _%e6465764905%_
                               _%hd6465864909%_
                               _%tl6465964912%_)
                        (if (gx#stx-pair/null? _%tl6465664902%_)
                            (let ((_%__splice8222882229%_
                                   (gx#syntax-split-splice
                                    _%tl6465664902%_
                                    '0)))
                              (let ((_%tl6466264918%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8222882229%_
                                        '1)))
                                    (_%target6466064915%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8222882229%_
                                        '0))))
                                (if (gx#stx-null? _%tl6466264918%_)
                                    (_%__match8230482305%_
                                     _%e6465164885%_
                                     _%hd6465264889%_
                                     _%tl6465364892%_
                                     _%e6465464895%_
                                     _%hd6465564899%_
                                     _%tl6465664902%_
                                     _%e6465764905%_
                                     _%hd6465864909%_
                                     _%tl6465964912%_
                                     _%__splice8222882229%_
                                     _%target6466064915%_
                                     _%tl6466264918%_)
                                    (if (gx#stx-pair? _%hd6465864909%_)
                                        (let ((_%e6468264803%_
                                               (gx#syntax-e _%hd6465864909%_)))
                                          (let ((_%tl6468464810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6468264803%_)))
                                                (_%hd6468364807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6468264803%_))))
                                            (if (gx#stx-pair? _%tl6465664902%_)
                                                (let ((_%e6470264737%_
                                                       (gx#syntax-e
                                                        _%tl6465664902%_)))
                                                  (let ((_%tl6470464744%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6470264737%_)))
                                                        (_%hd6470364741%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6470264737%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6470464744%_)
                                                        (_%__match8235682357%_
                                                         _%e6465164885%_
                                                         _%hd6465264889%_
                                                         _%tl6465364892%_
                                                         _%e6465464895%_
                                                         _%hd6465564899%_
                                                         _%tl6465664902%_
                                                         _%e6470264737%_
                                                         _%hd6470364741%_
                                                         _%tl6470464744%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6461864710%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6461864710%_)))))
                                        (if (gx#stx-pair? _%tl6465664902%_)
                                            (let ((_%e6470264737%_
                                                   (gx#syntax-e
                                                    _%tl6465664902%_)))
                                              (let ((_%tl6470464744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6470264737%_)))
                                                    (_%hd6470364741%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6470264737%_))))
                                                (if (gx#stx-null?
                                                     _%tl6470464744%_)
                                                    (_%__match8235682357%_
                                                     _%e6465164885%_
                                                     _%hd6465264889%_
                                                     _%tl6465364892%_
                                                     _%e6465464895%_
                                                     _%hd6465564899%_
                                                     _%tl6465664902%_
                                                     _%e6470264737%_
                                                     _%hd6470364741%_
                                                     _%tl6470464744%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6461864710%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6461864710%_)))))))
                            (if (gx#stx-pair? _%hd6465864909%_)
                                (let ((_%e6468264803%_
                                       (gx#syntax-e _%hd6465864909%_)))
                                  (let ((_%tl6468464810%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6468264803%_)))
                                        (_%hd6468364807%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6468264803%_))))
                                    (if (gx#stx-pair? _%tl6465664902%_)
                                        (let ((_%e6470264737%_
                                               (gx#syntax-e _%tl6465664902%_)))
                                          (let ((_%tl6470464744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6470264737%_)))
                                                (_%hd6470364741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6470264737%_))))
                                            (if (gx#stx-null? _%tl6470464744%_)
                                                (_%__match8235682357%_
                                                 _%e6465164885%_
                                                 _%hd6465264889%_
                                                 _%tl6465364892%_
                                                 _%e6465464895%_
                                                 _%hd6465564899%_
                                                 _%tl6465664902%_
                                                 _%e6470264737%_
                                                 _%hd6470364741%_
                                                 _%tl6470464744%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6461864710%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6461864710%_)))))
                                (if (gx#stx-pair? _%tl6465664902%_)
                                    (let ((_%e6470264737%_
                                           (gx#syntax-e _%tl6465664902%_)))
                                      (let ((_%tl6470464744%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6470264737%_)))
                                            (_%hd6470364741%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6470264737%_))))
                                        (if (gx#stx-null? _%tl6470464744%_)
                                            (_%__match8235682357%_
                                             _%e6465164885%_
                                             _%hd6465264889%_
                                             _%tl6465364892%_
                                             _%e6465464895%_
                                             _%hd6465564899%_
                                             _%tl6465664902%_
                                             _%e6470264737%_
                                             _%hd6470364741%_
                                             _%tl6470464744%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6461864710%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6461864710%_)))))))
                     (_%__match8227882279%_
                      (lambda (_%e6462464991%_
                               _%hd6462564995%_
                               _%tl6462664998%_
                               _%e6462765001%_
                               _%hd6462865005%_
                               _%tl6462965008%_
                               _%e6463065011%_
                               _%hd6463165015%_
                               _%tl6463265018%_
                               _%e6463365021%_
                               _%hd6463465025%_
                               _%tl6463565028%_
                               _%e6463665031%_
                               _%hd6463765035%_
                               _%tl6463865038%_
                               _%__splice8222482225%_
                               _%target6463965041%_
                               _%tl6464165044%_)
                        (letrec ((_%loop6464265047%_
                                  (lambda (_%hd6464065051%_ _%body6464665054%_)
                                    (if (gx#stx-pair? _%hd6464065051%_)
                                        (let ((_%e6464365057%_
                                               (gx#syntax-e _%hd6464065051%_)))
                                          (let ((_%lp-tl6464565064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6464365057%_)))
                                                (_%lp-hd6464465061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6464365057%_))))
                                            (_%loop6464265047%_
                                             _%lp-tl6464565064%_
                                             (cons _%lp-hd6464465061%_
                                                   _%body6464665054%_))))
                                        (let ((_%body6464765067%_
                                               (reverse _%body6464665054%_)))
                                          (let ((_%L65071%_ _%body6464765067%_)
                                                (_%L65073%_ _%hd6463765035%_)
                                                (_%L65074%_ _%tl6463265018%_)
                                                (_%L65075%_ _%hd6463165015%_))
                                            (if (gx#identifier? _%L65075%_)
                                                (_%__kont8222282223%_
                                                 _%L65071%_
                                                 _%L65073%_
                                                 _%L65074%_
                                                 _%L65075%_)
                                                (_%__match8229682297%_
                                                 _%e6462464991%_
                                                 _%hd6462564995%_
                                                 _%tl6462664998%_
                                                 _%e6462765001%_
                                                 _%hd6462865005%_
                                                 _%tl6462965008%_
                                                 _%e6463065011%_
                                                 _%hd6463165015%_
                                                 _%tl6463265018%_))))))))
                          (_%loop6464265047%_ _%target6463965041%_ '())))))
                (if (gx#stx-pair? _%__stx8221982220%_)
                    (let ((_%e6462464991%_ (gx#syntax-e _%__stx8221982220%_)))
                      (let ((_%tl6462664998%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6462464991%_)))
                            (_%hd6462564995%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6462464991%_))))
                        (if (gx#stx-pair? _%tl6462664998%_)
                            (let ((_%e6462765001%_
                                   (gx#syntax-e _%tl6462664998%_)))
                              (let ((_%tl6462965008%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6462765001%_)))
                                    (_%hd6462865005%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6462765001%_))))
                                (if (gx#stx-pair? _%hd6462865005%_)
                                    (let ((_%e6463065011%_
                                           (gx#syntax-e _%hd6462865005%_)))
                                      (let ((_%tl6463265018%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6463065011%_)))
                                            (_%hd6463165015%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6463065011%_))))
                                        (if (gx#stx-pair? _%tl6462965008%_)
                                            (let ((_%e6463365021%_
                                                   (gx#syntax-e
                                                    _%tl6462965008%_)))
                                              (let ((_%tl6463565028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6463365021%_)))
                                                    (_%hd6463465025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6463365021%_))))
                                                (if (gx#identifier?
                                                     _%hd6463465025%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g84248_|
                                                         _%hd6463465025%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6463565028%_)
                                                            (let ((_%e6463665031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6463565028%_)))
                      (let ((_%tl6463865038%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6463665031%_)))
                            (_%hd6463765035%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6463665031%_))))
                        (if (gx#stx-pair/null? _%tl6463865038%_)
                            (let ((_%__splice8222482225%_
                                   (gx#syntax-split-splice
                                    _%tl6463865038%_
                                    '0)))
                              (let ((_%tl6464165044%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8222482225%_
                                        '1)))
                                    (_%target6463965041%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8222482225%_
                                        '0))))
                                (if (gx#stx-null? _%tl6464165044%_)
                                    (_%__match8227882279%_
                                     _%e6462464991%_
                                     _%hd6462564995%_
                                     _%tl6462664998%_
                                     _%e6462765001%_
                                     _%hd6462865005%_
                                     _%tl6462965008%_
                                     _%e6463065011%_
                                     _%hd6463165015%_
                                     _%tl6463265018%_
                                     _%e6463365021%_
                                     _%hd6463465025%_
                                     _%tl6463565028%_
                                     _%e6463665031%_
                                     _%hd6463765035%_
                                     _%tl6463865038%_
                                     _%__splice8222482225%_
                                     _%target6463965041%_
                                     _%tl6464165044%_)
                                    (if (gx#stx-pair/null? _%tl6462965008%_)
                                        (let ((_%__splice8222882229%_
                                               (gx#syntax-split-splice
                                                _%tl6462965008%_
                                                '0)))
                                          (let ((_%tl6466264918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8222882229%_
                                                    '1)))
                                                (_%target6466064915%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8222882229%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6466264918%_)
                                                (_%__match8230482305%_
                                                 _%e6462464991%_
                                                 _%hd6462564995%_
                                                 _%tl6462664998%_
                                                 _%e6462765001%_
                                                 _%hd6462865005%_
                                                 _%tl6462965008%_
                                                 _%e6463065011%_
                                                 _%hd6463165015%_
                                                 _%tl6463265018%_
                                                 _%__splice8222882229%_
                                                 _%target6466064915%_
                                                 _%tl6466264918%_)
                                                (if (gx#stx-pair?
                                                     _%hd6463165015%_)
                                                    (let ((_%e6468264803%_
                                                           (gx#syntax-e
                                                            _%hd6463165015%_)))
                                                      (let ((_%tl6468464810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6468264803%_)))
                    (_%hd6468364807%_
                     (let () (declare (not safe)) (##car _%e6468264803%_))))
                (let () (declare (not safe)) (_%g6461864710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6461864710%_))))))
                                        (if (gx#stx-pair? _%hd6463165015%_)
                                            (let ((_%e6468264803%_
                                                   (gx#syntax-e
                                                    _%hd6463165015%_)))
                                              (let ((_%tl6468464810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6468264803%_)))
                                                    (_%hd6468364807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6468264803%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6461864710%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6461864710%_)))))))
                            (if (gx#stx-pair/null? _%tl6462965008%_)
                                (let ((_%__splice8222882229%_
                                       (gx#syntax-split-splice
                                        _%tl6462965008%_
                                        '0)))
                                  (let ((_%tl6466264918%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8222882229%_
                                            '1)))
                                        (_%target6466064915%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8222882229%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6466264918%_)
                                        (_%__match8230482305%_
                                         _%e6462464991%_
                                         _%hd6462564995%_
                                         _%tl6462664998%_
                                         _%e6462765001%_
                                         _%hd6462865005%_
                                         _%tl6462965008%_
                                         _%e6463065011%_
                                         _%hd6463165015%_
                                         _%tl6463265018%_
                                         _%__splice8222882229%_
                                         _%target6466064915%_
                                         _%tl6466264918%_)
                                        (if (gx#stx-pair? _%hd6463165015%_)
                                            (let ((_%e6468264803%_
                                                   (gx#syntax-e
                                                    _%hd6463165015%_)))
                                              (let ((_%tl6468464810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6468264803%_)))
                                                    (_%hd6468364807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6468264803%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6461864710%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6461864710%_))))))
                                (if (gx#stx-pair? _%hd6463165015%_)
                                    (let ((_%e6468264803%_
                                           (gx#syntax-e _%hd6463165015%_)))
                                      (let ((_%tl6468464810%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6468264803%_)))
                                            (_%hd6468364807%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6468264803%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6461864710%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6461864710%_)))))))
                    (if (gx#stx-pair/null? _%tl6462965008%_)
                        (let ((_%__splice8222882229%_
                               (gx#syntax-split-splice _%tl6462965008%_ '0)))
                          (let ((_%tl6466264918%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8222882229%_ '1)))
                                (_%target6466064915%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8222882229%_ '0))))
                            (if (gx#stx-null? _%tl6466264918%_)
                                (_%__match8230482305%_
                                 _%e6462464991%_
                                 _%hd6462564995%_
                                 _%tl6462664998%_
                                 _%e6462765001%_
                                 _%hd6462865005%_
                                 _%tl6462965008%_
                                 _%e6463065011%_
                                 _%hd6463165015%_
                                 _%tl6463265018%_
                                 _%__splice8222882229%_
                                 _%target6466064915%_
                                 _%tl6466264918%_)
                                (if (gx#stx-pair? _%hd6463165015%_)
                                    (let ((_%e6468264803%_
                                           (gx#syntax-e _%hd6463165015%_)))
                                      (let ((_%tl6468464810%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6468264803%_)))
                                            (_%hd6468364807%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6468264803%_))))
                                        (if (gx#stx-null? _%tl6463565028%_)
                                            (_%__match8235682357%_
                                             _%e6462464991%_
                                             _%hd6462564995%_
                                             _%tl6462664998%_
                                             _%e6462765001%_
                                             _%hd6462865005%_
                                             _%tl6462965008%_
                                             _%e6463365021%_
                                             _%hd6463465025%_
                                             _%tl6463565028%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6461864710%_)))))
                                    (if (gx#stx-null? _%tl6463565028%_)
                                        (_%__match8235682357%_
                                         _%e6462464991%_
                                         _%hd6462564995%_
                                         _%tl6462664998%_
                                         _%e6462765001%_
                                         _%hd6462865005%_
                                         _%tl6462965008%_
                                         _%e6463365021%_
                                         _%hd6463465025%_
                                         _%tl6463565028%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6461864710%_)))))))
                        (if (gx#stx-pair? _%hd6463165015%_)
                            (let ((_%e6468264803%_
                                   (gx#syntax-e _%hd6463165015%_)))
                              (let ((_%tl6468464810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6468264803%_)))
                                    (_%hd6468364807%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6468264803%_))))
                                (if (gx#stx-null? _%tl6463565028%_)
                                    (_%__match8235682357%_
                                     _%e6462464991%_
                                     _%hd6462564995%_
                                     _%tl6462664998%_
                                     _%e6462765001%_
                                     _%hd6462865005%_
                                     _%tl6462965008%_
                                     _%e6463365021%_
                                     _%hd6463465025%_
                                     _%tl6463565028%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6461864710%_)))))
                            (if (gx#stx-null? _%tl6463565028%_)
                                (_%__match8235682357%_
                                 _%e6462464991%_
                                 _%hd6462564995%_
                                 _%tl6462664998%_
                                 _%e6462765001%_
                                 _%hd6462865005%_
                                 _%tl6462965008%_
                                 _%e6463365021%_
                                 _%hd6463465025%_
                                 _%tl6463565028%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6461864710%_))))))
                (if (gx#stx-pair/null? _%tl6462965008%_)
                    (let ((_%__splice8222882229%_
                           (gx#syntax-split-splice _%tl6462965008%_ '0)))
                      (let ((_%tl6466264918%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8222882229%_ '1)))
                            (_%target6466064915%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8222882229%_ '0))))
                        (if (gx#stx-null? _%tl6466264918%_)
                            (_%__match8230482305%_
                             _%e6462464991%_
                             _%hd6462564995%_
                             _%tl6462664998%_
                             _%e6462765001%_
                             _%hd6462865005%_
                             _%tl6462965008%_
                             _%e6463065011%_
                             _%hd6463165015%_
                             _%tl6463265018%_
                             _%__splice8222882229%_
                             _%target6466064915%_
                             _%tl6466264918%_)
                            (if (gx#stx-pair? _%hd6463165015%_)
                                (let ((_%e6468264803%_
                                       (gx#syntax-e _%hd6463165015%_)))
                                  (let ((_%tl6468464810%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6468264803%_)))
                                        (_%hd6468364807%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6468264803%_))))
                                    (if (gx#stx-null? _%tl6463565028%_)
                                        (_%__match8235682357%_
                                         _%e6462464991%_
                                         _%hd6462564995%_
                                         _%tl6462664998%_
                                         _%e6462765001%_
                                         _%hd6462865005%_
                                         _%tl6462965008%_
                                         _%e6463365021%_
                                         _%hd6463465025%_
                                         _%tl6463565028%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6461864710%_)))))
                                (if (gx#stx-null? _%tl6463565028%_)
                                    (_%__match8235682357%_
                                     _%e6462464991%_
                                     _%hd6462564995%_
                                     _%tl6462664998%_
                                     _%e6462765001%_
                                     _%hd6462865005%_
                                     _%tl6462965008%_
                                     _%e6463365021%_
                                     _%hd6463465025%_
                                     _%tl6463565028%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6461864710%_)))))))
                    (if (gx#stx-pair? _%hd6463165015%_)
                        (let ((_%e6468264803%_ (gx#syntax-e _%hd6463165015%_)))
                          (let ((_%tl6468464810%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6468264803%_)))
                                (_%hd6468364807%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6468264803%_))))
                            (if (gx#stx-null? _%tl6463565028%_)
                                (_%__match8235682357%_
                                 _%e6462464991%_
                                 _%hd6462564995%_
                                 _%tl6462664998%_
                                 _%e6462765001%_
                                 _%hd6462865005%_
                                 _%tl6462965008%_
                                 _%e6463365021%_
                                 _%hd6463465025%_
                                 _%tl6463565028%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6461864710%_)))))
                        (if (gx#stx-null? _%tl6463565028%_)
                            (_%__match8235682357%_
                             _%e6462464991%_
                             _%hd6462564995%_
                             _%tl6462664998%_
                             _%e6462765001%_
                             _%hd6462865005%_
                             _%tl6462965008%_
                             _%e6463365021%_
                             _%hd6463465025%_
                             _%tl6463565028%_)
                            (let () (declare (not safe)) (_%g6461864710%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6462965008%_)
                                                        (let ((_%__splice8222882229%_
                                                               (gx#syntax-split-splice
                                                                _%tl6462965008%_
                                                                '0)))
                                                          (let ((_%tl6466264918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8222882229%_ '1)))
                        (_%target6466064915%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8222882229%_ '0))))
                    (if (gx#stx-null? _%tl6466264918%_)
                        (_%__match8230482305%_
                         _%e6462464991%_
                         _%hd6462564995%_
                         _%tl6462664998%_
                         _%e6462765001%_
                         _%hd6462865005%_
                         _%tl6462965008%_
                         _%e6463065011%_
                         _%hd6463165015%_
                         _%tl6463265018%_
                         _%__splice8222882229%_
                         _%target6466064915%_
                         _%tl6466264918%_)
                        (if (gx#stx-pair? _%hd6463165015%_)
                            (let ((_%e6468264803%_
                                   (gx#syntax-e _%hd6463165015%_)))
                              (let ((_%tl6468464810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6468264803%_)))
                                    (_%hd6468364807%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6468264803%_))))
                                (if (gx#stx-null? _%tl6463565028%_)
                                    (_%__match8235682357%_
                                     _%e6462464991%_
                                     _%hd6462564995%_
                                     _%tl6462664998%_
                                     _%e6462765001%_
                                     _%hd6462865005%_
                                     _%tl6462965008%_
                                     _%e6463365021%_
                                     _%hd6463465025%_
                                     _%tl6463565028%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6461864710%_)))))
                            (if (gx#stx-null? _%tl6463565028%_)
                                (_%__match8235682357%_
                                 _%e6462464991%_
                                 _%hd6462564995%_
                                 _%tl6462664998%_
                                 _%e6462765001%_
                                 _%hd6462865005%_
                                 _%tl6462965008%_
                                 _%e6463365021%_
                                 _%hd6463465025%_
                                 _%tl6463565028%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6461864710%_)))))))
                (if (gx#stx-pair? _%hd6463165015%_)
                    (let ((_%e6468264803%_ (gx#syntax-e _%hd6463165015%_)))
                      (let ((_%tl6468464810%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6468264803%_)))
                            (_%hd6468364807%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6468264803%_))))
                        (if (gx#stx-null? _%tl6463565028%_)
                            (_%__match8235682357%_
                             _%e6462464991%_
                             _%hd6462564995%_
                             _%tl6462664998%_
                             _%e6462765001%_
                             _%hd6462865005%_
                             _%tl6462965008%_
                             _%e6463365021%_
                             _%hd6463465025%_
                             _%tl6463565028%_)
                            (let () (declare (not safe)) (_%g6461864710%_)))))
                    (if (gx#stx-null? _%tl6463565028%_)
                        (_%__match8235682357%_
                         _%e6462464991%_
                         _%hd6462564995%_
                         _%tl6462664998%_
                         _%e6462765001%_
                         _%hd6462865005%_
                         _%tl6462965008%_
                         _%e6463365021%_
                         _%hd6463465025%_
                         _%tl6463565028%_)
                        (let () (declare (not safe)) (_%g6461864710%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%tl6462965008%_)
                                                (let ((_%__splice8222882229%_
                                                       (gx#syntax-split-splice
                                                        _%tl6462965008%_
                                                        '0)))
                                                  (let ((_%tl6466264918%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8222882229%_
                                                            '1)))
                                                        (_%target6466064915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8222882229%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6466264918%_)
                                                        (_%__match8230482305%_
                                                         _%e6462464991%_
                                                         _%hd6462564995%_
                                                         _%tl6462664998%_
                                                         _%e6462765001%_
                                                         _%hd6462865005%_
                                                         _%tl6462965008%_
                                                         _%e6463065011%_
                                                         _%hd6463165015%_
                                                         _%tl6463265018%_
                                                         _%__splice8222882229%_
                                                         _%target6466064915%_
                                                         _%tl6466264918%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6463165015%_)
                                                            (let ((_%e6468264803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6463165015%_)))
                      (let ((_%tl6468464810%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6468264803%_)))
                            (_%hd6468364807%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6468264803%_))))
                        (let () (declare (not safe)) (_%g6461864710%_))))
                    (let () (declare (not safe)) (_%g6461864710%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%hd6463165015%_)
                                                    (let ((_%e6468264803%_
                                                           (gx#syntax-e
                                                            _%hd6463165015%_)))
                                                      (let ((_%tl6468464810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6468264803%_)))
                    (_%hd6468364807%_
                     (let () (declare (not safe)) (##car _%e6468264803%_))))
                (let () (declare (not safe)) (_%g6461864710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6461864710%_)))))))
                                    (if (gx#stx-pair? _%tl6462965008%_)
                                        (let ((_%e6470264737%_
                                               (gx#syntax-e _%tl6462965008%_)))
                                          (let ((_%tl6470464744%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6470264737%_)))
                                                (_%hd6470364741%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6470264737%_))))
                                            (if (gx#stx-null? _%tl6470464744%_)
                                                (_%__match8235682357%_
                                                 _%e6462464991%_
                                                 _%hd6462564995%_
                                                 _%tl6462664998%_
                                                 _%e6462765001%_
                                                 _%hd6462865005%_
                                                 _%tl6462965008%_
                                                 _%e6470264737%_
                                                 _%hd6470364741%_
                                                 _%tl6470464744%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6461864710%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6461864710%_))))))
                            (let () (declare (not safe)) (_%g6461864710%_)))))
                    (let () (declare (not safe)) (_%g6461864710%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-signature|
      (lambda (_%stx65787%_)
        (let* ((_%__stx8235982360%_ _%stx65787%_)
               (_%g6579165854%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8235982360%_))))
          (let ((_%__kont8236282363%_
                 (lambda (_%L66105%_ _%L66107%_)
                   (let* ((_%g6613266140%_
                           (lambda (_%g6613366136%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6613366136%_)))
                          (_%g6613166167%_
                           (lambda (_%g6613366144%_)
                             ((lambda (_%L66147%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  (cons 'return:
                                                        (cons _%L66147%_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6615866161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6615966164%_)
                               (cons _%g6615866161%_ _%g6615966164%_))
                             '()
                             _%L66105%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6613366144%_))))
                     (_%g6613166167%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                         _%stx65787%_
                         _%L66107%_))))))
                (_%__kont8236682367%_
                 (lambda (_%L65941%_ _%L65943%_ _%L65944%_ _%L65945%_)
                   (let* ((_%g6597165979%_
                           (lambda (_%g6597265975%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6597265975%_)))
                          (_%g6597066006%_
                           (lambda (_%g6597265983%_)
                             ((lambda (_%L65986%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  _%L65986%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6599766000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6599866003%_)
                               (cons _%g6599766000%_ _%g6599866003%_))
                             '()
                             _%L65941%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6597265983%_))))
                     (_%g6597066006%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#make-procedure-lambda-signature|
                         _%stx65787%_
                         _%L65945%_
                         _%L65944%_
                         _%L65943%_)))))))
            (let* ((_%__match8246282463%_
                    (lambda (_%e6582565861%_
                             _%hd6582665865%_
                             _%tl6582765868%_
                             _%e6582865871%_
                             _%hd6582965875%_
                             _%tl6583065878%_
                             _%e6583165881%_
                             _%hd6583265885%_
                             _%tl6583365888%_
                             _%e6583465891%_
                             _%hd6583565895%_
                             _%tl6583665898%_
                             _%e6583765901%_
                             _%hd6583865905%_
                             _%tl6583965908%_
                             _%__splice8236882369%_
                             _%target6584065911%_
                             _%tl6584265914%_)
                      (letrec ((_%loop6584365917%_
                                (lambda (_%hd6584165921%_ _%body6584765924%_)
                                  (if (gx#stx-pair? _%hd6584165921%_)
                                      (let ((_%e6584465927%_
                                             (gx#syntax-e _%hd6584165921%_)))
                                        (let ((_%lp-tl6584665934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6584465927%_)))
                                              (_%lp-hd6584565931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6584465927%_))))
                                          (_%loop6584365917%_
                                           _%lp-tl6584665934%_
                                           (cons _%lp-hd6584565931%_
                                                 _%body6584765924%_))))
                                      (let ((_%body6584865937%_
                                             (reverse _%body6584765924%_)))
                                        (_%__kont8236682367%_
                                         _%body6584865937%_
                                         _%hd6583865905%_
                                         _%hd6583565895%_
                                         _%hd6583265885%_))))))
                        (_%loop6584365917%_ _%target6584065911%_ '()))))
                   (_%__match8242282423%_
                    (lambda (_%e6579566017%_
                             _%hd6579666021%_
                             _%tl6579766024%_
                             _%e6579866027%_
                             _%hd6579966031%_
                             _%tl6580066034%_
                             _%e6580166037%_
                             _%hd6580266041%_
                             _%tl6580366044%_
                             _%e6580466047%_
                             _%e6580566051%_
                             _%hd6580666055%_
                             _%tl6580766058%_
                             _%e6580866061%_
                             _%hd6580966065%_
                             _%tl6581066068%_
                             _%e6581166071%_
                             _%__splice8236482365%_
                             _%target6581266075%_
                             _%tl6581466078%_)
                      (letrec ((_%loop6581566081%_
                                (lambda (_%hd6581366085%_ _%body6581966088%_)
                                  (if (gx#stx-pair? _%hd6581366085%_)
                                      (let ((_%e6581666091%_
                                             (gx#syntax-e _%hd6581366085%_)))
                                        (let ((_%lp-tl6581866098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6581666091%_)))
                                              (_%lp-hd6581766095%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6581666091%_))))
                                          (_%loop6581566081%_
                                           _%lp-tl6581866098%_
                                           (cons _%lp-hd6581766095%_
                                                 _%body6581966088%_))))
                                      (let ((_%body6582066101%_
                                             (reverse _%body6581966088%_)))
                                        (_%__kont8236282363%_
                                         _%body6582066101%_
                                         _%hd6580666055%_))))))
                        (_%loop6581566081%_ _%target6581266075%_ '())))))
              (if (gx#stx-pair? _%__stx8235982360%_)
                  (let ((_%e6579566017%_ (gx#syntax-e _%__stx8235982360%_)))
                    (let ((_%tl6579766024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6579566017%_)))
                          (_%hd6579666021%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6579566017%_))))
                      (if (gx#stx-pair? _%tl6579766024%_)
                          (let ((_%e6579866027%_
                                 (gx#syntax-e _%tl6579766024%_)))
                            (let ((_%tl6580066034%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6579866027%_)))
                                  (_%hd6579966031%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6579866027%_))))
                              (if (gx#stx-pair? _%hd6579966031%_)
                                  (let ((_%e6580166037%_
                                         (gx#syntax-e _%hd6579966031%_)))
                                    (let ((_%tl6580366044%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6580166037%_)))
                                          (_%hd6580266041%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6580166037%_))))
                                      (if (gx#stx-datum? _%hd6580266041%_)
                                          (let ((_%e6580466047%_
                                                 (gx#stx-e _%hd6580266041%_)))
                                            (if (equal? _%e6580466047%_ '#f)
                                                (if (gx#stx-pair?
                                                     _%tl6580366044%_)
                                                    (let ((_%e6580566051%_
                                                           (gx#syntax-e
                                                            _%tl6580366044%_)))
                                                      (let ((_%tl6580766058%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6580566051%_)))
                    (_%hd6580666055%_
                     (let () (declare (not safe)) (##car _%e6580566051%_))))
                (if (gx#stx-pair? _%tl6580766058%_)
                    (let ((_%e6580866061%_ (gx#syntax-e _%tl6580766058%_)))
                      (let ((_%tl6581066068%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6580866061%_)))
                            (_%hd6580966065%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6580866061%_))))
                        (if (gx#stx-datum? _%hd6580966065%_)
                            (let ((_%e6581166071%_
                                   (gx#stx-e _%hd6580966065%_)))
                              (if (equal? _%e6581166071%_ '#f)
                                  (if (gx#stx-null? _%tl6581066068%_)
                                      (if (gx#stx-pair/null? _%tl6580066034%_)
                                          (let ((_%__splice8236482365%_
                                                 (gx#syntax-split-splice
                                                  _%tl6580066034%_
                                                  '0)))
                                            (let ((_%tl6581466078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8236482365%_
                                                      '1)))
                                                  (_%target6581266075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8236482365%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6581466078%_)
                                                  (_%__match8242282423%_
                                                   _%e6579566017%_
                                                   _%hd6579666021%_
                                                   _%tl6579766024%_
                                                   _%e6579866027%_
                                                   _%hd6579966031%_
                                                   _%tl6580066034%_
                                                   _%e6580166037%_
                                                   _%hd6580266041%_
                                                   _%tl6580366044%_
                                                   _%e6580466047%_
                                                   _%e6580566051%_
                                                   _%hd6580666055%_
                                                   _%tl6580766058%_
                                                   _%e6580866061%_
                                                   _%hd6580966065%_
                                                   _%tl6581066068%_
                                                   _%e6581166071%_
                                                   _%__splice8236482365%_
                                                   _%target6581266075%_
                                                   _%tl6581466078%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6579165854%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6579165854%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6579165854%_)))
                                  (if (gx#stx-null? _%tl6581066068%_)
                                      (if (gx#stx-pair/null? _%tl6580066034%_)
                                          (let ((_%__splice8236882369%_
                                                 (gx#syntax-split-splice
                                                  _%tl6580066034%_
                                                  '0)))
                                            (let ((_%tl6584265914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8236882369%_
                                                      '1)))
                                                  (_%target6584065911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8236882369%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6584265914%_)
                                                  (_%__match8246282463%_
                                                   _%e6579566017%_
                                                   _%hd6579666021%_
                                                   _%tl6579766024%_
                                                   _%e6579866027%_
                                                   _%hd6579966031%_
                                                   _%tl6580066034%_
                                                   _%e6580166037%_
                                                   _%hd6580266041%_
                                                   _%tl6580366044%_
                                                   _%e6580566051%_
                                                   _%hd6580666055%_
                                                   _%tl6580766058%_
                                                   _%e6580866061%_
                                                   _%hd6580966065%_
                                                   _%tl6581066068%_
                                                   _%__splice8236882369%_
                                                   _%target6584065911%_
                                                   _%tl6584265914%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6579165854%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6579165854%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6579165854%_)))))
                            (if (gx#stx-null? _%tl6581066068%_)
                                (if (gx#stx-pair/null? _%tl6580066034%_)
                                    (let ((_%__splice8236882369%_
                                           (gx#syntax-split-splice
                                            _%tl6580066034%_
                                            '0)))
                                      (let ((_%tl6584265914%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8236882369%_
                                                '1)))
                                            (_%target6584065911%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8236882369%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6584265914%_)
                                            (_%__match8246282463%_
                                             _%e6579566017%_
                                             _%hd6579666021%_
                                             _%tl6579766024%_
                                             _%e6579866027%_
                                             _%hd6579966031%_
                                             _%tl6580066034%_
                                             _%e6580166037%_
                                             _%hd6580266041%_
                                             _%tl6580366044%_
                                             _%e6580566051%_
                                             _%hd6580666055%_
                                             _%tl6580766058%_
                                             _%e6580866061%_
                                             _%hd6580966065%_
                                             _%tl6581066068%_
                                             _%__splice8236882369%_
                                             _%target6584065911%_
                                             _%tl6584265914%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6579165854%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6579165854%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g6579165854%_))))))
                    (let () (declare (not safe)) (_%g6579165854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6579165854%_)))
                                                (if (gx#stx-pair?
                                                     _%tl6580366044%_)
                                                    (let ((_%e6583465891%_
                                                           (gx#syntax-e
                                                            _%tl6580366044%_)))
                                                      (let ((_%tl6583665898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6583465891%_)))
                    (_%hd6583565895%_
                     (let () (declare (not safe)) (##car _%e6583465891%_))))
                (if (gx#stx-pair? _%tl6583665898%_)
                    (let ((_%e6583765901%_ (gx#syntax-e _%tl6583665898%_)))
                      (let ((_%tl6583965908%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6583765901%_)))
                            (_%hd6583865905%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6583765901%_))))
                        (if (gx#stx-null? _%tl6583965908%_)
                            (if (gx#stx-pair/null? _%tl6580066034%_)
                                (let ((_%__splice8236882369%_
                                       (gx#syntax-split-splice
                                        _%tl6580066034%_
                                        '0)))
                                  (let ((_%tl6584265914%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8236882369%_
                                            '1)))
                                        (_%target6584065911%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8236882369%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6584265914%_)
                                        (_%__match8246282463%_
                                         _%e6579566017%_
                                         _%hd6579666021%_
                                         _%tl6579766024%_
                                         _%e6579866027%_
                                         _%hd6579966031%_
                                         _%tl6580066034%_
                                         _%e6580166037%_
                                         _%hd6580266041%_
                                         _%tl6580366044%_
                                         _%e6583465891%_
                                         _%hd6583565895%_
                                         _%tl6583665898%_
                                         _%e6583765901%_
                                         _%hd6583865905%_
                                         _%tl6583965908%_
                                         _%__splice8236882369%_
                                         _%target6584065911%_
                                         _%tl6584265914%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6579165854%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6579165854%_)))
                            (let () (declare (not safe)) (_%g6579165854%_)))))
                    (let () (declare (not safe)) (_%g6579165854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6579165854%_)))))
                                          (if (gx#stx-pair? _%tl6580366044%_)
                                              (let ((_%e6583465891%_
                                                     (gx#syntax-e
                                                      _%tl6580366044%_)))
                                                (let ((_%tl6583665898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6583465891%_)))
                                                      (_%hd6583565895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6583465891%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6583665898%_)
                                                      (let ((_%e6583765901%_
                                                             (gx#syntax-e
                                                              _%tl6583665898%_)))
                                                        (let ((_%tl6583965908%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6583765901%_)))
                      (_%hd6583865905%_
                       (let () (declare (not safe)) (##car _%e6583765901%_))))
                  (if (gx#stx-null? _%tl6583965908%_)
                      (if (gx#stx-pair/null? _%tl6580066034%_)
                          (let ((_%__splice8236882369%_
                                 (gx#syntax-split-splice _%tl6580066034%_ '0)))
                            (let ((_%tl6584265914%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8236882369%_ '1)))
                                  (_%target6584065911%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8236882369%_
                                      '0))))
                              (if (gx#stx-null? _%tl6584265914%_)
                                  (_%__match8246282463%_
                                   _%e6579566017%_
                                   _%hd6579666021%_
                                   _%tl6579766024%_
                                   _%e6579866027%_
                                   _%hd6579966031%_
                                   _%tl6580066034%_
                                   _%e6580166037%_
                                   _%hd6580266041%_
                                   _%tl6580366044%_
                                   _%e6583465891%_
                                   _%hd6583565895%_
                                   _%tl6583665898%_
                                   _%e6583765901%_
                                   _%hd6583865905%_
                                   _%tl6583965908%_
                                   _%__splice8236882369%_
                                   _%target6584065911%_
                                   _%tl6584265914%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6579165854%_)))))
                          (let () (declare (not safe)) (_%g6579165854%_)))
                      (let () (declare (not safe)) (_%g6579165854%_)))))
              (let () (declare (not safe)) (_%g6579165854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6579165854%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6579165854%_)))))
                          (let () (declare (not safe)) (_%g6579165854%_)))))
                  (let () (declare (not safe)) (_%g6579165854%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-contract|
      (lambda (_%stx66177%_)
        (let* ((_%g6618066204%_
                (lambda (_%g6618166200%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6618166200%_)))
               (_%g6617966320%_
                (lambda (_%g6618166208%_)
                  (if (gx#stx-pair? _%g6618166208%_)
                      (let ((_%e6618466211%_ (gx#syntax-e _%g6618166208%_)))
                        (let ((_%hd6618566215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6618466211%_)))
                              (_%tl6618666218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6618466211%_))))
                          (if (gx#stx-pair? _%tl6618666218%_)
                              (let ((_%e6618766221%_
                                     (gx#syntax-e _%tl6618666218%_)))
                                (let ((_%hd6618866225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6618766221%_)))
                                      (_%tl6618966228%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6618766221%_))))
                                  (if (gx#stx-pair/null? _%tl6618966228%_)
                                      (let ((_g84249_
                                             (gx#syntax-split-splice
                                              _%tl6618966228%_
                                              '0)))
                                        (begin
                                          (let ((_g84250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84249_)
                                                       (##values-length
                                                        _g84249_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84250_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84250_)))
                                          (let ((_%target6619066231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84249_ 0)))
                                                (_%tl6619266234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84249_ 1))))
                                            (if (gx#stx-null? _%tl6619266234%_)
                                                (letrec ((_%loop6619366237%_
                                                          (lambda (_%hd6619166241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6619766244%_)
                    (if (gx#stx-pair? _%hd6619166241%_)
                        (let ((_%e6619466247%_ (gx#syntax-e _%hd6619166241%_)))
                          (let ((_%lp-hd6619566251%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6619466247%_)))
                                (_%lp-tl6619666254%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6619466247%_))))
                            (_%loop6619366237%_
                             _%lp-tl6619666254%_
                             (cons _%lp-hd6619566251%_ _%body6619766244%_))))
                        (let ((_%body6619866257%_
                               (reverse _%body6619766244%_)))
                          ((lambda (_%L66261%_ _%L66263%_)
                             (let* ((_%g6628166289%_
                                     (lambda (_%g6628266285%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6628266285%_)))
                                    (_%g6628066316%_
                                     (lambda (_%g6628266293%_)
                                       ((lambda (_%L66296%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66296%_
                                                      (foldr (lambda (_%g6630766310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6630866313%_)
                       (cons _%g6630766310%_ _%g6630866313%_))
                     '()
                     _%L66261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6628266293%_))))
                               (_%g6628066316%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66177%_
                                   _%L66263%_
                                   '#t)))))
                           _%body6619866257%_
                           _%hd6618866225%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6619366237%_
                                                   _%target6619066231%_
                                                   '()))
                                                (_%g6618066204%_
                                                 _%g6618166208%_)))))
                                      (_%g6618066204%_ _%g6618166208%_))))
                              (_%g6618066204%_ _%g6618166208%_))))
                      (_%g6618066204%_ _%g6618166208%_)))))
          (_%g6617966320%_ _%stx66177%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-unchecked-contract|
      (lambda (_%stx66325%_)
        (let* ((_%g6632866352%_
                (lambda (_%g6632966348%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6632966348%_)))
               (_%g6632766468%_
                (lambda (_%g6632966356%_)
                  (if (gx#stx-pair? _%g6632966356%_)
                      (let ((_%e6633266359%_ (gx#syntax-e _%g6632966356%_)))
                        (let ((_%hd6633366363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6633266359%_)))
                              (_%tl6633466366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6633266359%_))))
                          (if (gx#stx-pair? _%tl6633466366%_)
                              (let ((_%e6633566369%_
                                     (gx#syntax-e _%tl6633466366%_)))
                                (let ((_%hd6633666373%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6633566369%_)))
                                      (_%tl6633766376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6633566369%_))))
                                  (if (gx#stx-pair/null? _%tl6633766376%_)
                                      (let ((_g84251_
                                             (gx#syntax-split-splice
                                              _%tl6633766376%_
                                              '0)))
                                        (begin
                                          (let ((_g84252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84251_)
                                                       (##values-length
                                                        _g84251_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84252_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84252_)))
                                          (let ((_%target6633866379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84251_ 0)))
                                                (_%tl6634066382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84251_ 1))))
                                            (if (gx#stx-null? _%tl6634066382%_)
                                                (letrec ((_%loop6634166385%_
                                                          (lambda (_%hd6633966389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6634566392%_)
                    (if (gx#stx-pair? _%hd6633966389%_)
                        (let ((_%e6634266395%_ (gx#syntax-e _%hd6633966389%_)))
                          (let ((_%lp-hd6634366399%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6634266395%_)))
                                (_%lp-tl6634466402%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6634266395%_))))
                            (_%loop6634166385%_
                             _%lp-tl6634466402%_
                             (cons _%lp-hd6634366399%_ _%body6634566392%_))))
                        (let ((_%body6634666405%_
                               (reverse _%body6634566392%_)))
                          ((lambda (_%L66409%_ _%L66411%_)
                             (let* ((_%g6642966437%_
                                     (lambda (_%g6643066433%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6643066433%_)))
                                    (_%g6642866464%_
                                     (lambda (_%g6643066441%_)
                                       ((lambda (_%L66444%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66444%_
                                                      (foldr (lambda (_%g6645566458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6645666461%_)
                       (cons _%g6645566458%_ _%g6645666461%_))
                     '()
                     _%L66409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6643066441%_))))
                               (_%g6642866464%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66325%_
                                   _%L66411%_
                                   '#f)))))
                           _%body6634666405%_
                           _%hd6633666373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6634166385%_
                                                   _%target6633866379%_
                                                   '()))
                                                (_%g6632866352%_
                                                 _%g6632966356%_)))))
                                      (_%g6632866352%_ _%g6632966356%_))))
                              (_%g6632866352%_ _%g6632966356%_))))
                      (_%g6632866352%_ _%g6632966356%_)))))
          (_%g6632766468%_ _%stx66325%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#lambda/c|
      (lambda (_%stx66473%_)
        (letrec ((_%make-lambda66476%_
                  (lambda (_%signature66744%_ _%return66746%_ _%body66747%_)
                    (let* ((_%g6674966781%_
                            (lambda (_%g6675066777%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6675066777%_)))
                           (_%g6674866896%_
                            (lambda (_%g6675066785%_)
                              (if (gx#stx-pair? _%g6675066785%_)
                                  (let ((_%e6675566788%_
                                         (gx#syntax-e _%g6675066785%_)))
                                    (let ((_%hd6675666792%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6675566788%_)))
                                          (_%tl6675766795%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6675566788%_))))
                                      (if (gx#stx-pair? _%tl6675766795%_)
                                          (let ((_%e6675866798%_
                                                 (gx#syntax-e
                                                  _%tl6675766795%_)))
                                            (let ((_%hd6675966802%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6675866798%_)))
                                                  (_%tl6676066805%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6675866798%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6676066805%_)
                                                  (let ((_%e6676166808%_
                                                         (gx#syntax-e
                                                          _%tl6676066805%_)))
                                                    (let ((_%hd6676266812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6676166808%_)))
                                                          (_%tl6676366815%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6676166808%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6676366815%_)
                                                          (let ((_%e6676466818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6676366815%_)))
                    (let ((_%hd6676566822%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6676466818%_)))
                          (_%tl6676666825%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6676466818%_))))
                      (if (gx#stx-pair/null? _%hd6676566822%_)
                          (let ((_g84253_
                                 (gx#syntax-split-splice _%hd6676566822%_ '0)))
                            (begin
                              (let ((_g84254_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g84253_)
                                           (##values-length _g84253_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g84254_ 2)))
                                    (error "Context expects 2 values"
                                           _g84254_)))
                              (let ((_%target6676766828%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g84253_ 0)))
                                    (_%tl6676966831%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g84253_ 1))))
                                (if (gx#stx-null? _%tl6676966831%_)
                                    (letrec ((_%loop6677066834%_
                                              (lambda (_%hd6676866838%_
                                                       _%body6677466841%_)
                                                (if (gx#stx-pair?
                                                     _%hd6676866838%_)
                                                    (let ((_%e6677166844%_
                                                           (gx#syntax-e
                                                            _%hd6676866838%_)))
                                                      (let ((_%lp-hd6677266848%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6677166844%_)))
                    (_%lp-tl6677366851%_
                     (let () (declare (not safe)) (##cdr _%e6677166844%_))))
                (_%loop6677066834%_
                 _%lp-tl6677366851%_
                 (cons _%lp-hd6677266848%_ _%body6677466841%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6677566854%_
                                                           (reverse _%body6677466841%_)))
                                                      (if (gx#stx-null?
                                                           _%tl6676666825%_)
                                                          ((lambda (_%L66858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L66860%_
                            _%L66861%_
                            _%L66862%_)
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons _%L66862%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-signature)
                                              (cons (cons _%L66861%_
                                                          (cons _%L66860%_
                                                                (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'with-procedure-contract)
                        (cons _%L66861%_
                              (foldr (lambda (_%g6688766890%_ _%g6688866893%_)
                                       (cons _%g6688766890%_ _%g6688866893%_))
                                     '()
                                     _%L66858%_)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (gx#stx-source _%stx66473%_)))
                   _%body6677566854%_
                   _%hd6676266812%_
                   _%hd6675966802%_
                   _%hd6675666792%_)
                  (_%g6674966781%_ _%g6675066785%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6677066834%_
                                       _%target6676766828%_
                                       '()))
                                    (_%g6674966781%_ _%g6675066785%_)))))
                          (_%g6674966781%_ _%g6675066785%_))))
                  (_%g6674966781%_ _%g6675066785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6674966781%_
                                                   _%g6675066785%_))))
                                          (_%g6674966781%_ _%g6675066785%_))))
                                  (_%g6674966781%_ _%g6675066785%_)))))
                      (_%g6674866896%_
                       (list (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature66744%_))
                             _%signature66744%_
                             _%return66746%_
                             _%body66747%_))))))
          (let* ((_%__stx8246582466%_ _%stx66473%_)
                 (_%g6648066528%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8246582466%_))))
            (let ((_%__kont8246882469%_
                   (lambda (_%L66699%_ _%L66701%_ _%L66702%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66702%_)
                         (_%make-lambda66476%_
                          _%L66702%_
                          _%L66701%_
                          (foldr (lambda (_%g6672366726%_ _%g6672466729%_)
                                   (cons _%g6672366726%_ _%g6672466729%_))
                                 '()
                                 _%L66699%_))
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66702%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L66701%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6673166734%_ _%g6673266737%_)
                        (cons _%g6673166734%_ _%g6673266737%_))
                      '()
                      _%L66699%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8247282473%_
                   (lambda (_%L66585%_ _%L66587%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66587%_)
                         (cons (gx#datum->syntax '#f 'lambda/c)
                               (cons _%L66587%_
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6660566608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6660666611%_)
                  (cons _%g6660566608%_ _%g6660666611%_))
                '()
                _%L66585%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66587%_
                                     (foldr (lambda (_%g6661366616%_
                                                     _%g6661466619%_)
                                              (cons _%g6661366616%_
                                                    _%g6661466619%_))
                                            '()
                                            _%L66585%_)))))))
              (let* ((_%__match8253282533%_
                      (lambda (_%e6650866535%_
                               _%hd6650966539%_
                               _%tl6651066542%_
                               _%e6651166545%_
                               _%hd6651266549%_
                               _%tl6651366552%_
                               _%__splice8247482475%_
                               _%target6651466555%_
                               _%tl6651666558%_)
                        (letrec ((_%loop6651766561%_
                                  (lambda (_%hd6651566565%_ _%body6652166568%_)
                                    (if (gx#stx-pair? _%hd6651566565%_)
                                        (let ((_%e6651866571%_
                                               (gx#syntax-e _%hd6651566565%_)))
                                          (let ((_%lp-tl6652066578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6651866571%_)))
                                                (_%lp-hd6651966575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6651866571%_))))
                                            (_%loop6651766561%_
                                             _%lp-tl6652066578%_
                                             (cons _%lp-hd6651966575%_
                                                   _%body6652166568%_))))
                                        (let ((_%body6652266581%_
                                               (reverse _%body6652166568%_)))
                                          (_%__kont8247282473%_
                                           _%body6652266581%_
                                           _%hd6651266549%_))))))
                          (_%loop6651766561%_ _%target6651466555%_ '()))))
                     (_%__match8251282513%_
                      (lambda (_%e6648566629%_
                               _%hd6648666633%_
                               _%tl6648766636%_
                               _%e6648866639%_
                               _%hd6648966643%_
                               _%tl6649066646%_
                               _%e6649166649%_
                               _%hd6649266653%_
                               _%tl6649366656%_
                               _%e6649466659%_
                               _%hd6649566663%_
                               _%tl6649666666%_
                               _%__splice8247082471%_
                               _%target6649766669%_
                               _%tl6649966672%_)
                        (letrec ((_%loop6650066675%_
                                  (lambda (_%hd6649866679%_ _%body6650466682%_)
                                    (if (gx#stx-pair? _%hd6649866679%_)
                                        (let ((_%e6650166685%_
                                               (gx#syntax-e _%hd6649866679%_)))
                                          (let ((_%lp-tl6650366692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6650166685%_)))
                                                (_%lp-hd6650266689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6650166685%_))))
                                            (_%loop6650066675%_
                                             _%lp-tl6650366692%_
                                             (cons _%lp-hd6650266689%_
                                                   _%body6650466682%_))))
                                        (let ((_%body6650566695%_
                                               (reverse _%body6650466682%_)))
                                          (_%__kont8246882469%_
                                           _%body6650566695%_
                                           _%hd6649566663%_
                                           _%hd6648966643%_))))))
                          (_%loop6650066675%_ _%target6649766669%_ '())))))
                (if (gx#stx-pair? _%__stx8246582466%_)
                    (let ((_%e6648566629%_ (gx#syntax-e _%__stx8246582466%_)))
                      (let ((_%tl6648766636%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6648566629%_)))
                            (_%hd6648666633%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6648566629%_))))
                        (if (gx#stx-pair? _%tl6648766636%_)
                            (let ((_%e6648866639%_
                                   (gx#syntax-e _%tl6648766636%_)))
                              (let ((_%tl6649066646%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6648866639%_)))
                                    (_%hd6648966643%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6648866639%_))))
                                (if (gx#stx-pair? _%tl6649066646%_)
                                    (let ((_%e6649166649%_
                                           (gx#syntax-e _%tl6649066646%_)))
                                      (let ((_%tl6649366656%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6649166649%_)))
                                            (_%hd6649266653%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6649166649%_))))
                                        (if (gx#identifier? _%hd6649266653%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g84255_|
                                                 _%hd6649266653%_)
                                                (if (gx#stx-pair?
                                                     _%tl6649366656%_)
                                                    (let ((_%e6649466659%_
                                                           (gx#syntax-e
                                                            _%tl6649366656%_)))
                                                      (let ((_%tl6649666666%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6649466659%_)))
                    (_%hd6649566663%_
                     (let () (declare (not safe)) (##car _%e6649466659%_))))
                (if (gx#stx-pair/null? _%tl6649666666%_)
                    (let ((_%__splice8247082471%_
                           (gx#syntax-split-splice _%tl6649666666%_ '0)))
                      (let ((_%tl6649966672%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8247082471%_ '1)))
                            (_%target6649766669%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8247082471%_ '0))))
                        (if (gx#stx-null? _%tl6649966672%_)
                            (_%__match8251282513%_
                             _%e6648566629%_
                             _%hd6648666633%_
                             _%tl6648766636%_
                             _%e6648866639%_
                             _%hd6648966643%_
                             _%tl6649066646%_
                             _%e6649166649%_
                             _%hd6649266653%_
                             _%tl6649366656%_
                             _%e6649466659%_
                             _%hd6649566663%_
                             _%tl6649666666%_
                             _%__splice8247082471%_
                             _%target6649766669%_
                             _%tl6649966672%_)
                            (if (gx#stx-pair/null? _%tl6649066646%_)
                                (let ((_%__splice8247482475%_
                                       (gx#syntax-split-splice
                                        _%tl6649066646%_
                                        '0)))
                                  (let ((_%tl6651666558%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8247482475%_
                                            '1)))
                                        (_%target6651466555%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8247482475%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6651666558%_)
                                        (_%__match8253282533%_
                                         _%e6648566629%_
                                         _%hd6648666633%_
                                         _%tl6648766636%_
                                         _%e6648866639%_
                                         _%hd6648966643%_
                                         _%tl6649066646%_
                                         _%__splice8247482475%_
                                         _%target6651466555%_
                                         _%tl6651666558%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6648066528%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6648066528%_))))))
                    (if (gx#stx-pair/null? _%tl6649066646%_)
                        (let ((_%__splice8247482475%_
                               (gx#syntax-split-splice _%tl6649066646%_ '0)))
                          (let ((_%tl6651666558%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8247482475%_ '1)))
                                (_%target6651466555%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8247482475%_ '0))))
                            (if (gx#stx-null? _%tl6651666558%_)
                                (_%__match8253282533%_
                                 _%e6648566629%_
                                 _%hd6648666633%_
                                 _%tl6648766636%_
                                 _%e6648866639%_
                                 _%hd6648966643%_
                                 _%tl6649066646%_
                                 _%__splice8247482475%_
                                 _%target6651466555%_
                                 _%tl6651666558%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6648066528%_)))))
                        (let () (declare (not safe)) (_%g6648066528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6649066646%_)
                                                        (let ((_%__splice8247482475%_
                                                               (gx#syntax-split-splice
                                                                _%tl6649066646%_
                                                                '0)))
                                                          (let ((_%tl6651666558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8247482475%_ '1)))
                        (_%target6651466555%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8247482475%_ '0))))
                    (if (gx#stx-null? _%tl6651666558%_)
                        (_%__match8253282533%_
                         _%e6648566629%_
                         _%hd6648666633%_
                         _%tl6648766636%_
                         _%e6648866639%_
                         _%hd6648966643%_
                         _%tl6649066646%_
                         _%__splice8247482475%_
                         _%target6651466555%_
                         _%tl6651666558%_)
                        (let () (declare (not safe)) (_%g6648066528%_)))))
                (let () (declare (not safe)) (_%g6648066528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl6649066646%_)
                                                    (let ((_%__splice8247482475%_
                                                           (gx#syntax-split-splice
                                                            _%tl6649066646%_
                                                            '0)))
                                                      (let ((_%tl6651666558%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8247482475%_ '1)))
                    (_%target6651466555%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8247482475%_ '0))))
                (if (gx#stx-null? _%tl6651666558%_)
                    (_%__match8253282533%_
                     _%e6648566629%_
                     _%hd6648666633%_
                     _%tl6648766636%_
                     _%e6648866639%_
                     _%hd6648966643%_
                     _%tl6649066646%_
                     _%__splice8247482475%_
                     _%target6651466555%_
                     _%tl6651666558%_)
                    (let () (declare (not safe)) (_%g6648066528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6648066528%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl6649066646%_)
                                                (let ((_%__splice8247482475%_
                                                       (gx#syntax-split-splice
                                                        _%tl6649066646%_
                                                        '0)))
                                                  (let ((_%tl6651666558%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8247482475%_
                                                            '1)))
                                                        (_%target6651466555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8247482475%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6651666558%_)
                                                        (_%__match8253282533%_
                                                         _%e6648566629%_
                                                         _%hd6648666633%_
                                                         _%tl6648766636%_
                                                         _%e6648866639%_
                                                         _%hd6648966643%_
                                                         _%tl6649066646%_
                                                         _%__splice8247482475%_
                                                         _%target6651466555%_
                                                         _%tl6651666558%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6648066528%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6648066528%_))))))
                                    (if (gx#stx-pair/null? _%tl6649066646%_)
                                        (let ((_%__splice8247482475%_
                                               (gx#syntax-split-splice
                                                _%tl6649066646%_
                                                '0)))
                                          (let ((_%tl6651666558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8247482475%_
                                                    '1)))
                                                (_%target6651466555%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8247482475%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6651666558%_)
                                                (_%__match8253282533%_
                                                 _%e6648566629%_
                                                 _%hd6648666633%_
                                                 _%tl6648766636%_
                                                 _%e6648866639%_
                                                 _%hd6648966643%_
                                                 _%tl6649066646%_
                                                 _%__splice8247482475%_
                                                 _%target6651466555%_
                                                 _%tl6651666558%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6648066528%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6648066528%_))))))
                            (let () (declare (not safe)) (_%g6648066528%_)))))
                    (let () (declare (not safe)) (_%g6648066528%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def*/c|
      (lambda (_%$stx66903%_)
        (let* ((_%g6690766931%_
                (lambda (_%g6690866927%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6690866927%_)))
               (_%g6690667016%_
                (lambda (_%g6690866935%_)
                  (if (gx#stx-pair? _%g6690866935%_)
                      (let ((_%e6691166938%_ (gx#syntax-e _%g6690866935%_)))
                        (let ((_%hd6691266942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6691166938%_)))
                              (_%tl6691366945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6691166938%_))))
                          (if (gx#stx-pair? _%tl6691366945%_)
                              (let ((_%e6691466948%_
                                     (gx#syntax-e _%tl6691366945%_)))
                                (let ((_%hd6691566952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6691466948%_)))
                                      (_%tl6691666955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6691466948%_))))
                                  (if (gx#stx-pair/null? _%tl6691666955%_)
                                      (let ((_g84256_
                                             (gx#syntax-split-splice
                                              _%tl6691666955%_
                                              '0)))
                                        (begin
                                          (let ((_g84257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84256_)
                                                       (##values-length
                                                        _g84256_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84257_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84257_)))
                                          (let ((_%target6691766958%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84256_ 0)))
                                                (_%tl6691966961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84256_ 1))))
                                            (if (gx#stx-null? _%tl6691966961%_)
                                                (letrec ((_%loop6692066964%_
                                                          (lambda (_%hd6691866968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause6692466971%_)
                    (if (gx#stx-pair? _%hd6691866968%_)
                        (let ((_%e6692166974%_ (gx#syntax-e _%hd6691866968%_)))
                          (let ((_%lp-hd6692266978%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6692166974%_)))
                                (_%lp-tl6692366981%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6692166974%_))))
                            (_%loop6692066964%_
                             _%lp-tl6692366981%_
                             (cons _%lp-hd6692266978%_ _%clause6692466971%_))))
                        (let ((_%clause6692566984%_
                               (reverse _%clause6692466971%_)))
                          ((lambda (_%L66988%_ _%L66990%_)
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L66990%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'case-lambda/c)
                                                     (foldr (lambda (_%g6700767010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6700867013%_)
                      (cons _%g6700767010%_ _%g6700867013%_))
                    '()
                    _%L66988%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause6692566984%_
                           _%hd6691566952%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6692066964%_
                                                   _%target6691766958%_
                                                   '()))
                                                (_%g6690766931%_
                                                 _%g6690866935%_)))))
                                      (_%g6690766931%_ _%g6690866935%_))))
                              (_%g6690766931%_ _%g6690866935%_))))
                      (_%g6690766931%_ _%g6690866935%_)))))
          (_%g6690667016%_ _%$stx66903%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#case-lambda/c|
      (lambda (_%stx67021%_)
        (letrec ((_%is-clause-signature?67024%_
                  (lambda (_%clause67558%_)
                    (let* ((_%__stx8253582536%_ _%clause67558%_)
                           (_%g6756267604%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8253582536%_))))
                      (let ((_%__kont8253882539%_
                             (lambda (_%L67736%_ _%L67738%_ _%L67739%_) '#t))
                            (_%__kont8254282543%_
                             (lambda (_%L67651%_ _%L67653%_)
                               (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                _%L67653%_))))
                        (let* ((_%__match8259082591%_
                                (lambda (_%e6758767611%_
                                         _%hd6758867615%_
                                         _%tl6758967618%_
                                         _%__splice8254482545%_
                                         _%target6759067621%_
                                         _%tl6759267624%_)
                                  (letrec ((_%loop6759367627%_
                                            (lambda (_%hd6759167631%_
                                                     _%body6759767634%_)
                                              (if (gx#stx-pair?
                                                   _%hd6759167631%_)
                                                  (let ((_%e6759467637%_
                                                         (gx#syntax-e
                                                          _%hd6759167631%_)))
                                                    (let ((_%lp-tl6759667644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6759467637%_)))
                                                          (_%lp-hd6759567641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6759467637%_))))
                                                      (_%loop6759367627%_
                                                       _%lp-tl6759667644%_
                                                       (cons _%lp-hd6759567641%_
                                                             _%body6759767634%_))))
                                                  (let ((_%body6759867647%_
                                                         (reverse _%body6759767634%_)))
                                                    (_%__kont8254282543%_
                                                     _%body6759867647%_
                                                     _%hd6758867615%_))))))
                                    (_%loop6759367627%_
                                     _%target6759067621%_
                                     '()))))
                               (_%__match8257682577%_
                                (lambda (_%e6756767676%_
                                         _%hd6756867680%_
                                         _%tl6756967683%_
                                         _%e6757067686%_
                                         _%hd6757167690%_
                                         _%tl6757267693%_
                                         _%e6757367696%_
                                         _%hd6757467700%_
                                         _%tl6757567703%_
                                         _%__splice8254082541%_
                                         _%target6757667706%_
                                         _%tl6757867709%_)
                                  (letrec ((_%loop6757967712%_
                                            (lambda (_%hd6757767716%_
                                                     _%body6758367719%_)
                                              (if (gx#stx-pair?
                                                   _%hd6757767716%_)
                                                  (let ((_%e6758067722%_
                                                         (gx#syntax-e
                                                          _%hd6757767716%_)))
                                                    (let ((_%lp-tl6758267729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6758067722%_)))
                                                          (_%lp-hd6758167726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6758067722%_))))
                                                      (_%loop6757967712%_
                                                       _%lp-tl6758267729%_
                                                       (cons _%lp-hd6758167726%_
                                                             _%body6758367719%_))))
                                                  (let ((_%body6758467732%_
                                                         (reverse _%body6758367719%_)))
                                                    (_%__kont8253882539%_
                                                     _%body6758467732%_
                                                     _%hd6757467700%_
                                                     _%hd6756867680%_))))))
                                    (_%loop6757967712%_
                                     _%target6757667706%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8253582536%_)
                              (let ((_%e6756767676%_
                                     (gx#syntax-e _%__stx8253582536%_)))
                                (let ((_%tl6756967683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6756767676%_)))
                                      (_%hd6756867680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6756767676%_))))
                                  (if (gx#stx-pair? _%tl6756967683%_)
                                      (let ((_%e6757067686%_
                                             (gx#syntax-e _%tl6756967683%_)))
                                        (let ((_%tl6757267693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6757067686%_)))
                                              (_%hd6757167690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6757067686%_))))
                                          (if (gx#identifier? _%hd6757167690%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g84258_|
                                                   _%hd6757167690%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6757267693%_)
                                                      (let ((_%e6757367696%_
                                                             (gx#syntax-e
                                                              _%tl6757267693%_)))
                                                        (let ((_%tl6757567703%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6757367696%_)))
                      (_%hd6757467700%_
                       (let () (declare (not safe)) (##car _%e6757367696%_))))
                  (if (gx#stx-pair/null? _%tl6757567703%_)
                      (let ((_%__splice8254082541%_
                             (gx#syntax-split-splice _%tl6757567703%_ '0)))
                        (let ((_%tl6757867709%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8254082541%_ '1)))
                              (_%target6757667706%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8254082541%_ '0))))
                          (if (gx#stx-null? _%tl6757867709%_)
                              (_%__match8257682577%_
                               _%e6756767676%_
                               _%hd6756867680%_
                               _%tl6756967683%_
                               _%e6757067686%_
                               _%hd6757167690%_
                               _%tl6757267693%_
                               _%e6757367696%_
                               _%hd6757467700%_
                               _%tl6757567703%_
                               _%__splice8254082541%_
                               _%target6757667706%_
                               _%tl6757867709%_)
                              (if (gx#stx-pair/null? _%tl6756967683%_)
                                  (let ((_%__splice8254482545%_
                                         (gx#syntax-split-splice
                                          _%tl6756967683%_
                                          '0)))
                                    (let ((_%tl6759267624%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8254482545%_
                                              '1)))
                                          (_%target6759067621%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8254482545%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6759267624%_)
                                          (_%__match8259082591%_
                                           _%e6756767676%_
                                           _%hd6756867680%_
                                           _%tl6756967683%_
                                           _%__splice8254482545%_
                                           _%target6759067621%_
                                           _%tl6759267624%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6756267604%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6756267604%_))))))
                      (if (gx#stx-pair/null? _%tl6756967683%_)
                          (let ((_%__splice8254482545%_
                                 (gx#syntax-split-splice _%tl6756967683%_ '0)))
                            (let ((_%tl6759267624%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8254482545%_ '1)))
                                  (_%target6759067621%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8254482545%_
                                      '0))))
                              (if (gx#stx-null? _%tl6759267624%_)
                                  (_%__match8259082591%_
                                   _%e6756767676%_
                                   _%hd6756867680%_
                                   _%tl6756967683%_
                                   _%__splice8254482545%_
                                   _%target6759067621%_
                                   _%tl6759267624%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6756267604%_)))))
                          (let () (declare (not safe)) (_%g6756267604%_))))))
              (if (gx#stx-pair/null? _%tl6756967683%_)
                  (let ((_%__splice8254482545%_
                         (gx#syntax-split-splice _%tl6756967683%_ '0)))
                    (let ((_%tl6759267624%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8254482545%_ '1)))
                          (_%target6759067621%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8254482545%_ '0))))
                      (if (gx#stx-null? _%tl6759267624%_)
                          (_%__match8259082591%_
                           _%e6756767676%_
                           _%hd6756867680%_
                           _%tl6756967683%_
                           _%__splice8254482545%_
                           _%target6759067621%_
                           _%tl6759267624%_)
                          (let () (declare (not safe)) (_%g6756267604%_)))))
                  (let () (declare (not safe)) (_%g6756267604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6756967683%_)
                                                      (let ((_%__splice8254482545%_
                                                             (gx#syntax-split-splice
                                                              _%tl6756967683%_
                                                              '0)))
                                                        (let ((_%tl6759267624%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8254482545%_ '1)))
                      (_%target6759067621%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8254482545%_ '0))))
                  (if (gx#stx-null? _%tl6759267624%_)
                      (_%__match8259082591%_
                       _%e6756767676%_
                       _%hd6756867680%_
                       _%tl6756967683%_
                       _%__splice8254482545%_
                       _%target6759067621%_
                       _%tl6759267624%_)
                      (let () (declare (not safe)) (_%g6756267604%_)))))
              (let () (declare (not safe)) (_%g6756267604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6756967683%_)
                                                  (let ((_%__splice8254482545%_
                                                         (gx#syntax-split-splice
                                                          _%tl6756967683%_
                                                          '0)))
                                                    (let ((_%tl6759267624%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8254482545%_
                                                              '1)))
                                                          (_%target6759067621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8254482545%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6759267624%_)
                                                          (_%__match8259082591%_
                                                           _%e6756767676%_
                                                           _%hd6756867680%_
                                                           _%tl6756967683%_
                                                           _%__splice8254482545%_
                                                           _%target6759067621%_
                                                           _%tl6759267624%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6756267604%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6756267604%_))))))
                                      (if (gx#stx-pair/null? _%tl6756967683%_)
                                          (let ((_%__splice8254482545%_
                                                 (gx#syntax-split-splice
                                                  _%tl6756967683%_
                                                  '0)))
                                            (let ((_%tl6759267624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8254482545%_
                                                      '1)))
                                                  (_%target6759067621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8254482545%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6759267624%_)
                                                  (_%__match8259082591%_
                                                   _%e6756767676%_
                                                   _%hd6756867680%_
                                                   _%tl6756967683%_
                                                   _%__splice8254482545%_
                                                   _%target6759067621%_
                                                   _%tl6759267624%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6756267604%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6756267604%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6756267604%_))))))))
                 (_%clause-e67026%_
                  (lambda (_%clause67298%_)
                    (let* ((_%__stx8259382594%_ _%clause67298%_)
                           (_%g6730267344%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8259382594%_))))
                      (let ((_%__kont8259682597%_
                             (lambda (_%L67484%_ _%L67486%_ _%L67487%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67487%_)
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/contract~Interface[1]#check-signature!__%|
                                        '#f
                                        '#f
                                        '#f
                                        _%stx67021%_
                                        _%L67487%_
                                        _%L67486%_))
                                     (let* ((_%g6750767515%_
                                             (lambda (_%g6750867511%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g6750867511%_)))
                                            (_%g6750667542%_
                                             (lambda (_%g6750867519%_)
                                               ((lambda (_%L67522%_)
                                                  (cons _%L67522%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'with-procedure-signature)
                            (cons (cons _%L67487%_
                                        (cons _%L67486%_ (cons '#f '())))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-contract)
                                              (cons _%L67487%_
                                                    (foldr (lambda (_%g6753367536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6753467539%_)
                     (cons _%g6753367536%_ _%g6753467539%_))
                   '()
                   _%L67484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g6750867519%_))))
                                       (_%g6750667542%_
                                        (let ()
                                          (declare (not safe))
                                          (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                           _%L67487%_)))))
                                   (cons _%L67487%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'with-procedure-signature)
                                                     (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L67486%_ (cons '#f '())))
                   (foldr (lambda (_%g6754567548%_ _%g6754667551%_)
                            (cons _%g6754567548%_ _%g6754667551%_))
                          '()
                          _%L67484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                            (_%__kont8260082601%_
                             (lambda (_%L67391%_ _%L67393%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67393%_)
                                   (_%clause-e67026%_
                                    (cons _%L67393%_
                                          (cons (gx#datum->syntax '#f '=>)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       ':t)
                                                      (foldr (lambda (_%g6740867411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6740967414%_)
                       (cons _%g6740867411%_ _%g6740967414%_))
                     '()
                     _%L67391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%clause67298%_))))
                        (let* ((_%__match8264882649%_
                                (lambda (_%e6732767351%_
                                         _%hd6732867355%_
                                         _%tl6732967358%_
                                         _%__splice8260282603%_
                                         _%target6733067361%_
                                         _%tl6733267364%_)
                                  (letrec ((_%loop6733367367%_
                                            (lambda (_%hd6733167371%_
                                                     _%body6733767374%_)
                                              (if (gx#stx-pair?
                                                   _%hd6733167371%_)
                                                  (let ((_%e6733467377%_
                                                         (gx#syntax-e
                                                          _%hd6733167371%_)))
                                                    (let ((_%lp-tl6733667384%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6733467377%_)))
                                                          (_%lp-hd6733567381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6733467377%_))))
                                                      (_%loop6733367367%_
                                                       _%lp-tl6733667384%_
                                                       (cons _%lp-hd6733567381%_
                                                             _%body6733767374%_))))
                                                  (let ((_%body6733867387%_
                                                         (reverse _%body6733767374%_)))
                                                    (_%__kont8260082601%_
                                                     _%body6733867387%_
                                                     _%hd6732867355%_))))))
                                    (_%loop6733367367%_
                                     _%target6733067361%_
                                     '()))))
                               (_%__match8263482635%_
                                (lambda (_%e6730767424%_
                                         _%hd6730867428%_
                                         _%tl6730967431%_
                                         _%e6731067434%_
                                         _%hd6731167438%_
                                         _%tl6731267441%_
                                         _%e6731367444%_
                                         _%hd6731467448%_
                                         _%tl6731567451%_
                                         _%__splice8259882599%_
                                         _%target6731667454%_
                                         _%tl6731867457%_)
                                  (letrec ((_%loop6731967460%_
                                            (lambda (_%hd6731767464%_
                                                     _%body6732367467%_)
                                              (if (gx#stx-pair?
                                                   _%hd6731767464%_)
                                                  (let ((_%e6732067470%_
                                                         (gx#syntax-e
                                                          _%hd6731767464%_)))
                                                    (let ((_%lp-tl6732267477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6732067470%_)))
                                                          (_%lp-hd6732167474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6732067470%_))))
                                                      (_%loop6731967460%_
                                                       _%lp-tl6732267477%_
                                                       (cons _%lp-hd6732167474%_
                                                             _%body6732367467%_))))
                                                  (let ((_%body6732467480%_
                                                         (reverse _%body6732367467%_)))
                                                    (_%__kont8259682597%_
                                                     _%body6732467480%_
                                                     _%hd6731467448%_
                                                     _%hd6730867428%_))))))
                                    (_%loop6731967460%_
                                     _%target6731667454%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8259382594%_)
                              (let ((_%e6730767424%_
                                     (gx#syntax-e _%__stx8259382594%_)))
                                (let ((_%tl6730967431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6730767424%_)))
                                      (_%hd6730867428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6730767424%_))))
                                  (if (gx#stx-pair? _%tl6730967431%_)
                                      (let ((_%e6731067434%_
                                             (gx#syntax-e _%tl6730967431%_)))
                                        (let ((_%tl6731267441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6731067434%_)))
                                              (_%hd6731167438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6731067434%_))))
                                          (if (gx#identifier? _%hd6731167438%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g84259_|
                                                   _%hd6731167438%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6731267441%_)
                                                      (let ((_%e6731367444%_
                                                             (gx#syntax-e
                                                              _%tl6731267441%_)))
                                                        (let ((_%tl6731567451%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6731367444%_)))
                      (_%hd6731467448%_
                       (let () (declare (not safe)) (##car _%e6731367444%_))))
                  (if (gx#stx-pair/null? _%tl6731567451%_)
                      (let ((_%__splice8259882599%_
                             (gx#syntax-split-splice _%tl6731567451%_ '0)))
                        (let ((_%tl6731867457%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8259882599%_ '1)))
                              (_%target6731667454%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8259882599%_ '0))))
                          (if (gx#stx-null? _%tl6731867457%_)
                              (_%__match8263482635%_
                               _%e6730767424%_
                               _%hd6730867428%_
                               _%tl6730967431%_
                               _%e6731067434%_
                               _%hd6731167438%_
                               _%tl6731267441%_
                               _%e6731367444%_
                               _%hd6731467448%_
                               _%tl6731567451%_
                               _%__splice8259882599%_
                               _%target6731667454%_
                               _%tl6731867457%_)
                              (if (gx#stx-pair/null? _%tl6730967431%_)
                                  (let ((_%__splice8260282603%_
                                         (gx#syntax-split-splice
                                          _%tl6730967431%_
                                          '0)))
                                    (let ((_%tl6733267364%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8260282603%_
                                              '1)))
                                          (_%target6733067361%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8260282603%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6733267364%_)
                                          (_%__match8264882649%_
                                           _%e6730767424%_
                                           _%hd6730867428%_
                                           _%tl6730967431%_
                                           _%__splice8260282603%_
                                           _%target6733067361%_
                                           _%tl6733267364%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6730267344%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6730267344%_))))))
                      (if (gx#stx-pair/null? _%tl6730967431%_)
                          (let ((_%__splice8260282603%_
                                 (gx#syntax-split-splice _%tl6730967431%_ '0)))
                            (let ((_%tl6733267364%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8260282603%_ '1)))
                                  (_%target6733067361%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8260282603%_
                                      '0))))
                              (if (gx#stx-null? _%tl6733267364%_)
                                  (_%__match8264882649%_
                                   _%e6730767424%_
                                   _%hd6730867428%_
                                   _%tl6730967431%_
                                   _%__splice8260282603%_
                                   _%target6733067361%_
                                   _%tl6733267364%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6730267344%_)))))
                          (let () (declare (not safe)) (_%g6730267344%_))))))
              (if (gx#stx-pair/null? _%tl6730967431%_)
                  (let ((_%__splice8260282603%_
                         (gx#syntax-split-splice _%tl6730967431%_ '0)))
                    (let ((_%tl6733267364%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8260282603%_ '1)))
                          (_%target6733067361%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8260282603%_ '0))))
                      (if (gx#stx-null? _%tl6733267364%_)
                          (_%__match8264882649%_
                           _%e6730767424%_
                           _%hd6730867428%_
                           _%tl6730967431%_
                           _%__splice8260282603%_
                           _%target6733067361%_
                           _%tl6733267364%_)
                          (let () (declare (not safe)) (_%g6730267344%_)))))
                  (let () (declare (not safe)) (_%g6730267344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6730967431%_)
                                                      (let ((_%__splice8260282603%_
                                                             (gx#syntax-split-splice
                                                              _%tl6730967431%_
                                                              '0)))
                                                        (let ((_%tl6733267364%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8260282603%_ '1)))
                      (_%target6733067361%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8260282603%_ '0))))
                  (if (gx#stx-null? _%tl6733267364%_)
                      (_%__match8264882649%_
                       _%e6730767424%_
                       _%hd6730867428%_
                       _%tl6730967431%_
                       _%__splice8260282603%_
                       _%target6733067361%_
                       _%tl6733267364%_)
                      (let () (declare (not safe)) (_%g6730267344%_)))))
              (let () (declare (not safe)) (_%g6730267344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6730967431%_)
                                                  (let ((_%__splice8260282603%_
                                                         (gx#syntax-split-splice
                                                          _%tl6730967431%_
                                                          '0)))
                                                    (let ((_%tl6733267364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8260282603%_
                                                              '1)))
                                                          (_%target6733067361%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8260282603%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6733267364%_)
                                                          (_%__match8264882649%_
                                                           _%e6730767424%_
                                                           _%hd6730867428%_
                                                           _%tl6730967431%_
                                                           _%__splice8260282603%_
                                                           _%target6733067361%_
                                                           _%tl6733267364%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6730267344%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6730267344%_))))))
                                      (if (gx#stx-pair/null? _%tl6730967431%_)
                                          (let ((_%__splice8260282603%_
                                                 (gx#syntax-split-splice
                                                  _%tl6730967431%_
                                                  '0)))
                                            (let ((_%tl6733267364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8260282603%_
                                                      '1)))
                                                  (_%target6733067361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8260282603%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6733267364%_)
                                                  (_%__match8264882649%_
                                                   _%e6730767424%_
                                                   _%hd6730867428%_
                                                   _%tl6730967431%_
                                                   _%__splice8260282603%_
                                                   _%target6733067361%_
                                                   _%tl6733267364%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6730267344%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6730267344%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6730267344%_)))))))))
          (let* ((_%__stx8265182652%_ _%stx67021%_)
                 (_%g6702967062%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8265182652%_))))
            (let ((_%__kont8265482655%_
                   (lambda (_%L67181%_)
                     (let* ((_%g6720467221%_
                             (lambda (_%g6720567217%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6720567217%_)))
                            (_%g6720367282%_
                             (lambda (_%g6720567225%_)
                               (if (gx#stx-pair/null? _%g6720567225%_)
                                   (let ((_g84260_
                                          (gx#syntax-split-splice
                                           _%g6720567225%_
                                           '0)))
                                     (begin
                                       (let ((_g84261_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g84260_)
                                                    (##values-length _g84260_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g84261_ 2)))
                                             (error "Context expects 2 values"
                                                    _g84261_)))
                                       (let ((_%target6720767228%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g84260_ 0)))
                                             (_%tl6720967231%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g84260_ 1))))
                                         (if (gx#stx-null? _%tl6720967231%_)
                                             (letrec ((_%loop6721067234%_
                                                       (lambda (_%hd6720867238%_
                                                                _%clause6721467241%_)
                                                         (if (gx#stx-pair?
                                                              _%hd6720867238%_)
                                                             (let ((_%e6721167244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd6720867238%_)))
                       (let ((_%lp-hd6721267248%_
                              (let ()
                                (declare (not safe))
                                (##car _%e6721167244%_)))
                             (_%lp-tl6721367251%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e6721167244%_))))
                         (_%loop6721067234%_
                          _%lp-tl6721367251%_
                          (cons _%lp-hd6721267248%_ _%clause6721467241%_))))
                     (let ((_%clause6721567254%_
                            (reverse _%clause6721467241%_)))
                       ((lambda (_%L67258%_)
                          (cons (gx#datum->syntax '#f 'case-lambda)
                                (foldr (lambda (_%g6727367276%_
                                                _%g6727467279%_)
                                         (cons _%g6727367276%_
                                               _%g6727467279%_))
                                       '()
                                       _%L67258%_)))
                        _%clause6721567254%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop6721067234%_
                                                _%target6720767228%_
                                                '()))
                                             (_%g6720467221%_
                                              _%g6720567225%_)))))
                                   (_%g6720467221%_ _%g6720567225%_)))))
                       (_%g6720367282%_
                        (map _%clause-e67026%_
                             (foldr (lambda (_%g6728567288%_ _%g6728667291%_)
                                      (cons _%g6728567288%_ _%g6728667291%_))
                                    '()
                                    _%L67181%_))))))
                  (_%__kont8265882659%_
                   (lambda (_%L67109%_)
                     (cons (gx#datum->syntax '#f 'case-lambda)
                           (foldr (lambda (_%g6712567128%_ _%g6712667131%_)
                                    (cons _%g6712567128%_ _%g6712667131%_))
                                  '()
                                  _%L67109%_)))))
              (let* ((_%__match8269082691%_
                      (lambda (_%e6704567069%_
                               _%hd6704667073%_
                               _%tl6704767076%_
                               _%__splice8266082661%_
                               _%target6704867079%_
                               _%tl6705067082%_)
                        (letrec ((_%loop6705167085%_
                                  (lambda (_%hd6704967089%_
                                           _%clause6705567092%_)
                                    (if (gx#stx-pair? _%hd6704967089%_)
                                        (let ((_%e6705267095%_
                                               (gx#syntax-e _%hd6704967089%_)))
                                          (let ((_%lp-tl6705467102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6705267095%_)))
                                                (_%lp-hd6705367099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6705267095%_))))
                                            (_%loop6705167085%_
                                             _%lp-tl6705467102%_
                                             (cons _%lp-hd6705367099%_
                                                   _%clause6705567092%_))))
                                        (let ((_%clause6705667105%_
                                               (reverse _%clause6705567092%_)))
                                          (_%__kont8265882659%_
                                           _%clause6705667105%_))))))
                          (_%loop6705167085%_ _%target6704867079%_ '()))))
                     (_%__match8267682677%_
                      (lambda (_%e6703267141%_
                               _%hd6703367145%_
                               _%tl6703467148%_
                               _%__splice8265682657%_
                               _%target6703567151%_
                               _%tl6703767154%_)
                        (letrec ((_%loop6703867157%_
                                  (lambda (_%hd6703667161%_
                                           _%clause6704267164%_)
                                    (if (gx#stx-pair? _%hd6703667161%_)
                                        (let ((_%e6703967167%_
                                               (gx#syntax-e _%hd6703667161%_)))
                                          (let ((_%lp-tl6704167174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6703967167%_)))
                                                (_%lp-hd6704067171%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6703967167%_))))
                                            (_%loop6703867157%_
                                             _%lp-tl6704167174%_
                                             (cons _%lp-hd6704067171%_
                                                   _%clause6704267164%_))))
                                        (let* ((_%clause6704367177%_
                                                (reverse _%clause6704267164%_))
                                               (_%L67181%_
                                                _%clause6704367177%_))
                                          (if (ormap _%is-clause-signature?67024%_
                                                     (foldr (lambda (_%g6719567198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6719667201%_)
                      (cons _%g6719567198%_ _%g6719667201%_))
                    '()
                    _%L67181%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8265482655%_ _%L67181%_)
                                              (_%__match8269082691%_
                                               _%e6703267141%_
                                               _%hd6703367145%_
                                               _%tl6703467148%_
                                               _%__splice8265682657%_
                                               _%target6703567151%_
                                               _%tl6703767154%_)))))))
                          (_%loop6703867157%_ _%target6703567151%_ '())))))
                (if (gx#stx-pair? _%__stx8265182652%_)
                    (let ((_%e6703267141%_ (gx#syntax-e _%__stx8265182652%_)))
                      (let ((_%tl6703467148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6703267141%_)))
                            (_%hd6703367145%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6703267141%_))))
                        (if (gx#stx-pair/null? _%tl6703467148%_)
                            (let ((_%__splice8265682657%_
                                   (gx#syntax-split-splice
                                    _%tl6703467148%_
                                    '0)))
                              (let ((_%tl6703767154%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8265682657%_
                                        '1)))
                                    (_%target6703567151%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8265682657%_
                                        '0))))
                                (if (gx#stx-null? _%tl6703767154%_)
                                    (_%__match8267682677%_
                                     _%e6703267141%_
                                     _%hd6703367145%_
                                     _%tl6703467148%_
                                     _%__splice8265682657%_
                                     _%target6703567151%_
                                     _%tl6703767154%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6702967062%_)))))
                            (let () (declare (not safe)) (_%g6702967062%_)))))
                    (let () (declare (not safe)) (_%g6702967062%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#@method|
      (lambda (_%stx67770%_)
        (let* ((_%__stx8269382694%_ _%stx67770%_)
               (_%g6777467819%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8269382694%_))))
          (let ((_%__kont8269682697%_
                 (lambda (_%L67975%_ _%L67977%_)
                   (let* ((_%str67994%_ (symbol->string (gx#stx-e _%L67977%_)))
                          (_%ix67997%_ (string-rindex _%str67994%_ '#\.))
                          (_%g6800268017%_
                           (lambda (_%g6800368013%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6800368013%_)))
                          (_%g6800168073%_
                           (lambda (_%g6800368021%_)
                             (if (gx#stx-pair? _%g6800368021%_)
                                 (let ((_%e6800668024%_
                                        (gx#syntax-e _%g6800368021%_)))
                                   (let ((_%hd6800768028%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e6800668024%_)))
                                         (_%tl6800868031%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e6800668024%_))))
                                     (if (gx#stx-pair? _%tl6800868031%_)
                                         (let ((_%e6800968034%_
                                                (gx#syntax-e
                                                 _%tl6800868031%_)))
                                           (let ((_%hd6801068038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e6800968034%_)))
                                                 (_%tl6801168041%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e6800968034%_))))
                                             (if (gx#stx-null?
                                                  _%tl6801168041%_)
                                                 ((lambda (_%L68044%_
                                                           _%L68046%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'call-method)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '%%ref-dotted)
                              (cons _%L68046%_ '()))
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L68044%_ '()))
                              (foldr (lambda (_%g6806468067%_ _%g6806568070%_)
                                       (cons _%g6806468067%_ _%g6806568070%_))
                                     '()
                                     _%L67975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd6801068038%_
                                                  _%hd6800768028%_)
                                                 (_%g6800268017%_
                                                  _%g6800368021%_))))
                                         (_%g6800268017%_ _%g6800368021%_))))
                                 (_%g6800268017%_ _%g6800368021%_)))))
                     (_%g6800168073%_
                      (list (gx#stx-identifier
                             _%L67977%_
                             (substring _%str67994%_ '0 _%ix67997%_))
                            (let ((__tmp84262
                                   (substring
                                    _%str67994%_
                                    (fx1+ _%ix67997%_)
                                    (string-length _%str67994%_))))
                              (declare (not safe))
                              (##string->symbol __tmp84262)))))))
                (_%__kont8270082701%_
                 (lambda (_%L67886%_ _%L67888%_ _%L67889%_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _%L67888%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L67889%_ '()))
                                     (foldr (lambda (_%g6790967912%_
                                                     _%g6791067915%_)
                                              (cons _%g6790967912%_
                                                    _%g6791067915%_))
                                            '()
                                            _%L67886%_)))))))
            (let* ((_%__match8275082751%_
                    (lambda (_%e6779667826%_
                             _%hd6779767830%_
                             _%tl6779867833%_
                             _%e6779967836%_
                             _%hd6780067840%_
                             _%tl6780167843%_
                             _%e6780267846%_
                             _%hd6780367850%_
                             _%tl6780467853%_
                             _%__splice8270282703%_
                             _%target6780567856%_
                             _%tl6780767859%_)
                      (letrec ((_%loop6780867862%_
                                (lambda (_%hd6780667866%_ _%arg6781267869%_)
                                  (if (gx#stx-pair? _%hd6780667866%_)
                                      (let ((_%e6780967872%_
                                             (gx#syntax-e _%hd6780667866%_)))
                                        (let ((_%lp-tl6781167879%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6780967872%_)))
                                              (_%lp-hd6781067876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6780967872%_))))
                                          (_%loop6780867862%_
                                           _%lp-tl6781167879%_
                                           (cons _%lp-hd6781067876%_
                                                 _%arg6781267869%_))))
                                      (let ((_%arg6781367882%_
                                             (reverse _%arg6781267869%_)))
                                        (_%__kont8270082701%_
                                         _%arg6781367882%_
                                         _%hd6780367850%_
                                         _%hd6780067840%_))))))
                        (_%loop6780867862%_ _%target6780567856%_ '()))))
                   (_%__match8273682737%_
                    (lambda (_%e6779667826%_
                             _%hd6779767830%_
                             _%tl6779867833%_
                             _%e6779967836%_
                             _%hd6780067840%_
                             _%tl6780167843%_)
                      (if (gx#stx-pair? _%tl6780167843%_)
                          (let ((_%e6780267846%_
                                 (gx#syntax-e _%tl6780167843%_)))
                            (let ((_%tl6780467853%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6780267846%_)))
                                  (_%hd6780367850%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6780267846%_))))
                              (if (gx#stx-pair/null? _%tl6780467853%_)
                                  (let ((_%__splice8270282703%_
                                         (gx#syntax-split-splice
                                          _%tl6780467853%_
                                          '0)))
                                    (let ((_%tl6780767859%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8270282703%_
                                              '1)))
                                          (_%target6780567856%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8270282703%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6780767859%_)
                                          (_%__match8275082751%_
                                           _%e6779667826%_
                                           _%hd6779767830%_
                                           _%tl6779867833%_
                                           _%e6779967836%_
                                           _%hd6780067840%_
                                           _%tl6780167843%_
                                           _%e6780267846%_
                                           _%hd6780367850%_
                                           _%tl6780467853%_
                                           _%__splice8270282703%_
                                           _%target6780567856%_
                                           _%tl6780767859%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6777467819%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6777467819%_)))))
                          (let () (declare (not safe)) (_%g6777467819%_)))))
                   (_%__match8272482725%_
                    (lambda (_%e6777867925%_
                             _%hd6777967929%_
                             _%tl6778067932%_
                             _%e6778167935%_
                             _%hd6778267939%_
                             _%tl6778367942%_
                             _%__splice8269882699%_
                             _%target6778467945%_
                             _%tl6778667948%_)
                      (letrec ((_%loop6778767951%_
                                (lambda (_%hd6778567955%_ _%arg6779167958%_)
                                  (if (gx#stx-pair? _%hd6778567955%_)
                                      (let ((_%e6778867961%_
                                             (gx#syntax-e _%hd6778567955%_)))
                                        (let ((_%lp-tl6779067968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6778867961%_)))
                                              (_%lp-hd6778967965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6778867961%_))))
                                          (_%loop6778767951%_
                                           _%lp-tl6779067968%_
                                           (cons _%lp-hd6778967965%_
                                                 _%arg6779167958%_))))
                                      (let ((_%arg6779267971%_
                                             (reverse _%arg6779167958%_)))
                                        (let ((_%L67975%_ _%arg6779267971%_)
                                              (_%L67977%_ _%hd6778267939%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/contract~Using[1]#dotted-identifier?|
                                                 _%L67977%_))
                                              (_%__kont8269682697%_
                                               _%L67975%_
                                               _%L67977%_)
                                              (_%__match8273682737%_
                                               _%e6777867925%_
                                               _%hd6777967929%_
                                               _%tl6778067932%_
                                               _%e6778167935%_
                                               _%hd6778267939%_
                                               _%tl6778367942%_))))))))
                        (_%loop6778767951%_ _%target6778467945%_ '())))))
              (if (gx#stx-pair? _%__stx8269382694%_)
                  (let ((_%e6777867925%_ (gx#syntax-e _%__stx8269382694%_)))
                    (let ((_%tl6778067932%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6777867925%_)))
                          (_%hd6777967929%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6777867925%_))))
                      (if (gx#stx-pair? _%tl6778067932%_)
                          (let ((_%e6778167935%_
                                 (gx#syntax-e _%tl6778067932%_)))
                            (let ((_%tl6778367942%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6778167935%_)))
                                  (_%hd6778267939%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6778167935%_))))
                              (if (gx#stx-pair/null? _%tl6778367942%_)
                                  (let ((_%__splice8269882699%_
                                         (gx#syntax-split-splice
                                          _%tl6778367942%_
                                          '0)))
                                    (let ((_%tl6778667948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8269882699%_
                                              '1)))
                                          (_%target6778467945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8269882699%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6778667948%_)
                                          (_%__match8272482725%_
                                           _%e6777867925%_
                                           _%hd6777967929%_
                                           _%tl6778067932%_
                                           _%e6778167935%_
                                           _%hd6778267939%_
                                           _%tl6778367942%_
                                           _%__splice8269882699%_
                                           _%target6778467945%_
                                           _%tl6778667948%_)
                                          (if (gx#stx-pair? _%tl6778367942%_)
                                              (let ((_%e6780267846%_
                                                     (gx#syntax-e
                                                      _%tl6778367942%_)))
                                                (let ((_%tl6780467853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6780267846%_)))
                                                      (_%hd6780367850%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6780267846%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6780467853%_)
                                                      (let ((_%__splice8270282703%_
                                                             (gx#syntax-split-splice
                                                              _%tl6780467853%_
                                                              '0)))
                                                        (let ((_%tl6780767859%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8270282703%_ '1)))
                      (_%target6780567856%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8270282703%_ '0))))
                  (if (gx#stx-null? _%tl6780767859%_)
                      (_%__match8275082751%_
                       _%e6777867925%_
                       _%hd6777967929%_
                       _%tl6778067932%_
                       _%e6778167935%_
                       _%hd6778267939%_
                       _%tl6778367942%_
                       _%e6780267846%_
                       _%hd6780367850%_
                       _%tl6780467853%_
                       _%__splice8270282703%_
                       _%target6780567856%_
                       _%tl6780767859%_)
                      (let () (declare (not safe)) (_%g6777467819%_)))))
              (let () (declare (not safe)) (_%g6777467819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6777467819%_))))))
                                  (if (gx#stx-pair? _%tl6778367942%_)
                                      (let ((_%e6780267846%_
                                             (gx#syntax-e _%tl6778367942%_)))
                                        (let ((_%tl6780467853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6780267846%_)))
                                              (_%hd6780367850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6780267846%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl6780467853%_)
                                              (let ((_%__splice8270282703%_
                                                     (gx#syntax-split-splice
                                                      _%tl6780467853%_
                                                      '0)))
                                                (let ((_%tl6780767859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8270282703%_
                                                          '1)))
                                                      (_%target6780567856%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8270282703%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6780767859%_)
                                                      (_%__match8275082751%_
                                                       _%e6777867925%_
                                                       _%hd6777967929%_
                                                       _%tl6778067932%_
                                                       _%e6778167935%_
                                                       _%hd6778267939%_
                                                       _%tl6778367942%_
                                                       _%e6780267846%_
                                                       _%hd6780367850%_
                                                       _%tl6780467853%_
                                                       _%__splice8270282703%_
                                                       _%target6780567856%_
                                                       _%tl6780767859%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6777467819%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6777467819%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6777467819%_))))))
                          (let () (declare (not safe)) (_%g6777467819%_)))))
                  (let () (declare (not safe)) (_%g6777467819%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmethod/c|
      (lambda (_%stx68083%_)
        (let* ((_%__stx8275382754%_ _%stx68083%_)
               (_%g6808868213%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8275382754%_))))
          (let ((_%__kont8275682757%_
                 (lambda (_%L68782%_
                          _%L68784%_
                          _%L68785%_
                          _%L68786%_
                          _%L68787%_
                          _%L68788%_
                          _%L68789%_)
                   (let* ((_%g6882568833%_
                           (lambda (_%g6882668829%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6882668829%_)))
                          (_%g6882468894%_
                           (lambda (_%g6882668837%_)
                             ((lambda (_%L68840%_)
                                (let* ((_%g6885268860%_
                                        (lambda (_%g6885368856%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g6885368856%_)))
                                       (_%g6885168882%_
                                        (lambda (_%g6885368864%_)
                                          ((lambda (_%L68867%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defmethod)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '@method~)
                                                               (cons _%L68788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L68787%_ '())))
                 (cons _%L68867%_ _%L68782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g6885368864%_))))
                                  (_%g6885168882%_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'lambda/c)
                                          (cons (cons _%L68840%_ _%L68785%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'using)
                                                            (cons (cons _%L68786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L68840%_
                                      (cons (gx#datum->syntax '#f '::-)
                                            (cons _%L68787%_ '()))))
                          (cons (cons (gx#datum->syntax '#f 'with-receiver)
                                      (cons _%L68786%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6888568888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6888668891%_)
                               (cons _%g6888568888%_ _%g6888668891%_))
                             '()
                             _%L68784%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _%stx68083%_)))))
                              _%g6882668837%_))))
                     (_%g6882468894%_ (gx#genident _%L68786%_)))))
                (_%__kont8276082761%_
                 (lambda (_%L68461%_
                          _%L68463%_
                          _%L68464%_
                          _%L68465%_
                          _%L68466%_
                          _%L68467%_
                          _%L68468%_)
                   (let* ((_%g6850868525%_
                           (lambda (_%g6850968521%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6850968521%_)))
                          (_%g6850768643%_
                           (lambda (_%g6850968529%_)
                             (if (gx#stx-pair/null? _%g6850968529%_)
                                 (let ((_g84263_
                                        (gx#syntax-split-splice
                                         _%g6850968529%_
                                         '0)))
                                   (begin
                                     (let ((_g84264_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g84263_)
                                                  (##values-length _g84263_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g84264_ 2)))
                                           (error "Context expects 2 values"
                                                  _g84264_)))
                                     (let ((_%target6851168532%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g84263_ 0)))
                                           (_%tl6851368535%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g84263_ 1))))
                                       (if (gx#stx-null? _%tl6851368535%_)
                                           (letrec ((_%loop6851468538%_
                                                     (lambda (_%hd6851268542%_
                                                              _%receiver6851868545%_)
                                                       (if (gx#stx-pair?
                                                            _%hd6851268542%_)
                                                           (let ((_%e6851568548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd6851268542%_)))
                     (let ((_%lp-hd6851668552%_
                            (let ()
                              (declare (not safe))
                              (##car _%e6851568548%_)))
                           (_%lp-tl6851768555%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e6851568548%_))))
                       (_%loop6851468538%_
                        _%lp-tl6851768555%_
                        (cons _%lp-hd6851668552%_ _%receiver6851868545%_))))
                   (let ((_%receiver6851968558%_
                          (reverse _%receiver6851868545%_)))
                     ((lambda (_%L68562%_)
                        (let* ((_%g6857868586%_
                                (lambda (_%g6857968582%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6857968582%_)))
                               (_%g6857768608%_
                                (lambda (_%g6857968590%_)
                                  ((lambda (_%L68593%_)
                                     (cons (gx#datum->syntax '#f 'defmethod)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@method~)
                                                       (cons _%L68467%_
                                                             (cons _%L68466%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%L68593%_
                                                       _%L68461%_))))
                                   _%g6857968590%_))))
                          (_%g6857768608%_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda/c)
                                  (begin
                                    (gx#syntax-check-splice-targets
                                     _%L68463%_
                                     _%L68465%_
                                     _%L68562%_
                                     _%L68465%_
                                     _%L68464%_
                                     _%L68562%_)
                                    (foldr (lambda (_%g6861168621%_
                                                    _%g6861268624%_
                                                    _%g6861368626%_
                                                    _%g6861468628%_
                                                    _%g6861568630%_
                                                    _%g6861668632%_
                                                    _%g6861768634%_)
                                             (cons (cons (cons _%g6861368626%_
                                                               _%g6861568630%_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'using)
                             (cons (cons _%g6861268624%_
                                         (cons _%g6861368626%_
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '::-)
                                                     (cons _%L68466%_ '()))))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'with-receiver)
                                               (cons _%g6861268624%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons '()
                               (foldr (lambda (_%g6861868637%_ _%g6861968640%_)
                                        (cons _%g6861868637%_ _%g6861968640%_))
                                      '()
                                      _%g6861168621%_)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g6861768634%_))
                                           '()
                                           _%L68463%_
                                           _%L68465%_
                                           _%L68562%_
                                           _%L68465%_
                                           _%L68464%_
                                           _%L68562%_)))
                            (gx#stx-source _%stx68083%_)))))
                      _%receiver6851968558%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop6851468538%_
                                              _%target6851168532%_
                                              '()))
                                           (_%g6850868525%_
                                            _%g6850968529%_)))))
                                 (_%g6850868525%_ _%g6850968529%_)))))
                     (_%g6850768643%_
                      (map gx#genident
                           (foldr (lambda (_%g6864668649%_ _%g6864768652%_)
                                    (cons _%g6864668649%_ _%g6864768652%_))
                                  '()
                                  _%L68465%_))))))
                (_%__kont8276482765%_
                 (lambda (_%L68270%_ _%L68272%_ _%L68273%_ _%L68274%_)
                   (cons (gx#datum->syntax '#f 'defmethod)
                         (cons (cons (gx#datum->syntax '#f '@method~)
                                     (cons _%L68273%_ (cons _%L68272%_ '())))
                               _%L68270%_)))))
            (let* ((_%g6808768296%_
                    (lambda ()
                      (let ((_%e6819368220%_
                             (gx#syntax-e _%__stx8275382754%_)))
                        (let ((_%tl6819568227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6819368220%_)))
                              (_%hd6819468224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6819368220%_))))
                          (if (gx#stx-pair? _%tl6819568227%_)
                              (let ((_%e6819668230%_
                                     (gx#syntax-e _%tl6819568227%_)))
                                (let ((_%tl6819868237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6819668230%_)))
                                      (_%hd6819768234%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6819668230%_))))
                                  (if (gx#stx-pair? _%hd6819768234%_)
                                      (let ((_%e6819968240%_
                                             (gx#syntax-e _%hd6819768234%_)))
                                        (let ((_%tl6820168247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6819968240%_)))
                                              (_%hd6820068244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6819968240%_))))
                                          (if (gx#stx-pair? _%tl6820168247%_)
                                              (let ((_%e6820268250%_
                                                     (gx#syntax-e
                                                      _%tl6820168247%_)))
                                                (let ((_%tl6820468257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6820268250%_)))
                                                      (_%hd6820368254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6820268250%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6820468257%_)
                                                      (let ((_%e6820568260%_
                                                             (gx#syntax-e
                                                              _%tl6820468257%_)))
                                                        (let ((_%tl6820768267%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6820568260%_)))
                      (_%hd6820668264%_
                       (let () (declare (not safe)) (##car _%e6820568260%_))))
                  (if (gx#stx-null? _%tl6820768267%_)
                      (_%__kont8276482765%_
                       _%tl6819868237%_
                       _%hd6820668264%_
                       _%hd6820368254%_
                       _%hd6820068244%_)
                      (let () (declare (not safe)) (_%g6808868213%_)))))
              (let () (declare (not safe)) (_%g6808868213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6808868213%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6808868213%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g6808868213%_)))))))
                   (_%__match8289082891%_
                    (lambda (_%e6814068303%_
                             _%hd6814168307%_
                             _%tl6814268310%_
                             _%e6814368313%_
                             _%hd6814468317%_
                             _%tl6814568320%_
                             _%e6814668323%_
                             _%hd6814768327%_
                             _%tl6814868330%_
                             _%e6814968333%_
                             _%hd6815068337%_
                             _%tl6815168340%_
                             _%e6815268343%_
                             _%hd6815368347%_
                             _%tl6815468350%_
                             _%e6815568353%_
                             _%hd6815668357%_
                             _%tl6815768360%_
                             _%e6815868363%_
                             _%hd6815968367%_
                             _%tl6816068370%_
                             _%__splice8276282763%_
                             _%target6816168373%_
                             _%tl6816368376%_)
                      (letrec ((_%loop6816468379%_
                                (lambda (_%hd6816268383%_
                                         _%body6816868386%_
                                         _%args6816968388%_
                                         _%self6817068390%_)
                                  (if (gx#stx-pair? _%hd6816268383%_)
                                      (let ((_%e6816568393%_
                                             (gx#syntax-e _%hd6816268383%_)))
                                        (let ((_%lp-tl6816768400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6816568393%_)))
                                              (_%lp-hd6816668397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6816568393%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6816668397%_)
                                              (let ((_%e6817468403%_
                                                     (gx#syntax-e
                                                      _%lp-hd6816668397%_)))
                                                (let ((_%tl6817668410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6817468403%_)))
                                                      (_%hd6817568407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6817468403%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd6817568407%_)
                                                      (let ((_%e6817768413%_
                                                             (gx#syntax-e
                                                              _%hd6817568407%_)))
                                                        (let ((_%tl6817968420%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6817768413%_)))
                      (_%hd6817868417%_
                       (let () (declare (not safe)) (##car _%e6817768413%_))))
                  (if (gx#stx-pair/null? _%tl6817668410%_)
                      (let ((_g84265_
                             (gx#syntax-split-splice _%tl6817668410%_ '0)))
                        (begin
                          (let ((_g84266_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g84265_)
                                       (##values-length _g84265_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g84266_ 2)))
                                (error "Context expects 2 values" _g84266_)))
                          (let ((_%target6818068423%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g84265_ 0)))
                                (_%tl6818268426%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g84265_ 1))))
                            (if (gx#stx-null? _%tl6818268426%_)
                                (letrec ((_%loop6818368429%_
                                          (lambda (_%hd6818168433%_
                                                   _%body6818768436%_)
                                            (if (gx#stx-pair? _%hd6818168433%_)
                                                (let ((_%e6818468439%_
                                                       (gx#syntax-e
                                                        _%hd6818168433%_)))
                                                  (let ((_%lp-hd6818568443%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6818468439%_)))
                                                        (_%lp-tl6818668446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6818468439%_))))
                                                    (_%loop6818368429%_
                                                     _%lp-tl6818668446%_
                                                     (cons _%lp-hd6818568443%_
                                                           _%body6818768436%_))))
                                                (let ((_%body6818868449%_
                                                       (reverse _%body6818768436%_)))
                                                  (_%loop6816468379%_
                                                   _%lp-tl6816768400%_
                                                   (cons _%body6818868449%_
                                                         _%body6816868386%_)
                                                   (cons _%tl6817968420%_
                                                         _%args6816968388%_)
                                                   (cons _%hd6817868417%_
                                                         _%self6817068390%_)))))))
                                  (_%loop6818368429%_
                                   _%target6818068423%_
                                   '()))
                                (let ()
                                  (declare (not safe))
                                  (_%g6808768296%_))))))
                      (_%__kont8276482765%_
                       _%tl6814568320%_
                       _%hd6815368347%_
                       _%hd6815068337%_
                       _%hd6814768327%_))))
              (_%__kont8276482765%_
               _%tl6814568320%_
               _%hd6815368347%_
               _%hd6815068337%_
               _%hd6814768327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8276482765%_
                                               _%tl6814568320%_
                                               _%hd6815368347%_
                                               _%hd6815068337%_
                                               _%hd6814768327%_))))
                                      (let ((_%self6817368458%_
                                             (reverse _%self6817068390%_))
                                            (_%args6817268456%_
                                             (reverse _%args6816968388%_))
                                            (_%body6817168453%_
                                             (reverse _%body6816868386%_)))
                                        (let ((_%L68461%_ _%tl6815768360%_)
                                              (_%L68463%_ _%body6817168453%_)
                                              (_%L68464%_ _%args6817268456%_)
                                              (_%L68465%_ _%self6817368458%_)
                                              (_%L68466%_ _%hd6815368347%_)
                                              (_%L68467%_ _%hd6815068337%_)
                                              (_%L68468%_ _%hd6814768327%_))
                                          (if (and (gx#identifier-list?
                                                    (foldr (lambda (_%g6849968502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6850068505%_)
                     (cons _%g6849968502%_ _%g6850068505%_))
                   '()
                   _%L68465%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#identifier? _%L68467%_))
                                              (_%__kont8276082761%_
                                               _%L68461%_
                                               _%L68463%_
                                               _%L68464%_
                                               _%L68465%_
                                               _%L68466%_
                                               _%L68467%_
                                               _%L68468%_)
                                              (_%__kont8276482765%_
                                               _%tl6814568320%_
                                               _%hd6815368347%_
                                               _%hd6815068337%_
                                               _%hd6814768327%_))))))))
                        (_%loop6816468379%_
                         _%target6816168373%_
                         '()
                         '()
                         '()))))
                   (_%__match8283482835%_
                    (lambda (_%e6809768662%_
                             _%hd6809868666%_
                             _%tl6809968669%_
                             _%e6810068672%_
                             _%hd6810168676%_
                             _%tl6810268679%_
                             _%e6810368682%_
                             _%hd6810468686%_
                             _%tl6810568689%_
                             _%e6810668692%_
                             _%hd6810768696%_
                             _%tl6810868699%_
                             _%e6810968702%_
                             _%hd6811068706%_
                             _%tl6811168709%_
                             _%e6811268712%_
                             _%hd6811368716%_
                             _%tl6811468719%_
                             _%e6811568722%_
                             _%hd6811668726%_
                             _%tl6811768729%_
                             _%e6811868732%_
                             _%hd6811968736%_
                             _%tl6812068739%_
                             _%e6812168742%_
                             _%hd6812268746%_
                             _%tl6812368749%_
                             _%__splice8275882759%_
                             _%target6812468752%_
                             _%tl6812668755%_)
                      (letrec ((_%loop6812768758%_
                                (lambda (_%hd6812568762%_ _%body6813168765%_)
                                  (if (gx#stx-pair? _%hd6812568762%_)
                                      (let ((_%e6812868768%_
                                             (gx#syntax-e _%hd6812568762%_)))
                                        (let ((_%lp-tl6813068775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6812868768%_)))
                                              (_%lp-hd6812968772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6812868768%_))))
                                          (_%loop6812768758%_
                                           _%lp-tl6813068775%_
                                           (cons _%lp-hd6812968772%_
                                                 _%body6813168765%_))))
                                      (let ((_%body6813268778%_
                                             (reverse _%body6813168765%_)))
                                        (let ((_%L68782%_ _%tl6811468719%_)
                                              (_%L68784%_ _%body6813268778%_)
                                              (_%L68785%_ _%tl6812368749%_)
                                              (_%L68786%_ _%hd6812268746%_)
                                              (_%L68787%_ _%hd6811068706%_)
                                              (_%L68788%_ _%hd6810768696%_)
                                              (_%L68789%_ _%hd6810468686%_))
                                          (if (and (gx#identifier? _%L68786%_)
                                                   (gx#identifier? _%L68788%_))
                                              (_%__kont8275682757%_
                                               _%L68782%_
                                               _%L68784%_
                                               _%L68785%_
                                               _%L68786%_
                                               _%L68787%_
                                               _%L68788%_
                                               _%L68789%_)
                                              (_%__kont8276482765%_
                                               _%tl6810268679%_
                                               _%hd6811068706%_
                                               _%hd6810768696%_
                                               _%hd6810468686%_))))))))
                        (_%loop6812768758%_ _%target6812468752%_ '())))))
              (if (gx#stx-pair? _%__stx8275382754%_)
                  (let ((_%e6809768662%_ (gx#syntax-e _%__stx8275382754%_)))
                    (let ((_%tl6809968669%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6809768662%_)))
                          (_%hd6809868666%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6809768662%_))))
                      (if (gx#stx-pair? _%tl6809968669%_)
                          (let ((_%e6810068672%_
                                 (gx#syntax-e _%tl6809968669%_)))
                            (let ((_%tl6810268679%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6810068672%_)))
                                  (_%hd6810168676%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6810068672%_))))
                              (if (gx#stx-pair? _%hd6810168676%_)
                                  (let ((_%e6810368682%_
                                         (gx#syntax-e _%hd6810168676%_)))
                                    (let ((_%tl6810568689%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6810368682%_)))
                                          (_%hd6810468686%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6810368682%_))))
                                      (if (gx#stx-pair? _%tl6810568689%_)
                                          (let ((_%e6810668692%_
                                                 (gx#syntax-e
                                                  _%tl6810568689%_)))
                                            (let ((_%tl6810868699%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6810668692%_)))
                                                  (_%hd6810768696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6810668692%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6810868699%_)
                                                  (let ((_%e6810968702%_
                                                         (gx#syntax-e
                                                          _%tl6810868699%_)))
                                                    (let ((_%tl6811168709%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6810968702%_)))
                                                          (_%hd6811068706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6810968702%_))))
                                                      (if (gx#stx-null?
                                                           _%tl6811168709%_)
                                                          (if (gx#stx-pair?
                                                               _%tl6810268679%_)
                                                              (let ((_%e6811268712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl6810268679%_)))
                        (let ((_%tl6811468719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6811268712%_)))
                              (_%hd6811368716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6811268712%_))))
                          (if (gx#stx-pair? _%hd6811368716%_)
                              (let ((_%e6811568722%_
                                     (gx#syntax-e _%hd6811368716%_)))
                                (let ((_%tl6811768729%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6811568722%_)))
                                      (_%hd6811668726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6811568722%_))))
                                  (if (gx#identifier? _%hd6811668726%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g84267_|
                                           _%hd6811668726%_)
                                          (if (gx#stx-pair? _%tl6811768729%_)
                                              (let ((_%e6811868732%_
                                                     (gx#syntax-e
                                                      _%tl6811768729%_)))
                                                (let ((_%tl6812068739%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6811868732%_)))
                                                      (_%hd6811968736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6811868732%_))))
                                                  (if (gx#stx-pair?
                                                       _%hd6811968736%_)
                                                      (let ((_%e6812168742%_
                                                             (gx#syntax-e
                                                              _%hd6811968736%_)))
                                                        (let ((_%tl6812368749%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6812168742%_)))
                      (_%hd6812268746%_
                       (let () (declare (not safe)) (##car _%e6812168742%_))))
                  (if (gx#stx-pair/null? _%tl6812068739%_)
                      (let ((_%__splice8275882759%_
                             (gx#syntax-split-splice _%tl6812068739%_ '0)))
                        (let ((_%tl6812668755%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8275882759%_ '1)))
                              (_%target6812468752%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8275882759%_ '0))))
                          (if (gx#stx-null? _%tl6812668755%_)
                              (_%__match8283482835%_
                               _%e6809768662%_
                               _%hd6809868666%_
                               _%tl6809968669%_
                               _%e6810068672%_
                               _%hd6810168676%_
                               _%tl6810268679%_
                               _%e6810368682%_
                               _%hd6810468686%_
                               _%tl6810568689%_
                               _%e6810668692%_
                               _%hd6810768696%_
                               _%tl6810868699%_
                               _%e6810968702%_
                               _%hd6811068706%_
                               _%tl6811168709%_
                               _%e6811268712%_
                               _%hd6811368716%_
                               _%tl6811468719%_
                               _%e6811568722%_
                               _%hd6811668726%_
                               _%tl6811768729%_
                               _%e6811868732%_
                               _%hd6811968736%_
                               _%tl6812068739%_
                               _%e6812168742%_
                               _%hd6812268746%_
                               _%tl6812368749%_
                               _%__splice8275882759%_
                               _%target6812468752%_
                               _%tl6812668755%_)
                              (_%__kont8276482765%_
                               _%tl6810268679%_
                               _%hd6811068706%_
                               _%hd6810768696%_
                               _%hd6810468686%_))))
                      (_%__kont8276482765%_
                       _%tl6810268679%_
                       _%hd6811068706%_
                       _%hd6810768696%_
                       _%hd6810468686%_))))
              (_%__kont8276482765%_
               _%tl6810268679%_
               _%hd6811068706%_
               _%hd6810768696%_
               _%hd6810468686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8276482765%_
                                               _%tl6810268679%_
                                               _%hd6811068706%_
                                               _%hd6810768696%_
                                               _%hd6810468686%_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypedDefinitions[1]#_g84268_|
                                               _%hd6811668726%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl6811768729%_)
                                                  (let ((_%__splice8276282763%_
                                                         (gx#syntax-split-splice
                                                          _%tl6811768729%_
                                                          '0)))
                                                    (let ((_%tl6816368376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276282763%_
                                                              '1)))
                                                          (_%target6816168373%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8276282763%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6816368376%_)
                                                          (_%__match8289082891%_
                                                           _%e6809768662%_
                                                           _%hd6809868666%_
                                                           _%tl6809968669%_
                                                           _%e6810068672%_
                                                           _%hd6810168676%_
                                                           _%tl6810268679%_
                                                           _%e6810368682%_
                                                           _%hd6810468686%_
                                                           _%tl6810568689%_
                                                           _%e6810668692%_
                                                           _%hd6810768696%_
                                                           _%tl6810868699%_
                                                           _%e6810968702%_
                                                           _%hd6811068706%_
                                                           _%tl6811168709%_
                                                           _%e6811268712%_
                                                           _%hd6811368716%_
                                                           _%tl6811468719%_
                                                           _%e6811568722%_
                                                           _%hd6811668726%_
                                                           _%tl6811768729%_
                                                           _%__splice8276282763%_
                                                           _%target6816168373%_
                                                           _%tl6816368376%_)
                                                          (_%__kont8276482765%_
                                                           _%tl6810268679%_
                                                           _%hd6811068706%_
                                                           _%hd6810768696%_
                                                           _%hd6810468686%_))))
                                                  (_%__kont8276482765%_
                                                   _%tl6810268679%_
                                                   _%hd6811068706%_
                                                   _%hd6810768696%_
                                                   _%hd6810468686%_))
                                              (_%__kont8276482765%_
                                               _%tl6810268679%_
                                               _%hd6811068706%_
                                               _%hd6810768696%_
                                               _%hd6810468686%_)))
                                      (_%__kont8276482765%_
                                       _%tl6810268679%_
                                       _%hd6811068706%_
                                       _%hd6810768696%_
                                       _%hd6810468686%_))))
                              (_%__kont8276482765%_
                               _%tl6810268679%_
                               _%hd6811068706%_
                               _%hd6810768696%_
                               _%hd6810468686%_))))
                      (_%__kont8276482765%_
                       _%tl6810268679%_
                       _%hd6811068706%_
                       _%hd6810768696%_
                       _%hd6810468686%_))
                  (let () (declare (not safe)) (_%g6808868213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6808868213%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6808868213%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6808868213%_)))))
                          (let () (declare (not safe)) (_%g6808868213%_)))))
                  (let () (declare (not safe)) (_%g6808868213%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-receiver|
      (lambda (_%stx68906%_)
        (let* ((_%g6890968927%_
                (lambda (_%g6891068923%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6891068923%_)))
               (_%g6890869013%_
                (lambda (_%g6891068931%_)
                  (if (gx#stx-pair? _%g6891068931%_)
                      (let ((_%e6891368934%_ (gx#syntax-e _%g6891068931%_)))
                        (let ((_%hd6891468938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6891368934%_)))
                              (_%tl6891568941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6891368934%_))))
                          (if (gx#stx-pair? _%tl6891568941%_)
                              (let ((_%e6891668944%_
                                     (gx#syntax-e _%tl6891568941%_)))
                                (let ((_%hd6891768948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6891668944%_)))
                                      (_%tl6891868951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6891668944%_))))
                                  (if (gx#stx-pair? _%tl6891868951%_)
                                      (let ((_%e6891968954%_
                                             (gx#syntax-e _%tl6891868951%_)))
                                        (let ((_%hd6892068958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6891968954%_)))
                                              (_%tl6892168961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6891968954%_))))
                                          (if (gx#stx-null? _%tl6892168961%_)
                                              ((lambda (_%L68964%_ _%L68966%_)
                                                 (let* ((_%g6898268990%_
                                                         (lambda (_%g6898368986%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g6898368986%_)))
                                                        (_%g6898169009%_
                                                         (lambda (_%g6898368994%_)
                                                           ((lambda (_%L68997%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@receiver)
                                        (cons _%L68997%_ '()))
                                  (cons _%L68964%_ '()))))
                    _%g6898368994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g6898169009%_
                                                    (gx#core-quote-syntax
                                                     _%L68966%_))))
                                               _%hd6892068958%_
                                               _%hd6891768948%_)
                                              (_%g6890968927%_
                                               _%g6891068931%_))))
                                      (_%g6890968927%_ _%g6891068931%_))))
                              (_%g6890968927%_ _%g6891068931%_))))
                      (_%g6890968927%_ _%g6891068931%_)))))
          (_%g6890869013%_ _%stx68906%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#let/c|
      (lambda (_%stx69017%_)
        (let* ((_%__stx8293382934%_ _%stx69017%_)
               (_%g6902269118%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8293382934%_))))
          (let ((_%__kont8293682937%_
                 (lambda (_%L69465%_
                          _%L69467%_
                          _%L69468%_
                          _%L69469%_
                          _%L69470%_)
                   (let* ((_%g6950069508%_
                           (lambda (_%g6950169504%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6950169504%_)))
                          (_%g6949969535%_
                           (lambda (_%g6950169512%_)
                             ((lambda (_%L69515%_)
                                (cons (cons (gx#datum->syntax '#f 'letrec)
                                            (cons (cons (cons _%L69470%_
                                                              (cons _%L69515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L69470%_ '())))
                                      (foldr (lambda (_%g6952669529%_
                                                      _%g6952769532%_)
                                               (cons _%g6952669529%_
                                                     _%g6952769532%_))
                                             '()
                                             _%L69468%_)))
                              _%g6950169512%_))))
                     (_%g6949969535%_
                      (gx#stx-wrap-source
                       (cons (gx#datum->syntax '#f 'lambda/c)
                             (cons (foldr (lambda (_%g6954069543%_
                                                   _%g6954169546%_)
                                            (cons _%g6954069543%_
                                                  _%g6954169546%_))
                                          '()
                                          _%L69469%_)
                                   (cons (gx#datum->syntax '#f '=>)
                                         (cons _%L69467%_
                                               (foldr (lambda (_%g6953869549%_
                                                               _%g6953969552%_)
                                                        (cons _%g6953869549%_
                                                              _%g6953969552%_))
                                                      '()
                                                      _%L69465%_)))))
                       (gx#stx-source _%stx69017%_))))))
                (_%__kont8294282943%_
                 (lambda (_%L69268%_ _%L69270%_ _%L69271%_ _%L69272%_)
                   (cons (gx#datum->syntax '#f 'let/c)
                         (cons _%L69272%_
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _%L69270%_
                                        _%L69271%_)
                                       (foldr (lambda (_%g6930669310%_
                                                       _%g6930769313%_
                                                       _%g6930869315%_)
                                                (cons (cons _%g6930769313%_
                                                            (cons _%g6930669310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g6930869315%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L69270%_
                                              _%L69271%_))
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6930469318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6930569321%_)
                  (cons _%g6930469318%_ _%g6930569321%_))
                '()
                _%L69268%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (_%__kont8294882949%_
                 (lambda (_%L69135%_)
                   (cons (gx#datum->syntax '#f 'let) _%L69135%_))))
            (let* ((_%__match8300283003%_
                    (lambda (_%e6907469154%_
                             _%hd6907569158%_
                             _%tl6907669161%_
                             _%e6907769164%_
                             _%hd6907869168%_
                             _%tl6907969171%_
                             _%e6908069174%_
                             _%hd6908169178%_
                             _%tl6908269181%_
                             _%__splice8294482945%_
                             _%target6908369184%_
                             _%tl6908569187%_)
                      (letrec ((_%loop6908669190%_
                                (lambda (_%hd6908469194%_
                                         _%init6909069197%_
                                         _%var6909169199%_)
                                  (if (gx#stx-pair? _%hd6908469194%_)
                                      (let ((_%e6908769202%_
                                             (gx#syntax-e _%hd6908469194%_)))
                                        (let ((_%lp-tl6908969209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6908769202%_)))
                                              (_%lp-hd6908869206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6908769202%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6908869206%_)
                                              (let ((_%e6910369212%_
                                                     (gx#syntax-e
                                                      _%lp-hd6908869206%_)))
                                                (let ((_%tl6910569219%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6910369212%_)))
                                                      (_%hd6910469216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6910369212%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6910569219%_)
                                                      (let ((_%e6910669222%_
                                                             (gx#syntax-e
                                                              _%tl6910569219%_)))
                                                        (let ((_%tl6910869229%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6910669222%_)))
                      (_%hd6910769226%_
                       (let () (declare (not safe)) (##car _%e6910669222%_))))
                  (if (gx#stx-null? _%tl6910869229%_)
                      (_%loop6908669190%_
                       _%lp-tl6908969209%_
                       (cons _%hd6910769226%_ _%init6909069197%_)
                       (cons _%hd6910469216%_ _%var6909169199%_))
                      (_%__kont8294882949%_ _%tl6907669161%_))))
              (_%__kont8294882949%_ _%tl6907669161%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8294882949%_
                                               _%tl6907669161%_))))
                                      (let ((_%var6909369235%_
                                             (reverse _%var6909169199%_))
                                            (_%init6909269232%_
                                             (reverse _%init6909069197%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl6908269181%_)
                                            (let ((_%__splice8294682947%_
                                                   (gx#syntax-split-splice
                                                    _%tl6908269181%_
                                                    '0)))
                                              (let ((_%tl6909669241%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8294682947%_
                                                        '1)))
                                                    (_%target6909469238%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8294682947%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl6909669241%_)
                                                    (letrec ((_%loop6909769244%_
                                                              (lambda (_%hd6909569248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6910169251%_)
                        (if (gx#stx-pair? _%hd6909569248%_)
                            (let ((_%e6909869254%_
                                   (gx#syntax-e _%hd6909569248%_)))
                              (let ((_%lp-tl6910069261%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6909869254%_)))
                                    (_%lp-hd6909969258%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6909869254%_))))
                                (_%loop6909769244%_
                                 _%lp-tl6910069261%_
                                 (cons _%lp-hd6909969258%_
                                       _%body6910169251%_))))
                            (let ((_%body6910269264%_
                                   (reverse _%body6910169251%_)))
                              (let ((_%L69268%_ _%body6910269264%_)
                                    (_%L69270%_ _%init6909269232%_)
                                    (_%L69271%_ _%var6909369235%_)
                                    (_%L69272%_ _%hd6907869168%_))
                                (if (and (gx#identifier? _%L69272%_)
                                         (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                          (foldr (lambda (_%g6929669299%_
                                                          _%g6929769302%_)
                                                   (cons _%g6929669299%_
                                                         _%g6929769302%_))
                                                 '()
                                                 _%L69271%_)))
                                    (_%__kont8294282943%_
                                     _%L69268%_
                                     _%L69270%_
                                     _%L69271%_
                                     _%L69272%_)
                                    (_%__kont8294882949%_
                                     _%tl6907669161%_))))))))
              (_%loop6909769244%_ _%target6909469238%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8294882949%_
                                                     _%tl6907669161%_))))
                                            (_%__kont8294882949%_
                                             _%tl6907669161%_)))))))
                        (_%loop6908669190%_ _%target6908369184%_ '() '()))))
                   (_%__match8297682977%_
                    (lambda (_%e6902969331%_
                             _%hd6903069335%_
                             _%tl6903169338%_
                             _%e6903269341%_
                             _%hd6903369345%_
                             _%tl6903469348%_
                             _%e6903569351%_
                             _%hd6903669355%_
                             _%tl6903769358%_
                             _%__splice8293882939%_
                             _%target6903869361%_
                             _%tl6904069364%_)
                      (letrec ((_%loop6904169367%_
                                (lambda (_%hd6903969371%_
                                         _%init6904569374%_
                                         _%var6904669376%_)
                                  (if (gx#stx-pair? _%hd6903969371%_)
                                      (let ((_%e6904269379%_
                                             (gx#syntax-e _%hd6903969371%_)))
                                        (let ((_%lp-tl6904469386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6904269379%_)))
                                              (_%lp-hd6904369383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6904269379%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6904369383%_)
                                              (let ((_%e6906469389%_
                                                     (gx#syntax-e
                                                      _%lp-hd6904369383%_)))
                                                (let ((_%tl6906669396%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6906469389%_)))
                                                      (_%hd6906569393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6906469389%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6906669396%_)
                                                      (let ((_%e6906769399%_
                                                             (gx#syntax-e
                                                              _%tl6906669396%_)))
                                                        (let ((_%tl6906969406%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6906769399%_)))
                      (_%hd6906869403%_
                       (let () (declare (not safe)) (##car _%e6906769399%_))))
                  (if (gx#stx-null? _%tl6906969406%_)
                      (_%loop6904169367%_
                       _%lp-tl6904469386%_
                       (cons _%hd6906869403%_ _%init6904569374%_)
                       (cons _%hd6906569393%_ _%var6904669376%_))
                      (_%__match8300283003%_
                       _%e6902969331%_
                       _%hd6903069335%_
                       _%tl6903169338%_
                       _%e6903269341%_
                       _%hd6903369345%_
                       _%tl6903469348%_
                       _%e6903569351%_
                       _%hd6903669355%_
                       _%tl6903769358%_
                       _%__splice8293882939%_
                       _%target6903869361%_
                       _%tl6904069364%_))))
              (_%__match8300283003%_
               _%e6902969331%_
               _%hd6903069335%_
               _%tl6903169338%_
               _%e6903269341%_
               _%hd6903369345%_
               _%tl6903469348%_
               _%e6903569351%_
               _%hd6903669355%_
               _%tl6903769358%_
               _%__splice8293882939%_
               _%target6903869361%_
               _%tl6904069364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match8300283003%_
                                               _%e6902969331%_
                                               _%hd6903069335%_
                                               _%tl6903169338%_
                                               _%e6903269341%_
                                               _%hd6903369345%_
                                               _%tl6903469348%_
                                               _%e6903569351%_
                                               _%hd6903669355%_
                                               _%tl6903769358%_
                                               _%__splice8293882939%_
                                               _%target6903869361%_
                                               _%tl6904069364%_))))
                                      (let ((_%var6904869412%_
                                             (reverse _%var6904669376%_))
                                            (_%init6904769409%_
                                             (reverse _%init6904569374%_)))
                                        (if (gx#stx-pair? _%tl6903769358%_)
                                            (let ((_%e6904969415%_
                                                   (gx#syntax-e
                                                    _%tl6903769358%_)))
                                              (let ((_%tl6905169422%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6904969415%_)))
                                                    (_%hd6905069419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6904969415%_))))
                                                (if (gx#identifier?
                                                     _%hd6905069419%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g84269_|
                                                         _%hd6905069419%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6905169422%_)
                                                            (let ((_%e6905269425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6905169422%_)))
                      (let ((_%tl6905469432%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6905269425%_)))
                            (_%hd6905369429%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6905269425%_))))
                        (if (gx#stx-pair/null? _%tl6905469432%_)
                            (let ((_%__splice8294082941%_
                                   (gx#syntax-split-splice
                                    _%tl6905469432%_
                                    '0)))
                              (let ((_%tl6905769438%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8294082941%_
                                        '1)))
                                    (_%target6905569435%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8294082941%_
                                        '0))))
                                (if (gx#stx-null? _%tl6905769438%_)
                                    (letrec ((_%loop6905869441%_
                                              (lambda (_%hd6905669445%_
                                                       _%body6906269448%_)
                                                (if (gx#stx-pair?
                                                     _%hd6905669445%_)
                                                    (let ((_%e6905969451%_
                                                           (gx#syntax-e
                                                            _%hd6905669445%_)))
                                                      (let ((_%lp-tl6906169458%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6905969451%_)))
                    (_%lp-hd6906069455%_
                     (let () (declare (not safe)) (##car _%e6905969451%_))))
                (_%loop6905869441%_
                 _%lp-tl6906169458%_
                 (cons _%lp-hd6906069455%_ _%body6906269448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6906369461%_
                                                           (reverse _%body6906269448%_)))
                                                      (let ((_%L69465%_
                                                             _%body6906369461%_)
                                                            (_%L69467%_
                                                             _%hd6905369429%_)
                                                            (_%L69468%_
                                                             _%init6904769409%_)
                                                            (_%L69469%_
                                                             _%var6904869412%_)
                                                            (_%L69470%_
                                                             _%hd6903369345%_))
                                                        (if (gx#identifier?
                                                             _%L69470%_)
                                                            (_%__kont8293682937%_
                                                             _%L69465%_
                                                             _%L69467%_
                                                             _%L69468%_
                                                             _%L69469%_
                                                             _%L69470%_)
                                                            (_%__match8300283003%_
                                                             _%e6902969331%_
                                                             _%hd6903069335%_
                                                             _%tl6903169338%_
                                                             _%e6903269341%_
                                                             _%hd6903369345%_
                                                             _%tl6903469348%_
                                                             _%e6903569351%_
                                                             _%hd6903669355%_
                                                             _%tl6903769358%_
                                                             _%__splice8293882939%_
                                                             _%target6903869361%_
                                                             _%tl6904069364%_))))))))
                                      (_%loop6905869441%_
                                       _%target6905569435%_
                                       '()))
                                    (_%__match8300283003%_
                                     _%e6902969331%_
                                     _%hd6903069335%_
                                     _%tl6903169338%_
                                     _%e6903269341%_
                                     _%hd6903369345%_
                                     _%tl6903469348%_
                                     _%e6903569351%_
                                     _%hd6903669355%_
                                     _%tl6903769358%_
                                     _%__splice8293882939%_
                                     _%target6903869361%_
                                     _%tl6904069364%_))))
                            (_%__match8300283003%_
                             _%e6902969331%_
                             _%hd6903069335%_
                             _%tl6903169338%_
                             _%e6903269341%_
                             _%hd6903369345%_
                             _%tl6903469348%_
                             _%e6903569351%_
                             _%hd6903669355%_
                             _%tl6903769358%_
                             _%__splice8293882939%_
                             _%target6903869361%_
                             _%tl6904069364%_))))
                    (_%__match8300283003%_
                     _%e6902969331%_
                     _%hd6903069335%_
                     _%tl6903169338%_
                     _%e6903269341%_
                     _%hd6903369345%_
                     _%tl6903469348%_
                     _%e6903569351%_
                     _%hd6903669355%_
                     _%tl6903769358%_
                     _%__splice8293882939%_
                     _%target6903869361%_
                     _%tl6904069364%_))
                (_%__match8300283003%_
                 _%e6902969331%_
                 _%hd6903069335%_
                 _%tl6903169338%_
                 _%e6903269341%_
                 _%hd6903369345%_
                 _%tl6903469348%_
                 _%e6903569351%_
                 _%hd6903669355%_
                 _%tl6903769358%_
                 _%__splice8293882939%_
                 _%target6903869361%_
                 _%tl6904069364%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match8300283003%_
                                                     _%e6902969331%_
                                                     _%hd6903069335%_
                                                     _%tl6903169338%_
                                                     _%e6903269341%_
                                                     _%hd6903369345%_
                                                     _%tl6903469348%_
                                                     _%e6903569351%_
                                                     _%hd6903669355%_
                                                     _%tl6903769358%_
                                                     _%__splice8293882939%_
                                                     _%target6903869361%_
                                                     _%tl6904069364%_))))
                                            (_%__match8300283003%_
                                             _%e6902969331%_
                                             _%hd6903069335%_
                                             _%tl6903169338%_
                                             _%e6903269341%_
                                             _%hd6903369345%_
                                             _%tl6903469348%_
                                             _%e6903569351%_
                                             _%hd6903669355%_
                                             _%tl6903769358%_
                                             _%__splice8293882939%_
                                             _%target6903869361%_
                                             _%tl6904069364%_)))))))
                        (_%loop6904169367%_ _%target6903869361%_ '() '())))))
              (if (gx#stx-pair? _%__stx8293382934%_)
                  (let ((_%e6902969331%_ (gx#syntax-e _%__stx8293382934%_)))
                    (let ((_%tl6903169338%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6902969331%_)))
                          (_%hd6903069335%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6902969331%_))))
                      (if (gx#stx-pair? _%tl6903169338%_)
                          (let ((_%e6903269341%_
                                 (gx#syntax-e _%tl6903169338%_)))
                            (let ((_%tl6903469348%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6903269341%_)))
                                  (_%hd6903369345%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6903269341%_))))
                              (if (gx#stx-pair? _%tl6903469348%_)
                                  (let ((_%e6903569351%_
                                         (gx#syntax-e _%tl6903469348%_)))
                                    (let ((_%tl6903769358%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6903569351%_)))
                                          (_%hd6903669355%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6903569351%_))))
                                      (if (gx#stx-pair/null? _%hd6903669355%_)
                                          (let ((_%__splice8293882939%_
                                                 (gx#syntax-split-splice
                                                  _%hd6903669355%_
                                                  '0)))
                                            (let ((_%tl6904069364%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8293882939%_
                                                      '1)))
                                                  (_%target6903869361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8293882939%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6904069364%_)
                                                  (_%__match8297682977%_
                                                   _%e6902969331%_
                                                   _%hd6903069335%_
                                                   _%tl6903169338%_
                                                   _%e6903269341%_
                                                   _%hd6903369345%_
                                                   _%tl6903469348%_
                                                   _%e6903569351%_
                                                   _%hd6903669355%_
                                                   _%tl6903769358%_
                                                   _%__splice8293882939%_
                                                   _%target6903869361%_
                                                   _%tl6904069364%_)
                                                  (_%__kont8294882949%_
                                                   _%tl6903169338%_))))
                                          (_%__kont8294882949%_
                                           _%tl6903169338%_))))
                                  (_%__kont8294882949%_ _%tl6903169338%_))))
                          (_%__kont8294882949%_ _%tl6903169338%_))))
                  (let () (declare (not safe)) (_%g6902269118%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defclass/c|
      (lambda (_%stx69563%_)
        (letrec ((_%generate69566%_
                  (lambda (_%hd76737%_ _%slots76739%_ _%body76740%_)
                    (let* ((_%__stx8301183012%_ _%hd76737%_)
                           (_%g7674476766%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8301183012%_))))
                      (let ((_%__kont8301483015%_
                             (lambda (_%L76842%_ _%L76844%_)
                               (_%generate-defclass69587%_
                                _%L76844%_
                                (foldr (lambda (_%g7686676869%_
                                                _%g7686776872%_)
                                         (cons _%g7686676869%_
                                               _%g7686776872%_))
                                       '()
                                       _%L76842%_)
                                _%slots76739%_
                                _%body76740%_)))
                            (_%__kont8301883019%_
                             (lambda (_%L76784%_)
                               (_%generate-defclass69587%_
                                _%L76784%_
                                '()
                                _%slots76739%_
                                _%body76740%_)))
                            (_%__kont8302083021%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad class head"
                                _%stx69563%_
                                _%hd76737%_))))
                        (let* ((_%g7674276795%_
                                (lambda ()
                                  (let ((_%L76784%_ _%__stx8301183012%_))
                                    (if (gx#identifier? _%L76784%_)
                                        (_%__kont8301883019%_ _%L76784%_)
                                        (_%__kont8302083021%_)))))
                               (_%__match8303683037%_
                                (lambda (_%e7674876802%_
                                         _%hd7674976806%_
                                         _%tl7675076809%_
                                         _%__splice8301683017%_
                                         _%target7675176812%_
                                         _%tl7675376815%_)
                                  (letrec ((_%loop7675476818%_
                                            (lambda (_%hd7675276822%_
                                                     _%super7675876825%_)
                                              (if (gx#stx-pair?
                                                   _%hd7675276822%_)
                                                  (let ((_%e7675576828%_
                                                         (gx#syntax-e
                                                          _%hd7675276822%_)))
                                                    (let ((_%lp-tl7675776835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7675576828%_)))
                                                          (_%lp-hd7675676832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7675576828%_))))
                                                      (_%loop7675476818%_
                                                       _%lp-tl7675776835%_
                                                       (cons _%lp-hd7675676832%_
                                                             _%super7675876825%_))))
                                                  (let ((_%super7675976838%_
                                                         (reverse _%super7675876825%_)))
                                                    (let ((_%L76842%_
                                                           _%super7675976838%_)
                                                          (_%L76844%_
                                                           _%hd7674976806%_))
                                                      (if (and (gx#identifier?
                                                                _%L76844%_)
                                                               (andmap gerbil/core/mop~MOP-2#syntax-local-class-type-info?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr (lambda (_%g7685876861%_ _%g7685976864%_)
                                        (cons _%g7685876861%_ _%g7685976864%_))
                                      '()
                                      _%L76842%_)))
                  (_%__kont8301483015%_ _%L76842%_ _%L76844%_)
                  (let () (declare (not safe)) (_%g7674276795%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop7675476818%_
                                     _%target7675176812%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8301183012%_)
                              (let ((_%e7674876802%_
                                     (gx#syntax-e _%__stx8301183012%_)))
                                (let ((_%tl7675076809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7674876802%_)))
                                      (_%hd7674976806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7674876802%_))))
                                  (if (gx#stx-pair/null? _%tl7675076809%_)
                                      (let ((_%__splice8301683017%_
                                             (gx#syntax-split-splice
                                              _%tl7675076809%_
                                              '0)))
                                        (let ((_%tl7675376815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8301683017%_
                                                  '1)))
                                              (_%target7675176812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8301683017%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7675376815%_)
                                              (_%__match8303683037%_
                                               _%e7674876802%_
                                               _%hd7674976806%_
                                               _%tl7675076809%_
                                               _%__splice8301683017%_
                                               _%target7675176812%_
                                               _%tl7675376815%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7674276795%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7674276795%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7674276795%_))))))))
                 (_%check-typedef-body!69568%_
                  (lambda (_%body76728%_)
                    (letrec ((_%body-opt?76731%_
                              (lambda (_%key76734%_)
                                (let ((__tmp84270 (gx#stx-e _%key76734%_)))
                                  (declare (not safe))
                                  (##memq __tmp84270
                                          '(id:
                                            struct:
                                            name:
                                            constructor:
                                            transparent:
                                            final:
                                            print:
                                            equal:
                                            metaclass:))))))
                      (if (gx#stx-plist? _%body76728%_ _%body-opt?76731%_)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"invalid defclass body"
                           _%stx69563%_
                           _%body76728%_)))))
                 (_%slot-name69569%_
                  (lambda (_%slot-spec76725%_)
                    (gx#stx-e
                     (if (gx#identifier? _%slot-spec76725%_)
                         _%slot-spec76725%_
                         (gx#stx-car _%slot-spec76725%_)))))
                 (_%slot-contract69570%_
                  (lambda (_%slot-spec76606%_)
                    (let* ((_%__stx8303983040%_ _%slot-spec76606%_)
                           (_%g7661176632%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8303983040%_))))
                      (let ((_%__kont8304283043%_ (lambda (_%L76712%_) '#f))
                            (_%__kont8304483045%_
                             (lambda (_%L76690%_ _%L76692%_) '#f))
                            (_%__kont8304683047%_
                             (lambda (_%L76649%_ _%L76651%_) _%L76649%_)))
                        (let* ((_%g7660976705%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8303983040%_)
                                      (let ((_%e7661676670%_
                                             (gx#syntax-e
                                              _%__stx8303983040%_)))
                                        (let ((_%tl7661876677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7661676670%_)))
                                              (_%hd7661776674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7661676670%_))))
                                          (if (gx#stx-pair? _%tl7661876677%_)
                                              (let ((_%e7661976680%_
                                                     (gx#syntax-e
                                                      _%tl7661876677%_)))
                                                (let ((_%tl7662176687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e7661976680%_)))
                                                      (_%hd7662076684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e7661976680%_))))
                                                  (if (gx#stx-null?
                                                       _%tl7662176687%_)
                                                      (_%__kont8304483045%_
                                                       _%hd7662076684%_
                                                       _%hd7661776674%_)
                                                      (_%__kont8304683047%_
                                                       _%tl7661876677%_
                                                       _%hd7661776674%_))))
                                              (_%__kont8304683047%_
                                               _%tl7661876677%_
                                               _%hd7661776674%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7661176632%_)))))
                               (_%L76712%_ _%__stx8303983040%_))
                          (if (gx#identifier? _%L76712%_)
                              (_%__kont8304283043%_ _%L76712%_)
                              (let ()
                                (declare (not safe))
                                (_%g7660976705%_))))))))
                 (_%slot-contract-normalize69571%_
                  (lambda (_%slot-spec76595%_)
                    (let ((_%contract7659776599%_
                           (_%slot-contract69570%_ _%slot-spec76595%_)))
                      (if _%contract7659776599%_
                          (let ((_%contract76603%_ _%contract7659776599%_))
                            (_%contract-normalize69572%_ _%contract76603%_))
                          '#f))))
                 (_%contract-normalize69572%_
                  (lambda (_%contract76340%_)
                    (let* ((_%__stx8307183072%_ _%contract76340%_)
                           (_%g7634676390%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8307183072%_))))
                      (let ((_%__kont8307483075%_
                             (lambda (_%L76566%_)
                               (_%contract-normalize69572%_
                                (foldr (lambda (_%g7658276585%_
                                                _%g7658376588%_)
                                         (cons _%g7658276585%_
                                               _%g7658376588%_))
                                       '()
                                       _%L76566%_))))
                            (_%__kont8307883079%_
                             (lambda (_%L76490%_ _%L76492%_)
                               (cons (gx#datum->syntax '#f ':~)
                                     (cons (cons (gx#datum->syntax '#f '?)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'or)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'not)
                           (cons _%L76492%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (gx#datum->syntax '#f ':?)
                                                 (cons _%L76490%_ '()))))))
                            (_%__kont8308083081%_ (lambda (_%L76428%_) '#f))
                            (_%__kont8308283083%_
                             (lambda () _%contract76340%_)))
                        (let* ((_%g7634376509%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8307183072%_)
                                      (let ((_%e7636676450%_
                                             (gx#syntax-e
                                              _%__stx8307183072%_)))
                                        (let ((_%tl7636876457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7636676450%_)))
                                              (_%hd7636776454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7636676450%_))))
                                          (if (gx#identifier? _%hd7636776454%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g84271_|
                                                   _%hd7636776454%_)
                                                  (if (gx#stx-pair?
                                                       _%tl7636876457%_)
                                                      (let ((_%e7636976460%_
                                                             (gx#syntax-e
                                                              _%tl7636876457%_)))
                                                        (let ((_%tl7637176467%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e7636976460%_)))
                      (_%hd7637076464%_
                       (let () (declare (not safe)) (##car _%e7636976460%_))))
                  (if (gx#stx-pair? _%tl7637176467%_)
                      (let ((_%e7637276470%_ (gx#syntax-e _%tl7637176467%_)))
                        (let ((_%tl7637476477%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7637276470%_)))
                              (_%hd7637376474%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7637276470%_))))
                          (if (gx#identifier? _%hd7637376474%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~TypedDefinitions[1]#_g84272_|
                                   _%hd7637376474%_)
                                  (if (gx#stx-pair? _%tl7637476477%_)
                                      (let ((_%e7637576480%_
                                             (gx#syntax-e _%tl7637476477%_)))
                                        (let ((_%tl7637776487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7637576480%_)))
                                              (_%hd7637676484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7637576480%_))))
                                          (if (gx#stx-null? _%tl7637776487%_)
                                              (_%__kont8307883079%_
                                               _%hd7637676484%_
                                               _%hd7637076464%_)
                                              (_%__kont8308283083%_))))
                                      (_%__kont8308283083%_))
                                  (_%__kont8308283083%_))
                              (_%__kont8308283083%_))))
                      (_%__kont8308283083%_))))
              (_%__kont8308283083%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84273_|
                                                       _%hd7636776454%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7636876457%_)
                                                          (let ((_%e7638276418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7636876457%_)))
                    (let ((_%tl7638476425%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7638276418%_)))
                          (_%hd7638376422%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7638276418%_))))
                      (if (gx#stx-null? _%tl7638476425%_)
                          (_%__kont8308083081%_ _%hd7638376422%_)
                          (_%__kont8308283083%_))))
                  (_%__kont8308283083%_))
              (_%__kont8308283083%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8308283083%_))))
                                      (_%__kont8308283083%_))))
                               (_%__match8311083111%_
                                (lambda (_%__splice8307683077%_
                                         _%target7634976516%_
                                         _%tl7635176519%_
                                         _%e7635876522%_
                                         _%hd7635976526%_
                                         _%tl7636076529%_
                                         _%e7636176532%_
                                         _%hd7636276536%_
                                         _%tl7636376539%_)
                                  (letrec ((_%loop7635276542%_
                                            (lambda (_%hd7635076546%_
                                                     _%pre7635676549%_)
                                              (if (gx#stx-pair?
                                                   _%hd7635076546%_)
                                                  (let ((_%e7635376552%_
                                                         (gx#syntax-e
                                                          _%hd7635076546%_)))
                                                    (let ((_%lp-tl7635576559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7635376552%_)))
                                                          (_%lp-hd7635476556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7635376552%_))))
                                                      (_%loop7635276542%_
                                                       _%lp-tl7635576559%_
                                                       (cons _%lp-hd7635476556%_
                                                             _%pre7635676549%_))))
                                                  (let ((_%pre7635776562%_
                                                         (reverse _%pre7635676549%_)))
                                                    (_%__kont8307483075%_
                                                     _%pre7635776562%_))))))
                                    (_%loop7635276542%_
                                     _%target7634976516%_
                                     '())))))
                          (if (gx#stx-pair/null? _%__stx8307183072%_)
                              (if (let ((__tmp84274
                                         (gx#stx-length _%__stx8307183072%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp84274 '2))
                                  (let ((_%__splice8307683077%_
                                         (gx#syntax-split-splice
                                          _%__stx8307183072%_
                                          '2)))
                                    (let ((_%tl7635176519%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8307683077%_
                                              '1)))
                                          (_%target7634976516%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8307683077%_
                                              '0))))
                                      (if (gx#stx-pair? _%tl7635176519%_)
                                          (let ((_%e7635876522%_
                                                 (gx#syntax-e
                                                  _%tl7635176519%_)))
                                            (let ((_%tl7636076529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7635876522%_)))
                                                  (_%hd7635976526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7635876522%_))))
                                              (if (gx#identifier?
                                                   _%hd7635976526%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84275_|
                                                       _%hd7635976526%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7636076529%_)
                                                          (let ((_%e7636176532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7636076529%_)))
                    (let ((_%tl7636376539%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7636176532%_)))
                          (_%hd7636276536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7636176532%_))))
                      (if (gx#stx-null? _%tl7636376539%_)
                          (_%__match8311083111%_
                           _%__splice8307683077%_
                           _%target7634976516%_
                           _%tl7635176519%_
                           _%e7635876522%_
                           _%hd7635976526%_
                           _%tl7636076529%_
                           _%e7636176532%_
                           _%hd7636276536%_
                           _%tl7636376539%_)
                          (let () (declare (not safe)) (_%g7634376509%_)))))
                  (let () (declare (not safe)) (_%g7634376509%_)))
              (let () (declare (not safe)) (_%g7634376509%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7634376509%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7634376509%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7634376509%_)))
                              (let ()
                                (declare (not safe))
                                (_%g7634376509%_))))))))
                 (_%slot-contract-type69573%_
                  (lambda (_%slot-spec76329%_)
                    (let ((_%contract7633176333%_
                           (_%slot-contract69570%_ _%slot-spec76329%_)))
                      (if _%contract7633176333%_
                          (let ((_%contract76337%_ _%contract7633176333%_))
                            (_%contract-type69574%_ _%contract76337%_))
                          '#f))))
                 (_%contract-type69574%_
                  (lambda (_%contract76137%_)
                    (let* ((_%__stx8316583166%_ _%contract76137%_)
                           (_%g7614276174%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8316583166%_))))
                      (let ((_%__kont8316883169%_
                             (lambda (_%L76296%_ _%L76298%_ _%L76299%_)
                               _%L76298%_))
                            (_%__kont8317083171%_
                             (lambda (_%L76232%_
                                      _%L76234%_
                                      _%L76235%_
                                      _%L76236%_)
                               _%L76234%_))
                            (_%__kont8317283173%_ (lambda () '#f)))
                        (let* ((_%__match8321483215%_
                                (lambda (_%e7615776192%_
                                         _%hd7615876196%_
                                         _%tl7615976199%_
                                         _%e7616076202%_
                                         _%hd7616176206%_
                                         _%tl7616276209%_
                                         _%e7616376212%_
                                         _%hd7616476216%_
                                         _%tl7616576219%_
                                         _%e7616676222%_
                                         _%hd7616776226%_
                                         _%tl7616876229%_)
                                  (let ((_%L76232%_ _%tl7616876229%_)
                                        (_%L76234%_ _%hd7616776226%_)
                                        (_%L76235%_ _%hd7616476216%_)
                                        (_%L76236%_ _%hd7616176206%_))
                                    (if (and (gx#identifier? _%L76235%_)
                                             (or (gx#free-identifier=?
                                                  _%L76235%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L76235%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L76235%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L76235%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8317083171%_
                                         _%L76232%_
                                         _%L76234%_
                                         _%L76235%_
                                         _%L76236%_)
                                        (_%__kont8317283173%_)))))
                               (_%__match8318683187%_
                                (lambda (_%e7614776276%_
                                         _%hd7614876280%_
                                         _%tl7614976283%_
                                         _%e7615076286%_
                                         _%hd7615176290%_
                                         _%tl7615276293%_)
                                  (let ((_%L76296%_ _%tl7615276293%_)
                                        (_%L76298%_ _%hd7615176290%_)
                                        (_%L76299%_ _%hd7614876280%_))
                                    (if (and (gx#identifier? _%L76299%_)
                                             (or (gx#free-identifier=?
                                                  _%L76299%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L76299%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L76299%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L76299%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8316883169%_
                                         _%L76296%_
                                         _%L76298%_
                                         _%L76299%_)
                                        (if (gx#identifier? _%hd7614876280%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g84276_|
                                                 _%hd7614876280%_)
                                                (if (gx#stx-pair?
                                                     _%tl7615276293%_)
                                                    (let ((_%e7616376212%_
                                                           (gx#syntax-e
                                                            _%tl7615276293%_)))
                                                      (let ((_%tl7616576219%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e7616376212%_)))
                    (_%hd7616476216%_
                     (let () (declare (not safe)) (##car _%e7616376212%_))))
                (if (gx#stx-pair? _%tl7616576219%_)
                    (let ((_%e7616676222%_ (gx#syntax-e _%tl7616576219%_)))
                      (let ((_%tl7616876229%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7616676222%_)))
                            (_%hd7616776226%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7616676222%_))))
                        (_%__match8321483215%_
                         _%e7614776276%_
                         _%hd7614876280%_
                         _%tl7614976283%_
                         _%e7615076286%_
                         _%hd7615176290%_
                         _%tl7615276293%_
                         _%e7616376212%_
                         _%hd7616476216%_
                         _%tl7616576219%_
                         _%e7616676222%_
                         _%hd7616776226%_
                         _%tl7616876229%_)))
                    (_%__kont8317283173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8317283173%_))
                                                (_%__kont8317283173%_))
                                            (_%__kont8317283173%_)))))))
                          (if (gx#stx-pair? _%__stx8316583166%_)
                              (let ((_%e7614776276%_
                                     (gx#syntax-e _%__stx8316583166%_)))
                                (let ((_%tl7614976283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7614776276%_)))
                                      (_%hd7614876280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7614776276%_))))
                                  (if (gx#stx-pair? _%tl7614976283%_)
                                      (let ((_%e7615076286%_
                                             (gx#syntax-e _%tl7614976283%_)))
                                        (let ((_%tl7615276293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7615076286%_)))
                                              (_%hd7615176290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7615076286%_))))
                                          (_%__match8318683187%_
                                           _%e7614776276%_
                                           _%hd7614876280%_
                                           _%tl7614976283%_
                                           _%e7615076286%_
                                           _%hd7615176290%_
                                           _%tl7615276293%_)))
                                      (_%__kont8317283173%_))))
                              (_%__kont8317283173%_)))))))
                 (_%slot-contract-predicate69575%_
                  (lambda (_%slot-spec76126%_)
                    (let ((_%contract7612876130%_
                           (_%slot-contract69570%_ _%slot-spec76126%_)))
                      (if _%contract7612876130%_
                          (let ((_%contract76134%_ _%contract7612876130%_))
                            (_%contract-predicate69576%_ _%contract76134%_))
                          '#f))))
                 (_%contract-predicate69576%_
                  (lambda (_%contract76048%_)
                    (let* ((_%__stx8321783218%_ _%contract76048%_)
                           (_%g7605276067%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8321783218%_))))
                      (let ((_%__kont8322083221%_
                             (lambda (_%L76105%_ _%L76107%_) _%L76107%_))
                            (_%__kont8322283223%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx8321783218%_)
                            (let ((_%e7605676085%_
                                   (gx#syntax-e _%__stx8321783218%_)))
                              (let ((_%tl7605876092%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7605676085%_)))
                                    (_%hd7605776089%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7605676085%_))))
                                (if (gx#identifier? _%hd7605776089%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~TypedDefinitions[1]#_g84277_|
                                         _%hd7605776089%_)
                                        (if (gx#stx-pair? _%tl7605876092%_)
                                            (let ((_%e7605976095%_
                                                   (gx#syntax-e
                                                    _%tl7605876092%_)))
                                              (let ((_%tl7606176102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7605976095%_)))
                                                    (_%hd7606076099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7605976095%_))))
                                                (_%__kont8322083221%_
                                                 _%tl7606176102%_
                                                 _%hd7606076099%_)))
                                            (_%__kont8322283223%_))
                                        (_%__kont8322283223%_))
                                    (_%__kont8322283223%_))))
                            (_%__kont8322283223%_))))))
                 (_%slot-default69577%_
                  (lambda (_%slot-spec75876%_)
                    (let* ((_%__stx8324383244%_ _%slot-spec75876%_)
                           (_%g7588175913%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8324383244%_))))
                      (let ((_%__kont8324683247%_
                             (lambda (_%L76029%_ _%L76031%_) _%L76029%_))
                            (_%__kont8324883249%_
                             (lambda (_%L75981%_ _%L75983%_) _%L75981%_))
                            (_%__kont8325283253%_ (lambda () '#f)))
                        (let* ((_%__match8329483295%_
                                (lambda (_%__splice8325083251%_
                                         _%target7589375931%_
                                         _%tl7589575934%_
                                         _%e7590275937%_
                                         _%hd7590375941%_
                                         _%tl7590475944%_
                                         _%e7590575947%_
                                         _%hd7590675951%_
                                         _%tl7590775954%_)
                                  (letrec ((_%loop7589675957%_
                                            (lambda (_%hd7589475961%_
                                                     _%id7590075964%_)
                                              (if (gx#stx-pair?
                                                   _%hd7589475961%_)
                                                  (let ((_%e7589775967%_
                                                         (gx#syntax-e
                                                          _%hd7589475961%_)))
                                                    (let ((_%lp-tl7589975974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7589775967%_)))
                                                          (_%lp-hd7589875971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7589775967%_))))
                                                      (_%loop7589675957%_
                                                       _%lp-tl7589975974%_
                                                       (cons _%lp-hd7589875971%_
                                                             _%id7590075964%_))))
                                                  (let ((_%id7590175977%_
                                                         (reverse _%id7590075964%_)))
                                                    (_%__kont8324883249%_
                                                     _%hd7590675951%_
                                                     _%id7590175977%_))))))
                                    (_%loop7589675957%_
                                     _%target7589375931%_
                                     '()))))
                               (_%g7587976002%_
                                (lambda ()
                                  (if (gx#stx-pair/null? _%__stx8324383244%_)
                                      (if (let ((__tmp84278
                                                 (gx#stx-length
                                                  _%__stx8324383244%_)))
                                            (declare (not safe))
                                            (##fx>= __tmp84278 '2))
                                          (let ((_%__splice8325083251%_
                                                 (gx#syntax-split-splice
                                                  _%__stx8324383244%_
                                                  '2)))
                                            (let ((_%tl7589575934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8325083251%_
                                                      '1)))
                                                  (_%target7589375931%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8325083251%_
                                                      '0))))
                                              (if (gx#stx-pair?
                                                   _%tl7589575934%_)
                                                  (let ((_%e7590275937%_
                                                         (gx#syntax-e
                                                          _%tl7589575934%_)))
                                                    (let ((_%tl7590475944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7590275937%_)))
                                                          (_%hd7590375941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7590275937%_))))
                                                      (if (gx#identifier?
                                                           _%hd7590375941%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~TypedDefinitions[1]#_g84279_|
                                                               _%hd7590375941%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl7590475944%_)
                          (let ((_%e7590575947%_
                                 (gx#syntax-e _%tl7590475944%_)))
                            (let ((_%tl7590775954%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7590575947%_)))
                                  (_%hd7590675951%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7590575947%_))))
                              (if (gx#stx-null? _%tl7590775954%_)
                                  (_%__match8329483295%_
                                   _%__splice8325083251%_
                                   _%target7589375931%_
                                   _%tl7589575934%_
                                   _%e7590275937%_
                                   _%hd7590375941%_
                                   _%tl7590475944%_
                                   _%e7590575947%_
                                   _%hd7590675951%_
                                   _%tl7590775954%_)
                                  (_%__kont8325283253%_))))
                          (_%__kont8325283253%_))
                      (_%__kont8325283253%_))
                  (_%__kont8325283253%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8325283253%_))))
                                          (_%__kont8325283253%_))
                                      (_%__kont8325283253%_)))))
                          (if (gx#stx-pair? _%__stx8324383244%_)
                              (let ((_%e7588576009%_
                                     (gx#syntax-e _%__stx8324383244%_)))
                                (let ((_%tl7588776016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7588576009%_)))
                                      (_%hd7588676013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7588576009%_))))
                                  (if (gx#stx-pair? _%tl7588776016%_)
                                      (let ((_%e7588876019%_
                                             (gx#syntax-e _%tl7588776016%_)))
                                        (let ((_%tl7589076026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7588876019%_)))
                                              (_%hd7588976023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7588876019%_))))
                                          (if (gx#stx-null? _%tl7589076026%_)
                                              (_%__kont8324683247%_
                                               _%hd7588976023%_
                                               _%hd7588676013%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7587976002%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7587976002%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7587976002%_))))))))
                 (_%infer-slot-type69578%_
                  (lambda (_%slot75774%_ _%type-a75776%_ _%type-b75777%_)
                    (if (not _%type-a75776%_)
                        _%type-b75777%_
                        (if (not _%type-b75777%_)
                            _%type-a75776%_
                            (if (gx#free-identifier=?
                                 _%type-a75776%_
                                 _%type-b75777%_)
                                _%type-a75776%_
                                (let _%again75787%_ ((_%klass-a75790%_
                                                      (gx#syntax-local-value
                                                       _%type-a75776%_))
                                                     (_%klass-b75792%_
                                                      (gx#syntax-local-value
                                                       _%type-b75777%_)))
                                  (if (eq? _%klass-a75790%_ _%klass-b75792%_)
                                      _%type-a75776%_
                                      (if (let ()
                                            (declare (not safe))
                                            (class-instance?
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             _%klass-a75790%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 _%klass-b75792%_))
                                              (if (eq? (let ((__obj84008
                                                              _%klass-a75790%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-direct-instance-of?
                        __obj84008
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84008 '1 '#f '#f))
                     (unchecked-slot-ref __obj84008 'id)))
               (let ((__obj84009 _%klass-b75792%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84009
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84009 '1 '#f '#f))
                     (unchecked-slot-ref __obj84009 'id))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-a75776%_
                                                  (if (member _%type-a75776%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~ClassMeta#!class-precedence-list
                         _%klass-b75792%_))
                      gx#free-identifier=?)
              _%type-b75777%_
              (if (member _%type-b75777%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             _%klass-a75790%_))
                          gx#free-identifier=?)
                  _%type-a75776%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx69563%_
                   _%slot75774%_
                   _%type-a75776%_
                   _%type-b75777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-b75792%_))
                                                  (let ((_%$e75810%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj84006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-b75792%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj84006
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj84006 '1 '#f '#f))
                        (unchecked-slot-ref __obj84006 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e75810%_
                                                        ((lambda (_%klass-b75814%_)
                                                           (_%again75787%_
                                                            _%klass-a75790%_
                                                            _%klass-b75814%_))
                                                         _%$e75810%_)
                                                        (if (gx#free-identifier=?
                                                             _%type-a75776%_
                                                             (let ((__obj84007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%klass-b75792%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj84007
                              'gerbil/core/contract~TypeReference#type-reference::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref __obj84007 '1 '#f '#f))
                           (unchecked-slot-ref __obj84007 'identifier))))
                    _%type-a75776%_
                    (gx#raise-syntax-error
                     '#f
                     '"cannot resolve type reference to determine slot type compatibility"
                     _%stx69563%_
                     _%slot75774%_
                     _%type-a75776%_
                     _%type-b75777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"incompatible slot types"
                                                   _%stx69563%_
                                                   _%slot75774%_
                                                   _%type-a75776%_
                                                   _%type-b75777%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/contract~InterfaceInfo#interface-info::t
                                                 _%klass-a75790%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                                     _%klass-b75792%_))
                                                  (if (member _%type-a75776%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                         _%klass-b75792%_)))
              _%type-b75777%_
              (if (member _%type-b75777%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~InterfaceInfo#interface-info-flatten-mixin
                             _%klass-a75790%_)))
                  _%type-a75776%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx69563%_
                   _%slot75774%_
                   _%type-a75776%_
                   _%type-b75777%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                         _%klass-b75792%_))
                                                      (let ((_%$e75835%_
                                                             (gx#syntax-local-value
                                                              (let ((__obj84004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%klass-b75792%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84004
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84004
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj84004 'identifier)))
                      false)))
                (if _%$e75835%_
                    ((lambda (_%klass-b75839%_)
                       (_%again75787%_ _%klass-a75790%_ _%klass-b75839%_))
                     _%$e75835%_)
                    (if (gx#free-identifier=?
                         _%type-a75776%_
                         (let ((__obj84005 _%klass-b75792%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj84005
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj84005
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj84005 'identifier))))
                        _%type-a75776%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx69563%_
                         _%slot75774%_
                         _%type-a75776%_
                         _%type-b75777%_))))
              (gx#raise-syntax-error
               '#f
               '"incompatible slot types"
               _%stx69563%_
               _%slot75774%_
               _%type-a75776%_
               _%type-b75777%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-a75790%_))
                                                  (let ((_%$e75850%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj83999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-a75790%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj83999
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj83999 '1 '#f '#f))
                        (unchecked-slot-ref __obj83999 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e75850%_
                                                        ((lambda (_%klass-a75854%_)
                                                           (_%again75787%_
                                                            _%klass-a75854%_
                                                            _%klass-b75792%_))
                                                         _%$e75850%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (class-instance?
                                                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                               _%klass-b75792%_))
                                                            (let ((_%$e75859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-local-value
                            (let ((__obj84001 _%klass-b75792%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84001
                                     'gerbil/core/contract~TypeReference#type-reference::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84001
                                     '1
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref __obj84001 'identifier)))
                            false)))
                      (if _%$e75859%_
                          ((lambda (_%klass-b75863%_)
                             (_%again75787%_
                              _%klass-a75790%_
                              _%klass-b75863%_))
                           _%$e75859%_)
                          (if (gx#free-identifier=?
                               (let ((__obj84002 _%klass-a75790%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj84002
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj84002
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj84002
                                      'identifier)))
                               (let ((__obj84003 _%klass-b75792%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj84003
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj84003
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj84003
                                      'identifier))))
                              _%type-a75776%_
                              (gx#raise-syntax-error
                               '#f
                               '"cannot resolve type reference to determine slot type compatibility"
                               _%stx69563%_
                               _%slot75774%_
                               _%type-a75776%_
                               _%type-b75777%_))))
                    (if (gx#free-identifier=?
                         _%type-b75777%_
                         (let ((__obj84000 _%klass-a75790%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj84000
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj84000
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj84000 'identifier))))
                        _%type-b75777%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx69563%_
                         _%slot75774%_
                         _%type-a75776%_
                         _%type-b75777%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"unexpected slot type"
                                                   _%stx69563%_
                                                   _%slot75774%_
                                                   _%type-a75776%_
                                                   _%klass-a75790%_)))))))))))
                 (_%get-mixin-slots69579%_
                  (lambda (_%super75645%_)
                    (letrec* ((_%tab75648%_ (make-hash-table-eq)))
                      (let _%loop75651%_ ((_%rest75654%_ _%super75645%_)
                                          (_%result75656%_ '()))
                        (let* ((_%rest7565775665%_ _%rest75654%_)
                               (_%else7565975677%_
                                (lambda ()
                                  (values (reverse! _%result75656%_)
                                          _%tab75648%_)))
                               (_%K7566175758%_
                                (lambda (_%rest75681%_ _%type-id75683%_)
                                  (let* ((_%klass75685%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                             _%stx69563%_
                                             _%type-id75683%_)))
                                         (_%slots75688%_
                                          (let ((__obj84010 _%klass75685%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj84010
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj84010
                                                   '4
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj84010
                                                 'slots)))))
                                    (let _%loop-inner75693%_ ((_%rest-slots75696%_
                                                               _%slots75688%_)
                                                              (_%result75698%_
                                                               _%result75656%_))
                                      (let* ((_%rest-slots7569975707%_
                                              _%rest-slots75696%_)
                                             (_%else7570175719%_
                                              (lambda ()
                                                (_%loop75651%_
                                                 (foldr cons
                                                        _%rest75681%_
                                                        (let ((__obj84011
                                                               _%klass75685%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj84011
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84011 '3 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj84011
                       'super))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%result75698%_)))
                                             (_%K7570375742%_
                                              (lambda (_%rest-slots75723%_
                                                       _%slot75725%_)
                                                (let ((_%slot-type75727%_
                                                       (hash-ref
                                                        _%tab75648%_
                                                        _%slot75725%_
                                                        absent-value)))
                                                  (if (eq? _%slot-type75727%_
                                                           absent-value)
                                                      (let ()
                                                        (hash-put!
                                                         _%tab75648%_
                                                         _%slot75725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                            _%klass75685%_
                                                            _%slot75725%_)))
                                                        (_%loop-inner75693%_
                                                         _%rest-slots75723%_
                                                         (cons _%slot75725%_
                                                               _%result75698%_)))
                                                      (if (not _%slot-type75727%_)
                                                          (let ()
                                                            (hash-put!
                                                             _%tab75648%_
                                                             _%slot75725%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (|gerbil/core/contract~Using[1]#!class-slot-type|
                        _%klass75685%_
                        _%slot75725%_)))
                    (_%loop-inner75693%_ _%rest-slots75723%_ _%result75698%_))
                  (let* ((_%other-slot-type75736%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                             _%klass75685%_
                             _%slot75725%_)))
                         (_%slot-type75739%_
                          (_%infer-slot-type69578%_
                           _%slot75725%_
                           _%other-slot-type75736%_
                           _%slot-type75727%_)))
                    (hash-put! _%tab75648%_ _%slot75725%_ _%slot-type75739%_)
                    (_%loop-inner75693%_
                     _%rest-slots75723%_
                     _%result75698%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (pair? _%rest-slots7569975707%_)
                                            (let ((_%hd7570475746%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-slots7569975707%_)))
                                                  (_%tl7570575749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-slots7569975707%_))))
                                              (let* ((_%slot75752%_
                                                      _%hd7570475746%_)
                                                     (_%rest-slots75755%_
                                                      _%tl7570575749%_))
                                                (_%K7570375742%_
                                                 _%rest-slots75755%_
                                                 _%slot75752%_)))
                                            (_%else7570175719%_))))))))
                          (if (pair? _%rest7565775665%_)
                              (let ((_%hd7566275762%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest7565775665%_)))
                                    (_%tl7566375765%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest7565775665%_))))
                                (let* ((_%type-id75768%_ _%hd7566275762%_)
                                       (_%rest75771%_ _%tl7566375765%_))
                                  (_%K7566175758%_
                                   _%rest75771%_
                                   _%type-id75768%_)))
                              (_%else7565975677%_)))))))
                 (_%get-slot-table69580%_
                  (lambda (_%slots75588%_
                           _%mixin-slots75590%_
                           _%super75591%_
                           _%contract-e75592%_
                           _%getf75593%_
                           _%mixf75594%_)
                    (letrec* ((_%tab75596%_ (make-hash-table-eq)))
                      (for-each
                       (lambda (_%slot75599%_)
                         (for-each
                          (lambda (_%super-type75602%_)
                            (let* ((_%klass75605%_
                                    (gx#syntax-local-value
                                     _%super-type75602%_))
                                   (_%$e75608%_
                                    (hash-get _%tab75596%_ _%slot75599%_)))
                              (if _%$e75608%_
                                  ((lambda (_%a75612%_)
                                     (let ((_%$e75615%_
                                            (_%getf75593%_
                                             _%klass75605%_
                                             _%slot75599%_)))
                                       (if _%$e75615%_
                                           ((lambda (_%b75619%_)
                                              (hash-put!
                                               _%tab75596%_
                                               _%slot75599%_
                                               (_%mixf75594%_
                                                _%slot75599%_
                                                _%a75612%_
                                                _%b75619%_)))
                                            _%$e75615%_)
                                           '#!void)))
                                   _%$e75608%_)
                                  (let ((_%$e75622%_
                                         (_%getf75593%_
                                          _%klass75605%_
                                          _%slot75599%_)))
                                    (if _%$e75622%_
                                        ((lambda (_%a75626%_)
                                           (hash-put!
                                            _%tab75596%_
                                            _%slot75599%_
                                            _%a75626%_))
                                         _%$e75622%_)
                                        '#!void)))))
                          _%super75591%_))
                       _%mixin-slots75590%_)
                      (for-each
                       (lambda (_%slot-spec75629%_)
                         (let ((_%slot75632%_
                                (_%slot-name69569%_ _%slot-spec75629%_))
                               (_%a75634%_
                                (_%contract-e75592%_ _%slot-spec75629%_)))
                           (if _%a75634%_
                               (let ((_%$e75636%_
                                      (hash-get _%tab75596%_ _%slot75632%_)))
                                 (if _%$e75636%_
                                     ((lambda (_%b75640%_)
                                        (hash-put!
                                         _%tab75596%_
                                         _%slot75632%_
                                         (_%mixf75594%_
                                          _%slot75632%_
                                          _%a75634%_
                                          _%b75640%_)))
                                      _%$e75636%_)
                                     (hash-put!
                                      _%tab75596%_
                                      _%slot75632%_
                                      _%a75634%_)))
                               '#!void)))
                       _%slots75588%_)
                      _%tab75596%_)))
                 (_%get-slot-contracts69581%_
                  (lambda (_%slots74024%_
                           _%mixin-slots74026%_
                           _%super74027%_
                           _%slot-type-table74028%_)
                    (_%get-slot-table69580%_
                     _%slots74024%_
                     _%mixin-slots74026%_
                     _%super74027%_
                     _%slot-contract-normalize69571%_
                     |gerbil/core/contract~Using[1]#!class-slot-contract|
                     (lambda (_%slot74030%_ _%a74032%_ _%b74033%_)
                       (let* ((_%__stx8356583566%_ _%a74032%_)
                              (_%g7409574148%_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx8356583566%_))))
                         (let ((_%__kont8356883569%_
                                (lambda ()
                                  (let* ((_%__stx8353383534%_ _%b74033%_)
                                         (_%g7541875436%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8353383534%_))))
                                    (let ((_%__kont8353683537%_
                                           (lambda (_%L75530%_)
                                             (let* ((_%g7554975557%_
                                                     (lambda (_%g7555075553%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7555075553%_)))
                                                    (_%g7554875576%_
                                                     (lambda (_%g7555075561%_)
                                                       ((lambda (_%L75564%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':)
                        (cons _%L75564%_ '())))
                _%g7555075561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7554875576%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_)))))
                                          (_%__kont8353883539%_
                                           (lambda (_%L75463%_)
                                             (let* ((_%g7548275490%_
                                                     (lambda (_%g7548375486%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7548375486%_)))
                                                    (_%g7548175509%_
                                                     (lambda (_%g7548375494%_)
                                                       ((lambda (_%L75497%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75463%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L75497%_ '())))))
                _%g7548375494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7548175509%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_))))))
                                      (let ((_%__match8354683547%_
                                             (lambda (_%e7542175520%_
                                                      _%hd7542275524%_
                                                      _%tl7542375527%_)
                                               (let ((_%L75530%_
                                                      _%hd7542275524%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75530%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75530%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75530%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8353683537%_
                                                      _%L75530%_)
                                                     (if (gx#identifier?
                                                          _%hd7542275524%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g84280_|
                                                              _%hd7542275524%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7542375527%_)
                         (let ((_%e7542875453%_
                                (gx#syntax-e _%tl7542375527%_)))
                           (let ((_%tl7543075460%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7542875453%_)))
                                 (_%hd7542975457%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7542875453%_))))
                             (_%__kont8353883539%_ _%hd7542975457%_)))
                         (let () (declare (not safe)) (_%g7541875436%_)))
                     (let () (declare (not safe)) (_%g7541875436%_)))
                 (let () (declare (not safe)) (_%g7541875436%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8353383534%_)
                                            (let ((_%e7542175520%_
                                                   (gx#syntax-e
                                                    _%__stx8353383534%_)))
                                              (let ((_%tl7542375527%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7542175520%_)))
                                                    (_%hd7542275524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7542175520%_))))
                                                (_%__match8354683547%_
                                                 _%e7542175520%_
                                                 _%hd7542275524%_
                                                 _%tl7542375527%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7541875436%_))))))))
                               (_%__kont8357083571%_
                                (lambda ()
                                  (let* ((_%__stx8348583486%_ _%b74033%_)
                                         (_%g7521475234%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8348583486%_))))
                                    (let ((_%__kont8348883489%_
                                           (lambda ()
                                             (let* ((_%g7535675364%_
                                                     (lambda (_%g7535775360%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7535775360%_)))
                                                    (_%g7535575388%_
                                                     (lambda (_%g7535775368%_)
                                                       ((lambda (_%L75371%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':?)
                        (cons _%L75371%_ '())))
                _%g7535775368%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7535575388%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_)))))
                                          (_%__kont8349083491%_
                                           (lambda (_%L75282%_)
                                             (let* ((_%g7530475312%_
                                                     (lambda (_%g7530575308%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7530575308%_)))
                                                    (_%g7530375331%_
                                                     (lambda (_%g7530575316%_)
                                                       ((lambda (_%L75319%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75282%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L75319%_ '())))))
                _%g7530575316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7530375331%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_)))))
                                          (_%__kont8349283493%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69563%_
                                              _%slot74030%_
                                              _%a74032%_
                                              _%b74033%_))))
                                      (if (gx#stx-pair? _%__stx8348583486%_)
                                          (let ((_%e7521675342%_
                                                 (gx#syntax-e
                                                  _%__stx8348583486%_)))
                                            (let ((_%tl7521875349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7521675342%_)))
                                                  (_%hd7521775346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7521675342%_))))
                                              (if (gx#identifier?
                                                   _%hd7521775346%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84281_|
                                                       _%hd7521775346%_)
                                                      (_%__kont8348883489%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g84282_|
                                                           _%hd7521775346%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7521875349%_)
                                                              (let ((_%e7522375262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7521875349%_)))
                        (let ((_%tl7522575269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7522375262%_)))
                              (_%hd7522475266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7522375262%_))))
                          (if (gx#stx-pair? _%tl7522575269%_)
                              (let ((_%e7522675272%_
                                     (gx#syntax-e _%tl7522575269%_)))
                                (let ((_%tl7522875279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7522675272%_)))
                                      (_%hd7522775276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7522675272%_))))
                                  (if (gx#identifier? _%hd7522775276%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g84283_|
                                           _%hd7522775276%_)
                                          (_%__kont8349083491%_
                                           _%hd7522475266%_)
                                          (_%__kont8349283493%_))
                                      (_%__kont8349283493%_))))
                              (_%__kont8349283493%_))))
                      (_%__kont8349283493%_))
                  (_%__kont8349283493%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8349283493%_))))
                                          (_%__kont8349283493%_))))))
                               (_%__kont8357283573%_
                                (lambda ()
                                  (let* ((_%__stx8345383454%_ _%b74033%_)
                                         (_%g7502275041%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8345383454%_))))
                                    (let ((_%__kont8345683457%_
                                           (lambda (_%L75137%_)
                                             (let* ((_%g7515675164%_
                                                     (lambda (_%g7515775160%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7515775160%_)))
                                                    (_%g7515575183%_
                                                     (lambda (_%g7515775168%_)
                                                       ((lambda (_%L75171%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':-)
                        (cons _%L75171%_ '())))
                _%g7515775168%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7515575183%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_)))))
                                          (_%__kont8345883459%_
                                           (lambda (_%L75068%_ _%L75070%_)
                                             (let* ((_%g7508975097%_
                                                     (lambda (_%g7509075093%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7509075093%_)))
                                                    (_%g7508875116%_
                                                     (lambda (_%g7509075101%_)
                                                       ((lambda (_%L75104%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75070%_
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L75104%_ '())))))
                _%g7509075101%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7508875116%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_))))))
                                      (let ((_%__match8346683467%_
                                             (lambda (_%e7502575127%_
                                                      _%hd7502675131%_
                                                      _%tl7502775134%_)
                                               (let ((_%L75137%_
                                                      _%hd7502675131%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75137%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75137%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75137%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8345683457%_
                                                      _%L75137%_)
                                                     (if (gx#identifier?
                                                          _%hd7502675131%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g84284_|
                                                              _%hd7502675131%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7502775134%_)
                         (let ((_%e7503375058%_
                                (gx#syntax-e _%tl7502775134%_)))
                           (let ((_%tl7503575065%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7503375058%_)))
                                 (_%hd7503475062%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7503375058%_))))
                             (_%__kont8345883459%_
                              _%tl7503575065%_
                              _%hd7503475062%_)))
                         (let () (declare (not safe)) (_%g7502275041%_)))
                     (let () (declare (not safe)) (_%g7502275041%_)))
                 (let () (declare (not safe)) (_%g7502275041%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8345383454%_)
                                            (let ((_%e7502575127%_
                                                   (gx#syntax-e
                                                    _%__stx8345383454%_)))
                                              (let ((_%tl7502775134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7502575127%_)))
                                                    (_%hd7502675131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7502575127%_))))
                                                (_%__match8346683467%_
                                                 _%e7502575127%_
                                                 _%hd7502675131%_
                                                 _%tl7502775134%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7502275041%_))))))))
                               (_%__kont8357483575%_
                                (lambda (_%L74849%_)
                                  (let* ((_%__stx8342783428%_ _%b74033%_)
                                         (_%g7486574879%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8342783428%_))))
                                    (let ((_%__kont8343083431%_
                                           (lambda (_%L74952%_)
                                             (let* ((_%g7496574973%_
                                                     (lambda (_%g7496674969%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7496674969%_)))
                                                    (_%g7496474992%_
                                                     (lambda (_%g7496674977%_)
                                                       ((lambda (_%L74980%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74849%_
                                                      (cons _%L74952%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74980%_ '())))))
                _%g7496674977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7496474992%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_)))))
                                          (_%__kont8343283433%_
                                           (lambda ()
                                             (let* ((_%g7489074898%_
                                                     (lambda (_%g7489174894%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7489174894%_)))
                                                    (_%g7488974921%_
                                                     (lambda (_%g7489174902%_)
                                                       ((lambda (_%L74905%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74849%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74905%_ '())))))
                _%g7489174902%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7488974921%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_))))))
                                      (if (gx#stx-pair? _%__stx8342783428%_)
                                          (let ((_%e7486874932%_
                                                 (gx#syntax-e
                                                  _%__stx8342783428%_)))
                                            (let ((_%tl7487074939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7486874932%_)))
                                                  (_%hd7486974936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7486874932%_))))
                                              (if (gx#identifier?
                                                   _%hd7486974936%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84285_|
                                                       _%hd7486974936%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7487074939%_)
                                                          (let ((_%e7487174942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7487074939%_)))
                    (let ((_%tl7487374949%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7487174942%_)))
                          (_%hd7487274946%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7487174942%_))))
                      (_%__kont8343083431%_ _%hd7487274946%_)))
                  (_%__kont8343283433%_))
              (_%__kont8343283433%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8343283433%_))))
                                          (_%__kont8343283433%_))))))
                               (_%__kont8357683577%_
                                (lambda (_%L74570%_)
                                  (let* ((_%__stx8336183362%_ _%b74033%_)
                                         (_%g7458874615%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8336183362%_))))
                                    (let ((_%__kont8336483365%_
                                           (lambda ()
                                             (let* ((_%g7477274780%_
                                                     (lambda (_%g7477374776%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7477374776%_)))
                                                    (_%g7477174804%_
                                                     (lambda (_%g7477374784%_)
                                                       ((lambda (_%L74787%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74570%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L74787%_ '())))))
                _%g7477374784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7477174804%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_)))))
                                          (_%__kont8336683367%_
                                           (lambda (_%L74705%_)
                                             (let* ((_%g7472074728%_
                                                     (lambda (_%g7472174724%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7472174724%_)))
                                                    (_%g7471974747%_
                                                     (lambda (_%g7472174732%_)
                                                       ((lambda (_%L74735%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74570%_
                                                      (cons _%L74705%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L74735%_ '())))))
                _%g7472174732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7471974747%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_)))))
                                          (_%__kont8336883369%_
                                           (lambda (_%L74653%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69563%_
                                              _%slot74030%_
                                              _%a74032%_
                                              _%b74033%_)))
                                          (_%__kont8337083371%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx69563%_
                                              _%slot74030%_
                                              _%a74032%_
                                              _%b74033%_))))
                                      (if (gx#stx-pair? _%__stx8336183362%_)
                                          (let ((_%e7459074758%_
                                                 (gx#syntax-e
                                                  _%__stx8336183362%_)))
                                            (let ((_%tl7459274765%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7459074758%_)))
                                                  (_%hd7459174762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7459074758%_))))
                                              (if (gx#identifier?
                                                   _%hd7459174762%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g84286_|
                                                       _%hd7459174762%_)
                                                      (_%__kont8336483365%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g84287_|
                                                           _%hd7459174762%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7459274765%_)
                                                              (let ((_%e7459774685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7459274765%_)))
                        (let ((_%tl7459974692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7459774685%_)))
                              (_%hd7459874689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7459774685%_))))
                          (if (gx#stx-pair? _%tl7459974692%_)
                              (let ((_%e7460074695%_
                                     (gx#syntax-e _%tl7459974692%_)))
                                (let ((_%tl7460274702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7460074695%_)))
                                      (_%hd7460174699%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7460074695%_))))
                                  (if (gx#identifier? _%hd7460174699%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g84288_|
                                           _%hd7460174699%_)
                                          (_%__kont8336683367%_
                                           _%hd7459874689%_)
                                          (_%__kont8336883369%_
                                           _%hd7459874689%_))
                                      (_%__kont8336883369%_
                                       _%hd7459874689%_))))
                              (_%__kont8336883369%_ _%hd7459874689%_))))
                      (_%__kont8337083371%_))
                  (_%__kont8337083371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8337083371%_))))
                                          (_%__kont8337083371%_))))))
                               (_%__kont8357883579%_
                                (lambda (_%L74387%_)
                                  (let* ((_%__stx8332983330%_ _%b74033%_)
                                         (_%g7440374421%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8332983330%_))))
                                    (let ((_%__kont8333283333%_
                                           (lambda (_%L74510%_)
                                             (let ((_%$e74521%_
                                                    (gx#free-identifier=?
                                                     _%L74510%_
                                                     (gx#datum->syntax
                                                      '#f
                                                      ':))))
                                               (if _%$e74521%_
                                                   _%$e74521%_
                                                   (let ((_%$e74525%_
                                                          (gx#free-identifier=?
                                                           _%L74510%_
                                                           (gx#datum->syntax
                                                            '#f
                                                            ':?))))
                                                     (if _%$e74525%_
                                                         _%$e74525%_
                                                         (gx#free-identifier=?
                                                          _%L74510%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-))))))))
                                          (_%__kont8333483335%_
                                           (lambda (_%L74448%_)
                                             (let* ((_%g7446274470%_
                                                     (lambda (_%g7446374466%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7446374466%_)))
                                                    (_%g7446174489%_
                                                     (lambda (_%g7446374474%_)
                                                       ((lambda (_%L74477%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74387%_
                                                      (cons _%L74448%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L74477%_ '())))))
                _%g7446374474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7446174489%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_))))))
                                      (if (gx#stx-pair? _%__stx8332983330%_)
                                          (let ((_%e7440674500%_
                                                 (gx#syntax-e
                                                  _%__stx8332983330%_)))
                                            (let ((_%tl7440874507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7440674500%_)))
                                                  (_%hd7440774504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7440674500%_))))
                                              (_%__kont8333283333%_
                                               _%hd7440774504%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7440374421%_)))))))
                               (_%__kont8358083581%_
                                (lambda (_%L74175%_)
                                  (let* ((_%__stx8329783298%_ _%b74033%_)
                                         (_%g7418974207%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8329783298%_))))
                                    (let ((_%__kont8330083301%_
                                           (lambda (_%L74290%_ _%L74292%_)
                                             (let* ((_%g7431574323%_
                                                     (lambda (_%g7431674319%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7431674319%_)))
                                                    (_%g7431474342%_
                                                     (lambda (_%g7431674327%_)
                                                       ((lambda (_%L74330%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74175%_
                                                      (cons _%L74292%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74330%_ '())))))
                _%g7431674327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7431474342%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_)))))
                                          (_%__kont8330283303%_
                                           (lambda ()
                                             (let* ((_%g7421874226%_
                                                     (lambda (_%g7421974222%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7421974222%_)))
                                                    (_%g7421774249%_
                                                     (lambda (_%g7421974230%_)
                                                       ((lambda (_%L74233%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74175%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74233%_ '())))))
                _%g7421974230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7421774249%_
                                                (hash-ref
                                                 _%slot-type-table74028%_
                                                 _%slot74030%_))))))
                                      (let ((_%__match8332683327%_
                                             (lambda (_%e7419374260%_
                                                      _%hd7419474264%_
                                                      _%tl7419574267%_
                                                      _%e7419674270%_
                                                      _%hd7419774274%_
                                                      _%tl7419874277%_
                                                      _%e7419974280%_
                                                      _%hd7420074284%_
                                                      _%tl7420174287%_)
                                               (let ((_%L74290%_
                                                      _%hd7420074284%_)
                                                     (_%L74292%_
                                                      _%hd7419774274%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L74290%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L74290%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L74290%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8330083301%_
                                                      _%L74290%_
                                                      _%L74292%_)
                                                     (_%__kont8330283303%_))))))
                                        (if (gx#stx-pair? _%__stx8329783298%_)
                                            (let ((_%e7419374260%_
                                                   (gx#syntax-e
                                                    _%__stx8329783298%_)))
                                              (let ((_%tl7419574267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7419374260%_)))
                                                    (_%hd7419474264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7419374260%_))))
                                                (if (gx#identifier?
                                                     _%hd7419474264%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g84289_|
                                                         _%hd7419474264%_)
                                                        (if (gx#stx-pair?
                                                             _%tl7419574267%_)
                                                            (let ((_%e7419674270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl7419574267%_)))
                      (let ((_%tl7419874277%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7419674270%_)))
                            (_%hd7419774274%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7419674270%_))))
                        (if (gx#stx-pair? _%tl7419874277%_)
                            (let ((_%e7419974280%_
                                   (gx#syntax-e _%tl7419874277%_)))
                              (let ((_%tl7420174287%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7419974280%_)))
                                    (_%hd7420074284%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7419974280%_))))
                                (_%__match8332683327%_
                                 _%e7419374260%_
                                 _%hd7419474264%_
                                 _%tl7419574267%_
                                 _%e7419674270%_
                                 _%hd7419774274%_
                                 _%tl7419874277%_
                                 _%e7419974280%_
                                 _%hd7420074284%_
                                 _%tl7420174287%_)))
                            (_%__kont8330283303%_))))
                    (_%__kont8330283303%_))
                (_%__kont8330283303%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8330283303%_))))
                                            (_%__kont8330283303%_))))))))
                           (if (gx#stx-pair? _%__stx8356583566%_)
                               (let ((_%e7409775403%_
                                      (gx#syntax-e _%__stx8356583566%_)))
                                 (let ((_%tl7409975410%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7409775403%_)))
                                       (_%hd7409875407%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7409775403%_))))
                                   (if (gx#identifier? _%hd7409875407%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g84290_|
                                            _%hd7409875407%_)
                                           (_%__kont8356883569%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g84291_|
                                                _%hd7409875407%_)
                                               (_%__kont8357083571%_)
                                               (if (gx#free-identifier=?
                                                    |gerbil/core/contract~TypedDefinitions[1]#_g84292_|
                                                    _%hd7409875407%_)
                                                   (_%__kont8357283573%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/contract~TypedDefinitions[1]#_g84293_|
                                                        _%hd7409875407%_)
                                                       (if (gx#stx-pair?
                                                            _%tl7409975410%_)
                                                           (let ((_%e7411074829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl7409975410%_)))
                     (let ((_%tl7411274836%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7411074829%_)))
                           (_%hd7411174833%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7411074829%_))))
                       (if (gx#stx-pair? _%tl7411274836%_)
                           (let ((_%e7411374839%_
                                  (gx#syntax-e _%tl7411274836%_)))
                             (let ((_%tl7411574846%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7411374839%_)))
                                   (_%hd7411474843%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7411374839%_))))
                               (if (gx#identifier? _%hd7411474843%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/contract~TypedDefinitions[1]#_g84294_|
                                        _%hd7411474843%_)
                                       (_%__kont8357483575%_ _%hd7411174833%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g84295_|
                                            _%hd7411474843%_)
                                           (_%__kont8357683577%_
                                            _%hd7411174833%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g84296_|
                                                _%hd7411474843%_)
                                               (_%__kont8357883579%_
                                                _%hd7411174833%_)
                                               (_%__kont8358083581%_
                                                _%hd7411174833%_))))
                                   (_%__kont8358083581%_ _%hd7411174833%_))))
                           (_%__kont8358083581%_ _%hd7411174833%_))))
                   (let () (declare (not safe)) (_%g7409574148%_)))
               (let () (declare (not safe)) (_%g7409574148%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ()
                                         (declare (not safe))
                                         (_%g7409574148%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g7409574148%_)))))))))
                 (_%get-slot-defaults69582%_
                  (lambda (_%slots74014%_ _%mixin-slots74016%_ _%super74017%_)
                    (_%get-slot-table69580%_
                     _%slots74014%_
                     _%mixin-slots74016%_
                     _%super74017%_
                     _%slot-default69577%_
                     |gerbil/core/contract~Using[1]#!class-slot-default|
                     (lambda (_%slot74019%_ _%a74021%_ _%b74022%_)
                       _%a74021%_))))
                 (_%update-slot-types!69583%_
                  (lambda (_%slots73984%_ _%slot-type-table73986%_)
                    (for-each
                     (lambda (_%slot-spec73988%_)
                       (let* ((_%slot73991%_
                               (_%slot-name69569%_ _%slot-spec73988%_))
                              (_%slot-type7399373995%_
                               (_%slot-contract-type69573%_
                                _%slot-spec73988%_)))
                         (if _%slot-type7399373995%_
                             (let* ((_%slot-type73999%_
                                     _%slot-type7399373995%_)
                                    (_%$e74002%_
                                     (hash-get
                                      _%slot-type-table73986%_
                                      _%slot73991%_)))
                               (if _%$e74002%_
                                   ((lambda (_%other-slot-type74006%_)
                                      (let ((_%slot-type74009%_
                                             (_%infer-slot-type69578%_
                                              _%slot73991%_
                                              _%other-slot-type74006%_
                                              _%slot-type73999%_)))
                                        (hash-put!
                                         _%slot-type-table73986%_
                                         _%slot73991%_
                                         _%slot-type74009%_)))
                                    _%$e74002%_)
                                   (hash-put!
                                    _%slot-type-table73986%_
                                    _%slot73991%_
                                    _%slot-type73999%_)))
                             '#f)))
                     _%slots73984%_)))
                 (_%syntax-local-value/context69584%_
                  (lambda (_%id73978%_)
                    (gx#syntax-local-value
                     _%id73978%_
                     (lambda (_%id73981%_)
                       (gx#raise-syntax-error
                        '#f
                        '"not a class meta type binding"
                        _%stx69563%_
                        _%id73981%_)))))
                 (_%order-slots69585%_
                  (lambda (_%slots73909%_ _%super73911%_)
                    (let ((_g84297_
                           (c4-linearize
                            '()
                            _%super73911%_
                            'get-precedence-list:
                            (lambda (_%klass-id73913%_)
                              (cons _%klass-id73913%_
                                    (let ((__tmp84299
                                           (_%syntax-local-value/context69584%_
                                            _%klass-id73913%_)))
                                      (declare (not safe))
                                      (gerbil/core/contract~ClassMeta#!class-precedence-list
                                       __tmp84299))))
                            'struct:
                            (lambda (_%klass-id73916%_)
                              (let ((__obj84012
                                     (_%syntax-local-value/context69584%_
                                      _%klass-id73916%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj84012
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj84012
                                       '7
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj84012
                                     'struct?))))
                            'eq:
                            gx#free-identifier=?
                            'get-name:
                            gx#stx-e)))
                      (begin
                        (let ((_g84298_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g84297_)
                                     (##values-length _g84297_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g84298_ 2)))
                              (error "Context expects 2 values" _g84298_)))
                        (let ((_%precedence-list73919%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g84297_ 0)))
                              (_%base-struct73921%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g84297_ 1))))
                          (let* ((_%base-fields73935%_
                                  (if _%base-struct73921%_
                                      (let* ((_%klass73923%_
                                              (gx#syntax-local-value
                                               _%base-struct73921%_))
                                             (_%$e73926%_
                                              (let ((__obj84013
                                                     _%klass73923%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj84013
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj84013
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-ref
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj84013
                                                     'ordered-slots)))))
                                        (if _%$e73926%_
                                            _%$e73926%_
                                            (let ((_%ordered73932%_
                                                   (_%order-slots69585%_
                                                    (let ((__obj84014
                                                           _%klass73923%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj84014
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj84014
                                                             '4
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj84014
                                                           'slots)))
                                                    (let ((__obj84015
                                                           _%klass73923%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj84015
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj84015
                                                             '3
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj84015
                                                           'super))))))
                                              (let ((__obj84016
                                                     _%klass73923%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj84016
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       __obj84016
                                                       _%ordered73932%_
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-set!
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj84016
                                                     'ordered-slots
                                                     _%ordered73932%_)))
                                              _%ordered73932%_)))
                                      '()))
                                 (_%r-fields73938%_
                                  (reverse _%base-fields73935%_))
                                 (_%seen-slots73949%_
                                  (let ((_%tab73941%_ (make-hash-table-eq)))
                                    (for-each
                                     (lambda (_%g7394373945%_)
                                       (hash-put!
                                        _%tab73941%_
                                        _%g7394373945%_
                                        '#t))
                                     _%base-fields73935%_)
                                    _%tab73941%_))
                                 (_%process-slot73955%_
                                  (lambda (_%slot73952%_)
                                    (if (hash-get
                                         _%seen-slots73949%_
                                         _%slot73952%_)
                                        '#!void
                                        (begin
                                          (hash-put!
                                           _%seen-slots73949%_
                                           _%slot73952%_
                                           '#t)
                                          (set! _%r-fields73938%_
                                                (cons _%slot73952%_
                                                      _%r-fields73938%_)))))))
                            (for-each
                             (lambda (_%mixin73960%_)
                               (let ((_%klass73963%_
                                      (gx#syntax-local-value _%mixin73960%_)))
                                 (if (let ((__obj84017 _%klass73963%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj84017
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj84017
                                              '7
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj84017
                                            'struct?)))
                                     '#!void
                                     (let ((_%$e73966%_
                                            (let ((__obj84018 _%klass73963%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     __obj84018
                                                     'gerbil.core#class-type-info::t))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     __obj84018
                                                     '6
                                                     '#f
                                                     '#f))
                                                  (class-slot-ref
                                                   gerbil/core/mop~MOP-2#class-type-info::t
                                                   __obj84018
                                                   'ordered-slots)))))
                                       (if _%$e73966%_
                                           ((lambda (_%ordered73970%_)
                                              (for-each
                                               _%process-slot73955%_
                                               _%ordered73970%_))
                                            _%$e73966%_)
                                           (let ((_%ordered73975%_
                                                  (_%order-slots69585%_
                                                   (let ((__obj84019
                                                          _%klass73963%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj84019
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj84019
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj84019
                                                          'slots)))
                                                   (let ((__obj84020
                                                          _%klass73963%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj84020
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj84020
                                                            '3
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj84020
                                                          'super))))))
                                             (let ((__obj84021 _%klass73963%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj84021
                                                      'gerbil.core#class-type-info::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-set!
                                                      __obj84021
                                                      _%ordered73975%_
                                                      '6
                                                      '#f
                                                      '#f))
                                                   (class-slot-set!
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    __obj84021
                                                    'ordered-slots
                                                    _%ordered73975%_)))
                                             (for-each
                                              _%process-slot73955%_
                                              _%ordered73975%_)))))))
                             _%precedence-list73919%_)
                            (for-each _%process-slot73955%_ _%slots73909%_)
                            (reverse _%r-fields73938%_)))))))
                 (_%wrap69586%_
                  (lambda (_%e-stx73906%_)
                    (gx#stx-wrap-source
                     _%e-stx73906%_
                     (gx#stx-source _%stx69563%_))))
                 (_%generate-defclass69587%_
                  (lambda (_%id69721%_
                           _%super-ref69723%_
                           _%slots69724%_
                           _%body69725%_)
                    (letrec ((_%make-id69727%_
                              (lambda _%args73903%_
                                (apply gx#stx-identifier
                                       _%id69721%_
                                       _%args73903%_))))
                      (gx#check-duplicate-identifiers
                       (map _%slot-name69569%_ _%slots69724%_)
                       _%stx69563%_)
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#check-signature-spec!__%|
                         '#f
                         absent-value
                         '#f
                         _%stx69563%_
                         _%slots69724%_))
                      (_%check-typedef-body!69568%_ _%body69725%_)
                      (let ((_g84300_
                             (_%get-mixin-slots69579%_ _%super-ref69723%_)))
                        (begin
                          (let ((_g84301_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g84300_)
                                       (##values-length _g84300_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g84301_ 2)))
                                (error "Context expects 2 values" _g84301_)))
                          (let ((_%mixin-slots69730%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g84300_ 0)))
                                (_%slot-type-table69732%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g84300_ 1))))
                            (let* ((_%slot-contract-table69734%_
                                    (_%get-slot-contracts69581%_
                                     _%slots69724%_
                                     _%mixin-slots69730%_
                                     _%super-ref69723%_
                                     _%slot-type-table69732%_))
                                   (_%slot-default-table69737%_
                                    (_%get-slot-defaults69582%_
                                     _%slots69724%_
                                     _%mixin-slots69730%_
                                     _%super-ref69723%_))
                                   (_%ordered-slots69740%_
                                    (_%order-slots69585%_
                                     (map _%slot-name69569%_ _%slots69724%_)
                                     _%super-ref69723%_)))
                              (_%update-slot-types!69583%_
                               _%slots69724%_
                               _%slot-type-table69732%_)
                              (let* ((_%slots69745%_
                                      (map _%slot-name69569%_ _%slots69724%_))
                                     (_%mixin-slots69751%_
                                      (filter (lambda (_%slot69748%_)
                                                (not (memq _%slot69748%_
                                                           _%slots69745%_)))
                                              _%mixin-slots69730%_))
                                     (_%name69754%_
                                      (symbol->string (gx#stx-e _%id69721%_)))
                                     (_%super69757%_
                                      (map gx#syntax-local-value
                                           _%super-ref69723%_))
                                     (_%struct?69760%_
                                      (gx#stx-getq 'struct: _%body69725%_))
                                     (_%g6976369771%_
                                      (lambda (_%g6976469767%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g6976469767%_)))
                                     (_%g6976273899%_
                                      (lambda (_%g6976469775%_)
                                        ((lambda (_%L69778%_)
                                           (let* ((_%g6980169809%_
                                                   (lambda (_%g6980269805%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g6980269805%_)))
                                                  (_%g6980073895%_
                                                   (lambda (_%g6980269813%_)
                                                     ((lambda (_%L69816%_)
                                                        (let* ((_%g6982969837%_
                                                                (lambda (_%g6983069833%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g6983069833%_)))
                       (_%g6982873891%_
                        (lambda (_%g6983069841%_)
                          ((lambda (_%L69844%_)
                             (let* ((_%g6985769865%_
                                     (lambda (_%g6985869861%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6985869861%_)))
                                    (_%g6985673887%_
                                     (lambda (_%g6985869869%_)
                                       ((lambda (_%L69872%_)
                                          (let* ((_%g6988569893%_
                                                  (lambda (_%g6988669889%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g6988669889%_)))
                                                 (_%g6988473883%_
                                                  (lambda (_%g6988669897%_)
                                                    ((lambda (_%L69900%_)
                                                       (let* ((_%g6991369930%_
                                                               (lambda (_%g6991469926%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g6991469926%_)))
                      (_%g6991273879%_
                       (lambda (_%g6991469934%_)
                         (if (gx#stx-pair/null? _%g6991469934%_)
                             (let ((_g84302_
                                    (gx#syntax-split-splice
                                     _%g6991469934%_
                                     '0)))
                               (begin
                                 (let ((_g84303_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g84302_)
                                              (##values-length _g84302_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g84303_ 2)))
                                       (error "Context expects 2 values"
                                              _g84303_)))
                                 (let ((_%target6991669937%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g84302_ 0)))
                                       (_%tl6991869940%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g84302_ 1))))
                                   (if (gx#stx-null? _%tl6991869940%_)
                                       (letrec ((_%loop6991969943%_
                                                 (lambda (_%hd6991769947%_
                                                          _%slot6992369950%_)
                                                   (if (gx#stx-pair?
                                                        _%hd6991769947%_)
                                                       (let ((_%e6992069953%_
                                                              (gx#syntax-e
                                                               _%hd6991769947%_)))
                                                         (let ((_%lp-hd6992169957%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e6992069953%_)))
                       (_%lp-tl6992269960%_
                        (let () (declare (not safe)) (##cdr _%e6992069953%_))))
                   (_%loop6991969943%_
                    _%lp-tl6992269960%_
                    (cons _%lp-hd6992169957%_ _%slot6992369950%_))))
               (let ((_%slot6992469963%_ (reverse _%slot6992369950%_)))
                 ((lambda (_%L69967%_)
                    (let* ((_%g6998470001%_
                            (lambda (_%g6998569997%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6998569997%_)))
                           (_%g6998373875%_
                            (lambda (_%g6998570005%_)
                              (if (gx#stx-pair/null? _%g6998570005%_)
                                  (let ((_g84304_
                                         (gx#syntax-split-splice
                                          _%g6998570005%_
                                          '0)))
                                    (begin
                                      (let ((_g84305_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84304_)
                                                   (##values-length _g84304_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84305_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84305_)))
                                      (let ((_%target6998770008%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84304_ 0)))
                                            (_%tl6998970011%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84304_ 1))))
                                        (if (gx#stx-null? _%tl6998970011%_)
                                            (letrec ((_%loop6999070014%_
                                                      (lambda (_%hd6998870018%_
                                                               _%ordered-slot6999470021%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6998870018%_)
                                                            (let ((_%e6999170024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6998870018%_)))
                      (let ((_%lp-hd6999270028%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6999170024%_)))
                            (_%lp-tl6999370031%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6999170024%_))))
                        (_%loop6999070014%_
                         _%lp-tl6999370031%_
                         (cons _%lp-hd6999270028%_
                               _%ordered-slot6999470021%_))))
                    (let ((_%ordered-slot6999570034%_
                           (reverse _%ordered-slot6999470021%_)))
                      ((lambda (_%L70038%_)
                         (let* ((_%g7005570072%_
                                 (lambda (_%g7005670068%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7005670068%_)))
                                (_%g7005473866%_
                                 (lambda (_%g7005670076%_)
                                   (if (gx#stx-pair/null? _%g7005670076%_)
                                       (let ((_g84306_
                                              (gx#syntax-split-splice
                                               _%g7005670076%_
                                               '0)))
                                         (begin
                                           (let ((_g84307_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84306_)
                                                        (##values-length
                                                         _g84306_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84307_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84307_)))
                                           (let ((_%target7005870079%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g84306_ 0)))
                                                 (_%tl7006070082%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g84306_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7006070082%_)
                                                 (letrec ((_%loop7006170085%_
                                                           (lambda (_%hd7005970089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%getf7006570092%_)
                     (if (gx#stx-pair? _%hd7005970089%_)
                         (let ((_%e7006270095%_
                                (gx#syntax-e _%hd7005970089%_)))
                           (let ((_%lp-hd7006370099%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7006270095%_)))
                                 (_%lp-tl7006470102%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7006270095%_))))
                             (_%loop7006170085%_
                              _%lp-tl7006470102%_
                              (cons _%lp-hd7006370099%_ _%getf7006570092%_))))
                         (let ((_%getf7006670105%_
                                (reverse _%getf7006570092%_)))
                           ((lambda (_%L70109%_)
                              (let* ((_%g7012670143%_
                                      (lambda (_%g7012770139%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7012770139%_)))
                                     (_%g7012573857%_
                                      (lambda (_%g7012770147%_)
                                        (if (gx#stx-pair/null? _%g7012770147%_)
                                            (let ((_g84308_
                                                   (gx#syntax-split-splice
                                                    _%g7012770147%_
                                                    '0)))
                                              (begin
                                                (let ((_g84309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g84308_)
                                                             (##values-length
                                                              _g84308_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g84309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g84309_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7012970150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g84308_
                                                          0)))
                                                      (_%tl7013170153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g84308_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7013170153%_)
                                                      (letrec ((_%loop7013270156%_
                                                                (lambda (_%hd7013070160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%setf7013670163%_)
                          (if (gx#stx-pair? _%hd7013070160%_)
                              (let ((_%e7013370166%_
                                     (gx#syntax-e _%hd7013070160%_)))
                                (let ((_%lp-hd7013470170%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7013370166%_)))
                                      (_%lp-tl7013570173%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7013370166%_))))
                                  (_%loop7013270156%_
                                   _%lp-tl7013570173%_
                                   (cons _%lp-hd7013470170%_
                                         _%setf7013670163%_))))
                              (let ((_%setf7013770176%_
                                     (reverse _%setf7013670163%_)))
                                ((lambda (_%L70180%_)
                                   (let* ((_%g7019770214%_
                                           (lambda (_%g7019870210%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7019870210%_)))
                                          (_%g7019673848%_
                                           (lambda (_%g7019870218%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7019870218%_)
                                                 (let ((_g84310_
                                                        (gx#syntax-split-splice
                                                         _%g7019870218%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g84311_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g84310_)
                          (##values-length _g84310_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g84311_ 2)))
                   (error "Context expects 2 values" _g84311_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7020070221%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g84310_
                                                               0)))
                                                           (_%tl7020270224%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g84310_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7020270224%_)
                                                           (letrec ((_%loop7020370227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7020170231%_ _%rawsetf7020770234%_)
                               (if (gx#stx-pair? _%hd7020170231%_)
                                   (let ((_%e7020470237%_
                                          (gx#syntax-e _%hd7020170231%_)))
                                     (let ((_%lp-hd7020570241%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7020470237%_)))
                                           (_%lp-tl7020670244%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7020470237%_))))
                                       (_%loop7020370227%_
                                        _%lp-tl7020670244%_
                                        (cons _%lp-hd7020570241%_
                                              _%rawsetf7020770234%_))))
                                   (let ((_%rawsetf7020870247%_
                                          (reverse _%rawsetf7020770234%_)))
                                     ((lambda (_%L70251%_)
                                        (let* ((_%g7026870285%_
                                                (lambda (_%g7026970281%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7026970281%_)))
                                               (_%g7026773844%_
                                                (lambda (_%g7026970289%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7026970289%_)
                                                      (let ((_g84312_
                                                             (gx#syntax-split-splice
                                                              _%g7026970289%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g84313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g84312_)
                               (##values-length _g84312_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g84313_ 2)))
                        (error "Context expects 2 values" _g84313_)))
                  (let ((_%target7027170292%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g84312_ 0)))
                        (_%tl7027370295%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g84312_ 1))))
                    (if (gx#stx-null? _%tl7027370295%_)
                        (letrec ((_%loop7027470298%_
                                  (lambda (_%hd7027270302%_
                                           _%mixin-slot7027870305%_)
                                    (if (gx#stx-pair? _%hd7027270302%_)
                                        (let ((_%e7027570308%_
                                               (gx#syntax-e _%hd7027270302%_)))
                                          (let ((_%lp-hd7027670312%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7027570308%_)))
                                                (_%lp-tl7027770315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7027570308%_))))
                                            (_%loop7027470298%_
                                             _%lp-tl7027770315%_
                                             (cons _%lp-hd7027670312%_
                                                   _%mixin-slot7027870305%_))))
                                        (let ((_%mixin-slot7027970318%_
                                               (reverse _%mixin-slot7027870305%_)))
                                          ((lambda (_%L70322%_)
                                             (let* ((_%g7033970356%_
                                                     (lambda (_%g7034070352%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7034070352%_)))
                                                    (_%g7033873835%_
                                                     (lambda (_%g7034070360%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7034070360%_)
                                                           (let ((_g84314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7034070360%_ '0)))
                     (begin
                       (let ((_g84315_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g84314_)
                                    (##values-length _g84314_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g84315_ 2)))
                             (error "Context expects 2 values" _g84315_)))
                       (let ((_%target7034270363%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g84314_ 0)))
                             (_%tl7034470366%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g84314_ 1))))
                         (if (gx#stx-null? _%tl7034470366%_)
                             (letrec ((_%loop7034570369%_
                                       (lambda (_%hd7034370373%_
                                                _%mixin-getf7034970376%_)
                                         (if (gx#stx-pair? _%hd7034370373%_)
                                             (let ((_%e7034670379%_
                                                    (gx#syntax-e
                                                     _%hd7034370373%_)))
                                               (let ((_%lp-hd7034770383%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7034670379%_)))
                                                     (_%lp-tl7034870386%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7034670379%_))))
                                                 (_%loop7034570369%_
                                                  _%lp-tl7034870386%_
                                                  (cons _%lp-hd7034770383%_
                                                        _%mixin-getf7034970376%_))))
                                             (let ((_%mixin-getf7035070389%_
                                                    (reverse _%mixin-getf7034970376%_)))
                                               ((lambda (_%L70393%_)
                                                  (let* ((_%g7041070427%_
                                                          (lambda (_%g7041170423%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g7041170423%_)))
                                                         (_%g7040973826%_
                                                          (lambda (_%g7041170431%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g7041170431%_)
                        (let ((_g84316_
                               (gx#syntax-split-splice _%g7041170431%_ '0)))
                          (begin
                            (let ((_g84317_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g84316_)
                                         (##values-length _g84316_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g84317_ 2)))
                                  (error "Context expects 2 values" _g84317_)))
                            (let ((_%target7041370434%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g84316_ 0)))
                                  (_%tl7041570437%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g84316_ 1))))
                              (if (gx#stx-null? _%tl7041570437%_)
                                  (letrec ((_%loop7041670440%_
                                            (lambda (_%hd7041470444%_
                                                     _%mixin-setf7042070447%_)
                                              (if (gx#stx-pair?
                                                   _%hd7041470444%_)
                                                  (let ((_%e7041770450%_
                                                         (gx#syntax-e
                                                          _%hd7041470444%_)))
                                                    (let ((_%lp-hd7041870454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7041770450%_)))
                                                          (_%lp-tl7041970457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7041770450%_))))
                                                      (_%loop7041670440%_
                                                       _%lp-tl7041970457%_
                                                       (cons _%lp-hd7041870454%_
                                                             _%mixin-setf7042070447%_))))
                                                  (let ((_%mixin-setf7042170460%_
                                                         (reverse _%mixin-setf7042070447%_)))
                                                    ((lambda (_%L70464%_)
                                                       (let* ((_%g7048170498%_
                                                               (lambda (_%g7048270494%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7048270494%_)))
                      (_%g7048073817%_
                       (lambda (_%g7048270502%_)
                         (if (gx#stx-pair/null? _%g7048270502%_)
                             (let ((_g84318_
                                    (gx#syntax-split-splice
                                     _%g7048270502%_
                                     '0)))
                               (begin
                                 (let ((_g84319_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g84318_)
                                              (##values-length _g84318_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g84319_ 2)))
                                       (error "Context expects 2 values"
                                              _g84319_)))
                                 (let ((_%target7048470505%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g84318_ 0)))
                                       (_%tl7048670508%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g84318_ 1))))
                                   (if (gx#stx-null? _%tl7048670508%_)
                                       (letrec ((_%loop7048770511%_
                                                 (lambda (_%hd7048570515%_
                                                          _%mixin-rawsetf7049170518%_)
                                                   (if (gx#stx-pair?
                                                        _%hd7048570515%_)
                                                       (let ((_%e7048870521%_
                                                              (gx#syntax-e
                                                               _%hd7048570515%_)))
                                                         (let ((_%lp-hd7048970525%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e7048870521%_)))
                       (_%lp-tl7049070528%_
                        (let () (declare (not safe)) (##cdr _%e7048870521%_))))
                   (_%loop7048770511%_
                    _%lp-tl7049070528%_
                    (cons _%lp-hd7048970525%_ _%mixin-rawsetf7049170518%_))))
               (let ((_%mixin-rawsetf7049270531%_
                      (reverse _%mixin-rawsetf7049170518%_)))
                 ((lambda (_%L70535%_)
                    (let* ((_%g7055270569%_
                            (lambda (_%g7055370565%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7055370565%_)))
                           (_%g7055173800%_
                            (lambda (_%g7055370573%_)
                              (if (gx#stx-pair/null? _%g7055370573%_)
                                  (let ((_g84320_
                                         (gx#syntax-split-splice
                                          _%g7055370573%_
                                          '0)))
                                    (begin
                                      (let ((_g84321_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84320_)
                                                   (##values-length _g84320_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84321_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84321_)))
                                      (let ((_%target7055570576%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84320_ 0)))
                                            (_%tl7055770579%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84320_ 1))))
                                        (if (gx#stx-null? _%tl7055770579%_)
                                            (letrec ((_%loop7055870582%_
                                                      (lambda (_%hd7055670586%_
                                                               _%ugetf7056270589%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7055670586%_)
                                                            (let ((_%e7055970592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7055670586%_)))
                      (let ((_%lp-hd7056070596%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7055970592%_)))
                            (_%lp-tl7056170599%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7055970592%_))))
                        (_%loop7055870582%_
                         _%lp-tl7056170599%_
                         (cons _%lp-hd7056070596%_ _%ugetf7056270589%_))))
                    (let ((_%ugetf7056370602%_ (reverse _%ugetf7056270589%_)))
                      ((lambda (_%L70606%_)
                         (let* ((_%g7062370640%_
                                 (lambda (_%g7062470636%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7062470636%_)))
                                (_%g7062273783%_
                                 (lambda (_%g7062470644%_)
                                   (if (gx#stx-pair/null? _%g7062470644%_)
                                       (let ((_g84322_
                                              (gx#syntax-split-splice
                                               _%g7062470644%_
                                               '0)))
                                         (begin
                                           (let ((_g84323_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84322_)
                                                        (##values-length
                                                         _g84322_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84323_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84323_)))
                                           (let ((_%target7062670647%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g84322_ 0)))
                                                 (_%tl7062870650%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g84322_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7062870650%_)
                                                 (letrec ((_%loop7062970653%_
                                                           (lambda (_%hd7062770657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%usetf7063370660%_)
                     (if (gx#stx-pair? _%hd7062770657%_)
                         (let ((_%e7063070663%_
                                (gx#syntax-e _%hd7062770657%_)))
                           (let ((_%lp-hd7063170667%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7063070663%_)))
                                 (_%lp-tl7063270670%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7063070663%_))))
                             (_%loop7062970653%_
                              _%lp-tl7063270670%_
                              (cons _%lp-hd7063170667%_ _%usetf7063370660%_))))
                         (let ((_%usetf7063470673%_
                                (reverse _%usetf7063370660%_)))
                           ((lambda (_%L70677%_)
                              (let* ((_%g7069470711%_
                                      (lambda (_%g7069570707%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7069570707%_)))
                                     (_%g7069373766%_
                                      (lambda (_%g7069570715%_)
                                        (if (gx#stx-pair/null? _%g7069570715%_)
                                            (let ((_g84324_
                                                   (gx#syntax-split-splice
                                                    _%g7069570715%_
                                                    '0)))
                                              (begin
                                                (let ((_g84325_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g84324_)
                                                             (##values-length
                                                              _g84324_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g84325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g84325_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7069770718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g84324_
                                                          0)))
                                                      (_%tl7069970721%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g84324_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7069970721%_)
                                                      (letrec ((_%loop7070070724%_
                                                                (lambda (_%hd7069870728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%mixin-ugetf7070470731%_)
                          (if (gx#stx-pair? _%hd7069870728%_)
                              (let ((_%e7070170734%_
                                     (gx#syntax-e _%hd7069870728%_)))
                                (let ((_%lp-hd7070270738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7070170734%_)))
                                      (_%lp-tl7070370741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7070170734%_))))
                                  (_%loop7070070724%_
                                   _%lp-tl7070370741%_
                                   (cons _%lp-hd7070270738%_
                                         _%mixin-ugetf7070470731%_))))
                              (let ((_%mixin-ugetf7070570744%_
                                     (reverse _%mixin-ugetf7070470731%_)))
                                ((lambda (_%L70748%_)
                                   (let* ((_%g7076570782%_
                                           (lambda (_%g7076670778%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7076670778%_)))
                                          (_%g7076473749%_
                                           (lambda (_%g7076670786%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7076670786%_)
                                                 (let ((_g84326_
                                                        (gx#syntax-split-splice
                                                         _%g7076670786%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g84327_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g84326_)
                          (##values-length _g84326_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g84327_ 2)))
                   (error "Context expects 2 values" _g84327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7076870789%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g84326_
                                                               0)))
                                                           (_%tl7077070792%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g84326_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7077070792%_)
                                                           (letrec ((_%loop7077170795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7076970799%_
                                      _%mixin-usetf7077570802%_)
                               (if (gx#stx-pair? _%hd7076970799%_)
                                   (let ((_%e7077270805%_
                                          (gx#syntax-e _%hd7076970799%_)))
                                     (let ((_%lp-hd7077370809%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7077270805%_)))
                                           (_%lp-tl7077470812%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7077270805%_))))
                                       (_%loop7077170795%_
                                        _%lp-tl7077470812%_
                                        (cons _%lp-hd7077370809%_
                                              _%mixin-usetf7077570802%_))))
                                   (let ((_%mixin-usetf7077670815%_
                                          (reverse _%mixin-usetf7077570802%_)))
                                     ((lambda (_%L70819%_)
                                        (let* ((_%type-slots70981%_
                                                (if (gx#stx-null?
                                                     _%slots69745%_)
                                                    '()
                                                    (cons 'slots:
                                                          (cons (map (lambda (_%slot70840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf70842%_
                                      _%setf70843%_
                                      _%rawsetf70844%_)
                               (let* ((_%g7084670869%_
                                       (lambda (_%g7084770865%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7084770865%_)))
                                      (_%g7084570945%_
                                       (lambda (_%g7084770873%_)
                                         (if (gx#stx-pair? _%g7084770873%_)
                                             (let ((_%e7085270876%_
                                                    (gx#syntax-e
                                                     _%g7084770873%_)))
                                               (let ((_%hd7085370880%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7085270876%_)))
                                                     (_%tl7085470883%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7085270876%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7085470883%_)
                                                     (let ((_%e7085570886%_
                                                            (gx#syntax-e
                                                             _%tl7085470883%_)))
                                                       (let ((_%hd7085670890%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7085570886%_)))
                     (_%tl7085770893%_
                      (let () (declare (not safe)) (##cdr _%e7085570886%_))))
                 (if (gx#stx-pair? _%tl7085770893%_)
                     (let ((_%e7085870896%_ (gx#syntax-e _%tl7085770893%_)))
                       (let ((_%hd7085970900%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7085870896%_)))
                             (_%tl7086070903%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7085870896%_))))
                         (if (gx#stx-pair? _%tl7086070903%_)
                             (let ((_%e7086170906%_
                                    (gx#syntax-e _%tl7086070903%_)))
                               (let ((_%hd7086270910%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7086170906%_)))
                                     (_%tl7086370913%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7086170906%_))))
                                 (if (gx#stx-null? _%tl7086370913%_)
                                     ((lambda (_%L70916%_
                                               _%L70918%_
                                               _%L70919%_
                                               _%L70920%_)
                                        (if (hash-get
                                             _%slot-contract-table69734%_
                                             (gx#stx-e _%L70920%_))
                                            (cons _%L70920%_
                                                  (cons _%L70919%_
                                                        (cons _%L70916%_ '())))
                                            (cons _%L70920%_
                                                  (cons _%L70919%_
                                                        (cons _%L70918%_
                                                              '())))))
                                      _%hd7086270910%_
                                      _%hd7085970900%_
                                      _%hd7085670890%_
                                      _%hd7085370880%_)
                                     (_%g7084670869%_ _%g7084770873%_))))
                             (_%g7084670869%_ _%g7084770873%_))))
                     (_%g7084670869%_ _%g7084770873%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7084670869%_
                                                      _%g7084770873%_))))
                                             (_%g7084670869%_
                                              _%g7084770873%_)))))
                                 (_%g7084570945%_
                                  (list _%slot70840%_
                                        _%getf70842%_
                                        _%setf70843%_
                                        _%rawsetf70844%_))))
                             (foldr (lambda (_%g7094870951%_ _%g7094970954%_)
                                      (cons _%g7094870951%_ _%g7094970954%_))
                                    '()
                                    _%L69967%_)
                             (foldr (lambda (_%g7095670959%_ _%g7095770962%_)
                                      (cons _%g7095670959%_ _%g7095770962%_))
                                    '()
                                    _%L70109%_)
                             (foldr (lambda (_%g7096470967%_ _%g7096570970%_)
                                      (cons _%g7096470967%_ _%g7096570970%_))
                                    '()
                                    _%L70180%_)
                             (foldr (lambda (_%g7097270975%_ _%g7097370978%_)
                                      (cons _%g7097270975%_ _%g7097370978%_))
                                    '()
                                    _%L70251%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-mixin-slots71128%_
                                                (if (gx#stx-null?
                                                     _%mixin-slots69751%_)
                                                    '()
                                                    (cons 'mixin:
                                                          (cons (map (lambda (_%slot70988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf70990%_
                                      _%setf70991%_
                                      _%rawsetf70992%_)
                               (let* ((_%g7099471017%_
                                       (lambda (_%g7099571013%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7099571013%_)))
                                      (_%g7099371092%_
                                       (lambda (_%g7099571021%_)
                                         (if (gx#stx-pair? _%g7099571021%_)
                                             (let ((_%e7100071024%_
                                                    (gx#syntax-e
                                                     _%g7099571021%_)))
                                               (let ((_%hd7100171028%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7100071024%_)))
                                                     (_%tl7100271031%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7100071024%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7100271031%_)
                                                     (let ((_%e7100371034%_
                                                            (gx#syntax-e
                                                             _%tl7100271031%_)))
                                                       (let ((_%hd7100471038%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7100371034%_)))
                     (_%tl7100571041%_
                      (let () (declare (not safe)) (##cdr _%e7100371034%_))))
                 (if (gx#stx-pair? _%tl7100571041%_)
                     (let ((_%e7100671044%_ (gx#syntax-e _%tl7100571041%_)))
                       (let ((_%hd7100771048%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7100671044%_)))
                             (_%tl7100871051%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7100671044%_))))
                         (if (gx#stx-pair? _%tl7100871051%_)
                             (let ((_%e7100971054%_
                                    (gx#syntax-e _%tl7100871051%_)))
                               (let ((_%hd7101071058%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7100971054%_)))
                                     (_%tl7101171061%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7100971054%_))))
                                 (if (gx#stx-null? _%tl7101171061%_)
                                     ((lambda (_%L71064%_
                                               _%L71066%_
                                               _%L71067%_
                                               _%L71068%_)
                                        (if (hash-get
                                             _%slot-contract-table69734%_
                                             (gx#stx-e _%L71068%_))
                                            (cons _%L71068%_
                                                  (cons _%L71067%_
                                                        (cons _%L71064%_ '())))
                                            (cons _%L71068%_
                                                  (cons _%L71067%_
                                                        (cons _%L71066%_
                                                              '())))))
                                      _%hd7101071058%_
                                      _%hd7100771048%_
                                      _%hd7100471038%_
                                      _%hd7100171028%_)
                                     (_%g7099471017%_ _%g7099571021%_))))
                             (_%g7099471017%_ _%g7099571021%_))))
                     (_%g7099471017%_ _%g7099571021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7099471017%_
                                                      _%g7099571021%_))))
                                             (_%g7099471017%_
                                              _%g7099571021%_)))))
                                 (_%g7099371092%_
                                  (list _%slot70988%_
                                        _%getf70990%_
                                        _%setf70991%_
                                        _%rawsetf70992%_))))
                             (foldr (lambda (_%g7109571098%_ _%g7109671101%_)
                                      (cons _%g7109571098%_ _%g7109671101%_))
                                    '()
                                    _%L70322%_)
                             (foldr (lambda (_%g7110371106%_ _%g7110471109%_)
                                      (cons _%g7110371106%_ _%g7110471109%_))
                                    '()
                                    _%L70393%_)
                             (foldr (lambda (_%g7111171114%_ _%g7111271117%_)
                                      (cons _%g7111171114%_ _%g7111271117%_))
                                    '()
                                    _%L70464%_)
                             (foldr (lambda (_%g7111971122%_ _%g7112071125%_)
                                      (cons _%g7111971122%_ _%g7112071125%_))
                                    '()
                                    _%L70535%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-name71135%_
                                                (cons 'name:
                                                      (cons (let ((_%$e71131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'name: _%body69725%_)))
                      (if _%$e71131%_ _%$e71131%_ _%id69721%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-id71142%_
                                                (cons 'id:
                                                      (cons (let ((_%$e71138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'id: _%body69725%_)))
                      (if _%$e71138%_
                          _%$e71138%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                             _%L69778%_))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-constructor71157%_
                                                (let ((_%$e71153%_
                                                       (let ((_%e7114471146%_
                                                              (gx#stx-getq
                                                               'constructor:
                                                               _%body69725%_)))
                                                         (if _%e7114471146%_
                                                             (let ((_%e71150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e7114471146%_))
                       (cons 'constructor: (cons _%e71150%_ '())))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e71153%_
                                                      _%$e71153%_
                                                      '())))
                                               (_%properties71211%_
                                                (let* ((_%properties71160%_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'transparent:
                                                              _%body69725%_))
                                                            (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          '())
                    '()))
               (_%properties71183%_
                (let ((_%$e71163%_
                       (gx#stx-e (gx#stx-getq 'print: _%body69725%_))))
                  (if _%$e71163%_
                      ((lambda (_%print71167%_)
                         (let ((_%print71178%_
                                (if (eq? _%print71167%_ '#t)
                                    (foldr (lambda (_%g7116971172%_
                                                    _%g7117071175%_)
                                             (cons _%g7116971172%_
                                                   _%g7117071175%_))
                                           '()
                                           _%L69967%_)
                                    _%print71167%_)))
                           (cons (cons 'print: _%print71178%_)
                                 _%properties71160%_)))
                       _%$e71163%_)
                      _%properties71160%_)))
               (_%properties71206%_
                (let ((_%$e71186%_
                       (gx#stx-e (gx#stx-getq 'equal: _%body69725%_))))
                  (if _%$e71186%_
                      ((lambda (_%equal71190%_)
                         (let ((_%equal71201%_
                                (if (eq? _%equal71190%_ '#t)
                                    (foldr (lambda (_%g7119271195%_
                                                    _%g7119371198%_)
                                             (cons _%g7119271195%_
                                                   _%g7119371198%_))
                                           '()
                                           _%L69967%_)
                                    _%equal71190%_)))
                           (cons (cons 'equal: _%equal71201%_)
                                 _%properties71183%_)))
                       _%$e71186%_)
                      _%properties71183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%properties71206%_))
                                               (_%type-properties71249%_
                                                (if (null? _%properties71211%_)
                                                    '()
                                                    (let* ((_%g7121471222%_
                                                            (lambda (_%g7121571218%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7121571218%_)))
                                                           (_%g7121371245%_
                                                            (lambda (_%g7121571226%_)
                                                              ((lambda (_%L71229%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'properties:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L71229%_ '()))
                                     '())))
                       _%g7121571226%_))))
              (_%g7121371245%_ _%properties71211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%metaclass71261%_
                                                (let ((_%$e71252%_
                                                       (gx#stx-getq
                                                        'metaclass:
                                                        _%body69725%_)))
                                                  (if _%$e71252%_
                                                      ((lambda (_%metaclass71256%_)
                                                         (if (gx#identifier?
                                                              _%metaclass71256%_)
                                                             _%metaclass71256%_
                                                             '#f))
                                                       _%$e71252%_)
                                                      '#f)))
                                               (_%final?71264%_
                                                (gx#stx-e
                                                 (gx#stx-getq
                                                  'final:
                                                  _%body69725%_)))
                                               (_%type-struct71267%_
                                                (cons 'struct:
                                                      (cons _%struct?69760%_
                                                            '())))
                                               (_%type-final71270%_
                                                (cons 'final:
                                                      (cons _%final?71264%_
                                                            '())))
                                               (_%type-metaclass71273%_
                                                (if _%metaclass71261%_
                                                    (cons 'metaclass:
                                                          (cons _%metaclass71261%_
                                                                '()))
                                                    '()))
                                               (_%g7127671293%_
                                                (lambda (_%g7127771289%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7127771289%_)))
                                               (_%g7127573745%_
                                                (lambda (_%g7127771297%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7127771297%_)
                                                      (let ((_g84328_
                                                             (gx#syntax-split-splice
                                                              _%g7127771297%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g84329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g84328_)
                               (##values-length _g84328_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g84329_ 2)))
                        (error "Context expects 2 values" _g84329_)))
                  (let ((_%target7127971300%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g84328_ 0)))
                        (_%tl7128171303%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g84328_ 1))))
                    (if (gx#stx-null? _%tl7128171303%_)
                        (letrec ((_%loop7128271306%_
                                  (lambda (_%hd7128071310%_
                                           _%type-body7128671313%_)
                                    (if (gx#stx-pair? _%hd7128071310%_)
                                        (let ((_%e7128371316%_
                                               (gx#syntax-e _%hd7128071310%_)))
                                          (let ((_%lp-hd7128471320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7128371316%_)))
                                                (_%lp-tl7128571323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7128371316%_))))
                                            (_%loop7128271306%_
                                             _%lp-tl7128571323%_
                                             (cons _%lp-hd7128471320%_
                                                   _%type-body7128671313%_))))
                                        (let ((_%type-body7128771326%_
                                               (reverse _%type-body7128671313%_)))
                                          ((lambda (_%L71330%_)
                                             (let* ((_%g7135171359%_
                                                     (lambda (_%g7135271355%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7135271355%_)))
                                                    (_%g7135073733%_
                                                     (lambda (_%g7135271363%_)
                                                       ((lambda (_%L71366%_)
                                                          (let* ((_%g7137971387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g7138071383%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g7138071383%_)))
                         (_%g7137873721%_
                          (lambda (_%g7138071391%_)
                            ((lambda (_%L71394%_)
                               (let* ((_%g7140771415%_
                                       (lambda (_%g7140871411%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7140871411%_)))
                                      (_%g7140673650%_
                                       (lambda (_%g7140871419%_)
                                         ((lambda (_%L71422%_)
                                            (let* ((_%g7143571443%_
                                                    (lambda (_%g7143671439%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g7143671439%_)))
                                                   (_%g7143473615%_
                                                    (lambda (_%g7143671447%_)
                                                      ((lambda (_%L71450%_)
                                                         (let* ((_%g7146371471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g7146471467%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g7146471467%_)))
                        (_%g7146273529%_
                         (lambda (_%g7146471475%_)
                           ((lambda (_%L71478%_)
                              (let* ((_%g7149171499%_
                                      (lambda (_%g7149271495%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7149271495%_)))
                                     (_%g7149073517%_
                                      (lambda (_%g7149271503%_)
                                        ((lambda (_%L71506%_)
                                           (let* ((_%g7151971527%_
                                                   (lambda (_%g7152071523%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g7152071523%_)))
                                                  (_%g7151873505%_
                                                   (lambda (_%g7152071531%_)
                                                     ((lambda (_%L71534%_)
                                                        (let* ((_%g7154771555%_
                                                                (lambda (_%g7154871551%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g7154871551%_)))
                       (_%g7154673391%_
                        (lambda (_%g7154871559%_)
                          ((lambda (_%L71562%_)
                             (let* ((_%g7157571583%_
                                     (lambda (_%g7157671579%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7157671579%_)))
                                    (_%g7157473280%_
                                     (lambda (_%g7157671587%_)
                                       ((lambda (_%L71590%_)
                                          (let* ((_%g7160371611%_
                                                  (lambda (_%g7160471607%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g7160471607%_)))
                                                 (_%g7160273169%_
                                                  (lambda (_%g7160471615%_)
                                                    ((lambda (_%L71618%_)
                                                       (let* ((_%g7163171639%_
                                                               (lambda (_%g7163271635%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7163271635%_)))
                      (_%g7163073165%_
                       (lambda (_%g7163271643%_)
                         ((lambda (_%L71646%_)
                            (let* ((_%g7165971667%_
                                    (lambda (_%g7166071663%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7166071663%_)))
                                   (_%g7165873161%_
                                    (lambda (_%g7166071671%_)
                                      ((lambda (_%L71674%_)
                                         (let* ((_%g7168771695%_
                                                 (lambda (_%g7168871691%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g7168871691%_)))
                                                (_%g7168673126%_
                                                 (lambda (_%g7168871699%_)
                                                   ((lambda (_%L71702%_)
                                                      (let* ((_%g7171571723%_
                                                              (lambda (_%g7171671719%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g7171671719%_)))
                     (_%g7171473055%_
                      (lambda (_%g7171671727%_)
                        ((lambda (_%L71730%_)
                           (let* ((_%g7174371751%_
                                   (lambda (_%g7174471747%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g7174471747%_)))
                                  (_%g7174273051%_
                                   (lambda (_%g7174471755%_)
                                     ((lambda (_%L71758%_)
                                        (let* ((_%g7177171779%_
                                                (lambda (_%g7177271775%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7177271775%_)))
                                               (_%g7177073047%_
                                                (lambda (_%g7177271783%_)
                                                  ((lambda (_%L71786%_)
                                                     (let* ((_%g7179971807%_
                                                             (lambda (_%g7180071803%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g7180071803%_)))
                                                            (_%g7179873043%_
                                                             (lambda (_%g7180071811%_)
                                                               ((lambda (_%L71814%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g7182771835%_
                                  (lambda (_%g7182871831%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g7182871831%_)))
                                 (_%g7182673017%_
                                  (lambda (_%g7182871839%_)
                                    ((lambda (_%L71842%_)
                                       (let* ((_%g7185571863%_
                                               (lambda (_%g7185671859%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g7185671859%_)))
                                              (_%g7185472991%_
                                               (lambda (_%g7185671867%_)
                                                 ((lambda (_%L71870%_)
                                                    (let* ((_%g7188371891%_
                                                            (lambda (_%g7188471887%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7188471887%_)))
                                                           (_%g7188272965%_
                                                            (lambda (_%g7188471895%_)
                                                              ((lambda (_%L71898%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%map-slot-usetf71916%_
                                 (lambda (_%slot71911%_
                                          _%setf71913%_
                                          _%rawsetf71914%_)
                                   (cons 'cons
                                         (cons (cons 'quote
                                                     (cons _%slot71911%_ '()))
                                               (cons (if (hash-get
                                                          _%slot-contract-table69734%_
                                                          (gx#stx-e
                                                           _%slot71911%_))
                                                         (cons 'quote-syntax
                                                               (cons (gx#stx-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rawsetf71914%_
                              '"&"
                              _%rawsetf71914%_)
                             '()))
                 (cons 'quote-syntax (cons _%setf71913%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                                (_%g7191971927%_
                                 (lambda (_%g7192071923%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7192071923%_)))
                                (_%g7191872747%_
                                 (lambda (_%g7192071931%_)
                                   ((lambda (_%L71934%_)
                                      (let* ((_%g7194871956%_
                                              (lambda (_%g7194971952%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g7194971952%_)))
                                             (_%g7194772743%_
                                              (lambda (_%g7194971960%_)
                                                ((lambda (_%L71963%_)
                                                   (let* ((_%g7197671984%_
                                                           (lambda (_%g7197771980%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g7197771980%_)))
                                                          (_%g7197572229%_
                                                           (lambda (_%g7197771988%_)
                                                             ((lambda (_%L71991%_)
                                                                (let* ((_%g7200472021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g7200572017%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g7200572017%_)))
                               (_%g7200372085%_
                                (lambda (_%g7200572025%_)
                                  (if (gx#stx-pair/null? _%g7200572025%_)
                                      (let ((_g84330_
                                             (gx#syntax-split-splice
                                              _%g7200572025%_
                                              '0)))
                                        (begin
                                          (let ((_g84331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84330_)
                                                       (##values-length
                                                        _g84330_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84331_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84331_)))
                                          (let ((_%target7200772028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84330_ 0)))
                                                (_%tl7200972031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84330_ 1))))
                                            (if (gx#stx-null? _%tl7200972031%_)
                                                (letrec ((_%loop7201072034%_
                                                          (lambda (_%hd7200872038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%defsetf7201472041%_)
                    (if (gx#stx-pair? _%hd7200872038%_)
                        (let ((_%e7201172044%_ (gx#syntax-e _%hd7200872038%_)))
                          (let ((_%lp-hd7201272048%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7201172044%_)))
                                (_%lp-tl7201372051%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7201172044%_))))
                            (_%loop7201072034%_
                             _%lp-tl7201372051%_
                             (cons _%lp-hd7201272048%_
                                   _%defsetf7201472041%_))))
                        (let ((_%defsetf7201572054%_
                               (reverse _%defsetf7201472041%_)))
                          ((lambda (_%L72058%_)
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _%L71394%_
                                         (cons _%L71963%_
                                               (cons _%L71991%_
                                                     (foldr (lambda (_%g7207672079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g7207772082%_)
                      (cons _%g7207672079%_ _%g7207772082%_))
                    '()
                    _%L72058%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _%defsetf7201572054%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7201072034%_
                                                   _%target7200772028%_
                                                   '()))
                                                (_%g7200472021%_
                                                 _%g7200572025%_)))))
                                      (_%g7200472021%_ _%g7200572025%_)))))
                          (_%g7200372085%_
                           (let ((__tmp84332
                                  (map (lambda (_%slot72089%_
                                                _%setf72091%_
                                                _%rawsetf72092%_)
                                         (let ((_%contract7209372095%_
                                                (hash-get
                                                 _%slot-contract-table69734%_
                                                 (gx#stx-e _%slot72089%_))))
                                           (if _%contract7209372095%_
                                               (let* ((_%contract72099%_
                                                       _%contract7209372095%_)
                                                      (_%g7210272125%_
                                                       (lambda (_%g7210372121%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7210372121%_)))
                                                      (_%g7210172201%_
                                                       (lambda (_%g7210372129%_)
                                                         (if (gx#stx-pair?
                                                              _%g7210372129%_)
                                                             (let ((_%e7210872132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%g7210372129%_)))
                       (let ((_%hd7210972136%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7210872132%_)))
                             (_%tl7211072139%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7210872132%_))))
                         (if (gx#stx-pair? _%tl7211072139%_)
                             (let ((_%e7211172142%_
                                    (gx#syntax-e _%tl7211072139%_)))
                               (let ((_%hd7211272146%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7211172142%_)))
                                     (_%tl7211372149%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7211172142%_))))
                                 (if (gx#stx-pair? _%tl7211372149%_)
                                     (let ((_%e7211472152%_
                                            (gx#syntax-e _%tl7211372149%_)))
                                       (let ((_%hd7211572156%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7211472152%_)))
                                             (_%tl7211672159%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7211472152%_))))
                                         (if (gx#stx-pair? _%tl7211672159%_)
                                             (let ((_%e7211772162%_
                                                    (gx#syntax-e
                                                     _%tl7211672159%_)))
                                               (let ((_%hd7211872166%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7211772162%_)))
                                                     (_%tl7211972169%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7211772162%_))))
                                                 (if (gx#stx-null?
                                                      _%tl7211972169%_)
                                                     ((lambda (_%L72172%_
                                                               _%L72174%_
                                                               _%L72175%_
                                                               _%L72176%_)
                                                        (_%wrap69586%_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def/c)
                                                               (cons (cons _%L72174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f '$obj)
                                               (cons (gx#datum->syntax '#f ':)
                                                     (cons _%L69778%_ '())))
                                         (cons _%L72176%_ '())))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons (gx#datum->syntax '#f ':void)
                                         (cons (cons _%L72172%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           (cons _%L72175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
              _%hd7211872166%_
              _%hd7211572156%_
              _%hd7211272146%_
              _%hd7210972136%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7210272125%_
                                                      _%g7210372129%_))))
                                             (_%g7210272125%_
                                              _%g7210372129%_))))
                                     (_%g7210272125%_ _%g7210372129%_))))
                             (_%g7210272125%_ _%g7210372129%_))))
                     (_%g7210272125%_ _%g7210372129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7210172201%_
                                                  (list (cons _%slot72089%_
                                                              _%contract72099%_)
                                                        _%slot72089%_
                                                        _%setf72091%_
                                                        (gx#stx-identifier
                                                         _%rawsetf72092%_
                                                         '"&"
                                                         _%rawsetf72092%_))))
                                               '#f)))
                                       (foldr (lambda (_%g7220472207%_
                                                       _%g7220572210%_)
                                                (cons _%g7220472207%_
                                                      _%g7220572210%_))
                                              '()
                                              _%L69967%_)
                                       (foldr (lambda (_%g7221272215%_
                                                       _%g7221372218%_)
                                                (cons _%g7221272215%_
                                                      _%g7221372218%_))
                                              '()
                                              _%L70180%_)
                                       (foldr (lambda (_%g7222072223%_
                                                       _%g7222172226%_)
                                                (cons _%g7222072223%_
                                                      _%g7222172226%_))
                                              '()
                                              _%L70251%_))))
                             (declare (not safe))
                             (##filter identity __tmp84332)))))
                      _%g7197771988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7197572229%_
                                                      (if (or (not (null? _%type-constructor71157%_))
                                                              (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%slot-contract-table69734%_))
                           (zero? (hash-length _%slot-default-table69737%_)))
                      _%metaclass71261%_)
                  (cons (gx#datum->syntax '#f 'begin) '())
                  (if (and _%struct?69760%_
                           (zero? (hash-length _%slot-default-table69737%_)))
                      (let* ((_%g7224572260%_
                              (lambda (_%g7224672256%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7224672256%_)))
                             (_%g7224472314%_
                              (lambda (_%g7224672264%_)
                                (if (gx#stx-pair? _%g7224672264%_)
                                    (let ((_%e7224972267%_
                                           (gx#syntax-e _%g7224672264%_)))
                                      (let ((_%hd7225072271%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7224972267%_)))
                                            (_%tl7225172274%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7224972267%_))))
                                        (if (gx#stx-pair? _%tl7225172274%_)
                                            (let ((_%e7225272277%_
                                                   (gx#syntax-e
                                                    _%tl7225172274%_)))
                                              (let ((_%hd7225372281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7225272277%_)))
                                                    (_%tl7225472284%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7225272277%_))))
                                                (if (gx#stx-null?
                                                     _%tl7225472284%_)
                                                    ((lambda (_%L72287%_
                                                              _%L72289%_)
                                                       (_%wrap69586%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L69844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L72289%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L69778%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L72287%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L72287%_
                                    (foldr (lambda (_%g7230572308%_
                                                    _%g7230672311%_)
                                             (cons _%g7230572308%_
                                                   _%g7230672311%_))
                                           '()
                                           _%L70038%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7225372281%_
                                                     _%hd7225072271%_)
                                                    (_%g7224572260%_
                                                     _%g7224672264%_))))
                                            (_%g7224572260%_
                                             _%g7224672264%_))))
                                    (_%g7224572260%_ _%g7224672264%_)))))
                        (_%g7224472314%_
                         (list (foldr (lambda (_%slot72318%_ _%r72320%_)
                                        (let ((_%$e72322%_
                                               (hash-get
                                                _%slot-contract-table69734%_
                                                (gx#stx-e _%slot72318%_))))
                                          (if _%$e72322%_
                                              ((lambda (_%contract72326%_)
                                                 (let* ((_%g7232972353%_
                                                         (lambda (_%g7233072349%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7233072349%_)))
                                                        (_%g7232872443%_
                                                         (lambda (_%g7233072357%_)
                                                           (if (gx#stx-pair?
                                                                _%g7233072357%_)
                                                               (let ((_%e7233372360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7233072357%_)))
                         (let ((_%hd7233472364%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7233372360%_)))
                               (_%tl7233572367%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7233372360%_))))
                           (if (gx#stx-pair? _%tl7233572367%_)
                               (let ((_%e7233672370%_
                                      (gx#syntax-e _%tl7233572367%_)))
                                 (let ((_%hd7233772374%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7233672370%_)))
                                       (_%tl7233872377%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7233672370%_))))
                                   (if (gx#stx-pair/null? _%hd7233772374%_)
                                       (let ((_g84333_
                                              (gx#syntax-split-splice
                                               _%hd7233772374%_
                                               '0)))
                                         (begin
                                           (let ((_g84334_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84333_)
                                                        (##values-length
                                                         _g84333_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84334_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84334_)))
                                           (let ((_%target7233972380%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g84333_ 0)))
                                                 (_%tl7234172383%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g84333_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7234172383%_)
                                                 (letrec ((_%loop7234272386%_
                                                           (lambda (_%hd7234072390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7234672393%_)
                     (if (gx#stx-pair? _%hd7234072390%_)
                         (let ((_%e7234372396%_
                                (gx#syntax-e _%hd7234072390%_)))
                           (let ((_%lp-hd7234472400%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7234372396%_)))
                                 (_%lp-tl7234572403%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7234372396%_))))
                             (_%loop7234272386%_
                              _%lp-tl7234572403%_
                              (cons _%lp-hd7234472400%_
                                    _%contract7234672393%_))))
                         (let ((_%contract7234772406%_
                                (reverse _%contract7234672393%_)))
                           (if (gx#stx-null? _%tl7233872377%_)
                               ((lambda (_%L72410%_ _%L72412%_)
                                  (cons (cons _%L72412%_
                                              (foldr (lambda (_%g7243472437%_
                                                              _%g7243572440%_)
                                                       (cons _%g7243472437%_
                                                             _%g7243572440%_))
                                                     '()
                                                     _%L72410%_))
                                        _%r72320%_))
                                _%contract7234772406%_
                                _%hd7233472364%_)
                               (_%g7232972353%_ _%g7233072357%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7234272386%_
                                                    _%target7233972380%_
                                                    '()))
                                                 (_%g7232972353%_
                                                  _%g7233072357%_)))))
                                       (_%g7232972353%_ _%g7233072357%_))))
                               (_%g7232972353%_ _%g7233072357%_))))
                       (_%g7232972353%_ _%g7233072357%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7232872443%_
                                                    (list _%slot72318%_
                                                          _%contract72326%_))))
                                               _%$e72322%_)
                                              (cons _%slot72318%_
                                                    _%r72320%_))))
                                      '()
                                      (foldr (lambda (_%g7244872451%_
                                                      _%g7244972454%_)
                                               (cons _%g7244872451%_
                                                     _%g7244972454%_))
                                             '()
                                             _%L70038%_))
                               (gx#core-quote-syntax _%L69816%_))))
                      (let* ((_%g7245972474%_
                              (lambda (_%g7246072470%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7246072470%_)))
                             (_%g7245872527%_
                              (lambda (_%g7246072478%_)
                                (if (gx#stx-pair? _%g7246072478%_)
                                    (let ((_%e7246372481%_
                                           (gx#syntax-e _%g7246072478%_)))
                                      (let ((_%hd7246472485%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7246372481%_)))
                                            (_%tl7246572488%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7246372481%_))))
                                        (if (gx#stx-pair? _%tl7246572488%_)
                                            (let ((_%e7246672491%_
                                                   (gx#syntax-e
                                                    _%tl7246572488%_)))
                                              (let ((_%hd7246772495%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7246672491%_)))
                                                    (_%tl7246872498%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7246672491%_))))
                                                (if (gx#stx-null?
                                                     _%tl7246872498%_)
                                                    ((lambda (_%L72501%_
                                                              _%L72503%_)
                                                       (_%wrap69586%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L69844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L72503%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L69778%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L72501%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L72501%_
                                    (foldr (lambda (_%g7251872521%_
                                                    _%g7251972524%_)
                                             (cons _%g7251872521%_
                                                   _%g7251972524%_))
                                           '()
                                           _%L70038%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7246772495%_
                                                     _%hd7246472485%_)
                                                    (_%g7245972474%_
                                                     _%g7246072478%_))))
                                            (_%g7245972474%_
                                             _%g7246072478%_))))
                                    (_%g7245972474%_ _%g7246072478%_)))))
                        (_%g7245872527%_
                         (list (foldr (lambda (_%slot72531%_ _%r72533%_)
                                        (let* ((_%default72535%_
                                                (hash-get
                                                 _%slot-default-table69737%_
                                                 (gx#stx-e _%slot72531%_)))
                                               (_%$e72538%_
                                                (hash-get
                                                 _%slot-contract-table69734%_
                                                 (gx#stx-e _%slot72531%_))))
                                          (if _%$e72538%_
                                              ((lambda (_%contract72542%_)
                                                 (let* ((_%g7254572582%_
                                                         (lambda (_%g7254672578%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7254672578%_)))
                                                        (_%g7254472729%_
                                                         (lambda (_%g7254672586%_)
                                                           (if (gx#stx-pair?
                                                                _%g7254672586%_)
                                                               (let ((_%e7255072589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7254672586%_)))
                         (let ((_%hd7255172593%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7255072589%_)))
                               (_%tl7255272596%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7255072589%_))))
                           (if (gx#stx-pair? _%tl7255272596%_)
                               (let ((_%e7255372599%_
                                      (gx#syntax-e _%tl7255272596%_)))
                                 (let ((_%hd7255472603%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7255372599%_)))
                                       (_%tl7255572606%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7255372599%_))))
                                   (if (gx#stx-pair/null? _%hd7255472603%_)
                                       (let ((_g84335_
                                              (gx#syntax-split-splice
                                               _%hd7255472603%_
                                               '0)))
                                         (begin
                                           (let ((_g84336_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84335_)
                                                        (##values-length
                                                         _g84335_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84336_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84336_)))
                                           (let ((_%target7255672609%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g84335_ 0)))
                                                 (_%tl7255872612%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g84335_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7255872612%_)
                                                 (letrec ((_%loop7255972615%_
                                                           (lambda (_%hd7255772619%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7256372622%_)
                     (if (gx#stx-pair? _%hd7255772619%_)
                         (let ((_%e7256072625%_
                                (gx#syntax-e _%hd7255772619%_)))
                           (let ((_%lp-hd7256172629%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7256072625%_)))
                                 (_%lp-tl7256272632%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7256072625%_))))
                             (_%loop7255972615%_
                              _%lp-tl7256272632%_
                              (cons _%lp-hd7256172629%_
                                    _%contract7256372622%_))))
                         (let ((_%contract7256472635%_
                                (reverse _%contract7256372622%_)))
                           (if (gx#stx-pair? _%tl7255572606%_)
                               (let ((_%e7256572639%_
                                      (gx#syntax-e _%tl7255572606%_)))
                                 (let ((_%hd7256672643%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7256572639%_)))
                                       (_%tl7256772646%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7256572639%_))))
                                   (if (gx#stx-pair/null? _%hd7256672643%_)
                                       (let ((_g84337_
                                              (gx#syntax-split-splice
                                               _%hd7256672643%_
                                               '0)))
                                         (begin
                                           (let ((_g84338_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g84337_)
                                                        (##values-length
                                                         _g84337_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g84338_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g84338_)))
                                           (let ((_%target7256872649%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g84337_ 0)))
                                                 (_%tl7257072652%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g84337_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7257072652%_)
                                                 (letrec ((_%loop7257172655%_
                                                           (lambda (_%hd7256972659%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%default7257572662%_)
                     (if (gx#stx-pair? _%hd7256972659%_)
                         (let ((_%e7257272665%_
                                (gx#syntax-e _%hd7256972659%_)))
                           (let ((_%lp-hd7257372669%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7257272665%_)))
                                 (_%lp-tl7257472672%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7257272665%_))))
                             (_%loop7257172655%_
                              _%lp-tl7257472672%_
                              (cons _%lp-hd7257372669%_
                                    _%default7257572662%_))))
                         (let ((_%default7257672675%_
                                (reverse _%default7257572662%_)))
                           (if (gx#stx-null? _%tl7256772646%_)
                               ((lambda (_%L72679%_ _%L72681%_ _%L72682%_)
                                  (cons (symbol->keyword (gx#stx-e _%L72682%_))
                                        (cons (cons _%L72682%_
                                                    (foldr (lambda (_%g7271272717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7271372720%_)
                     (cons _%g7271272717%_ _%g7271372720%_))
                   (foldr (lambda (_%g7271472723%_ _%g7271572726%_)
                            (cons _%g7271472723%_ _%g7271572726%_))
                          '()
                          _%L72679%_)
                   _%L72681%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%r72533%_)))
                                _%default7257672675%_
                                _%contract7256472635%_
                                _%hd7255172593%_)
                               (_%g7254572582%_ _%g7254672586%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7257172655%_
                                                    _%target7256872649%_
                                                    '()))
                                                 (_%g7254572582%_
                                                  _%g7254672586%_)))))
                                       (_%g7254572582%_ _%g7254672586%_))))
                               (_%g7254572582%_ _%g7254672586%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7255972615%_
                                                    _%target7255672609%_
                                                    '()))
                                                 (_%g7254572582%_
                                                  _%g7254672586%_)))))
                                       (_%g7254572582%_ _%g7254672586%_))))
                               (_%g7254572582%_ _%g7254672586%_))))
                       (_%g7254572582%_ _%g7254672586%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7254472729%_
                                                    (list _%slot72531%_
                                                          _%contract72542%_
                                                          (if _%default72535%_
                                                              (cons ':=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%default72535%_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$e72538%_)
                                              (cons (symbol->keyword
                                                     (gx#stx-e _%slot72531%_))
                                                    (cons (cons _%slot72531%_
                                                                (cons _%default72535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%r72533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()
                                      (foldr (lambda (_%g7273472737%_
                                                      _%g7273572740%_)
                                               (cons _%g7273472737%_
                                                     _%g7273572740%_))
                                             '()
                                             _%L70038%_))
                               (gx#core-quote-syntax _%L69816%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g7194971960%_))))
                                        (_%g7194772743%_
                                         (_%wrap69586%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%L69778%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'make-class-type-info)
                          (cons 'id:
                                (cons _%L71422%_
                                      (cons 'name:
                                            (cons _%L71450%_
                                                  (cons 'slots:
                                                        (cons _%L71506%_
                                                              (cons 'ordered-slots:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L71534%_
                                  (cons 'super:
                                        (cons _%L71478%_
                                              (cons 'struct?:
                                                    (cons _%L71646%_
                                                          (cons 'final?:
                                                                (cons _%L71674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'metaclass:
                                    (cons _%L71702%_
                                          (cons 'constructor-method:
                                                (cons _%L71730%_
                                                      (cons 'type-descriptor:
                                                            (cons _%L71758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'constructor:
                                (cons _%L71786%_
                                      (cons 'predicate:
                                            (cons _%L71814%_
                                                  (cons 'accessors:
                                                        (cons _%L71842%_
                                                              (cons 'mutators:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L71898%_
                                  (cons 'unchecked-accessors:
                                        (cons _%L71870%_
                                              (cons 'unchecked-mutators:
                                                    (cons _%L71934%_
                                                          (cons 'slot-types:
                                                                (cons _%L71562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slot-contracts:
                                    (cons _%L71590%_
                                          (cons 'slot-defaults:
                                                (cons _%L71618%_
                                                      '())))))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g7192071931%_))))
                           (_%g7191872747%_
                            (let* ((_%g7275172784%_
                                    (lambda (_%g7275272780%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7275272780%_)))
                                   (_%g7275072913%_
                                    (lambda (_%g7275272788%_)
                                      (if (gx#stx-pair? _%g7275272788%_)
                                          (let ((_%e7275572791%_
                                                 (gx#syntax-e
                                                  _%g7275272788%_)))
                                            (let ((_%hd7275672795%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7275572791%_)))
                                                  (_%tl7275772798%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7275572791%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7275672795%_)
                                                  (let ((_g84339_
                                                         (gx#syntax-split-splice
                                                          _%hd7275672795%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84340_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84339_)
                           (##values-length _g84339_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84340_ 2)))
                    (error "Context expects 2 values" _g84340_)))
              (let ((_%target7275872801%_
                     (let () (declare (not safe)) (##values-ref _g84339_ 0)))
                    (_%tl7276072804%_
                     (let () (declare (not safe)) (##values-ref _g84339_ 1))))
                (if (gx#stx-null? _%tl7276072804%_)
                    (letrec ((_%loop7276172807%_
                              (lambda (_%hd7275972811%_
                                       _%slot-usetf7276572814%_)
                                (if (gx#stx-pair? _%hd7275972811%_)
                                    (let ((_%e7276272817%_
                                           (gx#syntax-e _%hd7275972811%_)))
                                      (let ((_%lp-hd7276372821%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7276272817%_)))
                                            (_%lp-tl7276472824%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7276272817%_))))
                                        (_%loop7276172807%_
                                         _%lp-tl7276472824%_
                                         (cons _%lp-hd7276372821%_
                                               _%slot-usetf7276572814%_))))
                                    (let ((_%slot-usetf7276672827%_
                                           (reverse _%slot-usetf7276572814%_)))
                                      (if (gx#stx-pair? _%tl7275772798%_)
                                          (let ((_%e7276772831%_
                                                 (gx#syntax-e
                                                  _%tl7275772798%_)))
                                            (let ((_%hd7276872835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7276772831%_)))
                                                  (_%tl7276972838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7276772831%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7276872835%_)
                                                  (let ((_g84341_
                                                         (gx#syntax-split-splice
                                                          _%hd7276872835%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84342_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84341_)
                           (##values-length _g84341_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84342_ 2)))
                    (error "Context expects 2 values" _g84342_)))
              (let ((_%target7277072841%_
                     (let () (declare (not safe)) (##values-ref _g84341_ 0)))
                    (_%tl7277272844%_
                     (let () (declare (not safe)) (##values-ref _g84341_ 1))))
                (if (gx#stx-null? _%tl7277272844%_)
                    (letrec ((_%loop7277372847%_
                              (lambda (_%hd7277172851%_
                                       _%mixin-slot-usetf7277772854%_)
                                (if (gx#stx-pair? _%hd7277172851%_)
                                    (let ((_%e7277472857%_
                                           (gx#syntax-e _%hd7277172851%_)))
                                      (let ((_%lp-hd7277572861%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7277472857%_)))
                                            (_%lp-tl7277672864%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7277472857%_))))
                                        (_%loop7277372847%_
                                         _%lp-tl7277672864%_
                                         (cons _%lp-hd7277572861%_
                                               _%mixin-slot-usetf7277772854%_))))
                                    (let ((_%mixin-slot-usetf7277872867%_
                                           (reverse _%mixin-slot-usetf7277772854%_)))
                                      (if (gx#stx-null? _%tl7276972838%_)
                                          ((lambda (_%L72871%_ _%L72873%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (foldr (lambda (_%g7289672901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g7289772904%_)
                    (cons _%g7289672901%_ _%g7289772904%_))
                  (foldr (lambda (_%g7289872907%_ _%g7289972910%_)
                           (cons _%g7289872907%_ _%g7289972910%_))
                         '()
                         _%L72871%_)
                  _%L72873%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-slot-usetf7277872867%_
                                           _%slot-usetf7276672827%_)
                                          (_%g7275172784%_
                                           _%g7275272788%_)))))))
                      (_%loop7277372847%_ _%target7277072841%_ '()))
                    (_%g7275172784%_ _%g7275272788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7275172784%_
                                                   _%g7275272788%_))))
                                          (_%g7275172784%_
                                           _%g7275272788%_)))))))
                      (_%loop7276172807%_ _%target7275872801%_ '()))
                    (_%g7275172784%_ _%g7275272788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7275172784%_
                                                   _%g7275272788%_))))
                                          (_%g7275172784%_ _%g7275272788%_)))))
                              (_%g7275072913%_
                               (list (map _%map-slot-usetf71916%_
                                          (foldr (lambda (_%g7291672919%_
                                                          _%g7291772922%_)
                                                   (cons _%g7291672919%_
                                                         _%g7291772922%_))
                                                 '()
                                                 _%L69967%_)
                                          (foldr (lambda (_%g7292472927%_
                                                          _%g7292572930%_)
                                                   (cons _%g7292472927%_
                                                         _%g7292572930%_))
                                                 '()
                                                 _%L70677%_)
                                          (foldr (lambda (_%g7293272935%_
                                                          _%g7293372938%_)
                                                   (cons _%g7293272935%_
                                                         _%g7293372938%_))
                                                 '()
                                                 _%L70251%_))
                                     (map _%map-slot-usetf71916%_
                                          (foldr (lambda (_%g7294072943%_
                                                          _%g7294172946%_)
                                                   (cons _%g7294072943%_
                                                         _%g7294172946%_))
                                                 '()
                                                 _%L70322%_)
                                          (foldr (lambda (_%g7294872951%_
                                                          _%g7294972954%_)
                                                   (cons _%g7294872951%_
                                                         _%g7294972954%_))
                                                 '()
                                                 _%L70819%_)
                                          (foldr (lambda (_%g7295672959%_
                                                          _%g7295772962%_)
                                                   (cons _%g7295672959%_
                                                         _%g7295772962%_))
                                                 '()
                                                 _%L70535%_))))))))
                       _%g7188471895%_))))
              (_%g7188272965%_
               (cons (gx#datum->syntax '#f '@list)
                     (begin
                       (gx#syntax-check-splice-targets _%L70180%_ _%L69967%_)
                       (foldr (lambda (_%g7296872975%_
                                       _%g7296972978%_
                                       _%g7297072980%_)
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g7296972978%_
                                                              '()))
                                                  (cons '::
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%g7296872975%_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%g7297072980%_))
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L70464%_
                                 _%L70322%_)
                                (foldr (lambda (_%g7297172983%_
                                                _%g7297272986%_
                                                _%g7297372988%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7297272986%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7297172983%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7297372988%_))
                                       '()
                                       _%L70464%_
                                       _%L70322%_))
                              _%L70180%_
                              _%L69967%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g7185671867%_))))
                                         (_%g7185472991%_
                                          (cons (gx#datum->syntax '#f '@list)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L70606%_
                                                   _%L69967%_)
                                                  (foldr (lambda (_%g7299473001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g7299573004%_
                          _%g7299673006%_)
                   (cons (cons (gx#datum->syntax '#f '@list)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g7299573004%_ '()))
                                     (cons '::
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _%g7299473001%_
                                                             '()))
                                                 '()))))
                         _%g7299673006%_))
                 (begin
                   (gx#syntax-check-splice-targets _%L70748%_ _%L70322%_)
                   (foldr (lambda (_%g7299773009%_
                                   _%g7299873012%_
                                   _%g7299973014%_)
                            (cons (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g7299873012%_ '()))
                                              (cons '::
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _%g7299773009%_ '()))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%g7299973014%_))
                          '()
                          _%L70748%_
                          _%L70322%_))
                 _%L70606%_
                 _%L69967%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g7182871839%_))))
                            (_%g7182673017%_
                             (cons (gx#datum->syntax '#f '@list)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _%L70109%_
                                      _%L69967%_)
                                     (foldr (lambda (_%g7302073027%_
                                                     _%g7302173030%_
                                                     _%g7302273032%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%g7302173030%_ '()))
                        (cons '::
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g7302073027%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7302273032%_))
                                            (begin
                                              (gx#syntax-check-splice-targets
                                               _%L70393%_
                                               _%L70322%_)
                                              (foldr (lambda (_%g7302373035%_
                                                              _%g7302473038%_
                                                              _%g7302573040%_)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%g7302473038%_ '()))
                                 (cons '::
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote-syntax)
                                                   (cons _%g7302373035%_ '()))
                                             '()))))
                     _%g7302573040%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%L70393%_
                                                     _%L70322%_))
                                            _%L70109%_
                                            _%L69967%_))))))
                        _%g7180071811%_))))
               (_%g7179873043%_
                (cons (gx#datum->syntax '#f 'quote-syntax)
                      (cons _%L69872%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g7177271783%_))))
                                          (_%g7177073047%_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%L69844%_ '())))))
                                      _%g7174471755%_))))
                             (_%g7174273051%_
                              (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%L69816%_ '())))))
                         _%g7171671727%_))))
                (_%g7171473055%_
                 (if (null? _%type-constructor71157%_)
                     '#f
                     (let* ((_%g7305973074%_
                             (lambda (_%g7306073070%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g7306073070%_)))
                            (_%g7305873122%_
                             (lambda (_%g7306073078%_)
                               (if (gx#stx-pair? _%g7306073078%_)
                                   (let ((_%e7306273081%_
                                          (gx#syntax-e _%g7306073078%_)))
                                     (let ((_%hd7306373085%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7306273081%_)))
                                           (_%tl7306473088%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7306273081%_))))
                                       (if (gx#stx-datum? _%hd7306373085%_)
                                           (let ((_%e7306573091%_
                                                  (gx#stx-e _%hd7306373085%_)))
                                             (if (equal? _%e7306573091%_
                                                         'constructor:)
                                                 (if (gx#stx-pair?
                                                      _%tl7306473088%_)
                                                     (let ((_%e7306673095%_
                                                            (gx#syntax-e
                                                             _%tl7306473088%_)))
                                                       (let ((_%hd7306773099%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7306673095%_)))
                     (_%tl7306873102%_
                      (let () (declare (not safe)) (##cdr _%e7306673095%_))))
                 (if (gx#stx-null? _%tl7306873102%_)
                     ((lambda (_%L73105%_)
                        (cons (gx#datum->syntax '#f 'quote)
                              (cons _%L73105%_ '())))
                      _%hd7306773099%_)
                     (_%g7305973074%_ _%g7306073078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7305973074%_
                                                      _%g7306073078%_))
                                                 (_%g7305973074%_
                                                  _%g7306073078%_)))
                                           (_%g7305973074%_ _%g7306073078%_))))
                                   (_%g7305973074%_ _%g7306073078%_)))))
                       (_%g7305873122%_ _%type-constructor71157%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7168871699%_))))
                                           (_%g7168673126%_
                                            (if _%metaclass71261%_
                                                (let* ((_%g7313073138%_
                                                        (lambda (_%g7313173134%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g7313173134%_)))
                                                       (_%g7312973157%_
                                                        (lambda (_%g7313173142%_)
                                                          ((lambda (_%L73145%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _%L73145%_ '())))
                   _%g7313173142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7312973157%_
                                                   _%metaclass71261%_))
                                                '#f))))
                                       _%g7166071671%_))))
                              (_%g7165873161%_ _%final?71264%_)))
                          _%g7163271643%_))))
                 (_%g7163073165%_ _%struct?69760%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g7160471615%_))))
                                            (_%g7160273169%_
                                             (let* ((_%g7317373196%_
                                                     (lambda (_%g7317473192%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7317473192%_)))
                                                    (_%g7317273276%_
                                                     (lambda (_%g7317473200%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7317473200%_)
                                                           (let ((_g84343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7317473200%_ '0)))
                     (begin
                       (let ((_g84344_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g84343_)
                                    (##values-length _g84343_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g84344_ 2)))
                             (error "Context expects 2 values" _g84344_)))
                       (let ((_%target7317773203%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g84343_ 0)))
                             (_%tl7317973206%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g84343_ 1))))
                         (if (gx#stx-null? _%tl7317973206%_)
                             (letrec ((_%loop7318073209%_
                                       (lambda (_%hd7317873213%_
                                                _%default7318473216%_
                                                _%slot7318573218%_)
                                         (if (gx#stx-pair? _%hd7317873213%_)
                                             (let ((_%e7318173221%_
                                                    (gx#syntax-e
                                                     _%hd7317873213%_)))
                                               (let ((_%lp-hd7318273225%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7318173221%_)))
                                                     (_%lp-tl7318373228%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7318173221%_))))
                                                 (if (gx#stx-pair?
                                                      _%lp-hd7318273225%_)
                                                     (let ((_%e7318873231%_
                                                            (gx#syntax-e
                                                             _%lp-hd7318273225%_)))
                                                       (let ((_%hd7318973235%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7318873231%_)))
                     (_%tl7319073238%_
                      (let () (declare (not safe)) (##cdr _%e7318873231%_))))
                 (_%loop7318073209%_
                  _%lp-tl7318373228%_
                  (cons _%tl7319073238%_ _%default7318473216%_)
                  (cons _%hd7318973235%_ _%slot7318573218%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7317373196%_
                                                      _%g7317473200%_))))
                                             (let ((_%default7318673241%_
                                                    (reverse _%default7318473216%_))
                                                   (_%slot7318773244%_
                                                    (reverse _%slot7318573218%_)))
                                               ((lambda (_%L73247%_ _%L73249%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        (begin
                                                          (gx#syntax-check-splice-targets
                                                           _%L73247%_
                                                           _%L73249%_)
                                                          (foldr (lambda (_%g7326473268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7326573271%_
                                  _%g7326673273%_)
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g7326573271%_ '()))
                                             (cons '::
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g7326473268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%g7326673273%_))
                         '()
                         _%L73247%_
                         _%L73249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%default7318673241%_
                                                _%slot7318773244%_))))))
                               (_%loop7318073209%_
                                _%target7317773203%_
                                '()
                                '()))
                             (_%g7317373196%_ _%g7317473200%_)))))
                   (_%g7317373196%_ _%g7317473200%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7317273276%_
                                                (hash->list
                                                 _%slot-default-table69737%_))))))
                                        _%g7157671587%_))))
                               (_%g7157473280%_
                                (let* ((_%g7328473307%_
                                        (lambda (_%g7328573303%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g7328573303%_)))
                                       (_%g7328373387%_
                                        (lambda (_%g7328573311%_)
                                          (if (gx#stx-pair/null?
                                               _%g7328573311%_)
                                              (let ((_g84345_
                                                     (gx#syntax-split-splice
                                                      _%g7328573311%_
                                                      '0)))
                                                (begin
                                                  (let ((_g84346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g84345_)
                                                               (##values-length
                                                                _g84345_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g84346_ 2)))
                (error "Context expects 2 values" _g84346_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target7328873314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g84345_
                                                            0)))
                                                        (_%tl7329073317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g84345_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl7329073317%_)
                                                        (letrec ((_%loop7329173320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd7328973324%_
                                   _%contract7329573327%_
                                   _%slot7329673329%_)
                            (if (gx#stx-pair? _%hd7328973324%_)
                                (let ((_%e7329273332%_
                                       (gx#syntax-e _%hd7328973324%_)))
                                  (let ((_%lp-hd7329373336%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7329273332%_)))
                                        (_%lp-tl7329473339%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7329273332%_))))
                                    (if (gx#stx-pair? _%lp-hd7329373336%_)
                                        (let ((_%e7329973342%_
                                               (gx#syntax-e
                                                _%lp-hd7329373336%_)))
                                          (let ((_%hd7330073346%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7329973342%_)))
                                                (_%tl7330173349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7329973342%_))))
                                            (_%loop7329173320%_
                                             _%lp-tl7329473339%_
                                             (cons _%tl7330173349%_
                                                   _%contract7329573327%_)
                                             (cons _%hd7330073346%_
                                                   _%slot7329673329%_))))
                                        (_%g7328473307%_ _%g7328573311%_))))
                                (let ((_%contract7329773352%_
                                       (reverse _%contract7329573327%_))
                                      (_%slot7329873355%_
                                       (reverse _%slot7329673329%_)))
                                  ((lambda (_%L73358%_ _%L73360%_)
                                     (cons (gx#datum->syntax '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _%L73358%_
                                              _%L73360%_)
                                             (foldr (lambda (_%g7337573379%_
                                                             _%g7337673382%_
                                                             _%g7337773384%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '@list)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g7337673382%_ '()))
                                (cons '::
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g7337573379%_ '()))
                                            '()))))
                    _%g7337773384%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _%L73358%_
                                                    _%L73360%_))))
                                   _%contract7329773352%_
                                   _%slot7329873355%_))))))
                  (_%loop7329173320%_ _%target7328873314%_ '() '()))
                (_%g7328473307%_ _%g7328573311%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7328473307%_
                                               _%g7328573311%_)))))
                                  (_%g7328373387%_
                                   (hash->list
                                    _%slot-contract-table69734%_))))))
                           _%g7154871559%_))))
                  (_%g7154673391%_
                   (let* ((_%g7339573418%_
                           (lambda (_%g7339673414%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7339673414%_)))
                          (_%g7339473498%_
                           (lambda (_%g7339673422%_)
                             (if (gx#stx-pair/null? _%g7339673422%_)
                                 (let ((_g84347_
                                        (gx#syntax-split-splice
                                         _%g7339673422%_
                                         '0)))
                                   (begin
                                     (let ((_g84348_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g84347_)
                                                  (##values-length _g84347_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g84348_ 2)))
                                           (error "Context expects 2 values"
                                                  _g84348_)))
                                     (let ((_%target7339973425%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g84347_ 0)))
                                           (_%tl7340173428%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g84347_ 1))))
                                       (if (gx#stx-null? _%tl7340173428%_)
                                           (letrec ((_%loop7340273431%_
                                                     (lambda (_%hd7340073435%_
                                                              _%type7340673438%_
                                                              _%slot7340773440%_)
                                                       (if (gx#stx-pair?
                                                            _%hd7340073435%_)
                                                           (let ((_%e7340373443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd7340073435%_)))
                     (let ((_%lp-hd7340473447%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7340373443%_)))
                           (_%lp-tl7340573450%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7340373443%_))))
                       (if (gx#stx-pair? _%lp-hd7340473447%_)
                           (let ((_%e7341073453%_
                                  (gx#syntax-e _%lp-hd7340473447%_)))
                             (let ((_%hd7341173457%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7341073453%_)))
                                   (_%tl7341273460%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7341073453%_))))
                               (_%loop7340273431%_
                                _%lp-tl7340573450%_
                                (cons _%tl7341273460%_ _%type7340673438%_)
                                (cons _%hd7341173457%_ _%slot7340773440%_))))
                           (_%g7339573418%_ _%g7339673422%_))))
                   (let ((_%type7340873463%_ (reverse _%type7340673438%_))
                         (_%slot7340973466%_ (reverse _%slot7340773440%_)))
                     ((lambda (_%L73469%_ _%L73471%_)
                        (cons (gx#datum->syntax '#f '@list)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L73469%_
                                 _%L73471%_)
                                (foldr (lambda (_%g7348673490%_
                                                _%g7348773493%_
                                                _%g7348873495%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7348773493%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7348673490%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7348873495%_))
                                       '()
                                       _%L73469%_
                                       _%L73471%_))))
                      _%type7340873463%_
                      _%slot7340973466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop7340273431%_
                                              _%target7339973425%_
                                              '()
                                              '()))
                                           (_%g7339573418%_
                                            _%g7339673422%_)))))
                                 (_%g7339573418%_ _%g7339673422%_)))))
                     (_%g7339473498%_
                      (filter (lambda (_%st73502%_) (cdr _%st73502%_))
                              (hash->list _%slot-type-table69732%_)))))))
              _%g7152071531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g7151873505%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons (foldr (lambda (_%g7350873511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7350973514%_)
                           (cons _%g7350873511%_ _%g7350973514%_))
                         '()
                         _%L70038%_)
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g7149271503%_))))
                                (_%g7149073517%_
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons (foldr (lambda (_%g7352073523%_
                                                             _%g7352173526%_)
                                                      (cons _%g7352073523%_
                                                            _%g7352173526%_))
                                                    '()
                                                    _%L69967%_)
                                             '())))))
                            _%g7146471475%_))))
                   (_%g7146273529%_
                    (let* ((_%g7353373550%_
                            (lambda (_%g7353473546%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7353473546%_)))
                           (_%g7353273611%_
                            (lambda (_%g7353473554%_)
                              (if (gx#stx-pair/null? _%g7353473554%_)
                                  (let ((_g84349_
                                         (gx#syntax-split-splice
                                          _%g7353473554%_
                                          '0)))
                                    (begin
                                      (let ((_g84350_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84349_)
                                                   (##values-length _g84349_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84350_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84350_)))
                                      (let ((_%target7353673557%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84349_ 0)))
                                            (_%tl7353873560%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84349_ 1))))
                                        (if (gx#stx-null? _%tl7353873560%_)
                                            (letrec ((_%loop7353973563%_
                                                      (lambda (_%hd7353773567%_
                                                               _%super-id7354373570%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7353773567%_)
                                                            (let ((_%e7354073573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7353773567%_)))
                      (let ((_%lp-hd7354173577%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7354073573%_)))
                            (_%lp-tl7354273580%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7354073573%_))))
                        (_%loop7353973563%_
                         _%lp-tl7354273580%_
                         (cons _%lp-hd7354173577%_ _%super-id7354373570%_))))
                    (let ((_%super-id7354473583%_
                           (reverse _%super-id7354373570%_)))
                      ((lambda (_%L73587%_)
                         (cons (gx#datum->syntax '#f '@list)
                               (foldr (lambda (_%g7360273605%_ _%g7360373608%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax)
                                                    (cons _%g7360273605%_ '()))
                                              _%g7360373608%_))
                                      '()
                                      _%L73587%_)))
                       _%super-id7354473583%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7353973563%_
                                               _%target7353673557%_
                                               '()))
                                            (_%g7353373550%_
                                             _%g7353473554%_)))))
                                  (_%g7353373550%_ _%g7353473554%_)))))
                      (_%g7353273611%_ _%super-ref69723%_)))))
               _%g7143671447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7143473615%_
                                               (let* ((_%g7361973627%_
                                                       (lambda (_%g7362073623%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7362073623%_)))
                                                      (_%g7361873646%_
                                                       (lambda (_%g7362073631%_)
                                                         ((lambda (_%L73634%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L73634%_ '())))
                  _%g7362073631%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7361873646%_
                                                  (gx#stx-car
                                                   (gx#stx-cdr
                                                    _%type-name71135%_)))))))
                                          _%g7140871419%_))))
                                 (_%g7140673650%_
                                  (let* ((_%g7365473669%_
                                          (lambda (_%g7365573665%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g7365573665%_)))
                                         (_%g7365373717%_
                                          (lambda (_%g7365573673%_)
                                            (if (gx#stx-pair? _%g7365573673%_)
                                                (let ((_%e7365773676%_
                                                       (gx#syntax-e
                                                        _%g7365573673%_)))
                                                  (let ((_%hd7365873680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e7365773676%_)))
                                                        (_%tl7365973683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e7365773676%_))))
                                                    (if (gx#stx-datum?
                                                         _%hd7365873680%_)
                                                        (let ((_%e7366073686%_
                                                               (gx#stx-e
                                                                _%hd7365873680%_)))
                                                          (if (equal? _%e7366073686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'id:)
                      (if (gx#stx-pair? _%tl7365973683%_)
                          (let ((_%e7366173690%_
                                 (gx#syntax-e _%tl7365973683%_)))
                            (let ((_%hd7366273694%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7366173690%_)))
                                  (_%tl7366373697%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7366173690%_))))
                              (if (gx#stx-null? _%tl7366373697%_)
                                  ((lambda (_%L73700%_)
                                     (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L73700%_ '())))
                                   _%hd7366273694%_)
                                  (_%g7365473669%_ _%g7365573673%_))))
                          (_%g7365473669%_ _%g7365573673%_))
                      (_%g7365473669%_ _%g7365573673%_)))
                (_%g7365473669%_ _%g7365573673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7365473669%_
                                                 _%g7365573673%_)))))
                                    (_%g7365373717%_ _%type-id71142%_)))))
                             _%g7138071391%_))))
                    (_%g7137873721%_
                     (_%wrap69586%_
                      (cons (gx#datum->syntax '#f 'defclass-type)
                            (cons _%L69816%_
                                  (cons _%L69900%_
                                        (cons _%L71366%_
                                              (cons _%L69872%_
                                                    (foldr (lambda (_%g7372473727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7372573730%_)
                     (cons _%g7372473727%_ _%g7372573730%_))
                   '()
                   _%L71330%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                _%g7135271363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7135073733%_
                                                (if (or (not (null? _%type-constructor71157%_))
                                                        (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%slot-contract-table69734%_))
                     (zero? (hash-length _%slot-default-table69737%_)))
                _%metaclass71261%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%L69844%_
                                                    '#f))))
                                           _%type-body7128771326%_))))))
                          (_%loop7128271306%_ _%target7127971300%_ '()))
                        (_%g7127671293%_ _%g7127771297%_)))))
              (_%g7127671293%_ _%g7127771297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7127573745%_
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _%type-mixin-slots71128%_
                                                           _%type-slots70981%_)
                                                    _%type-properties71249%_)
                                             _%type-metaclass71273%_)
                                      _%type-final71270%_)
                               _%type-struct71267%_)
                        _%type-constructor71157%_)
                 _%type-name71135%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-id71142%_))))
                                      _%mixin-usetf7077670815%_))))))
                     (_%loop7077170795%_ _%target7076870789%_ '()))
                   (_%g7076570782%_ _%g7076670786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7076570782%_
                                                  _%g7076670786%_)))))
                                     (_%g7076473749%_
                                      (gx#stx-map
                                       (lambda (_%g7375273754%_)
                                         (_%make-id69727%_
                                          '"&"
                                          _%g7375273754%_))
                                       (foldr (lambda (_%g7375773760%_
                                                       _%g7375873763%_)
                                                (cons _%g7375773760%_
                                                      _%g7375873763%_))
                                              '()
                                              _%L70464%_)))))
                                 _%mixin-ugetf7070570744%_))))))
                (_%loop7070070724%_ _%target7069770718%_ '()))
              (_%g7069470711%_ _%g7069570715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7069470711%_
                                             _%g7069570715%_)))))
                                (_%g7069373766%_
                                 (gx#stx-map
                                  (lambda (_%g7376973771%_)
                                    (_%make-id69727%_ '"&" _%g7376973771%_))
                                  (foldr (lambda (_%g7377473777%_
                                                  _%g7377573780%_)
                                           (cons _%g7377473777%_
                                                 _%g7377573780%_))
                                         '()
                                         _%L70393%_)))))
                            _%usetf7063470673%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7062970653%_
                                                    _%target7062670647%_
                                                    '()))
                                                 (_%g7062370640%_
                                                  _%g7062470644%_)))))
                                       (_%g7062370640%_ _%g7062470644%_)))))
                           (_%g7062273783%_
                            (gx#stx-map
                             (lambda (_%g7378673788%_)
                               (_%make-id69727%_ '"&" _%g7378673788%_))
                             (foldr (lambda (_%g7379173794%_ _%g7379273797%_)
                                      (cons _%g7379173794%_ _%g7379273797%_))
                                    '()
                                    _%L70180%_)))))
                       _%ugetf7056370602%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7055870582%_
                                               _%target7055570576%_
                                               '()))
                                            (_%g7055270569%_
                                             _%g7055370573%_)))))
                                  (_%g7055270569%_ _%g7055370573%_)))))
                      (_%g7055173800%_
                       (gx#stx-map
                        (lambda (_%g7380373805%_)
                          (_%make-id69727%_ '"&" _%g7380373805%_))
                        (foldr (lambda (_%g7380873811%_ _%g7380973814%_)
                                 (cons _%g7380873811%_ _%g7380973814%_))
                               '()
                               _%L70109%_)))))
                  _%mixin-rawsetf7049270531%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop7048770511%_
                                          _%target7048470505%_
                                          '()))
                                       (_%g7048170498%_ _%g7048270502%_)))))
                             (_%g7048170498%_ _%g7048270502%_)))))
                 (_%g7048073817%_
                  (gx#stx-map
                   (lambda (_%g7382073822%_)
                     (_%make-id69727%_
                      _%name69754%_
                      '"-unchecked-"
                      _%g7382073822%_
                      '"-set!"))
                   _%mixin-slots69751%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-setf7042170460%_))))))
                                    (_%loop7041670440%_
                                     _%target7041370434%_
                                     '()))
                                  (_%g7041070427%_ _%g7041170431%_)))))
                        (_%g7041070427%_ _%g7041170431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g7040973826%_
                                                     (gx#stx-map
                                                      (lambda (_%g7382973831%_)
                                                        (_%make-id69727%_
                                                         _%name69754%_
                                                         '"-"
                                                         _%g7382973831%_
                                                         '"-set!"))
                                                      _%mixin-slots69751%_))))
                                                _%mixin-getf7035070389%_))))))
                               (_%loop7034570369%_ _%target7034270363%_ '()))
                             (_%g7033970356%_ _%g7034070360%_)))))
                   (_%g7033970356%_ _%g7034070360%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7033873835%_
                                                (gx#stx-map
                                                 (lambda (_%g7383873840%_)
                                                   (_%make-id69727%_
                                                    _%name69754%_
                                                    '"-"
                                                    _%g7383873840%_))
                                                 _%mixin-slots69751%_))))
                                           _%mixin-slot7027970318%_))))))
                          (_%loop7027470298%_ _%target7027170292%_ '()))
                        (_%g7026870285%_ _%g7026970289%_)))))
              (_%g7026870285%_ _%g7026970289%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7026773844%_
                                           _%mixin-slots69751%_)))
                                      _%rawsetf7020870247%_))))))
                     (_%loop7020370227%_ _%target7020070221%_ '()))
                   (_%g7019770214%_ _%g7019870218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7019770214%_
                                                  _%g7019870218%_)))))
                                     (_%g7019673848%_
                                      (gx#stx-map
                                       (lambda (_%g7385173853%_)
                                         (_%make-id69727%_
                                          _%name69754%_
                                          '"-unchecked-"
                                          _%g7385173853%_
                                          '"-set!"))
                                       _%slots69745%_))))
                                 _%setf7013770176%_))))))
                (_%loop7013270156%_ _%target7012970150%_ '()))
              (_%g7012670143%_ _%g7012770147%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7012670143%_
                                             _%g7012770147%_)))))
                                (_%g7012573857%_
                                 (gx#stx-map
                                  (lambda (_%g7386073862%_)
                                    (_%make-id69727%_
                                     _%name69754%_
                                     '"-"
                                     _%g7386073862%_
                                     '"-set!"))
                                  _%slots69745%_))))
                            _%getf7006670105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7006170085%_
                                                    _%target7005870079%_
                                                    '()))
                                                 (_%g7005570072%_
                                                  _%g7005670076%_)))))
                                       (_%g7005570072%_ _%g7005670076%_)))))
                           (_%g7005473866%_
                            (gx#stx-map
                             (lambda (_%g7386973871%_)
                               (_%make-id69727%_
                                _%name69754%_
                                '"-"
                                _%g7386973871%_))
                             _%slots69745%_))))
                       _%ordered-slot6999570034%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6999070014%_
                                               _%target6998770008%_
                                               '()))
                                            (_%g6998470001%_
                                             _%g6998570005%_)))))
                                  (_%g6998470001%_ _%g6998570005%_)))))
                      (_%g6998373875%_ _%ordered-slots69740%_)))
                  _%slot6992469963%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop6991969943%_
                                          _%target6991669937%_
                                          '()))
                                       (_%g6991369930%_ _%g6991469934%_)))))
                             (_%g6991369930%_ _%g6991469934%_)))))
                 (_%g6991273879%_ _%slots69745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g6988669897%_))))
                                            (_%g6988473883%_
                                             (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                                  _%super69757%_))))
                                        _%g6985869869%_))))
                               (_%g6985673887%_
                                (_%make-id69727%_ _%name69754%_ '"?"))))
                           _%g6983069841%_))))
                  (_%g6982873891%_ (_%make-id69727%_ '"make-" _%name69754%_))))
              _%g6980269813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g6980073895%_
                                              (_%make-id69727%_
                                               _%name69754%_
                                               '"::t"))))
                                         _%g6976469775%_))))
                                (_%g6976273899%_ _%id69721%_))))))))))
          (let* ((_%g6958969617%_
                  (lambda (_%g6959069613%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g6959069613%_)))
                 (_%g6958869717%_
                  (lambda (_%g6959069621%_)
                    (if (gx#stx-pair? _%g6959069621%_)
                        (let ((_%e6959469624%_ (gx#syntax-e _%g6959069621%_)))
                          (let ((_%hd6959569628%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6959469624%_)))
                                (_%tl6959669631%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6959469624%_))))
                            (if (gx#stx-pair? _%tl6959669631%_)
                                (let ((_%e6959769634%_
                                       (gx#syntax-e _%tl6959669631%_)))
                                  (let ((_%hd6959869638%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6959769634%_)))
                                        (_%tl6959969641%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6959769634%_))))
                                    (if (gx#stx-pair? _%tl6959969641%_)
                                        (let ((_%e6960069644%_
                                               (gx#syntax-e _%tl6959969641%_)))
                                          (let ((_%hd6960169648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6960069644%_)))
                                                (_%tl6960269651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6960069644%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd6960169648%_)
                                                (let ((_g84351_
                                                       (gx#syntax-split-splice
                                                        _%hd6960169648%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g84352_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g84351_)
                         (##values-length _g84351_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g84352_ 2)))
                  (error "Context expects 2 values" _g84352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target6960369654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g84351_
                                                              0)))
                                                          (_%tl6960569657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g84351_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl6960569657%_)
                                                          (letrec ((_%loop6960669660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd6960469664%_ _%slot6961069667%_)
                              (if (gx#stx-pair? _%hd6960469664%_)
                                  (let ((_%e6960769670%_
                                         (gx#syntax-e _%hd6960469664%_)))
                                    (let ((_%lp-hd6960869674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6960769670%_)))
                                          (_%lp-tl6960969677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6960769670%_))))
                                      (_%loop6960669660%_
                                       _%lp-tl6960969677%_
                                       (cons _%lp-hd6960869674%_
                                             _%slot6961069667%_))))
                                  (let ((_%slot6961169680%_
                                         (reverse _%slot6961069667%_)))
                                    ((lambda (_%L69684%_ _%L69686%_ _%L69687%_)
                                       (_%generate69566%_
                                        _%L69687%_
                                        (foldr (lambda (_%g6970869711%_
                                                        _%g6970969714%_)
                                                 (cons _%g6970869711%_
                                                       _%g6970969714%_))
                                               '()
                                               _%L69686%_)
                                        _%L69684%_))
                                     _%tl6960269651%_
                                     _%slot6961169680%_
                                     _%hd6959869638%_))))))
                    (_%loop6960669660%_ _%target6960369654%_ '()))
                  (_%g6958969617%_ _%g6959069621%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g6958969617%_
                                                 _%g6959069621%_))))
                                        (_%g6958969617%_ _%g6959069621%_))))
                                (_%g6958969617%_ _%g6959069621%_))))
                        (_%g6958969617%_ _%g6959069621%_)))))
            (_%g6958869717%_ _%stx69563%_)))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defstruct/c|
      (lambda (_%$stx76909%_)
        (let* ((_%g7691376932%_
                (lambda (_%g7691476928%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7691476928%_)))
               (_%g7691276989%_
                (lambda (_%g7691476936%_)
                  (if (gx#stx-pair? _%g7691476936%_)
                      (let ((_%e7691876939%_ (gx#syntax-e _%g7691476936%_)))
                        (let ((_%hd7691976943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7691876939%_)))
                              (_%tl7692076946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7691876939%_))))
                          (if (gx#stx-pair? _%tl7692076946%_)
                              (let ((_%e7692176949%_
                                     (gx#syntax-e _%tl7692076946%_)))
                                (let ((_%hd7692276953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7692176949%_)))
                                      (_%tl7692376956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7692176949%_))))
                                  (if (gx#stx-pair? _%tl7692376956%_)
                                      (let ((_%e7692476959%_
                                             (gx#syntax-e _%tl7692376956%_)))
                                        (let ((_%hd7692576963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7692476959%_)))
                                              (_%tl7692676966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7692476959%_))))
                                          ((lambda (_%L76969%_
                                                    _%L76971%_
                                                    _%L76972%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass/c)
                                                   (cons _%L76972%_
                                                         (cons _%L76971%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L76969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl7692676966%_
                                           _%hd7692576963%_
                                           _%hd7692276953%_)))
                                      (_%g7691376932%_ _%g7691476936%_))))
                              (_%g7691376932%_ _%g7691476936%_))))
                      (_%g7691376932%_ _%g7691476936%_)))))
          (_%g7691276989%_ _%$stx76909%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do/c|
      (lambda (_%stx76993%_)
        (let* ((_%g7699677067%_
                (lambda (_%g7699777063%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7699777063%_)))
               (_%g7699577433%_
                (lambda (_%g7699777071%_)
                  (if (gx#stx-pair? _%g7699777071%_)
                      (let ((_%e7700477074%_ (gx#syntax-e _%g7699777071%_)))
                        (let ((_%hd7700577078%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7700477074%_)))
                              (_%tl7700677081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7700477074%_))))
                          (if (gx#stx-pair? _%tl7700677081%_)
                              (let ((_%e7700777084%_
                                     (gx#syntax-e _%tl7700677081%_)))
                                (let ((_%hd7700877088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7700777084%_)))
                                      (_%tl7700977091%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7700777084%_))))
                                  (if (gx#stx-pair/null? _%hd7700877088%_)
                                      (let ((_g84353_
                                             (gx#syntax-split-splice
                                              _%hd7700877088%_
                                              '0)))
                                        (begin
                                          (let ((_g84354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84353_)
                                                       (##values-length
                                                        _g84353_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84354_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84354_)))
                                          (let ((_%target7701077094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84353_ 0)))
                                                (_%tl7701277097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84353_ 1))))
                                            (if (gx#stx-null? _%tl7701277097%_)
                                                (letrec ((_%loop7701377100%_
                                                          (lambda (_%hd7701177104%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step7701777107%_
                           _%init7701877109%_
                           _%var/c7701977111%_)
                    (if (gx#stx-pair? _%hd7701177104%_)
                        (let ((_%e7701477114%_ (gx#syntax-e _%hd7701177104%_)))
                          (let ((_%lp-hd7701577118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7701477114%_)))
                                (_%lp-tl7701677121%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7701477114%_))))
                            (if (gx#stx-pair? _%lp-hd7701577118%_)
                                (let ((_%e7704777124%_
                                       (gx#syntax-e _%lp-hd7701577118%_)))
                                  (let ((_%hd7704877128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7704777124%_)))
                                        (_%tl7704977131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7704777124%_))))
                                    (if (gx#stx-pair? _%tl7704977131%_)
                                        (let ((_%e7705077134%_
                                               (gx#syntax-e _%tl7704977131%_)))
                                          (let ((_%hd7705177138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7705077134%_)))
                                                (_%tl7705277141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7705077134%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl7705277141%_)
                                                (let ((_g84355_
                                                       (gx#syntax-split-splice
                                                        _%tl7705277141%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g84356_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g84355_)
                         (##values-length _g84355_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g84356_ 2)))
                  (error "Context expects 2 values" _g84356_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target7705377144%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g84355_
                                                              0)))
                                                          (_%tl7705577147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g84355_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl7705577147%_)
                                                          (letrec ((_%loop7705677150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd7705477154%_ _%step7706077157%_)
                              (if (gx#stx-pair? _%hd7705477154%_)
                                  (let ((_%e7705777160%_
                                         (gx#syntax-e _%hd7705477154%_)))
                                    (let ((_%lp-hd7705877164%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7705777160%_)))
                                          (_%lp-tl7705977167%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7705777160%_))))
                                      (_%loop7705677150%_
                                       _%lp-tl7705977167%_
                                       (cons _%lp-hd7705877164%_
                                             _%step7706077157%_))))
                                  (let ((_%step7706177170%_
                                         (reverse _%step7706077157%_)))
                                    (_%loop7701377100%_
                                     _%lp-tl7701677121%_
                                     (cons _%step7706177170%_
                                           _%step7701777107%_)
                                     (cons _%hd7705177138%_ _%init7701877109%_)
                                     (cons _%hd7704877128%_
                                           _%var/c7701977111%_)))))))
                    (_%loop7705677150%_ _%target7705377144%_ '()))
                  (_%g7699677067%_ _%g7699777071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7699677067%_
                                                 _%g7699777071%_))))
                                        (_%g7699677067%_ _%g7699777071%_))))
                                (_%g7699677067%_ _%g7699777071%_))))
                        (let ((_%step7702077174%_ (reverse _%step7701777107%_))
                              (_%init7702177177%_ (reverse _%init7701877109%_))
                              (_%var/c7702277179%_
                               (reverse _%var/c7701977111%_)))
                          (if (gx#stx-pair? _%tl7700977091%_)
                              (let ((_%e7702377182%_
                                     (gx#syntax-e _%tl7700977091%_)))
                                (let ((_%hd7702477186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7702377182%_)))
                                      (_%tl7702577189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7702377182%_))))
                                  (if (gx#stx-pair? _%hd7702477186%_)
                                      (let ((_%e7702677192%_
                                             (gx#syntax-e _%hd7702477186%_)))
                                        (let ((_%hd7702777196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7702677192%_)))
                                              (_%tl7702877199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7702677192%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl7702877199%_)
                                              (let ((_g84357_
                                                     (gx#syntax-split-splice
                                                      _%tl7702877199%_
                                                      '0)))
                                                (begin
                                                  (let ((_g84358_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g84357_)
                                                               (##values-length
                                                                _g84357_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g84358_ 2)))
                (error "Context expects 2 values" _g84358_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target7702977202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g84357_
                                                            0)))
                                                        (_%tl7703177205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g84357_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl7703177205%_)
                                                        (letrec ((_%loop7703277208%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd7703077212%_ _%fini7703677215%_)
                            (if (gx#stx-pair? _%hd7703077212%_)
                                (let ((_%e7703377218%_
                                       (gx#syntax-e _%hd7703077212%_)))
                                  (let ((_%lp-hd7703477222%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7703377218%_)))
                                        (_%lp-tl7703577225%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7703377218%_))))
                                    (_%loop7703277208%_
                                     _%lp-tl7703577225%_
                                     (cons _%lp-hd7703477222%_
                                           _%fini7703677215%_))))
                                (let ((_%fini7703777228%_
                                       (reverse _%fini7703677215%_)))
                                  (if (gx#stx-pair/null? _%tl7702577189%_)
                                      (let ((_g84359_
                                             (gx#syntax-split-splice
                                              _%tl7702577189%_
                                              '0)))
                                        (begin
                                          (let ((_g84360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g84359_)
                                                       (##values-length
                                                        _g84359_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g84360_ 2)))
                                                (error "Context expects 2 values"
                                                       _g84360_)))
                                          (let ((_%target7703877232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84359_ 0)))
                                                (_%tl7704077235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g84359_ 1))))
                                            (if (gx#stx-null? _%tl7704077235%_)
                                                (letrec ((_%loop7704177238%_
                                                          (lambda (_%hd7703977242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body7704577245%_)
                    (if (gx#stx-pair? _%hd7703977242%_)
                        (let ((_%e7704277248%_ (gx#syntax-e _%hd7703977242%_)))
                          (let ((_%lp-hd7704377252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7704277248%_)))
                                (_%lp-tl7704477255%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7704277248%_))))
                            (_%loop7704177238%_
                             _%lp-tl7704477255%_
                             (cons _%lp-hd7704377252%_ _%body7704577245%_))))
                        (let ((_%body7704677258%_
                               (reverse _%body7704577245%_)))
                          ((lambda (_%L77262%_
                                    _%L77264%_
                                    _%L77265%_
                                    _%L77266%_
                                    _%L77267%_
                                    _%L77268%_)
                             (let* ((_%g7730277319%_
                                     (lambda (_%g7730377315%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7730377315%_)))
                                    (_%g7730177418%_
                                     (lambda (_%g7730377323%_)
                                       (if (gx#stx-pair/null? _%g7730377323%_)
                                           (let ((_g84361_
                                                  (gx#syntax-split-splice
                                                   _%g7730377323%_
                                                   '0)))
                                             (begin
                                               (let ((_g84362_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g84361_)
                                                            (##values-length
                                                             _g84361_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g84362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g84362_)))
                                               (let ((_%target7730577326%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g84361_
                                                         0)))
                                                     (_%tl7730777329%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g84361_
                                                         1))))
                                                 (if (gx#stx-null?
                                                      _%tl7730777329%_)
                                                     (letrec ((_%loop7730877332%_
                                                               (lambda (_%hd7730677336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%var7731277339%_)
                         (if (gx#stx-pair? _%hd7730677336%_)
                             (let ((_%e7730977342%_
                                    (gx#syntax-e _%hd7730677336%_)))
                               (let ((_%lp-hd7731077346%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7730977342%_)))
                                     (_%lp-tl7731177349%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7730977342%_))))
                                 (_%loop7730877332%_
                                  _%lp-tl7731177349%_
                                  (cons _%lp-hd7731077346%_
                                        _%var7731277339%_))))
                             (let ((_%var7731377352%_
                                    (reverse _%var7731277339%_)))
                               ((lambda (_%L77356%_)
                                  (cons (gx#datum->syntax '#f 'let/c)
                                        (cons (gx#datum->syntax '#f '$loop)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _%L77267%_
                                                       _%L77268%_)
                                                      (foldr (lambda (_%g7738077384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g7738177387%_
                              _%g7738277389%_)
                       (cons (cons _%g7738177387%_ (cons _%g7738077384%_ '()))
                             _%g7738277389%_))
                     '()
                     _%L77267%_
                     _%L77268%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L77265%_
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'do-loop-result)
                                          (foldr (lambda (_%g7737877392%_
                                                          _%g7737977395%_)
                                                   (cons _%g7737877392%_
                                                         _%g7737977395%_))
                                                 '()
                                                 _%L77264%_))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (foldr (lambda (_%g7737177398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g7737277401%_)
                       (cons _%g7737177398%_ _%g7737277401%_))
                     (cons (cons (gx#datum->syntax '#f '$loop)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L77266%_
                                    _%L77356%_)
                                   (foldr (lambda (_%g7737377404%_
                                                   _%g7737477407%_
                                                   _%g7737577409%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'do-loop-step)
                                                        (cons _%g7737477407%_
                                                              (foldr (lambda (_%g7737677412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g7737777415%_)
                               (cons _%g7737677412%_ _%g7737777415%_))
                             '()
                             _%g7737377404%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g7737577409%_))
                                          '()
                                          _%L77266%_
                                          _%L77356%_)))
                           '())
                     _%L77262%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%var7731377352%_))))))
               (_%loop7730877332%_ _%target7730577326%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7730277319%_
                                                      _%g7730377323%_)))))
                                           (_%g7730277319%_
                                            _%g7730377323%_)))))
                               (_%g7730177418%_
                                (map (lambda (_%b77422%_)
                                       (if (gx#identifier? _%b77422%_)
                                           _%b77422%_
                                           (gx#stx-car _%b77422%_)))
                                     (foldr (lambda (_%g7742477427%_
                                                     _%g7742577430%_)
                                              (cons _%g7742477427%_
                                                    _%g7742577430%_))
                                            '()
                                            _%L77268%_)))))
                           _%body7704677258%_
                           _%fini7703777228%_
                           _%hd7702777196%_
                           _%step7702077174%_
                           _%init7702177177%_
                           _%var/c7702277179%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7704177238%_
                                                   _%target7703877232%_
                                                   '()))
                                                (_%g7699677067%_
                                                 _%g7699777071%_)))))
                                      (_%g7699677067%_ _%g7699777071%_)))))))
                  (_%loop7703277208%_ _%target7702977202%_ '()))
                (_%g7699677067%_ _%g7699777071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7699677067%_
                                               _%g7699777071%_))))
                                      (_%g7699677067%_ _%g7699777071%_))))
                              (_%g7699677067%_ _%g7699777071%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7701377100%_
                                                   _%target7701077094%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g7699677067%_
                                                 _%g7699777071%_)))))
                                      (_%g7699677067%_ _%g7699777071%_))))
                              (_%g7699677067%_ _%g7699777071%_))))
                      (_%g7699677067%_ _%g7699777071%_)))))
          (_%g7699577433%_ _%stx76993%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-loop-result|
      (lambda (_%$stx77442%_)
        (let* ((_%__stx8370983710%_ _%$stx77442%_)
               (_%g7744877482%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8370983710%_))))
          (let ((_%__kont8371283713%_ (lambda () '#!void))
                (_%__kont8371483715%_ (lambda (_%L77594%_) _%L77594%_))
                (_%__kont8371683717%_
                 (lambda (_%L77539%_ _%L77541%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (cons _%L77541%_
                               (foldr (lambda (_%g7755877561%_ _%g7755977564%_)
                                        (cons _%g7755877561%_ _%g7755977564%_))
                                      '()
                                      _%L77539%_))))))
            (let ((_%__match8376283763%_
                   (lambda (_%e7746277489%_
                            _%hd7746377493%_
                            _%tl7746477496%_
                            _%e7746577499%_
                            _%hd7746677503%_
                            _%tl7746777506%_
                            _%__splice8371883719%_
                            _%target7746877509%_
                            _%tl7747077512%_)
                     (letrec ((_%loop7747177515%_
                               (lambda (_%hd7746977519%_ _%rest7747577522%_)
                                 (if (gx#stx-pair? _%hd7746977519%_)
                                     (let ((_%e7747277525%_
                                            (gx#syntax-e _%hd7746977519%_)))
                                       (let ((_%lp-tl7747477532%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7747277525%_)))
                                             (_%lp-hd7747377529%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7747277525%_))))
                                         (_%loop7747177515%_
                                          _%lp-tl7747477532%_
                                          (cons _%lp-hd7747377529%_
                                                _%rest7747577522%_))))
                                     (let ((_%rest7747677535%_
                                            (reverse _%rest7747577522%_)))
                                       (_%__kont8371683717%_
                                        _%rest7747677535%_
                                        _%hd7746677503%_))))))
                       (_%loop7747177515%_ _%target7746877509%_ '())))))
              (if (gx#stx-pair? _%__stx8370983710%_)
                  (let ((_%e7745077614%_ (gx#syntax-e _%__stx8370983710%_)))
                    (let ((_%tl7745277621%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7745077614%_)))
                          (_%hd7745177618%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7745077614%_))))
                      (if (gx#stx-null? _%tl7745277621%_)
                          (_%__kont8371283713%_)
                          (if (gx#stx-pair? _%tl7745277621%_)
                              (let ((_%e7745777584%_
                                     (gx#syntax-e _%tl7745277621%_)))
                                (let ((_%tl7745977591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7745777584%_)))
                                      (_%hd7745877588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7745777584%_))))
                                  (if (gx#stx-null? _%tl7745977591%_)
                                      (_%__kont8371483715%_ _%hd7745877588%_)
                                      (if (gx#stx-pair/null? _%tl7745977591%_)
                                          (let ((_%__splice8371883719%_
                                                 (gx#syntax-split-splice
                                                  _%tl7745977591%_
                                                  '0)))
                                            (let ((_%tl7747077512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8371883719%_
                                                      '1)))
                                                  (_%target7746877509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8371883719%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl7747077512%_)
                                                  (_%__match8376283763%_
                                                   _%e7745077614%_
                                                   _%hd7745177618%_
                                                   _%tl7745277621%_
                                                   _%e7745777584%_
                                                   _%hd7745877588%_
                                                   _%tl7745977591%_
                                                   _%__splice8371883719%_
                                                   _%target7746877509%_
                                                   _%tl7747077512%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7744877482%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7744877482%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g7744877482%_))))))
                  (let () (declare (not safe)) (_%g7744877482%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-loop-step|
      (lambda (_%$stx77633%_)
        (let* ((_%__stx8376583766%_ _%$stx77633%_)
               (_%g7763977685%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8376583766%_))))
          (let ((_%__kont8376883769%_ (lambda (_%L77865%_) _%L77865%_))
                (_%__kont8377083771%_
                 (lambda (_%L77821%_ _%L77823%_) _%L77821%_))
                (_%__kont8377283773%_
                 (lambda (_%L77752%_ _%L77754%_ _%L77755%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (cons _%L77754%_
                               (foldr (lambda (_%g7777577778%_ _%g7777677781%_)
                                        (cons _%g7777577778%_ _%g7777677781%_))
                                      '()
                                      _%L77752%_))))))
            (let ((_%__match8383683837%_
                   (lambda (_%e7766277692%_
                            _%hd7766377696%_
                            _%tl7766477699%_
                            _%e7766577702%_
                            _%hd7766677706%_
                            _%tl7766777709%_
                            _%e7766877712%_
                            _%hd7766977716%_
                            _%tl7767077719%_
                            _%__splice8377483775%_
                            _%target7767177722%_
                            _%tl7767377725%_)
                     (letrec ((_%loop7767477728%_
                               (lambda (_%hd7767277732%_ _%rest7767877735%_)
                                 (if (gx#stx-pair? _%hd7767277732%_)
                                     (let ((_%e7767577738%_
                                            (gx#syntax-e _%hd7767277732%_)))
                                       (let ((_%lp-tl7767777745%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7767577738%_)))
                                             (_%lp-hd7767677742%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7767577738%_))))
                                         (_%loop7767477728%_
                                          _%lp-tl7767777745%_
                                          (cons _%lp-hd7767677742%_
                                                _%rest7767877735%_))))
                                     (let ((_%rest7767977748%_
                                            (reverse _%rest7767877735%_)))
                                       (_%__kont8377283773%_
                                        _%rest7767977748%_
                                        _%hd7766977716%_
                                        _%hd7766677706%_))))))
                       (_%loop7767477728%_ _%target7767177722%_ '())))))
              (if (gx#stx-pair? _%__stx8376583766%_)
                  (let ((_%e7764277845%_ (gx#syntax-e _%__stx8376583766%_)))
                    (let ((_%tl7764477852%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7764277845%_)))
                          (_%hd7764377849%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7764277845%_))))
                      (if (gx#stx-pair? _%tl7764477852%_)
                          (let ((_%e7764577855%_
                                 (gx#syntax-e _%tl7764477852%_)))
                            (let ((_%tl7764777862%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7764577855%_)))
                                  (_%hd7764677859%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7764577855%_))))
                              (if (gx#stx-null? _%tl7764777862%_)
                                  (_%__kont8376883769%_ _%hd7764677859%_)
                                  (if (gx#stx-pair? _%tl7764777862%_)
                                      (let ((_%e7765677811%_
                                             (gx#syntax-e _%tl7764777862%_)))
                                        (let ((_%tl7765877818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7765677811%_)))
                                              (_%hd7765777815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7765677811%_))))
                                          (if (gx#stx-null? _%tl7765877818%_)
                                              (_%__kont8377083771%_
                                               _%hd7765777815%_
                                               _%hd7764677859%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl7765877818%_)
                                                  (let ((_%__splice8377483775%_
                                                         (gx#syntax-split-splice
                                                          _%tl7765877818%_
                                                          '0)))
                                                    (let ((_%tl7767377725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8377483775%_
                                                              '1)))
                                                          (_%target7767177722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8377483775%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl7767377725%_)
                                                          (_%__match8383683837%_
                                                           _%e7764277845%_
                                                           _%hd7764377849%_
                                                           _%tl7764477852%_
                                                           _%e7764577855%_
                                                           _%hd7764677859%_
                                                           _%tl7764777862%_
                                                           _%e7765677811%_
                                                           _%hd7765777815%_
                                                           _%tl7765877818%_
                                                           _%__splice8377483775%_
                                                           _%target7767177722%_
                                                           _%tl7767377725%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g7763977685%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7763977685%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7763977685%_))))))
                          (let () (declare (not safe)) (_%g7763977685%_)))))
                  (let () (declare (not safe)) (_%g7763977685%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-while/c|
      (lambda (_%$stx77883%_)
        (let* ((_%g7788777910%_
                (lambda (_%g7788877906%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7788877906%_)))
               (_%g7788677981%_
                (lambda (_%g7788877914%_)
                  (if (gx#stx-pair? _%g7788877914%_)
                      (let ((_%e7789377917%_ (gx#syntax-e _%g7788877914%_)))
                        (let ((_%hd7789477921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7789377917%_)))
                              (_%tl7789577924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7789377917%_))))
                          (if (gx#stx-pair? _%tl7789577924%_)
                              (let ((_%e7789677927%_
                                     (gx#syntax-e _%tl7789577924%_)))
                                (let ((_%hd7789777931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7789677927%_)))
                                      (_%tl7789877934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7789677927%_))))
                                  (if (gx#stx-pair? _%tl7789877934%_)
                                      (let ((_%e7789977937%_
                                             (gx#syntax-e _%tl7789877934%_)))
                                        (let ((_%hd7790077941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7789977937%_)))
                                              (_%tl7790177944%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7789977937%_))))
                                          (if (gx#stx-pair? _%hd7790077941%_)
                                              (let ((_%e7790277947%_
                                                     (gx#syntax-e
                                                      _%hd7790077941%_)))
                                                (let ((_%hd7790377951%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e7790277947%_)))
                                                      (_%tl7790477954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e7790277947%_))))
                                                  ((lambda (_%L77957%_
                                                            _%L77959%_
                                                            _%L77960%_
                                                            _%L77961%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do/c)
                                                           (cons _%L77961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L77960%_ '()))
                                     _%L77959%_)
                               _%L77957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl7790177944%_
                                                   _%tl7790477954%_
                                                   _%hd7790377951%_
                                                   _%hd7789777931%_)))
                                              (_%g7788777910%_
                                               _%g7788877914%_))))
                                      (_%g7788777910%_ _%g7788877914%_))))
                              (_%g7788777910%_ _%g7788877914%_))))
                      (_%g7788777910%_ _%g7788877914%_)))))
          (_%g7788677981%_ _%$stx77883%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmutable*|
      (lambda (_%stx77985%_)
        (let* ((_%__stx8383983840%_ _%stx77985%_)
               (_%g7798978023%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8383983840%_))))
          (let ((_%__kont8384283843%_
                 (lambda (_%L78125%_ _%L78127%_ _%L78128%_ _%L78129%_)
                   (let* ((_%g7815678171%_
                           (lambda (_%g7815778167%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7815778167%_)))
                          (_%g7815578216%_
                           (lambda (_%g7815778175%_)
                             (if (gx#stx-pair? _%g7815778175%_)
                                 (let ((_%e7816078178%_
                                        (gx#syntax-e _%g7815778175%_)))
                                   (let ((_%hd7816178182%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e7816078178%_)))
                                         (_%tl7816278185%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e7816078178%_))))
                                     (if (gx#stx-pair? _%tl7816278185%_)
                                         (let ((_%e7816378188%_
                                                (gx#syntax-e
                                                 _%tl7816278185%_)))
                                           (let ((_%hd7816478192%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e7816378188%_)))
                                                 (_%tl7816578195%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e7816378188%_))))
                                             (if (gx#stx-null?
                                                  _%tl7816578195%_)
                                                 ((lambda (_%L78198%_
                                                           _%L78200%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'def)
                              (cons _%L78200%_ (cons _%L78128%_ '())))
                        (cons (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _%L78129%_ '())
                                          (cons _%L78200%_ '())))
                              (cons (cons (gx#datum->syntax '#f 'def/c)
                                          (cons (cons _%L78198%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'new-value)
                          (cons _%L78127%_ _%L78125%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'set!)
                                                            (cons _%L78200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'new-value) '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd7816478192%_
                                                  _%hd7816178182%_)
                                                 (_%g7815678171%_
                                                  _%g7815778175%_))))
                                         (_%g7815678171%_ _%g7815778175%_))))
                                 (_%g7815678171%_ _%g7815778175%_)))))
                     (_%g7815578216%_
                      (list (gx#stx-identifier _%L78129%_ '"__" _%L78129%_)
                            (gx#stx-identifier
                             _%L78129%_
                             _%L78129%_
                             '"-set!"))))))
                (_%__kont8384483845%_
                 (lambda (_%L78060%_ _%L78062%_)
                   (cons (gx#datum->syntax '#f 'defmutable*)
                         (cons _%L78062%_
                               (cons _%L78060%_
                                     (cons (gx#datum->syntax '#f ':)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 '()))))))))
            (let ((_%__match8387083871%_
                   (lambda (_%e7799578085%_
                            _%hd7799678089%_
                            _%tl7799778092%_
                            _%e7799878095%_
                            _%hd7799978099%_
                            _%tl7800078102%_
                            _%e7800178105%_
                            _%hd7800278109%_
                            _%tl7800378112%_
                            _%e7800478115%_
                            _%hd7800578119%_
                            _%tl7800678122%_)
                     (let ((_%L78125%_ _%tl7800678122%_)
                           (_%L78127%_ _%hd7800578119%_)
                           (_%L78128%_ _%hd7800278109%_)
                           (_%L78129%_ _%hd7799978099%_))
                       (if (and (gx#identifier? _%L78129%_)
                                (gx#identifier? _%L78127%_)
                                (or (gx#free-identifier=?
                                     _%L78127%_
                                     (gx#datum->syntax '#f ':))
                                    (gx#free-identifier=?
                                     _%L78127%_
                                     (gx#datum->syntax '#f ':?))
                                    (gx#free-identifier=?
                                     _%L78127%_
                                     (gx#datum->syntax '#f ':~))))
                           (_%__kont8384283843%_
                            _%L78125%_
                            _%L78127%_
                            _%L78128%_
                            _%L78129%_)
                           (let () (declare (not safe)) (_%g7798978023%_)))))))
              (if (gx#stx-pair? _%__stx8383983840%_)
                  (let ((_%e7799578085%_ (gx#syntax-e _%__stx8383983840%_)))
                    (let ((_%tl7799778092%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7799578085%_)))
                          (_%hd7799678089%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7799578085%_))))
                      (if (gx#stx-pair? _%tl7799778092%_)
                          (let ((_%e7799878095%_
                                 (gx#syntax-e _%tl7799778092%_)))
                            (let ((_%tl7800078102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7799878095%_)))
                                  (_%hd7799978099%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7799878095%_))))
                              (if (gx#stx-pair? _%tl7800078102%_)
                                  (let ((_%e7800178105%_
                                         (gx#syntax-e _%tl7800078102%_)))
                                    (let ((_%tl7800378112%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7800178105%_)))
                                          (_%hd7800278109%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7800178105%_))))
                                      (if (gx#stx-pair? _%tl7800378112%_)
                                          (let ((_%e7800478115%_
                                                 (gx#syntax-e
                                                  _%tl7800378112%_)))
                                            (let ((_%tl7800678122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7800478115%_)))
                                                  (_%hd7800578119%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7800478115%_))))
                                              (_%__match8387083871%_
                                               _%e7799578085%_
                                               _%hd7799678089%_
                                               _%tl7799778092%_
                                               _%e7799878095%_
                                               _%hd7799978099%_
                                               _%tl7800078102%_
                                               _%e7800178105%_
                                               _%hd7800278109%_
                                               _%tl7800378112%_
                                               _%e7800478115%_
                                               _%hd7800578119%_
                                               _%tl7800678122%_)))
                                          (if (gx#stx-null? _%tl7800378112%_)
                                              (_%__kont8384483845%_
                                               _%hd7800278109%_
                                               _%hd7799978099%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7798978023%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7798978023%_)))))
                          (let () (declare (not safe)) (_%g7798978023%_)))))
                  (let () (declare (not safe)) (_%g7798978023%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmutable|
      (lambda (_%stx78224%_)
        (let* ((_%__stx8389383894%_ _%stx78224%_)
               (_%g7822878262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8389383894%_))))
          (let ((_%__kont8389683897%_
                 (lambda (_%L78364%_ _%L78366%_ _%L78367%_ _%L78368%_)
                   (let* ((_%g7839578410%_
                           (lambda (_%g7839678406%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7839678406%_)))
                          (_%g7839478455%_
                           (lambda (_%g7839678414%_)
                             (if (gx#stx-pair? _%g7839678414%_)
                                 (let ((_%e7839978417%_
                                        (gx#syntax-e _%g7839678414%_)))
                                   (let ((_%hd7840078421%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e7839978417%_)))
                                         (_%tl7840178424%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e7839978417%_))))
                                     (if (gx#stx-pair? _%tl7840178424%_)
                                         (let ((_%e7840278427%_
                                                (gx#syntax-e
                                                 _%tl7840178424%_)))
                                           (let ((_%hd7840378431%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e7840278427%_)))
                                                 (_%tl7840478434%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e7840278427%_))))
                                             (if (gx#stx-null?
                                                  _%tl7840478434%_)
                                                 ((lambda (_%L78437%_
                                                           _%L78439%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'def)
                              (cons _%L78439%_ (cons _%L78367%_ '())))
                        (cons (cons (gx#datum->syntax '#f 'def/c)
                                    (cons (cons _%L78437%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'new-value)
                                                            (cons _%L78366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L78364%_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'set!)
                                                      (cons _%L78439%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'new-value)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'defsyntax)
                                          (cons _%L78368%_
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
                                      (cons (cons _%L78437%_
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
                                            (cons (cons _%L78437%_
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
                (cons _%L78439%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'the-var)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'arg)
                            (cons (gx#datum->syntax '#f '...) '())))
                (cons (cons _%L78439%_
                            (cons (gx#datum->syntax '#f 'arg)
                                  (cons (gx#datum->syntax '#f '...) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd7840378431%_
                                                  _%hd7840078421%_)
                                                 (_%g7839578410%_
                                                  _%g7839678414%_))))
                                         (_%g7839578410%_ _%g7839678414%_))))
                                 (_%g7839578410%_ _%g7839678414%_)))))
                     (_%g7839478455%_
                      (list (gx#stx-identifier _%L78368%_ '"__" _%L78368%_)
                            (gx#stx-identifier
                             _%L78368%_
                             _%L78368%_
                             '"-set!"))))))
                (_%__kont8389883899%_
                 (lambda (_%L78299%_ _%L78301%_)
                   (cons (gx#datum->syntax '#f 'defmutable)
                         (cons _%L78301%_
                               (cons _%L78299%_
                                     (cons (gx#datum->syntax '#f ':)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 '()))))))))
            (let ((_%__match8392483925%_
                   (lambda (_%e7823478324%_
                            _%hd7823578328%_
                            _%tl7823678331%_
                            _%e7823778334%_
                            _%hd7823878338%_
                            _%tl7823978341%_
                            _%e7824078344%_
                            _%hd7824178348%_
                            _%tl7824278351%_
                            _%e7824378354%_
                            _%hd7824478358%_
                            _%tl7824578361%_)
                     (let ((_%L78364%_ _%tl7824578361%_)
                           (_%L78366%_ _%hd7824478358%_)
                           (_%L78367%_ _%hd7824178348%_)
                           (_%L78368%_ _%hd7823878338%_))
                       (if (and (gx#identifier? _%L78368%_)
                                (gx#identifier? _%L78366%_)
                                (or (gx#free-identifier=?
                                     _%L78366%_
                                     (gx#datum->syntax '#f ':))
                                    (gx#free-identifier=?
                                     _%L78366%_
                                     (gx#datum->syntax '#f ':?))
                                    (gx#free-identifier=?
                                     _%L78366%_
                                     (gx#datum->syntax '#f ':~))))
                           (_%__kont8389683897%_
                            _%L78364%_
                            _%L78366%_
                            _%L78367%_
                            _%L78368%_)
                           (let () (declare (not safe)) (_%g7822878262%_)))))))
              (if (gx#stx-pair? _%__stx8389383894%_)
                  (let ((_%e7823478324%_ (gx#syntax-e _%__stx8389383894%_)))
                    (let ((_%tl7823678331%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7823478324%_)))
                          (_%hd7823578328%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7823478324%_))))
                      (if (gx#stx-pair? _%tl7823678331%_)
                          (let ((_%e7823778334%_
                                 (gx#syntax-e _%tl7823678331%_)))
                            (let ((_%tl7823978341%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7823778334%_)))
                                  (_%hd7823878338%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7823778334%_))))
                              (if (gx#stx-pair? _%tl7823978341%_)
                                  (let ((_%e7824078344%_
                                         (gx#syntax-e _%tl7823978341%_)))
                                    (let ((_%tl7824278351%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7824078344%_)))
                                          (_%hd7824178348%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7824078344%_))))
                                      (if (gx#stx-pair? _%tl7824278351%_)
                                          (let ((_%e7824378354%_
                                                 (gx#syntax-e
                                                  _%tl7824278351%_)))
                                            (let ((_%tl7824578361%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7824378354%_)))
                                                  (_%hd7824478358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7824378354%_))))
                                              (_%__match8392483925%_
                                               _%e7823478324%_
                                               _%hd7823578328%_
                                               _%tl7823678331%_
                                               _%e7823778334%_
                                               _%hd7823878338%_
                                               _%tl7823978341%_
                                               _%e7824078344%_
                                               _%hd7824178348%_
                                               _%tl7824278351%_
                                               _%e7824378354%_
                                               _%hd7824478358%_
                                               _%tl7824578361%_)))
                                          (if (gx#stx-null? _%tl7824278351%_)
                                              (_%__kont8389883899%_
                                               _%hd7824178348%_
                                               _%hd7823878338%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7822878262%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7822878262%_)))))
                          (let () (declare (not safe)) (_%g7822878262%_)))))
                  (let () (declare (not safe)) (_%g7822878262%_))))))))))
