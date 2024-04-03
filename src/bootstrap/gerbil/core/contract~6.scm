(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g80200_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80201_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80202_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80203_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80204_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80210_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80211_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80212_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80215_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80216_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80217_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80218_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80221_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46625%_)
        (let* ((_%__stx7501375014%_ _%stx46625%_)
               (_%g4663446837%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7501375014%_))))
          (let ((_%__kont7501675017%_
                 (lambda (_%L47746%_
                          _%L47748%_
                          _%L47749%_
                          _%L47750%_
                          _%L47751%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47751%_ (cons _%L47750%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47751%_
                                                       (cons _%L47749%_
                                                             (cons _%L47748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4779447797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4779547800%_)
                  (cons _%g4779447797%_ _%g4779547800%_))
                '()
                _%L47746%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7502075021%_
                 (lambda (_%L47604%_
                          _%L47606%_
                          _%L47607%_
                          _%L47608%_
                          _%L47609%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47609%_ (cons _%L47608%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47609%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f ':-)
                                       (cons _%L47606%_ '())))
                           (foldr (lambda (_%g4764047643%_ _%g4764147646%_)
                                    (cons _%g4764047643%_ _%g4764147646%_))
                                  '()
                                  _%L47604%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7502475025%_
                 (lambda (_%L47376%_ _%L47378%_ _%L47379%_ _%L47380%_)
                   (let ((_%meta47417%_
                          (gx#syntax-local-value _%L47378%_ false)))
                     (if (let () (declare (not safe)) (not _%meta47417%_))
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unknown type"
                            _%stx46625%_
                            _%L47378%_))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta47417%_))
                             (let ()
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%L47380%_
                                                 (cons _%L47379%_
                                                       (cons _%L47378%_ '())))
                                           (foldr (lambda (_%g4742347426%_
                                                           _%g4742447429%_)
                                                    (cons _%g4742347426%_
                                                          _%g4742447429%_))
                                                  '()
                                                  _%L47376%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    _%meta47417%_))
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'with-class)
                                         (cons (cons _%L47380%_
                                                     (cons _%L47379%_
                                                           (cons _%L47378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (foldr (lambda (_%g4743347436%_
                                                               _%g4743447439%_)
                                                        (cons _%g4743347436%_
                                                              _%g4743447439%_))
                                                      '()
                                                      _%L47376%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                        _%meta47417%_))
                                     (let ()
                                       (let* ((_%g4744447452%_
                                               (lambda (_%g4744547448%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g4744547448%_)))
                                              (_%g4744347481%_
                                               (lambda (_%g4744547456%_)
                                                 ((lambda (_%L47459%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'using)
                                                            (cons (cons _%L47380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L47379%_ (cons _%L47459%_ '())))
                          (foldr (lambda (_%g4747247475%_ _%g4747347478%_)
                                   (cons _%g4747247475%_ _%g4747347478%_))
                                 '()
                                 _%L47376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g4744547456%_))))
                                         (_%g4744347481%_
                                          (let ((__obj80029 _%meta47417%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80029
                                                   'gerbil/core/contract~TypeReference#type-reference::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80029
                                                   '1
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                 __obj80029
                                                 'identifier))))))
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad type; must be an interface, struct, or class with complete type information"
                                        _%stx46625%_
                                        _%L47378%_
                                        _%meta47417%_)))))))))
                (_%__kont7502875029%_
                 (lambda (_%L47254%_ _%L47256%_ _%L47257%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47257%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47256%_ '())))
                               (foldr (lambda (_%g4728047283%_ _%g4728147286%_)
                                        (cons _%g4728047283%_ _%g4728147286%_))
                                      '()
                                      _%L47254%_)))))
                (_%__kont7503275033%_
                 (lambda (_%L47126%_ _%L47128%_ _%L47129%_ _%L47130%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L47130%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47129%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47130%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':-)
                                                             (cons _%L47128%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4715847161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4715947164%_)
                  (cons _%g4715847161%_ _%g4715947164%_))
                '()
                _%L47126%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7503675037%_
                 (lambda (_%L46988%_ _%L46990%_ _%L46991%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons _%L46991%_
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46990%_
                                                 (foldr (lambda (_%g4701047013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4701147016%_)
                  (cons _%g4701047013%_ _%g4701147016%_))
                '()
                _%L46988%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7504075041%_
                 (lambda (_%L46894%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4691246915%_ _%g4691346918%_)
                                        (cons _%g4691246915%_ _%g4691346918%_))
                                      '()
                                      _%L46894%_))))))
            (let* ((_%__match7534875349%_
                    (lambda (_%e4681946844%_
                             _%hd4681846848%_
                             _%tl4681746851%_
                             _%e4682246854%_
                             _%hd4682146858%_
                             _%tl4682046861%_
                             _%__splice7504275043%_
                             _%target4682346864%_
                             _%tl4682546867%_)
                      (letrec ((_%loop4682646870%_
                                (lambda (_%hd4682446874%_ _%body4683046877%_)
                                  (if (gx#stx-pair? _%hd4682446874%_)
                                      (let ((_%e4682746880%_
                                             (gx#syntax-e _%hd4682446874%_)))
                                        (let ((_%lp-tl4682946887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4682746880%_)))
                                              (_%lp-hd4682846884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4682746880%_))))
                                          (_%loop4682646870%_
                                           _%lp-tl4682946887%_
                                           (cons _%lp-hd4682846884%_
                                                 _%body4683046877%_))))
                                      (let ((_%body4683146890%_
                                             (reverse _%body4683046877%_)))
                                        (_%__kont7504075041%_
                                         _%body4683146890%_))))))
                        (_%loop4682646870%_ _%target4682346864%_ '()))))
                   (_%__match7532675327%_
                    (lambda (_%e4680046928%_
                             _%hd4679946932%_
                             _%tl4679846935%_
                             _%e4680346938%_
                             _%hd4680246942%_
                             _%tl4680146945%_
                             _%e4680646948%_
                             _%hd4680546952%_
                             _%tl4680446955%_
                             _%__splice7503875039%_
                             _%target4680746958%_
                             _%tl4680946961%_)
                      (letrec ((_%loop4681046964%_
                                (lambda (_%hd4680846968%_ _%body4681446971%_)
                                  (if (gx#stx-pair? _%hd4680846968%_)
                                      (let ((_%e4681146974%_
                                             (gx#syntax-e _%hd4680846968%_)))
                                        (let ((_%lp-tl4681346981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681146974%_)))
                                              (_%lp-hd4681246978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681146974%_))))
                                          (_%loop4681046964%_
                                           _%lp-tl4681346981%_
                                           (cons _%lp-hd4681246978%_
                                                 _%body4681446971%_))))
                                      (let ((_%body4681546984%_
                                             (reverse _%body4681446971%_)))
                                        (_%__kont7503675037%_
                                         _%body4681546984%_
                                         _%tl4680446955%_
                                         _%hd4680546952%_))))))
                        (_%loop4681046964%_ _%target4680746958%_ '()))))
                   (_%__match7530075301%_
                    (lambda (_%e4676747026%_
                             _%hd4676647030%_
                             _%tl4676547033%_
                             _%e4677047036%_
                             _%hd4676947040%_
                             _%tl4676847043%_
                             _%e4677347046%_
                             _%hd4677247050%_
                             _%tl4677147053%_
                             _%e4677647056%_
                             _%hd4677547060%_
                             _%tl4677447063%_
                             _%e4677947066%_
                             _%hd4677847070%_
                             _%tl4677747073%_
                             _%e4678247076%_
                             _%hd4678147080%_
                             _%tl4678047083%_
                             _%e4678547086%_
                             _%hd4678447090%_
                             _%tl4678347093%_
                             _%__splice7503475035%_
                             _%target4678647096%_
                             _%tl4678847099%_)
                      (letrec ((_%loop4678947102%_
                                (lambda (_%hd4678747106%_ _%body4679347109%_)
                                  (if (gx#stx-pair? _%hd4678747106%_)
                                      (let ((_%e4679047112%_
                                             (gx#syntax-e _%hd4678747106%_)))
                                        (let ((_%lp-tl4679247119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4679047112%_)))
                                              (_%lp-hd4679147116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4679047112%_))))
                                          (_%loop4678947102%_
                                           _%lp-tl4679247119%_
                                           (cons _%lp-hd4679147116%_
                                                 _%body4679347109%_))))
                                      (let ((_%body4679447122%_
                                             (reverse _%body4679347109%_)))
                                        (let ((_%L47126%_ _%body4679447122%_)
                                              (_%L47128%_ _%hd4678447090%_)
                                              (_%L47129%_ _%hd4677847070%_)
                                              (_%L47130%_ _%hd4677247050%_))
                                          (if (and (gx#identifier? _%L47130%_)
                                                   (gx#identifier? _%L47128%_))
                                              (_%__kont7503275033%_
                                               _%L47126%_
                                               _%L47128%_
                                               _%L47129%_
                                               _%L47130%_)
                                              (_%__match7532675327%_
                                               _%e4676747026%_
                                               _%hd4676647030%_
                                               _%tl4676547033%_
                                               _%e4677047036%_
                                               _%hd4676947040%_
                                               _%tl4676847043%_
                                               _%e4677347046%_
                                               _%hd4677247050%_
                                               _%tl4677147053%_
                                               _%__splice7503475035%_
                                               _%target4678647096%_
                                               _%tl4678847099%_))))))))
                        (_%loop4678947102%_ _%target4678647096%_ '()))))
                   (_%__match7524075241%_
                    (lambda (_%e4673947174%_
                             _%hd4673847178%_
                             _%tl4673747181%_
                             _%e4674247184%_
                             _%hd4674147188%_
                             _%tl4674047191%_
                             _%e4674547194%_
                             _%hd4674447198%_
                             _%tl4674347201%_
                             _%e4674847204%_
                             _%hd4674747208%_
                             _%tl4674647211%_
                             _%e4675147214%_
                             _%hd4675047218%_
                             _%tl4674947221%_
                             _%__splice7503075031%_
                             _%target4675247224%_
                             _%tl4675447227%_)
                      (letrec ((_%loop4675547230%_
                                (lambda (_%hd4675347234%_ _%body4675947237%_)
                                  (if (gx#stx-pair? _%hd4675347234%_)
                                      (let ((_%e4675647240%_
                                             (gx#syntax-e _%hd4675347234%_)))
                                        (let ((_%lp-tl4675847247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4675647240%_)))
                                              (_%lp-hd4675747244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4675647240%_))))
                                          (_%loop4675547230%_
                                           _%lp-tl4675847247%_
                                           (cons _%lp-hd4675747244%_
                                                 _%body4675947237%_))))
                                      (let ((_%body4676047250%_
                                             (reverse _%body4675947237%_)))
                                        (let ((_%L47254%_ _%body4676047250%_)
                                              (_%L47256%_ _%hd4675047218%_)
                                              (_%L47257%_ _%hd4674447198%_))
                                          (if (gx#identifier? _%L47257%_)
                                              (_%__kont7502875029%_
                                               _%L47254%_
                                               _%L47256%_
                                               _%L47257%_)
                                              (_%__match7532675327%_
                                               _%e4673947174%_
                                               _%hd4673847178%_
                                               _%tl4673747181%_
                                               _%e4674247184%_
                                               _%hd4674147188%_
                                               _%tl4674047191%_
                                               _%e4674547194%_
                                               _%hd4674447198%_
                                               _%tl4674347201%_
                                               _%__splice7503075031%_
                                               _%target4675247224%_
                                               _%tl4675447227%_))))))))
                        (_%loop4675547230%_ _%target4675247224%_ '()))))
                   (_%__match7522075221%_
                    (lambda (_%e4673947174%_
                             _%hd4673847178%_
                             _%tl4673747181%_
                             _%e4674247184%_
                             _%hd4674147188%_
                             _%tl4674047191%_
                             _%e4674547194%_
                             _%hd4674447198%_
                             _%tl4674347201%_
                             _%e4674847204%_
                             _%hd4674747208%_
                             _%tl4674647211%_)
                      (if (gx#identifier? _%hd4674747208%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80200_|
                               _%hd4674747208%_)
                              (if (gx#stx-pair? _%tl4674647211%_)
                                  (let ((_%e4675147214%_
                                         (gx#syntax-e _%tl4674647211%_)))
                                    (let ((_%tl4674947221%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4675147214%_)))
                                          (_%hd4675047218%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4675147214%_))))
                                      (if (gx#stx-null? _%tl4674947221%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4674047191%_)
                                              (let ((_%__splice7503075031%_
                                                     (gx#syntax-split-splice
                                                      _%tl4674047191%_
                                                      '0)))
                                                (let ((_%tl4675447227%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503075031%_
                                                          '1)))
                                                      (_%target4675247224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503075031%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4675447227%_)
                                                      (_%__match7524075241%_
                                                       _%e4673947174%_
                                                       _%hd4673847178%_
                                                       _%tl4673747181%_
                                                       _%e4674247184%_
                                                       _%hd4674147188%_
                                                       _%tl4674047191%_
                                                       _%e4674547194%_
                                                       _%hd4674447198%_
                                                       _%tl4674347201%_
                                                       _%e4674847204%_
                                                       _%hd4674747208%_
                                                       _%tl4674647211%_
                                                       _%e4675147214%_
                                                       _%hd4675047218%_
                                                       _%tl4674947221%_
                                                       _%__splice7503075031%_
                                                       _%target4675247224%_
                                                       _%tl4675447227%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446837%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))
                                          (if (gx#stx-pair? _%tl4674947221%_)
                                              (let ((_%e4678247076%_
                                                     (gx#syntax-e
                                                      _%tl4674947221%_)))
                                                (let ((_%tl4678047083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4678247076%_)))
                                                      (_%hd4678147080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4678247076%_))))
                                                  (if (gx#identifier?
                                                       _%hd4678147080%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80201_|
                                                           _%hd4678147080%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4678047083%_)
                                                              (let ((_%e4678547086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4678047083%_)))
                        (let ((_%tl4678347093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4678547086%_)))
                              (_%hd4678447090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4678547086%_))))
                          (if (gx#stx-null? _%tl4678347093%_)
                              (if (gx#stx-pair/null? _%tl4674047191%_)
                                  (let ((_%__splice7503475035%_
                                         (gx#syntax-split-splice
                                          _%tl4674047191%_
                                          '0)))
                                    (let ((_%tl4678847099%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503475035%_
                                              '1)))
                                          (_%target4678647096%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503475035%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678847099%_)
                                          (_%__match7530075301%_
                                           _%e4673947174%_
                                           _%hd4673847178%_
                                           _%tl4673747181%_
                                           _%e4674247184%_
                                           _%hd4674147188%_
                                           _%tl4674047191%_
                                           _%e4674547194%_
                                           _%hd4674447198%_
                                           _%tl4674347201%_
                                           _%e4674847204%_
                                           _%hd4674747208%_
                                           _%tl4674647211%_
                                           _%e4675147214%_
                                           _%hd4675047218%_
                                           _%tl4674947221%_
                                           _%e4678247076%_
                                           _%hd4678147080%_
                                           _%tl4678047083%_
                                           _%e4678547086%_
                                           _%hd4678447090%_
                                           _%tl4678347093%_
                                           _%__splice7503475035%_
                                           _%target4678647096%_
                                           _%tl4678847099%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))
                              (if (gx#stx-pair/null? _%tl4674047191%_)
                                  (let ((_%__splice7503875039%_
                                         (gx#syntax-split-splice
                                          _%tl4674047191%_
                                          '0)))
                                    (let ((_%tl4680946961%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '1)))
                                          (_%target4680746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4680946961%_)
                                          (_%__match7532675327%_
                                           _%e4673947174%_
                                           _%hd4673847178%_
                                           _%tl4673747181%_
                                           _%e4674247184%_
                                           _%hd4674147188%_
                                           _%tl4674047191%_
                                           _%e4674547194%_
                                           _%hd4674447198%_
                                           _%tl4674347201%_
                                           _%__splice7503875039%_
                                           _%target4680746958%_
                                           _%tl4680946961%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_))))))
                      (if (gx#stx-pair/null? _%tl4674047191%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4674047191%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4673947174%_
                                   _%hd4673847178%_
                                   _%tl4673747181%_
                                   _%e4674247184%_
                                   _%hd4674147188%_
                                   _%tl4674047191%_
                                   _%e4674547194%_
                                   _%hd4674447198%_
                                   _%tl4674347201%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))
                  (if (gx#stx-pair/null? _%tl4674047191%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4674047191%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4673947174%_
                               _%hd4673847178%_
                               _%tl4673747181%_
                               _%e4674247184%_
                               _%hd4674147188%_
                               _%tl4674047191%_
                               _%e4674547194%_
                               _%hd4674447198%_
                               _%tl4674347201%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_))))
              (if (gx#stx-pair/null? _%tl4674047191%_)
                  (let ((_%__splice7503875039%_
                         (gx#syntax-split-splice _%tl4674047191%_ '0)))
                    (let ((_%tl4680946961%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '1)))
                          (_%target4680746958%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '0))))
                      (if (gx#stx-null? _%tl4680946961%_)
                          (_%__match7532675327%_
                           _%e4673947174%_
                           _%hd4673847178%_
                           _%tl4673747181%_
                           _%e4674247184%_
                           _%hd4674147188%_
                           _%tl4674047191%_
                           _%e4674547194%_
                           _%hd4674447198%_
                           _%tl4674347201%_
                           _%__splice7503875039%_
                           _%target4680746958%_
                           _%tl4680946961%_)
                          (let () (declare (not safe)) (_%g4663446837%_)))))
                  (let () (declare (not safe)) (_%g4663446837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4674047191%_)
                                                  (let ((_%__splice7503875039%_
                                                         (gx#syntax-split-splice
                                                          _%tl4674047191%_
                                                          '0)))
                                                    (let ((_%tl4680946961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7503875039%_
                                                              '1)))
                                                          (_%target4680746958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7503875039%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4680946961%_)
                                                          (_%__match7532675327%_
                                                           _%e4673947174%_
                                                           _%hd4673847178%_
                                                           _%tl4673747181%_
                                                           _%e4674247184%_
                                                           _%hd4674147188%_
                                                           _%tl4674047191%_
                                                           _%e4674547194%_
                                                           _%hd4674447198%_
                                                           _%tl4674347201%_
                                                           _%__splice7503875039%_
                                                           _%target4680746958%_
                                                           _%tl4680946961%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446837%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))))
                                  (if (gx#stx-pair/null? _%tl4674047191%_)
                                      (let ((_%__splice7503875039%_
                                             (gx#syntax-split-splice
                                              _%tl4674047191%_
                                              '0)))
                                        (let ((_%tl4680946961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '1)))
                                              (_%target4680746958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4680946961%_)
                                              (_%__match7532675327%_
                                               _%e4673947174%_
                                               _%hd4673847178%_
                                               _%tl4673747181%_
                                               _%e4674247184%_
                                               _%hd4674147188%_
                                               _%tl4674047191%_
                                               _%e4674547194%_
                                               _%hd4674447198%_
                                               _%tl4674347201%_
                                               _%__splice7503875039%_
                                               _%target4680746958%_
                                               _%tl4680946961%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_))))
                              (if (gx#stx-pair/null? _%tl4674047191%_)
                                  (let ((_%__splice7503875039%_
                                         (gx#syntax-split-splice
                                          _%tl4674047191%_
                                          '0)))
                                    (let ((_%tl4680946961%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '1)))
                                          (_%target4680746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4680946961%_)
                                          (_%__match7532675327%_
                                           _%e4673947174%_
                                           _%hd4673847178%_
                                           _%tl4673747181%_
                                           _%e4674247184%_
                                           _%hd4674147188%_
                                           _%tl4674047191%_
                                           _%e4674547194%_
                                           _%hd4674447198%_
                                           _%tl4674347201%_
                                           _%__splice7503875039%_
                                           _%target4680746958%_
                                           _%tl4680946961%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_))))
                          (if (gx#stx-pair/null? _%tl4674047191%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4674047191%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4673947174%_
                                       _%hd4673847178%_
                                       _%tl4673747181%_
                                       _%e4674247184%_
                                       _%hd4674147188%_
                                       _%tl4674047191%_
                                       _%e4674547194%_
                                       _%hd4674447198%_
                                       _%tl4674347201%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_))))))
                   (_%__match7519675197%_
                    (lambda (_%e4671247296%_
                             _%hd4671147300%_
                             _%tl4671047303%_
                             _%e4671547306%_
                             _%hd4671447310%_
                             _%tl4671347313%_
                             _%e4671847316%_
                             _%hd4671747320%_
                             _%tl4671647323%_
                             _%e4672147326%_
                             _%hd4672047330%_
                             _%tl4671947333%_
                             _%e4672447336%_
                             _%hd4672347340%_
                             _%tl4672247343%_
                             _%__splice7502675027%_
                             _%target4672547346%_
                             _%tl4672747349%_)
                      (letrec ((_%loop4672847352%_
                                (lambda (_%hd4672647356%_ _%body4673247359%_)
                                  (if (gx#stx-pair? _%hd4672647356%_)
                                      (let ((_%e4672947362%_
                                             (gx#syntax-e _%hd4672647356%_)))
                                        (let ((_%lp-tl4673147369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4672947362%_)))
                                              (_%lp-hd4673047366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4672947362%_))))
                                          (_%loop4672847352%_
                                           _%lp-tl4673147369%_
                                           (cons _%lp-hd4673047366%_
                                                 _%body4673247359%_))))
                                      (let ((_%body4673347372%_
                                             (reverse _%body4673247359%_)))
                                        (let ((_%L47376%_ _%body4673347372%_)
                                              (_%L47378%_ _%hd4672347340%_)
                                              (_%L47379%_ _%hd4672047330%_)
                                              (_%L47380%_ _%hd4671747320%_))
                                          (if (and (gx#identifier? _%L47380%_)
                                                   (gx#identifier? _%L47378%_)
                                                   (gx#identifier? _%L47379%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47379%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47379%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47379%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47379%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7502475025%_
                                               _%L47376%_
                                               _%L47378%_
                                               _%L47379%_
                                               _%L47380%_)
                                              (_%__match7522075221%_
                                               _%e4671247296%_
                                               _%hd4671147300%_
                                               _%tl4671047303%_
                                               _%e4671547306%_
                                               _%hd4671447310%_
                                               _%tl4671347313%_
                                               _%e4671847316%_
                                               _%hd4671747320%_
                                               _%tl4671647323%_
                                               _%e4672147326%_
                                               _%hd4672047330%_
                                               _%tl4671947333%_))))))))
                        (_%loop4672847352%_ _%target4672547346%_ '()))))
                   (_%__match7515675157%_
                    (lambda (_%e4667547494%_
                             _%hd4667447498%_
                             _%tl4667347501%_
                             _%e4667847504%_
                             _%hd4667747508%_
                             _%tl4667647511%_
                             _%e4668147514%_
                             _%hd4668047518%_
                             _%tl4667947521%_
                             _%e4668447524%_
                             _%hd4668347528%_
                             _%tl4668247531%_
                             _%e4668747534%_
                             _%hd4668647538%_
                             _%tl4668547541%_
                             _%e4669047544%_
                             _%hd4668947548%_
                             _%tl4668847551%_
                             _%e4669347554%_
                             _%hd4669247558%_
                             _%tl4669147561%_
                             _%e4669647564%_
                             _%hd4669547568%_
                             _%tl4669447571%_
                             _%__splice7502275023%_
                             _%target4669747574%_
                             _%tl4669947577%_)
                      (letrec ((_%loop4670047580%_
                                (lambda (_%hd4669847584%_ _%body4670447587%_)
                                  (if (gx#stx-pair? _%hd4669847584%_)
                                      (let ((_%e4670147590%_
                                             (gx#syntax-e _%hd4669847584%_)))
                                        (let ((_%lp-tl4670347597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4670147590%_)))
                                              (_%lp-hd4670247594%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4670147590%_))))
                                          (_%loop4670047580%_
                                           _%lp-tl4670347597%_
                                           (cons _%lp-hd4670247594%_
                                                 _%body4670447587%_))))
                                      (let ((_%body4670547600%_
                                             (reverse _%body4670447587%_)))
                                        (let ((_%L47604%_ _%body4670547600%_)
                                              (_%L47606%_ _%hd4669547568%_)
                                              (_%L47607%_ _%hd4668947548%_)
                                              (_%L47608%_ _%hd4668347528%_)
                                              (_%L47609%_ _%hd4668047518%_))
                                          (if (and (gx#identifier? _%L47609%_)
                                                   (gx#identifier? _%L47606%_))
                                              (_%__kont7502075021%_
                                               _%L47604%_
                                               _%L47606%_
                                               _%L47607%_
                                               _%L47608%_
                                               _%L47609%_)
                                              (_%__match7522075221%_
                                               _%e4667547494%_
                                               _%hd4667447498%_
                                               _%tl4667347501%_
                                               _%e4667847504%_
                                               _%hd4667747508%_
                                               _%tl4667647511%_
                                               _%e4668147514%_
                                               _%hd4668047518%_
                                               _%tl4667947521%_
                                               _%e4668447524%_
                                               _%hd4668347528%_
                                               _%tl4668247531%_))))))))
                        (_%loop4670047580%_ _%target4669747574%_ '()))))
                   (_%__match7512075121%_
                    (lambda (_%e4667547494%_
                             _%hd4667447498%_
                             _%tl4667347501%_
                             _%e4667847504%_
                             _%hd4667747508%_
                             _%tl4667647511%_
                             _%e4668147514%_
                             _%hd4668047518%_
                             _%tl4667947521%_
                             _%e4668447524%_
                             _%hd4668347528%_
                             _%tl4668247531%_
                             _%e4668747534%_
                             _%hd4668647538%_
                             _%tl4668547541%_)
                      (if (gx#identifier? _%hd4668647538%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80202_|
                               _%hd4668647538%_)
                              (if (gx#stx-pair? _%tl4668547541%_)
                                  (let ((_%e4669047544%_
                                         (gx#syntax-e _%tl4668547541%_)))
                                    (let ((_%tl4668847551%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4669047544%_)))
                                          (_%hd4668947548%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4669047544%_))))
                                      (if (gx#stx-pair? _%tl4668847551%_)
                                          (let ((_%e4669347554%_
                                                 (gx#syntax-e
                                                  _%tl4668847551%_)))
                                            (let ((_%tl4669147561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4669347554%_)))
                                                  (_%hd4669247558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4669347554%_))))
                                              (if (gx#identifier?
                                                   _%hd4669247558%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80203_|
                                                       _%hd4669247558%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4669147561%_)
                                                          (let ((_%e4669647564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4669147561%_)))
                    (let ((_%tl4669447571%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4669647564%_)))
                          (_%hd4669547568%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4669647564%_))))
                      (if (gx#stx-null? _%tl4669447571%_)
                          (if (gx#stx-pair/null? _%tl4667647511%_)
                              (let ((_%__splice7502275023%_
                                     (gx#syntax-split-splice
                                      _%tl4667647511%_
                                      '0)))
                                (let ((_%tl4669947577%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502275023%_
                                          '1)))
                                      (_%target4669747574%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7502275023%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4669947577%_)
                                      (_%__match7515675157%_
                                       _%e4667547494%_
                                       _%hd4667447498%_
                                       _%tl4667347501%_
                                       _%e4667847504%_
                                       _%hd4667747508%_
                                       _%tl4667647511%_
                                       _%e4668147514%_
                                       _%hd4668047518%_
                                       _%tl4667947521%_
                                       _%e4668447524%_
                                       _%hd4668347528%_
                                       _%tl4668247531%_
                                       _%e4668747534%_
                                       _%hd4668647538%_
                                       _%tl4668547541%_
                                       _%e4669047544%_
                                       _%hd4668947548%_
                                       _%tl4668847551%_
                                       _%e4669347554%_
                                       _%hd4669247558%_
                                       _%tl4669147561%_
                                       _%e4669647564%_
                                       _%hd4669547568%_
                                       _%tl4669447571%_
                                       _%__splice7502275023%_
                                       _%target4669747574%_
                                       _%tl4669947577%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_)))
                          (if (gx#stx-pair/null? _%tl4667647511%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4667647511%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4667547494%_
                                       _%hd4667447498%_
                                       _%tl4667347501%_
                                       _%e4667847504%_
                                       _%hd4667747508%_
                                       _%tl4667647511%_
                                       _%e4668147514%_
                                       _%hd4668047518%_
                                       _%tl4667947521%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_))))))
                  (if (gx#identifier? _%hd4668347528%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/contract~Using[1]#_g80200_|
                           _%hd4668347528%_)
                          (if (gx#identifier? _%hd4668947548%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80201_|
                                   _%hd4668947548%_)
                                  (if (gx#stx-null? _%tl4669147561%_)
                                      (if (gx#stx-pair/null? _%tl4667647511%_)
                                          (let ((_%__splice7503475035%_
                                                 (gx#syntax-split-splice
                                                  _%tl4667647511%_
                                                  '0)))
                                            (let ((_%tl4678847099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503475035%_
                                                      '1)))
                                                  (_%target4678647096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503475035%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4678847099%_)
                                                  (_%__match7530075301%_
                                                   _%e4667547494%_
                                                   _%hd4667447498%_
                                                   _%tl4667347501%_
                                                   _%e4667847504%_
                                                   _%hd4667747508%_
                                                   _%tl4667647511%_
                                                   _%e4668147514%_
                                                   _%hd4668047518%_
                                                   _%tl4667947521%_
                                                   _%e4668447524%_
                                                   _%hd4668347528%_
                                                   _%tl4668247531%_
                                                   _%e4668747534%_
                                                   _%hd4668647538%_
                                                   _%tl4668547541%_
                                                   _%e4669047544%_
                                                   _%hd4668947548%_
                                                   _%tl4668847551%_
                                                   _%e4669347554%_
                                                   _%hd4669247558%_
                                                   _%tl4669147561%_
                                                   _%__splice7503475035%_
                                                   _%target4678647096%_
                                                   _%tl4678847099%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))
                                      (if (gx#stx-pair/null? _%tl4667647511%_)
                                          (let ((_%__splice7503875039%_
                                                 (gx#syntax-split-splice
                                                  _%tl4667647511%_
                                                  '0)))
                                            (let ((_%tl4680946961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '1)))
                                                  (_%target4680746958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4680946961%_)
                                                  (_%__match7532675327%_
                                                   _%e4667547494%_
                                                   _%hd4667447498%_
                                                   _%tl4667347501%_
                                                   _%e4667847504%_
                                                   _%hd4667747508%_
                                                   _%tl4667647511%_
                                                   _%e4668147514%_
                                                   _%hd4668047518%_
                                                   _%tl4667947521%_
                                                   _%__splice7503875039%_
                                                   _%target4680746958%_
                                                   _%tl4680946961%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_))))
                                  (if (gx#stx-pair/null? _%tl4667647511%_)
                                      (let ((_%__splice7503875039%_
                                             (gx#syntax-split-splice
                                              _%tl4667647511%_
                                              '0)))
                                        (let ((_%tl4680946961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '1)))
                                              (_%target4680746958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4680946961%_)
                                              (_%__match7532675327%_
                                               _%e4667547494%_
                                               _%hd4667447498%_
                                               _%tl4667347501%_
                                               _%e4667847504%_
                                               _%hd4667747508%_
                                               _%tl4667647511%_
                                               _%e4668147514%_
                                               _%hd4668047518%_
                                               _%tl4667947521%_
                                               _%__splice7503875039%_
                                               _%target4680746958%_
                                               _%tl4680946961%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_))))
                              (if (gx#stx-pair/null? _%tl4667647511%_)
                                  (let ((_%__splice7503875039%_
                                         (gx#syntax-split-splice
                                          _%tl4667647511%_
                                          '0)))
                                    (let ((_%tl4680946961%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '1)))
                                          (_%target4680746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4680946961%_)
                                          (_%__match7532675327%_
                                           _%e4667547494%_
                                           _%hd4667447498%_
                                           _%tl4667347501%_
                                           _%e4667847504%_
                                           _%hd4667747508%_
                                           _%tl4667647511%_
                                           _%e4668147514%_
                                           _%hd4668047518%_
                                           _%tl4667947521%_
                                           _%__splice7503875039%_
                                           _%target4680746958%_
                                           _%tl4680946961%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_))))
                          (if (gx#stx-pair/null? _%tl4667647511%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4667647511%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4667547494%_
                                       _%hd4667447498%_
                                       _%tl4667347501%_
                                       _%e4667847504%_
                                       _%hd4667747508%_
                                       _%tl4667647511%_
                                       _%e4668147514%_
                                       _%hd4668047518%_
                                       _%tl4667947521%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_))))
                      (if (gx#stx-pair/null? _%tl4667647511%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4667647511%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4667547494%_
                                   _%hd4667447498%_
                                   _%tl4667347501%_
                                   _%e4667847504%_
                                   _%hd4667747508%_
                                   _%tl4667647511%_
                                   _%e4668147514%_
                                   _%hd4668047518%_
                                   _%tl4667947521%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_)))))
              (if (gx#identifier? _%hd4668347528%_)
                  (if (gx#free-identifier=?
                       |gerbil/core/contract~Using[1]#_g80200_|
                       _%hd4668347528%_)
                      (if (gx#identifier? _%hd4668947548%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80201_|
                               _%hd4668947548%_)
                              (if (gx#stx-null? _%tl4669147561%_)
                                  (if (gx#stx-pair/null? _%tl4667647511%_)
                                      (let ((_%__splice7503475035%_
                                             (gx#syntax-split-splice
                                              _%tl4667647511%_
                                              '0)))
                                        (let ((_%tl4678847099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503475035%_
                                                  '1)))
                                              (_%target4678647096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503475035%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4678847099%_)
                                              (_%__match7530075301%_
                                               _%e4667547494%_
                                               _%hd4667447498%_
                                               _%tl4667347501%_
                                               _%e4667847504%_
                                               _%hd4667747508%_
                                               _%tl4667647511%_
                                               _%e4668147514%_
                                               _%hd4668047518%_
                                               _%tl4667947521%_
                                               _%e4668447524%_
                                               _%hd4668347528%_
                                               _%tl4668247531%_
                                               _%e4668747534%_
                                               _%hd4668647538%_
                                               _%tl4668547541%_
                                               _%e4669047544%_
                                               _%hd4668947548%_
                                               _%tl4668847551%_
                                               _%e4669347554%_
                                               _%hd4669247558%_
                                               _%tl4669147561%_
                                               _%__splice7503475035%_
                                               _%target4678647096%_
                                               _%tl4678847099%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))
                                  (if (gx#stx-pair/null? _%tl4667647511%_)
                                      (let ((_%__splice7503875039%_
                                             (gx#syntax-split-splice
                                              _%tl4667647511%_
                                              '0)))
                                        (let ((_%tl4680946961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '1)))
                                              (_%target4680746958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4680946961%_)
                                              (_%__match7532675327%_
                                               _%e4667547494%_
                                               _%hd4667447498%_
                                               _%tl4667347501%_
                                               _%e4667847504%_
                                               _%hd4667747508%_
                                               _%tl4667647511%_
                                               _%e4668147514%_
                                               _%hd4668047518%_
                                               _%tl4667947521%_
                                               _%__splice7503875039%_
                                               _%target4680746958%_
                                               _%tl4680946961%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_))))
                              (if (gx#stx-pair/null? _%tl4667647511%_)
                                  (let ((_%__splice7503875039%_
                                         (gx#syntax-split-splice
                                          _%tl4667647511%_
                                          '0)))
                                    (let ((_%tl4680946961%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '1)))
                                          (_%target4680746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4680946961%_)
                                          (_%__match7532675327%_
                                           _%e4667547494%_
                                           _%hd4667447498%_
                                           _%tl4667347501%_
                                           _%e4667847504%_
                                           _%hd4667747508%_
                                           _%tl4667647511%_
                                           _%e4668147514%_
                                           _%hd4668047518%_
                                           _%tl4667947521%_
                                           _%__splice7503875039%_
                                           _%target4680746958%_
                                           _%tl4680946961%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_))))
                          (if (gx#stx-pair/null? _%tl4667647511%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4667647511%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4667547494%_
                                       _%hd4667447498%_
                                       _%tl4667347501%_
                                       _%e4667847504%_
                                       _%hd4667747508%_
                                       _%tl4667647511%_
                                       _%e4668147514%_
                                       _%hd4668047518%_
                                       _%tl4667947521%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_))))
                      (if (gx#stx-pair/null? _%tl4667647511%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4667647511%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4667547494%_
                                   _%hd4667447498%_
                                   _%tl4667347501%_
                                   _%e4667847504%_
                                   _%hd4667747508%_
                                   _%tl4667647511%_
                                   _%e4668147514%_
                                   _%hd4668047518%_
                                   _%tl4667947521%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))
                  (if (gx#stx-pair/null? _%tl4667647511%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4667647511%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4667547494%_
                               _%hd4667447498%_
                               _%tl4667347501%_
                               _%e4667847504%_
                               _%hd4667747508%_
                               _%tl4667647511%_
                               _%e4668147514%_
                               _%hd4668047518%_
                               _%tl4667947521%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4668347528%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80200_|
                                                           _%hd4668347528%_)
                                                          (if (gx#identifier?
                                                               _%hd4668947548%_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core/contract~Using[1]#_g80201_|
                           _%hd4668947548%_)
                          (if (gx#stx-null? _%tl4669147561%_)
                              (if (gx#stx-pair/null? _%tl4667647511%_)
                                  (let ((_%__splice7503475035%_
                                         (gx#syntax-split-splice
                                          _%tl4667647511%_
                                          '0)))
                                    (let ((_%tl4678847099%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503475035%_
                                              '1)))
                                          (_%target4678647096%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503475035%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678847099%_)
                                          (_%__match7530075301%_
                                           _%e4667547494%_
                                           _%hd4667447498%_
                                           _%tl4667347501%_
                                           _%e4667847504%_
                                           _%hd4667747508%_
                                           _%tl4667647511%_
                                           _%e4668147514%_
                                           _%hd4668047518%_
                                           _%tl4667947521%_
                                           _%e4668447524%_
                                           _%hd4668347528%_
                                           _%tl4668247531%_
                                           _%e4668747534%_
                                           _%hd4668647538%_
                                           _%tl4668547541%_
                                           _%e4669047544%_
                                           _%hd4668947548%_
                                           _%tl4668847551%_
                                           _%e4669347554%_
                                           _%hd4669247558%_
                                           _%tl4669147561%_
                                           _%__splice7503475035%_
                                           _%target4678647096%_
                                           _%tl4678847099%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))
                              (if (gx#stx-pair/null? _%tl4667647511%_)
                                  (let ((_%__splice7503875039%_
                                         (gx#syntax-split-splice
                                          _%tl4667647511%_
                                          '0)))
                                    (let ((_%tl4680946961%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '1)))
                                          (_%target4680746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4680946961%_)
                                          (_%__match7532675327%_
                                           _%e4667547494%_
                                           _%hd4667447498%_
                                           _%tl4667347501%_
                                           _%e4667847504%_
                                           _%hd4667747508%_
                                           _%tl4667647511%_
                                           _%e4668147514%_
                                           _%hd4668047518%_
                                           _%tl4667947521%_
                                           _%__splice7503875039%_
                                           _%target4680746958%_
                                           _%tl4680946961%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_))))
                          (if (gx#stx-pair/null? _%tl4667647511%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4667647511%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4667547494%_
                                       _%hd4667447498%_
                                       _%tl4667347501%_
                                       _%e4667847504%_
                                       _%hd4667747508%_
                                       _%tl4667647511%_
                                       _%e4668147514%_
                                       _%hd4668047518%_
                                       _%tl4667947521%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_))))
                      (if (gx#stx-pair/null? _%tl4667647511%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4667647511%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4667547494%_
                                   _%hd4667447498%_
                                   _%tl4667347501%_
                                   _%e4667847504%_
                                   _%hd4667747508%_
                                   _%tl4667647511%_
                                   _%e4668147514%_
                                   _%hd4668047518%_
                                   _%tl4667947521%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))
                  (if (gx#stx-pair/null? _%tl4667647511%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4667647511%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4667547494%_
                               _%hd4667447498%_
                               _%tl4667347501%_
                               _%e4667847504%_
                               _%hd4667747508%_
                               _%tl4667647511%_
                               _%e4668147514%_
                               _%hd4668047518%_
                               _%tl4667947521%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_))))
              (if (gx#stx-pair/null? _%tl4667647511%_)
                  (let ((_%__splice7503875039%_
                         (gx#syntax-split-splice _%tl4667647511%_ '0)))
                    (let ((_%tl4680946961%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '1)))
                          (_%target4680746958%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '0))))
                      (if (gx#stx-null? _%tl4680946961%_)
                          (_%__match7532675327%_
                           _%e4667547494%_
                           _%hd4667447498%_
                           _%tl4667347501%_
                           _%e4667847504%_
                           _%hd4667747508%_
                           _%tl4667647511%_
                           _%e4668147514%_
                           _%hd4668047518%_
                           _%tl4667947521%_
                           _%__splice7503875039%_
                           _%target4680746958%_
                           _%tl4680946961%_)
                          (let () (declare (not safe)) (_%g4663446837%_)))))
                  (let () (declare (not safe)) (_%g4663446837%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4667647511%_)
                                              (let ((_%__splice7503875039%_
                                                     (gx#syntax-split-splice
                                                      _%tl4667647511%_
                                                      '0)))
                                                (let ((_%tl4680946961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '1)))
                                                      (_%target4680746958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4680946961%_)
                                                      (_%__match7532675327%_
                                                       _%e4667547494%_
                                                       _%hd4667447498%_
                                                       _%tl4667347501%_
                                                       _%e4667847504%_
                                                       _%hd4667747508%_
                                                       _%tl4667647511%_
                                                       _%e4668147514%_
                                                       _%hd4668047518%_
                                                       _%tl4667947521%_
                                                       _%__splice7503875039%_
                                                       _%target4680746958%_
                                                       _%tl4680946961%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446837%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_))))))
                                  (if (gx#stx-null? _%tl4668547541%_)
                                      (if (gx#stx-pair/null? _%tl4667647511%_)
                                          (let ((_%__splice7502675027%_
                                                 (gx#syntax-split-splice
                                                  _%tl4667647511%_
                                                  '0)))
                                            (let ((_%tl4672747349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7502675027%_
                                                      '1)))
                                                  (_%target4672547346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7502675027%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4672747349%_)
                                                  (_%__match7519675197%_
                                                   _%e4667547494%_
                                                   _%hd4667447498%_
                                                   _%tl4667347501%_
                                                   _%e4667847504%_
                                                   _%hd4667747508%_
                                                   _%tl4667647511%_
                                                   _%e4668147514%_
                                                   _%hd4668047518%_
                                                   _%tl4667947521%_
                                                   _%e4668447524%_
                                                   _%hd4668347528%_
                                                   _%tl4668247531%_
                                                   _%e4668747534%_
                                                   _%hd4668647538%_
                                                   _%tl4668547541%_
                                                   _%__splice7502675027%_
                                                   _%target4672547346%_
                                                   _%tl4672747349%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))
                                      (if (gx#stx-pair/null? _%tl4667647511%_)
                                          (let ((_%__splice7503875039%_
                                                 (gx#syntax-split-splice
                                                  _%tl4667647511%_
                                                  '0)))
                                            (let ((_%tl4680946961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '1)))
                                                  (_%target4680746958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4680946961%_)
                                                  (_%__match7532675327%_
                                                   _%e4667547494%_
                                                   _%hd4667447498%_
                                                   _%tl4667347501%_
                                                   _%e4667847504%_
                                                   _%hd4667747508%_
                                                   _%tl4667647511%_
                                                   _%e4668147514%_
                                                   _%hd4668047518%_
                                                   _%tl4667947521%_
                                                   _%__splice7503875039%_
                                                   _%target4680746958%_
                                                   _%tl4680946961%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                              (if (gx#stx-null? _%tl4668547541%_)
                                  (if (gx#stx-pair/null? _%tl4667647511%_)
                                      (let ((_%__splice7502675027%_
                                             (gx#syntax-split-splice
                                              _%tl4667647511%_
                                              '0)))
                                        (let ((_%tl4672747349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7502675027%_
                                                  '1)))
                                              (_%target4672547346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7502675027%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4672747349%_)
                                              (_%__match7519675197%_
                                               _%e4667547494%_
                                               _%hd4667447498%_
                                               _%tl4667347501%_
                                               _%e4667847504%_
                                               _%hd4667747508%_
                                               _%tl4667647511%_
                                               _%e4668147514%_
                                               _%hd4668047518%_
                                               _%tl4667947521%_
                                               _%e4668447524%_
                                               _%hd4668347528%_
                                               _%tl4668247531%_
                                               _%e4668747534%_
                                               _%hd4668647538%_
                                               _%tl4668547541%_
                                               _%__splice7502675027%_
                                               _%target4672547346%_
                                               _%tl4672747349%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))
                                  (if (gx#identifier? _%hd4668347528%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80200_|
                                           _%hd4668347528%_)
                                          (if (gx#stx-pair? _%tl4668547541%_)
                                              (let ((_%e4678247076%_
                                                     (gx#syntax-e
                                                      _%tl4668547541%_)))
                                                (let ((_%tl4678047083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4678247076%_)))
                                                      (_%hd4678147080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4678247076%_))))
                                                  (if (gx#identifier?
                                                       _%hd4678147080%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80201_|
                                                           _%hd4678147080%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4678047083%_)
                                                              (let ((_%e4678547086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4678047083%_)))
                        (let ((_%tl4678347093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4678547086%_)))
                              (_%hd4678447090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4678547086%_))))
                          (if (gx#stx-null? _%tl4678347093%_)
                              (if (gx#stx-pair/null? _%tl4667647511%_)
                                  (let ((_%__splice7503475035%_
                                         (gx#syntax-split-splice
                                          _%tl4667647511%_
                                          '0)))
                                    (let ((_%tl4678847099%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503475035%_
                                              '1)))
                                          (_%target4678647096%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503475035%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678847099%_)
                                          (_%__match7530075301%_
                                           _%e4667547494%_
                                           _%hd4667447498%_
                                           _%tl4667347501%_
                                           _%e4667847504%_
                                           _%hd4667747508%_
                                           _%tl4667647511%_
                                           _%e4668147514%_
                                           _%hd4668047518%_
                                           _%tl4667947521%_
                                           _%e4668447524%_
                                           _%hd4668347528%_
                                           _%tl4668247531%_
                                           _%e4668747534%_
                                           _%hd4668647538%_
                                           _%tl4668547541%_
                                           _%e4678247076%_
                                           _%hd4678147080%_
                                           _%tl4678047083%_
                                           _%e4678547086%_
                                           _%hd4678447090%_
                                           _%tl4678347093%_
                                           _%__splice7503475035%_
                                           _%target4678647096%_
                                           _%tl4678847099%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))
                              (if (gx#stx-pair/null? _%tl4667647511%_)
                                  (let ((_%__splice7503875039%_
                                         (gx#syntax-split-splice
                                          _%tl4667647511%_
                                          '0)))
                                    (let ((_%tl4680946961%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '1)))
                                          (_%target4680746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4680946961%_)
                                          (_%__match7532675327%_
                                           _%e4667547494%_
                                           _%hd4667447498%_
                                           _%tl4667347501%_
                                           _%e4667847504%_
                                           _%hd4667747508%_
                                           _%tl4667647511%_
                                           _%e4668147514%_
                                           _%hd4668047518%_
                                           _%tl4667947521%_
                                           _%__splice7503875039%_
                                           _%target4680746958%_
                                           _%tl4680946961%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_))))))
                      (if (gx#stx-pair/null? _%tl4667647511%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4667647511%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4667547494%_
                                   _%hd4667447498%_
                                   _%tl4667347501%_
                                   _%e4667847504%_
                                   _%hd4667747508%_
                                   _%tl4667647511%_
                                   _%e4668147514%_
                                   _%hd4668047518%_
                                   _%tl4667947521%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))
                  (if (gx#stx-pair/null? _%tl4667647511%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4667647511%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4667547494%_
                               _%hd4667447498%_
                               _%tl4667347501%_
                               _%e4667847504%_
                               _%hd4667747508%_
                               _%tl4667647511%_
                               _%e4668147514%_
                               _%hd4668047518%_
                               _%tl4667947521%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_))))
              (if (gx#stx-pair/null? _%tl4667647511%_)
                  (let ((_%__splice7503875039%_
                         (gx#syntax-split-splice _%tl4667647511%_ '0)))
                    (let ((_%tl4680946961%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '1)))
                          (_%target4680746958%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '0))))
                      (if (gx#stx-null? _%tl4680946961%_)
                          (_%__match7532675327%_
                           _%e4667547494%_
                           _%hd4667447498%_
                           _%tl4667347501%_
                           _%e4667847504%_
                           _%hd4667747508%_
                           _%tl4667647511%_
                           _%e4668147514%_
                           _%hd4668047518%_
                           _%tl4667947521%_
                           _%__splice7503875039%_
                           _%target4680746958%_
                           _%tl4680946961%_)
                          (let () (declare (not safe)) (_%g4663446837%_)))))
                  (let () (declare (not safe)) (_%g4663446837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4667647511%_)
                                                  (let ((_%__splice7503875039%_
                                                         (gx#syntax-split-splice
                                                          _%tl4667647511%_
                                                          '0)))
                                                    (let ((_%tl4680946961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7503875039%_
                                                              '1)))
                                                          (_%target4680746958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7503875039%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4680946961%_)
                                                          (_%__match7532675327%_
                                                           _%e4667547494%_
                                                           _%hd4667447498%_
                                                           _%tl4667347501%_
                                                           _%e4667847504%_
                                                           _%hd4667747508%_
                                                           _%tl4667647511%_
                                                           _%e4668147514%_
                                                           _%hd4668047518%_
                                                           _%tl4667947521%_
                                                           _%__splice7503875039%_
                                                           _%target4680746958%_
                                                           _%tl4680946961%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446837%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4667647511%_)
                                              (let ((_%__splice7503875039%_
                                                     (gx#syntax-split-splice
                                                      _%tl4667647511%_
                                                      '0)))
                                                (let ((_%tl4680946961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '1)))
                                                      (_%target4680746958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4680946961%_)
                                                      (_%__match7532675327%_
                                                       _%e4667547494%_
                                                       _%hd4667447498%_
                                                       _%tl4667347501%_
                                                       _%e4667847504%_
                                                       _%hd4667747508%_
                                                       _%tl4667647511%_
                                                       _%e4668147514%_
                                                       _%hd4668047518%_
                                                       _%tl4667947521%_
                                                       _%__splice7503875039%_
                                                       _%target4680746958%_
                                                       _%tl4680946961%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446837%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_))))
                                      (if (gx#stx-pair/null? _%tl4667647511%_)
                                          (let ((_%__splice7503875039%_
                                                 (gx#syntax-split-splice
                                                  _%tl4667647511%_
                                                  '0)))
                                            (let ((_%tl4680946961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '1)))
                                                  (_%target4680746958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4680946961%_)
                                                  (_%__match7532675327%_
                                                   _%e4667547494%_
                                                   _%hd4667447498%_
                                                   _%tl4667347501%_
                                                   _%e4667847504%_
                                                   _%hd4667747508%_
                                                   _%tl4667647511%_
                                                   _%e4668147514%_
                                                   _%hd4668047518%_
                                                   _%tl4667947521%_
                                                   _%__splice7503875039%_
                                                   _%target4680746958%_
                                                   _%tl4680946961%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_))))))
                          (if (gx#stx-null? _%tl4668547541%_)
                              (if (gx#stx-pair/null? _%tl4667647511%_)
                                  (let ((_%__splice7502675027%_
                                         (gx#syntax-split-splice
                                          _%tl4667647511%_
                                          '0)))
                                    (let ((_%tl4672747349%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502675027%_
                                              '1)))
                                          (_%target4672547346%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7502675027%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4672747349%_)
                                          (_%__match7519675197%_
                                           _%e4667547494%_
                                           _%hd4667447498%_
                                           _%tl4667347501%_
                                           _%e4667847504%_
                                           _%hd4667747508%_
                                           _%tl4667647511%_
                                           _%e4668147514%_
                                           _%hd4668047518%_
                                           _%tl4667947521%_
                                           _%e4668447524%_
                                           _%hd4668347528%_
                                           _%tl4668247531%_
                                           _%e4668747534%_
                                           _%hd4668647538%_
                                           _%tl4668547541%_
                                           _%__splice7502675027%_
                                           _%target4672547346%_
                                           _%tl4672747349%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))
                              (if (gx#identifier? _%hd4668347528%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80200_|
                                       _%hd4668347528%_)
                                      (if (gx#stx-pair? _%tl4668547541%_)
                                          (let ((_%e4678247076%_
                                                 (gx#syntax-e
                                                  _%tl4668547541%_)))
                                            (let ((_%tl4678047083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4678247076%_)))
                                                  (_%hd4678147080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4678247076%_))))
                                              (if (gx#identifier?
                                                   _%hd4678147080%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80201_|
                                                       _%hd4678147080%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4678047083%_)
                                                          (let ((_%e4678547086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4678047083%_)))
                    (let ((_%tl4678347093%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4678547086%_)))
                          (_%hd4678447090%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4678547086%_))))
                      (if (gx#stx-null? _%tl4678347093%_)
                          (if (gx#stx-pair/null? _%tl4667647511%_)
                              (let ((_%__splice7503475035%_
                                     (gx#syntax-split-splice
                                      _%tl4667647511%_
                                      '0)))
                                (let ((_%tl4678847099%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503475035%_
                                          '1)))
                                      (_%target4678647096%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503475035%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4678847099%_)
                                      (_%__match7530075301%_
                                       _%e4667547494%_
                                       _%hd4667447498%_
                                       _%tl4667347501%_
                                       _%e4667847504%_
                                       _%hd4667747508%_
                                       _%tl4667647511%_
                                       _%e4668147514%_
                                       _%hd4668047518%_
                                       _%tl4667947521%_
                                       _%e4668447524%_
                                       _%hd4668347528%_
                                       _%tl4668247531%_
                                       _%e4668747534%_
                                       _%hd4668647538%_
                                       _%tl4668547541%_
                                       _%e4678247076%_
                                       _%hd4678147080%_
                                       _%tl4678047083%_
                                       _%e4678547086%_
                                       _%hd4678447090%_
                                       _%tl4678347093%_
                                       _%__splice7503475035%_
                                       _%target4678647096%_
                                       _%tl4678847099%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_)))
                          (if (gx#stx-pair/null? _%tl4667647511%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4667647511%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4667547494%_
                                       _%hd4667447498%_
                                       _%tl4667347501%_
                                       _%e4667847504%_
                                       _%hd4667747508%_
                                       _%tl4667647511%_
                                       _%e4668147514%_
                                       _%hd4668047518%_
                                       _%tl4667947521%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_))))))
                  (if (gx#stx-pair/null? _%tl4667647511%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4667647511%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4667547494%_
                               _%hd4667447498%_
                               _%tl4667347501%_
                               _%e4667847504%_
                               _%hd4667747508%_
                               _%tl4667647511%_
                               _%e4668147514%_
                               _%hd4668047518%_
                               _%tl4667947521%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_))))
              (if (gx#stx-pair/null? _%tl4667647511%_)
                  (let ((_%__splice7503875039%_
                         (gx#syntax-split-splice _%tl4667647511%_ '0)))
                    (let ((_%tl4680946961%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '1)))
                          (_%target4680746958%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '0))))
                      (if (gx#stx-null? _%tl4680946961%_)
                          (_%__match7532675327%_
                           _%e4667547494%_
                           _%hd4667447498%_
                           _%tl4667347501%_
                           _%e4667847504%_
                           _%hd4667747508%_
                           _%tl4667647511%_
                           _%e4668147514%_
                           _%hd4668047518%_
                           _%tl4667947521%_
                           _%__splice7503875039%_
                           _%target4680746958%_
                           _%tl4680946961%_)
                          (let () (declare (not safe)) (_%g4663446837%_)))))
                  (let () (declare (not safe)) (_%g4663446837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4667647511%_)
                                                      (let ((_%__splice7503875039%_
                                                             (gx#syntax-split-splice
                                                              _%tl4667647511%_
                                                              '0)))
                                                        (let ((_%tl4680946961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '1)))
                      (_%target4680746958%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '0))))
                  (if (gx#stx-null? _%tl4680946961%_)
                      (_%__match7532675327%_
                       _%e4667547494%_
                       _%hd4667447498%_
                       _%tl4667347501%_
                       _%e4667847504%_
                       _%hd4667747508%_
                       _%tl4667647511%_
                       _%e4668147514%_
                       _%hd4668047518%_
                       _%tl4667947521%_
                       _%__splice7503875039%_
                       _%target4680746958%_
                       _%tl4680946961%_)
                      (let () (declare (not safe)) (_%g4663446837%_)))))
              (let () (declare (not safe)) (_%g4663446837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4667647511%_)
                                              (let ((_%__splice7503875039%_
                                                     (gx#syntax-split-splice
                                                      _%tl4667647511%_
                                                      '0)))
                                                (let ((_%tl4680946961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '1)))
                                                      (_%target4680746958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4680946961%_)
                                                      (_%__match7532675327%_
                                                       _%e4667547494%_
                                                       _%hd4667447498%_
                                                       _%tl4667347501%_
                                                       _%e4667847504%_
                                                       _%hd4667747508%_
                                                       _%tl4667647511%_
                                                       _%e4668147514%_
                                                       _%hd4668047518%_
                                                       _%tl4667947521%_
                                                       _%__splice7503875039%_
                                                       _%target4680746958%_
                                                       _%tl4680946961%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446837%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_))))
                                      (if (gx#stx-pair/null? _%tl4667647511%_)
                                          (let ((_%__splice7503875039%_
                                                 (gx#syntax-split-splice
                                                  _%tl4667647511%_
                                                  '0)))
                                            (let ((_%tl4680946961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '1)))
                                                  (_%target4680746958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4680946961%_)
                                                  (_%__match7532675327%_
                                                   _%e4667547494%_
                                                   _%hd4667447498%_
                                                   _%tl4667347501%_
                                                   _%e4667847504%_
                                                   _%hd4667747508%_
                                                   _%tl4667647511%_
                                                   _%e4668147514%_
                                                   _%hd4668047518%_
                                                   _%tl4667947521%_
                                                   _%__splice7503875039%_
                                                   _%target4680746958%_
                                                   _%tl4680946961%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_))))
                                  (if (gx#stx-pair/null? _%tl4667647511%_)
                                      (let ((_%__splice7503875039%_
                                             (gx#syntax-split-splice
                                              _%tl4667647511%_
                                              '0)))
                                        (let ((_%tl4680946961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '1)))
                                              (_%target4680746958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4680946961%_)
                                              (_%__match7532675327%_
                                               _%e4667547494%_
                                               _%hd4667447498%_
                                               _%tl4667347501%_
                                               _%e4667847504%_
                                               _%hd4667747508%_
                                               _%tl4667647511%_
                                               _%e4668147514%_
                                               _%hd4668047518%_
                                               _%tl4667947521%_
                                               _%__splice7503875039%_
                                               _%target4680746958%_
                                               _%tl4680946961%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_))))))))
                   (_%__match7509075091%_
                    (lambda (_%e4664347656%_
                             _%hd4664247660%_
                             _%tl4664147663%_
                             _%e4664647666%_
                             _%hd4664547670%_
                             _%tl4664447673%_
                             _%e4664947676%_
                             _%hd4664847680%_
                             _%tl4664747683%_
                             _%e4665247686%_
                             _%hd4665147690%_
                             _%tl4665047693%_
                             _%e4665547696%_
                             _%hd4665447700%_
                             _%tl4665347703%_
                             _%e4665847706%_
                             _%hd4665747710%_
                             _%tl4665647713%_
                             _%__splice7501875019%_
                             _%target4665947716%_
                             _%tl4666147719%_)
                      (letrec ((_%loop4666247722%_
                                (lambda (_%hd4666047726%_ _%body4666647729%_)
                                  (if (gx#stx-pair? _%hd4666047726%_)
                                      (let ((_%e4666347732%_
                                             (gx#syntax-e _%hd4666047726%_)))
                                        (let ((_%lp-tl4666547739%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4666347732%_)))
                                              (_%lp-hd4666447736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4666347732%_))))
                                          (_%loop4666247722%_
                                           _%lp-tl4666547739%_
                                           (cons _%lp-hd4666447736%_
                                                 _%body4666647729%_))))
                                      (let ((_%body4666747742%_
                                             (reverse _%body4666647729%_)))
                                        (let ((_%L47746%_ _%body4666747742%_)
                                              (_%L47748%_ _%hd4665747710%_)
                                              (_%L47749%_ _%hd4665447700%_)
                                              (_%L47750%_ _%hd4665147690%_)
                                              (_%L47751%_ _%hd4664847680%_))
                                          (if (and (gx#identifier? _%L47751%_)
                                                   (gx#identifier? _%L47749%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47749%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7501675017%_
                                               _%L47746%_
                                               _%L47748%_
                                               _%L47749%_
                                               _%L47750%_
                                               _%L47751%_)
                                              (_%__match7512075121%_
                                               _%e4664347656%_
                                               _%hd4664247660%_
                                               _%tl4664147663%_
                                               _%e4664647666%_
                                               _%hd4664547670%_
                                               _%tl4664447673%_
                                               _%e4664947676%_
                                               _%hd4664847680%_
                                               _%tl4664747683%_
                                               _%e4665247686%_
                                               _%hd4665147690%_
                                               _%tl4665047693%_
                                               _%e4665547696%_
                                               _%hd4665447700%_
                                               _%tl4665347703%_))))))))
                        (_%loop4666247722%_ _%target4665947716%_ '())))))
              (if (gx#stx-pair? _%__stx7501375014%_)
                  (let ((_%e4664347656%_ (gx#syntax-e _%__stx7501375014%_)))
                    (let ((_%tl4664147663%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4664347656%_)))
                          (_%hd4664247660%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4664347656%_))))
                      (if (gx#stx-pair? _%tl4664147663%_)
                          (let ((_%e4664647666%_
                                 (gx#syntax-e _%tl4664147663%_)))
                            (let ((_%tl4664447673%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4664647666%_)))
                                  (_%hd4664547670%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4664647666%_))))
                              (if (gx#stx-pair? _%hd4664547670%_)
                                  (let ((_%e4664947676%_
                                         (gx#syntax-e _%hd4664547670%_)))
                                    (let ((_%tl4664747683%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4664947676%_)))
                                          (_%hd4664847680%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4664947676%_))))
                                      (if (gx#stx-pair? _%tl4664747683%_)
                                          (let ((_%e4665247686%_
                                                 (gx#syntax-e
                                                  _%tl4664747683%_)))
                                            (let ((_%tl4665047693%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4665247686%_)))
                                                  (_%hd4665147690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4665247686%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4665047693%_)
                                                  (let ((_%e4665547696%_
                                                         (gx#syntax-e
                                                          _%tl4665047693%_)))
                                                    (let ((_%tl4665347703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4665547696%_)))
                                                          (_%hd4665447700%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4665547696%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4665347703%_)
                                                          (let ((_%e4665847706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4665347703%_)))
                    (let ((_%tl4665647713%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4665847706%_)))
                          (_%hd4665747710%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4665847706%_))))
                      (if (gx#stx-null? _%tl4665647713%_)
                          (if (gx#stx-pair/null? _%tl4664447673%_)
                              (let ((_%__splice7501875019%_
                                     (gx#syntax-split-splice
                                      _%tl4664447673%_
                                      '0)))
                                (let ((_%tl4666147719%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7501875019%_
                                          '1)))
                                      (_%target4665947716%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7501875019%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4666147719%_)
                                      (_%__match7509075091%_
                                       _%e4664347656%_
                                       _%hd4664247660%_
                                       _%tl4664147663%_
                                       _%e4664647666%_
                                       _%hd4664547670%_
                                       _%tl4664447673%_
                                       _%e4664947676%_
                                       _%hd4664847680%_
                                       _%tl4664747683%_
                                       _%e4665247686%_
                                       _%hd4665147690%_
                                       _%tl4665047693%_
                                       _%e4665547696%_
                                       _%hd4665447700%_
                                       _%tl4665347703%_
                                       _%e4665847706%_
                                       _%hd4665747710%_
                                       _%tl4665647713%_
                                       _%__splice7501875019%_
                                       _%target4665947716%_
                                       _%tl4666147719%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_)))
                          (if (gx#identifier? _%hd4665447700%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80202_|
                                   _%hd4665447700%_)
                                  (if (gx#stx-pair? _%tl4665647713%_)
                                      (let ((_%e4669347554%_
                                             (gx#syntax-e _%tl4665647713%_)))
                                        (let ((_%tl4669147561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4669347554%_)))
                                              (_%hd4669247558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4669347554%_))))
                                          (if (gx#identifier? _%hd4669247558%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80203_|
                                                   _%hd4669247558%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4669147561%_)
                                                      (let ((_%e4669647564%_
                                                             (gx#syntax-e
                                                              _%tl4669147561%_)))
                                                        (let ((_%tl4669447571%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4669647564%_)))
                      (_%hd4669547568%_
                       (let () (declare (not safe)) (##car _%e4669647564%_))))
                  (if (gx#stx-null? _%tl4669447571%_)
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7502275023%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4669947577%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502275023%_ '1)))
                                  (_%target4669747574%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502275023%_
                                      '0))))
                              (if (gx#stx-null? _%tl4669947577%_)
                                  (_%__match7515675157%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%e4665247686%_
                                   _%hd4665147690%_
                                   _%tl4665047693%_
                                   _%e4665547696%_
                                   _%hd4665447700%_
                                   _%tl4665347703%_
                                   _%e4665847706%_
                                   _%hd4665747710%_
                                   _%tl4665647713%_
                                   _%e4669347554%_
                                   _%hd4669247558%_
                                   _%tl4669147561%_
                                   _%e4669647564%_
                                   _%hd4669547568%_
                                   _%tl4669447571%_
                                   _%__splice7502275023%_
                                   _%target4669747574%_
                                   _%tl4669947577%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_)))
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))))
              (if (gx#identifier? _%hd4665147690%_)
                  (if (gx#free-identifier=?
                       |gerbil/core/contract~Using[1]#_g80200_|
                       _%hd4665147690%_)
                      (if (gx#identifier? _%hd4665747710%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80201_|
                               _%hd4665747710%_)
                              (if (gx#stx-null? _%tl4669147561%_)
                                  (if (gx#stx-pair/null? _%tl4664447673%_)
                                      (let ((_%__splice7503475035%_
                                             (gx#syntax-split-splice
                                              _%tl4664447673%_
                                              '0)))
                                        (let ((_%tl4678847099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503475035%_
                                                  '1)))
                                              (_%target4678647096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503475035%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4678847099%_)
                                              (_%__match7530075301%_
                                               _%e4664347656%_
                                               _%hd4664247660%_
                                               _%tl4664147663%_
                                               _%e4664647666%_
                                               _%hd4664547670%_
                                               _%tl4664447673%_
                                               _%e4664947676%_
                                               _%hd4664847680%_
                                               _%tl4664747683%_
                                               _%e4665247686%_
                                               _%hd4665147690%_
                                               _%tl4665047693%_
                                               _%e4665547696%_
                                               _%hd4665447700%_
                                               _%tl4665347703%_
                                               _%e4665847706%_
                                               _%hd4665747710%_
                                               _%tl4665647713%_
                                               _%e4669347554%_
                                               _%hd4669247558%_
                                               _%tl4669147561%_
                                               _%__splice7503475035%_
                                               _%target4678647096%_
                                               _%tl4678847099%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))
                                  (if (gx#stx-pair/null? _%tl4664447673%_)
                                      (let ((_%__splice7503875039%_
                                             (gx#syntax-split-splice
                                              _%tl4664447673%_
                                              '0)))
                                        (let ((_%tl4680946961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '1)))
                                              (_%target4680746958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4680946961%_)
                                              (_%__match7532675327%_
                                               _%e4664347656%_
                                               _%hd4664247660%_
                                               _%tl4664147663%_
                                               _%e4664647666%_
                                               _%hd4664547670%_
                                               _%tl4664447673%_
                                               _%e4664947676%_
                                               _%hd4664847680%_
                                               _%tl4664747683%_
                                               _%__splice7503875039%_
                                               _%target4680746958%_
                                               _%tl4680946961%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_))))
                              (if (gx#stx-pair/null? _%tl4664447673%_)
                                  (let ((_%__splice7503875039%_
                                         (gx#syntax-split-splice
                                          _%tl4664447673%_
                                          '0)))
                                    (let ((_%tl4680946961%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '1)))
                                          (_%target4680746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4680946961%_)
                                          (_%__match7532675327%_
                                           _%e4664347656%_
                                           _%hd4664247660%_
                                           _%tl4664147663%_
                                           _%e4664647666%_
                                           _%hd4664547670%_
                                           _%tl4664447673%_
                                           _%e4664947676%_
                                           _%hd4664847680%_
                                           _%tl4664747683%_
                                           _%__splice7503875039%_
                                           _%target4680746958%_
                                           _%tl4680946961%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_))))
                          (if (gx#stx-pair/null? _%tl4664447673%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4664447673%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4664347656%_
                                       _%hd4664247660%_
                                       _%tl4664147663%_
                                       _%e4664647666%_
                                       _%hd4664547670%_
                                       _%tl4664447673%_
                                       _%e4664947676%_
                                       _%hd4664847680%_
                                       _%tl4664747683%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_))))
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))
                  (if (gx#stx-pair/null? _%tl4664447673%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4664447673%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4664347656%_
                               _%hd4664247660%_
                               _%tl4664147663%_
                               _%e4664647666%_
                               _%hd4664547670%_
                               _%tl4664447673%_
                               _%e4664947676%_
                               _%hd4664847680%_
                               _%tl4664747683%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4665147690%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80200_|
                                                           _%hd4665147690%_)
                                                          (if (gx#identifier?
                                                               _%hd4665747710%_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core/contract~Using[1]#_g80201_|
                           _%hd4665747710%_)
                          (if (gx#stx-null? _%tl4669147561%_)
                              (if (gx#stx-pair/null? _%tl4664447673%_)
                                  (let ((_%__splice7503475035%_
                                         (gx#syntax-split-splice
                                          _%tl4664447673%_
                                          '0)))
                                    (let ((_%tl4678847099%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503475035%_
                                              '1)))
                                          (_%target4678647096%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503475035%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4678847099%_)
                                          (_%__match7530075301%_
                                           _%e4664347656%_
                                           _%hd4664247660%_
                                           _%tl4664147663%_
                                           _%e4664647666%_
                                           _%hd4664547670%_
                                           _%tl4664447673%_
                                           _%e4664947676%_
                                           _%hd4664847680%_
                                           _%tl4664747683%_
                                           _%e4665247686%_
                                           _%hd4665147690%_
                                           _%tl4665047693%_
                                           _%e4665547696%_
                                           _%hd4665447700%_
                                           _%tl4665347703%_
                                           _%e4665847706%_
                                           _%hd4665747710%_
                                           _%tl4665647713%_
                                           _%e4669347554%_
                                           _%hd4669247558%_
                                           _%tl4669147561%_
                                           _%__splice7503475035%_
                                           _%target4678647096%_
                                           _%tl4678847099%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))
                              (if (gx#stx-pair/null? _%tl4664447673%_)
                                  (let ((_%__splice7503875039%_
                                         (gx#syntax-split-splice
                                          _%tl4664447673%_
                                          '0)))
                                    (let ((_%tl4680946961%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '1)))
                                          (_%target4680746958%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7503875039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4680946961%_)
                                          (_%__match7532675327%_
                                           _%e4664347656%_
                                           _%hd4664247660%_
                                           _%tl4664147663%_
                                           _%e4664647666%_
                                           _%hd4664547670%_
                                           _%tl4664447673%_
                                           _%e4664947676%_
                                           _%hd4664847680%_
                                           _%tl4664747683%_
                                           _%__splice7503875039%_
                                           _%target4680746958%_
                                           _%tl4680946961%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_))))
                          (if (gx#stx-pair/null? _%tl4664447673%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4664447673%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4664347656%_
                                       _%hd4664247660%_
                                       _%tl4664147663%_
                                       _%e4664647666%_
                                       _%hd4664547670%_
                                       _%tl4664447673%_
                                       _%e4664947676%_
                                       _%hd4664847680%_
                                       _%tl4664747683%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_))))
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))
                  (if (gx#stx-pair/null? _%tl4664447673%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4664447673%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4664347656%_
                               _%hd4664247660%_
                               _%tl4664147663%_
                               _%e4664647666%_
                               _%hd4664547670%_
                               _%tl4664447673%_
                               _%e4664947676%_
                               _%hd4664847680%_
                               _%tl4664747683%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_))))
              (if (gx#stx-pair/null? _%tl4664447673%_)
                  (let ((_%__splice7503875039%_
                         (gx#syntax-split-splice _%tl4664447673%_ '0)))
                    (let ((_%tl4680946961%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '1)))
                          (_%target4680746958%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '0))))
                      (if (gx#stx-null? _%tl4680946961%_)
                          (_%__match7532675327%_
                           _%e4664347656%_
                           _%hd4664247660%_
                           _%tl4664147663%_
                           _%e4664647666%_
                           _%hd4664547670%_
                           _%tl4664447673%_
                           _%e4664947676%_
                           _%hd4664847680%_
                           _%tl4664747683%_
                           _%__splice7503875039%_
                           _%target4680746958%_
                           _%tl4680946961%_)
                          (let () (declare (not safe)) (_%g4663446837%_)))))
                  (let () (declare (not safe)) (_%g4663446837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4665147690%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80200_|
                                                       _%hd4665147690%_)
                                                      (if (gx#identifier?
                                                           _%hd4665747710%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~Using[1]#_g80201_|
                                                               _%hd4665747710%_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4669147561%_)
                          (if (gx#stx-pair/null? _%tl4664447673%_)
                              (let ((_%__splice7503475035%_
                                     (gx#syntax-split-splice
                                      _%tl4664447673%_
                                      '0)))
                                (let ((_%tl4678847099%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503475035%_
                                          '1)))
                                      (_%target4678647096%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503475035%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4678847099%_)
                                      (_%__match7530075301%_
                                       _%e4664347656%_
                                       _%hd4664247660%_
                                       _%tl4664147663%_
                                       _%e4664647666%_
                                       _%hd4664547670%_
                                       _%tl4664447673%_
                                       _%e4664947676%_
                                       _%hd4664847680%_
                                       _%tl4664747683%_
                                       _%e4665247686%_
                                       _%hd4665147690%_
                                       _%tl4665047693%_
                                       _%e4665547696%_
                                       _%hd4665447700%_
                                       _%tl4665347703%_
                                       _%e4665847706%_
                                       _%hd4665747710%_
                                       _%tl4665647713%_
                                       _%e4669347554%_
                                       _%hd4669247558%_
                                       _%tl4669147561%_
                                       _%__splice7503475035%_
                                       _%target4678647096%_
                                       _%tl4678847099%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_)))
                          (if (gx#stx-pair/null? _%tl4664447673%_)
                              (let ((_%__splice7503875039%_
                                     (gx#syntax-split-splice
                                      _%tl4664447673%_
                                      '0)))
                                (let ((_%tl4680946961%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '1)))
                                      (_%target4680746958%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7503875039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4680946961%_)
                                      (_%__match7532675327%_
                                       _%e4664347656%_
                                       _%hd4664247660%_
                                       _%tl4664147663%_
                                       _%e4664647666%_
                                       _%hd4664547670%_
                                       _%tl4664447673%_
                                       _%e4664947676%_
                                       _%hd4664847680%_
                                       _%tl4664747683%_
                                       _%__splice7503875039%_
                                       _%target4680746958%_
                                       _%tl4680946961%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_)))))
                              (let () (declare (not safe)) (_%g4663446837%_))))
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))
                  (if (gx#stx-pair/null? _%tl4664447673%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4664447673%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4664347656%_
                               _%hd4664247660%_
                               _%tl4664147663%_
                               _%e4664647666%_
                               _%hd4664547670%_
                               _%tl4664447673%_
                               _%e4664947676%_
                               _%hd4664847680%_
                               _%tl4664747683%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_))))
              (if (gx#stx-pair/null? _%tl4664447673%_)
                  (let ((_%__splice7503875039%_
                         (gx#syntax-split-splice _%tl4664447673%_ '0)))
                    (let ((_%tl4680946961%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '1)))
                          (_%target4680746958%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '0))))
                      (if (gx#stx-null? _%tl4680946961%_)
                          (_%__match7532675327%_
                           _%e4664347656%_
                           _%hd4664247660%_
                           _%tl4664147663%_
                           _%e4664647666%_
                           _%hd4664547670%_
                           _%tl4664447673%_
                           _%e4664947676%_
                           _%hd4664847680%_
                           _%tl4664747683%_
                           _%__splice7503875039%_
                           _%target4680746958%_
                           _%tl4680946961%_)
                          (let () (declare (not safe)) (_%g4663446837%_)))))
                  (let () (declare (not safe)) (_%g4663446837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664447673%_)
                                                      (let ((_%__splice7503875039%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664447673%_
                                                              '0)))
                                                        (let ((_%tl4680946961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '1)))
                      (_%target4680746958%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '0))))
                  (if (gx#stx-null? _%tl4680946961%_)
                      (_%__match7532675327%_
                       _%e4664347656%_
                       _%hd4664247660%_
                       _%tl4664147663%_
                       _%e4664647666%_
                       _%hd4664547670%_
                       _%tl4664447673%_
                       _%e4664947676%_
                       _%hd4664847680%_
                       _%tl4664747683%_
                       _%__splice7503875039%_
                       _%target4680746958%_
                       _%tl4680946961%_)
                      (let () (declare (not safe)) (_%g4663446837%_)))))
              (let () (declare (not safe)) (_%g4663446837%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair/null? _%tl4664447673%_)
                                          (let ((_%__splice7503875039%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664447673%_
                                                  '0)))
                                            (let ((_%tl4680946961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '1)))
                                                  (_%target4680746958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4680946961%_)
                                                  (_%__match7532675327%_
                                                   _%e4664347656%_
                                                   _%hd4664247660%_
                                                   _%tl4664147663%_
                                                   _%e4664647666%_
                                                   _%hd4664547670%_
                                                   _%tl4664447673%_
                                                   _%e4664947676%_
                                                   _%hd4664847680%_
                                                   _%tl4664747683%_
                                                   _%__splice7503875039%_
                                                   _%target4680746958%_
                                                   _%tl4680946961%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_))))
                                  (if (gx#identifier? _%hd4665147690%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80200_|
                                           _%hd4665147690%_)
                                          (if (gx#identifier? _%hd4665747710%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80201_|
                                                   _%hd4665747710%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4665647713%_)
                                                      (let ((_%e4678547086%_
                                                             (gx#syntax-e
                                                              _%tl4665647713%_)))
                                                        (let ((_%tl4678347093%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4678547086%_)))
                      (_%hd4678447090%_
                       (let () (declare (not safe)) (##car _%e4678547086%_))))
                  (if (gx#stx-null? _%tl4678347093%_)
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7503475035%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4678847099%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503475035%_ '1)))
                                  (_%target4678647096%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503475035%_
                                      '0))))
                              (if (gx#stx-null? _%tl4678847099%_)
                                  (_%__match7530075301%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%e4665247686%_
                                   _%hd4665147690%_
                                   _%tl4665047693%_
                                   _%e4665547696%_
                                   _%hd4665447700%_
                                   _%tl4665347703%_
                                   _%e4665847706%_
                                   _%hd4665747710%_
                                   _%tl4665647713%_
                                   _%e4678547086%_
                                   _%hd4678447090%_
                                   _%tl4678347093%_
                                   _%__splice7503475035%_
                                   _%target4678647096%_
                                   _%tl4678847099%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_)))
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_))))))
              (if (gx#stx-pair/null? _%tl4664447673%_)
                  (let ((_%__splice7503875039%_
                         (gx#syntax-split-splice _%tl4664447673%_ '0)))
                    (let ((_%tl4680946961%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '1)))
                          (_%target4680746958%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7503875039%_ '0))))
                      (if (gx#stx-null? _%tl4680946961%_)
                          (_%__match7532675327%_
                           _%e4664347656%_
                           _%hd4664247660%_
                           _%tl4664147663%_
                           _%e4664647666%_
                           _%hd4664547670%_
                           _%tl4664447673%_
                           _%e4664947676%_
                           _%hd4664847680%_
                           _%tl4664747683%_
                           _%__splice7503875039%_
                           _%target4680746958%_
                           _%tl4680946961%_)
                          (let () (declare (not safe)) (_%g4663446837%_)))))
                  (let () (declare (not safe)) (_%g4663446837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664447673%_)
                                                      (let ((_%__splice7503875039%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664447673%_
                                                              '0)))
                                                        (let ((_%tl4680946961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '1)))
                      (_%target4680746958%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '0))))
                  (if (gx#stx-null? _%tl4680946961%_)
                      (_%__match7532675327%_
                       _%e4664347656%_
                       _%hd4664247660%_
                       _%tl4664147663%_
                       _%e4664647666%_
                       _%hd4664547670%_
                       _%tl4664447673%_
                       _%e4664947676%_
                       _%hd4664847680%_
                       _%tl4664747683%_
                       _%__splice7503875039%_
                       _%target4680746958%_
                       _%tl4680946961%_)
                      (let () (declare (not safe)) (_%g4663446837%_)))))
              (let () (declare (not safe)) (_%g4663446837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4664447673%_)
                                                  (let ((_%__splice7503875039%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664447673%_
                                                          '0)))
                                                    (let ((_%tl4680946961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7503875039%_
                                                              '1)))
                                                          (_%target4680746958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7503875039%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4680946961%_)
                                                          (_%__match7532675327%_
                                                           _%e4664347656%_
                                                           _%hd4664247660%_
                                                           _%tl4664147663%_
                                                           _%e4664647666%_
                                                           _%hd4664547670%_
                                                           _%tl4664447673%_
                                                           _%e4664947676%_
                                                           _%hd4664847680%_
                                                           _%tl4664747683%_
                                                           _%__splice7503875039%_
                                                           _%target4680746958%_
                                                           _%tl4680946961%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446837%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4664447673%_)
                                              (let ((_%__splice7503875039%_
                                                     (gx#syntax-split-splice
                                                      _%tl4664447673%_
                                                      '0)))
                                                (let ((_%tl4680946961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '1)))
                                                      (_%target4680746958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4680946961%_)
                                                      (_%__match7532675327%_
                                                       _%e4664347656%_
                                                       _%hd4664247660%_
                                                       _%tl4664147663%_
                                                       _%e4664647666%_
                                                       _%hd4664547670%_
                                                       _%tl4664447673%_
                                                       _%e4664947676%_
                                                       _%hd4664847680%_
                                                       _%tl4664747683%_
                                                       _%__splice7503875039%_
                                                       _%target4680746958%_
                                                       _%tl4680946961%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446837%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_))))
                                      (if (gx#stx-pair/null? _%tl4664447673%_)
                                          (let ((_%__splice7503875039%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664447673%_
                                                  '0)))
                                            (let ((_%tl4680946961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '1)))
                                                  (_%target4680746958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4680946961%_)
                                                  (_%__match7532675327%_
                                                   _%e4664347656%_
                                                   _%hd4664247660%_
                                                   _%tl4664147663%_
                                                   _%e4664647666%_
                                                   _%hd4664547670%_
                                                   _%tl4664447673%_
                                                   _%e4664947676%_
                                                   _%hd4664847680%_
                                                   _%tl4664747683%_
                                                   _%__splice7503875039%_
                                                   _%target4680746958%_
                                                   _%tl4680946961%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))))
                              (if (gx#identifier? _%hd4665147690%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80200_|
                                       _%hd4665147690%_)
                                      (if (gx#identifier? _%hd4665747710%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~Using[1]#_g80201_|
                                               _%hd4665747710%_)
                                              (if (gx#stx-pair?
                                                   _%tl4665647713%_)
                                                  (let ((_%e4678547086%_
                                                         (gx#syntax-e
                                                          _%tl4665647713%_)))
                                                    (let ((_%tl4678347093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4678547086%_)))
                                                          (_%hd4678447090%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4678547086%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4678347093%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4664447673%_)
                                                              (let ((_%__splice7503475035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4664447673%_ '0)))
                        (let ((_%tl4678847099%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503475035%_ '1)))
                              (_%target4678647096%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503475035%_ '0))))
                          (if (gx#stx-null? _%tl4678847099%_)
                              (_%__match7530075301%_
                               _%e4664347656%_
                               _%hd4664247660%_
                               _%tl4664147663%_
                               _%e4664647666%_
                               _%hd4664547670%_
                               _%tl4664447673%_
                               _%e4664947676%_
                               _%hd4664847680%_
                               _%tl4664747683%_
                               _%e4665247686%_
                               _%hd4665147690%_
                               _%tl4665047693%_
                               _%e4665547696%_
                               _%hd4665447700%_
                               _%tl4665347703%_
                               _%e4665847706%_
                               _%hd4665747710%_
                               _%tl4665647713%_
                               _%e4678547086%_
                               _%hd4678447090%_
                               _%tl4678347093%_
                               _%__splice7503475035%_
                               _%target4678647096%_
                               _%tl4678847099%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_)))
                  (if (gx#stx-pair/null? _%tl4664447673%_)
                      (let ((_%__splice7503875039%_
                             (gx#syntax-split-splice _%tl4664447673%_ '0)))
                        (let ((_%tl4680946961%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '1)))
                              (_%target4680746958%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7503875039%_ '0))))
                          (if (gx#stx-null? _%tl4680946961%_)
                              (_%__match7532675327%_
                               _%e4664347656%_
                               _%hd4664247660%_
                               _%tl4664147663%_
                               _%e4664647666%_
                               _%hd4664547670%_
                               _%tl4664447673%_
                               _%e4664947676%_
                               _%hd4664847680%_
                               _%tl4664747683%_
                               _%__splice7503875039%_
                               _%target4680746958%_
                               _%tl4680946961%_)
                              (let ()
                                (declare (not safe))
                                (_%g4663446837%_)))))
                      (let () (declare (not safe)) (_%g4663446837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664447673%_)
                                                      (let ((_%__splice7503875039%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664447673%_
                                                              '0)))
                                                        (let ((_%tl4680946961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '1)))
                      (_%target4680746958%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '0))))
                  (if (gx#stx-null? _%tl4680946961%_)
                      (_%__match7532675327%_
                       _%e4664347656%_
                       _%hd4664247660%_
                       _%tl4664147663%_
                       _%e4664647666%_
                       _%hd4664547670%_
                       _%tl4664447673%_
                       _%e4664947676%_
                       _%hd4664847680%_
                       _%tl4664747683%_
                       _%__splice7503875039%_
                       _%target4680746958%_
                       _%tl4680946961%_)
                      (let () (declare (not safe)) (_%g4663446837%_)))))
              (let () (declare (not safe)) (_%g4663446837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4664447673%_)
                                                  (let ((_%__splice7503875039%_
                                                         (gx#syntax-split-splice
                                                          _%tl4664447673%_
                                                          '0)))
                                                    (let ((_%tl4680946961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7503875039%_
                                                              '1)))
                                                          (_%target4680746958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7503875039%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4680946961%_)
                                                          (_%__match7532675327%_
                                                           _%e4664347656%_
                                                           _%hd4664247660%_
                                                           _%tl4664147663%_
                                                           _%e4664647666%_
                                                           _%hd4664547670%_
                                                           _%tl4664447673%_
                                                           _%e4664947676%_
                                                           _%hd4664847680%_
                                                           _%tl4664747683%_
                                                           _%__splice7503875039%_
                                                           _%target4680746958%_
                                                           _%tl4680946961%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4663446837%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4664447673%_)
                                              (let ((_%__splice7503875039%_
                                                     (gx#syntax-split-splice
                                                      _%tl4664447673%_
                                                      '0)))
                                                (let ((_%tl4680946961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '1)))
                                                      (_%target4680746958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4680946961%_)
                                                      (_%__match7532675327%_
                                                       _%e4664347656%_
                                                       _%hd4664247660%_
                                                       _%tl4664147663%_
                                                       _%e4664647666%_
                                                       _%hd4664547670%_
                                                       _%tl4664447673%_
                                                       _%e4664947676%_
                                                       _%hd4664847680%_
                                                       _%tl4664747683%_
                                                       _%__splice7503875039%_
                                                       _%target4680746958%_
                                                       _%tl4680946961%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446837%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_))))
                                      (if (gx#stx-pair/null? _%tl4664447673%_)
                                          (let ((_%__splice7503875039%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664447673%_
                                                  '0)))
                                            (let ((_%tl4680946961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '1)))
                                                  (_%target4680746958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7503875039%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4680946961%_)
                                                  (_%__match7532675327%_
                                                   _%e4664347656%_
                                                   _%hd4664247660%_
                                                   _%tl4664147663%_
                                                   _%e4664647666%_
                                                   _%hd4664547670%_
                                                   _%tl4664447673%_
                                                   _%e4664947676%_
                                                   _%hd4664847680%_
                                                   _%tl4664747683%_
                                                   _%__splice7503875039%_
                                                   _%target4680746958%_
                                                   _%tl4680946961%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_))))
                                  (if (gx#stx-pair/null? _%tl4664447673%_)
                                      (let ((_%__splice7503875039%_
                                             (gx#syntax-split-splice
                                              _%tl4664447673%_
                                              '0)))
                                        (let ((_%tl4680946961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '1)))
                                              (_%target4680746958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7503875039%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4680946961%_)
                                              (_%__match7532675327%_
                                               _%e4664347656%_
                                               _%hd4664247660%_
                                               _%tl4664147663%_
                                               _%e4664647666%_
                                               _%hd4664547670%_
                                               _%tl4664447673%_
                                               _%e4664947676%_
                                               _%hd4664847680%_
                                               _%tl4664747683%_
                                               _%__splice7503875039%_
                                               _%target4680746958%_
                                               _%tl4680946961%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_))))))))
                  (if (gx#stx-null? _%tl4665347703%_)
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7502675027%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4672747349%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7502675027%_ '1)))
                                  (_%target4672547346%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7502675027%_
                                      '0))))
                              (if (gx#stx-null? _%tl4672747349%_)
                                  (_%__match7519675197%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%e4665247686%_
                                   _%hd4665147690%_
                                   _%tl4665047693%_
                                   _%e4665547696%_
                                   _%hd4665447700%_
                                   _%tl4665347703%_
                                   _%__splice7502675027%_
                                   _%target4672547346%_
                                   _%tl4672747349%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_)))
                      (if (gx#stx-pair/null? _%tl4664447673%_)
                          (let ((_%__splice7503875039%_
                                 (gx#syntax-split-splice _%tl4664447673%_ '0)))
                            (let ((_%tl4680946961%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7503875039%_ '1)))
                                  (_%target4680746958%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7503875039%_
                                      '0))))
                              (if (gx#stx-null? _%tl4680946961%_)
                                  (_%__match7532675327%_
                                   _%e4664347656%_
                                   _%hd4664247660%_
                                   _%tl4664147663%_
                                   _%e4664647666%_
                                   _%hd4664547670%_
                                   _%tl4664447673%_
                                   _%e4664947676%_
                                   _%hd4664847680%_
                                   _%tl4664747683%_
                                   _%__splice7503875039%_
                                   _%target4680746958%_
                                   _%tl4680946961%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4663446837%_)))))
                          (let () (declare (not safe)) (_%g4663446837%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4664447673%_)
                                                      (let ((_%__splice7503875039%_
                                                             (gx#syntax-split-splice
                                                              _%tl4664447673%_
                                                              '0)))
                                                        (let ((_%tl4680946961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '1)))
                      (_%target4680746958%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7503875039%_ '0))))
                  (if (gx#stx-null? _%tl4680946961%_)
                      (_%__match7532675327%_
                       _%e4664347656%_
                       _%hd4664247660%_
                       _%tl4664147663%_
                       _%e4664647666%_
                       _%hd4664547670%_
                       _%tl4664447673%_
                       _%e4664947676%_
                       _%hd4664847680%_
                       _%tl4664747683%_
                       _%__splice7503875039%_
                       _%target4680746958%_
                       _%tl4680946961%_)
                      (let () (declare (not safe)) (_%g4663446837%_)))))
              (let () (declare (not safe)) (_%g4663446837%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4664447673%_)
                                              (let ((_%__splice7503875039%_
                                                     (gx#syntax-split-splice
                                                      _%tl4664447673%_
                                                      '0)))
                                                (let ((_%tl4680946961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '1)))
                                                      (_%target4680746958%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7503875039%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4680946961%_)
                                                      (_%__match7532675327%_
                                                       _%e4664347656%_
                                                       _%hd4664247660%_
                                                       _%tl4664147663%_
                                                       _%e4664647666%_
                                                       _%hd4664547670%_
                                                       _%tl4664447673%_
                                                       _%e4664947676%_
                                                       _%hd4664847680%_
                                                       _%tl4664747683%_
                                                       _%__splice7503875039%_
                                                       _%target4680746958%_
                                                       _%tl4680946961%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4663446837%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4663446837%_))))))
                                  (if (gx#stx-null? _%hd4664547670%_)
                                      (if (gx#stx-pair/null? _%tl4664447673%_)
                                          (let ((_%__splice7504275043%_
                                                 (gx#syntax-split-splice
                                                  _%tl4664447673%_
                                                  '0)))
                                            (let ((_%tl4682546867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7504275043%_
                                                      '1)))
                                                  (_%target4682346864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7504275043%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4682546867%_)
                                                  (_%__match7534875349%_
                                                   _%e4664347656%_
                                                   _%hd4664247660%_
                                                   _%tl4664147663%_
                                                   _%e4664647666%_
                                                   _%hd4664547670%_
                                                   _%tl4664447673%_
                                                   _%__splice7504275043%_
                                                   _%target4682346864%_
                                                   _%tl4682546867%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4663446837%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4663446837%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4663446837%_))))))
                          (let () (declare (not safe)) (_%g4663446837%_)))))
                  (let () (declare (not safe)) (_%g4663446837%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47814%_)
        (let* ((_%g4781847852%_
                (lambda (_%g4781947848%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4781947848%_)))
               (_%g4781747975%_
                (lambda (_%g4781947856%_)
                  (if (gx#stx-pair? _%g4781947856%_)
                      (let ((_%e4782547859%_ (gx#syntax-e _%g4781947856%_)))
                        (let ((_%hd4782447863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4782547859%_)))
                              (_%tl4782347866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4782547859%_))))
                          (if (gx#stx-pair? _%tl4782347866%_)
                              (let ((_%e4782847869%_
                                     (gx#syntax-e _%tl4782347866%_)))
                                (let ((_%hd4782747873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4782847869%_)))
                                      (_%tl4782647876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4782847869%_))))
                                  (if (gx#stx-pair? _%hd4782747873%_)
                                      (let ((_%e4783147879%_
                                             (gx#syntax-e _%hd4782747873%_)))
                                        (let ((_%hd4783047883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4783147879%_)))
                                              (_%tl4782947886%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4783147879%_))))
                                          (if (gx#stx-pair? _%tl4782947886%_)
                                              (let ((_%e4783447889%_
                                                     (gx#syntax-e
                                                      _%tl4782947886%_)))
                                                (let ((_%hd4783347893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4783447889%_)))
                                                      (_%tl4783247896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4783447889%_))))
                                                  (if (gx#identifier?
                                                       _%hd4783347893%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80204_|
                                                           _%hd4783347893%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4783247896%_)
                                                              (let ((_%e4783747899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4783247896%_)))
                        (let ((_%hd4783647903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4783747899%_)))
                              (_%tl4783547906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4783747899%_))))
                          (if (gx#stx-null? _%tl4783547906%_)
                              (if (gx#stx-pair/null? _%tl4782647876%_)
                                  (let ((_g80205_
                                         (gx#syntax-split-splice
                                          _%tl4782647876%_
                                          '0)))
                                    (begin
                                      (let ((_g80206_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g80205_)
                                                   (##vector-length _g80205_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g80206_ 2)))
                                            (error "Context expects 2 values"
                                                   _g80206_)))
                                      (let ((_%target4783847909%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80205_ 0)))
                                            (_%tl4784047912%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80205_ 1))))
                                        (if (gx#stx-null? _%tl4784047912%_)
                                            (letrec ((_%loop4784147915%_
                                                      (lambda (_%hd4783947919%_
                                                               _%body4784547922%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4783947919%_)
                                                            (let ((_%e4784247925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4783947919%_)))
                      (let ((_%lp-hd4784347929%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4784247925%_)))
                            (_%lp-tl4784447932%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4784247925%_))))
                        (_%loop4784147915%_
                         _%lp-tl4784447932%_
                         (cons _%lp-hd4784347929%_ _%body4784547922%_))))
                    (let ((_%body4784647935%_ (reverse _%body4784547922%_)))
                      ((lambda (_%L47939%_ _%L47941%_ _%L47942%_)
                         (if (gx#identifier? _%L47942%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47941%_
                                               (cons _%L47942%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4796647969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4796747972%_)
                            (cons _%g4796647969%_ _%g4796747972%_))
                          '()
                          _%L47939%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47941%_ (cons _%L47942%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4781847852%_ _%g4781947856%_)))
                       _%body4784647935%_
                       _%hd4783647903%_
                       _%hd4783047883%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4784147915%_
                                               _%target4783847909%_
                                               '()))
                                            (_%g4781847852%_
                                             _%g4781947856%_)))))
                                  (_%g4781847852%_ _%g4781947856%_))
                              (_%g4781847852%_ _%g4781947856%_))))
                      (_%g4781847852%_ _%g4781947856%_))
                  (_%g4781847852%_ _%g4781947856%_))
              (_%g4781847852%_ _%g4781947856%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4781847852%_
                                               _%g4781947856%_))))
                                      (_%g4781847852%_ _%g4781947856%_))))
                              (_%g4781847852%_ _%g4781947856%_))))
                      (_%g4781847852%_ _%g4781947856%_)))))
          (_%g4781747975%_ _%$stx47814%_))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id48026%_)
        (if (gx#identifier? _%id48026%_)
            (let* ((_%str48029%_ (symbol->string (gx#stx-e _%id48026%_)))
                   (_%index4803148033%_ (string-index _%str48029%_ '#\.)))
              (if _%index4803148033%_
                  (let ((_%index48037%_ _%index4803148033%_))
                    (if (let () (declare (not safe)) (##fx> _%index48037%_ '0))
                        (let ((__tmp80207
                               (find string-empty?
                                     (string-split _%str48029%_ '#\.))))
                          (declare (not safe))
                          (not __tmp80207))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx48019%_ _%id48021%_)
        (let ((_%parts48023%_
               (string-split (symbol->string (gx#stx-e _%id48021%_)) '#\.)))
          (if (find string-empty? _%parts48023%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx48019%_
               _%id48021%_)
              (cons (gx#stx-identifier _%id48021%_ (car _%parts48023%_))
                    (map string->symbol (cdr _%parts48023%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx48000%_ _%klass-or-id48002%_ _%slot48003%_)
        (let* ((_%klass48005%_
                (if (gx#identifier? _%klass-or-id48002%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx48000%_
                       _%klass-or-id48002%_))
                    _%klass-or-id48002%_))
               (_%accessors48008%_
                (let ((__obj80030 _%klass48005%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj80030
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj80030 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj80030
                       'unchecked-accessors)))))
          (let ((_%$e48013%_ (assgetq _%slot48003%_ _%accessors48008%_)))
            (if _%$e48013%_
                _%$e48013%_
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"no accessor for slot"
                   _%stx48000%_
                   _%klass48005%_
                   _%slot48003%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47980%_
               _%klass-or-id47982%_
               _%slot47983%_
               _%checked?47984%_)
        (let* ((_%klass47986%_
                (if (gx#identifier? _%klass-or-id47982%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47980%_
                       _%klass-or-id47982%_))
                    _%klass-or-id47982%_))
               (_%mutators47989%_
                (if _%checked?47984%_
                    (let ((__obj80031 _%klass47986%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80031
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80031 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80031
                           'mutators)))
                    (let ((__obj80032 _%klass47986%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj80032
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj80032 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj80032
                           'unchecked-mutators))))))
          (let ((_%$e47994%_ (assgetq _%slot47983%_ _%mutators47989%_)))
            (if _%$e47994%_
                _%$e47994%_
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"no mutator for slot"
                   _%stx47980%_
                   _%klass47986%_
                   _%slot47983%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48040%_)
        (letrec ((_%expand-body48043%_
                  (lambda (_%klass48612%_
                           _%var48614%_
                           _%Type48615%_
                           _%body48616%_
                           _%checked?48617%_)
                    (let* ((_%g4861948663%_
                            (lambda (_%g4862048659%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4862048659%_)))
                           (_%g4861848820%_
                            (lambda (_%g4862048667%_)
                              (if (gx#stx-pair? _%g4862048667%_)
                                  (let ((_%e4863048670%_
                                         (gx#syntax-e _%g4862048667%_)))
                                    (let ((_%hd4862948674%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4863048670%_)))
                                          (_%tl4862848677%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4863048670%_))))
                                      (if (gx#stx-pair? _%tl4862848677%_)
                                          (let ((_%e4863348680%_
                                                 (gx#syntax-e
                                                  _%tl4862848677%_)))
                                            (let ((_%hd4863248684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4863348680%_)))
                                                  (_%tl4863148687%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4863348680%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4863148687%_)
                                                  (let ((_%e4863648690%_
                                                         (gx#syntax-e
                                                          _%tl4863148687%_)))
                                                    (let ((_%hd4863548694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4863648690%_)))
                                                          (_%tl4863448697%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4863648690%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4863448697%_)
                                                          (let ((_%e4863948700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4863448697%_)))
                    (let ((_%hd4863848704%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4863948700%_)))
                          (_%tl4863748707%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4863948700%_))))
                      (if (gx#stx-pair? _%tl4863748707%_)
                          (let ((_%e4864248710%_
                                 (gx#syntax-e _%tl4863748707%_)))
                            (let ((_%hd4864148714%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4864248710%_)))
                                  (_%tl4864048717%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4864248710%_))))
                              (if (gx#stx-pair? _%tl4864048717%_)
                                  (let ((_%e4864548720%_
                                         (gx#syntax-e _%tl4864048717%_)))
                                    (let ((_%hd4864448724%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4864548720%_)))
                                          (_%tl4864348727%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4864548720%_))))
                                      (if (gx#stx-pair? _%tl4864348727%_)
                                          (let ((_%e4864848730%_
                                                 (gx#syntax-e
                                                  _%tl4864348727%_)))
                                            (let ((_%hd4864748734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4864848730%_)))
                                                  (_%tl4864648737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4864848730%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4864748734%_)
                                                  (let ((_g80208_
                                                         (gx#syntax-split-splice
                                                          _%hd4864748734%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80209_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80208_)
                           (##vector-length _g80208_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80209_ 2)))
                    (error "Context expects 2 values" _g80209_)))
              (let ((_%target4864948740%_
                     (let () (declare (not safe)) (##vector-ref _g80208_ 0)))
                    (_%tl4865148743%_
                     (let () (declare (not safe)) (##vector-ref _g80208_ 1))))
                (if (gx#stx-null? _%tl4865148743%_)
                    (letrec ((_%loop4865248746%_
                              (lambda (_%hd4865048750%_ _%body4865648753%_)
                                (if (gx#stx-pair? _%hd4865048750%_)
                                    (let ((_%e4865348756%_
                                           (gx#syntax-e _%hd4865048750%_)))
                                      (let ((_%lp-hd4865448760%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4865348756%_)))
                                            (_%lp-tl4865548763%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4865348756%_))))
                                        (_%loop4865248746%_
                                         _%lp-tl4865548763%_
                                         (cons _%lp-hd4865448760%_
                                               _%body4865648753%_))))
                                    (let ((_%body4865748766%_
                                           (reverse _%body4865648753%_)))
                                      (if (gx#stx-null? _%tl4864648737%_)
                                          ((lambda (_%L48770%_
                                                    _%L48772%_
                                                    _%L48773%_
                                                    _%L48774%_
                                                    _%L48775%_
                                                    _%L48776%_
                                                    _%L48777%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L48775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L48776%_ '()))
                                           (cons _%L48775%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L48777%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L48775%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L48774%_ '()))
                                 (cons _%L48773%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L48772%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4881148814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4881248817%_)
                        (cons _%g4881148814%_ _%g4881248817%_))
                      '()
                      _%L48770%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4865748766%_
                                           _%hd4864448724%_
                                           _%hd4864148714%_
                                           _%hd4863848704%_
                                           _%hd4863548694%_
                                           _%hd4863248684%_
                                           _%hd4862948674%_)
                                          (_%g4861948663%_
                                           _%g4862048667%_)))))))
                      (_%loop4865248746%_ _%target4864948740%_ '()))
                    (_%g4861948663%_ _%g4862048667%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4861948663%_
                                                   _%g4862048667%_))))
                                          (_%g4861948663%_ _%g4862048667%_))))
                                  (_%g4861948663%_ _%g4862048667%_))))
                          (_%g4861948663%_ _%g4862048667%_))))
                  (_%g4861948663%_ _%g4862048667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4861948663%_
                                                   _%g4862048667%_))))
                                          (_%g4861948663%_ _%g4862048667%_))))
                                  (_%g4861948663%_ _%g4862048667%_)))))
                      (_%g4861848820%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj80033 _%klass48612%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80033
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80033
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj80033
                                    'type-descriptor)))
                             _%var48614%_
                             _%klass48612%_
                             _%checked?48617%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body48616%_)))))
                 (_%expand48045%_
                  (lambda (_%var48509%_
                           _%Type48511%_
                           _%body48512%_
                           _%checked?48513%_
                           _%maybe?48514%_)
                    (let* ((_%klass48516%_
                            (gx#syntax-local-value _%Type48511%_ false))
                           (_%expr-body48519%_
                            (_%expand-body48043%_
                             _%klass48516%_
                             _%var48509%_
                             _%Type48511%_
                             _%body48512%_
                             _%checked?48513%_)))
                      (if _%checked?48513%_
                          (let* ((_%g4852448543%_
                                  (lambda (_%g4852548539%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4852548539%_)))
                                 (_%g4852348605%_
                                  (lambda (_%g4852548547%_)
                                    (if (gx#stx-pair? _%g4852548547%_)
                                        (let ((_%e4853148550%_
                                               (gx#syntax-e _%g4852548547%_)))
                                          (let ((_%hd4853048554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4853148550%_)))
                                                (_%tl4852948557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4853148550%_))))
                                            (if (gx#stx-pair? _%tl4852948557%_)
                                                (let ((_%e4853448560%_
                                                       (gx#syntax-e
                                                        _%tl4852948557%_)))
                                                  (let ((_%hd4853348564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4853448560%_)))
                                                        (_%tl4853248567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4853448560%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4853248567%_)
                                                        (let ((_%e4853748570%_
                                                               (gx#syntax-e
                                                                _%tl4853248567%_)))
                                                          (let ((_%hd4853648574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4853748570%_)))
                        (_%tl4853548577%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4853748570%_))))
                    (if (gx#stx-null? _%tl4853548577%_)
                        ((lambda (_%L48580%_ _%L48582%_ _%L48583%_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'with-contract)
                                   (cons (cons _%L48582%_
                                               (cons (gx#datum->syntax '#f ':~)
                                                     (cons _%L48583%_ '())))
                                         (cons _%L48580%_ '())))))
                         _%hd4853648574%_
                         _%hd4853348564%_
                         _%hd4853048554%_)
                        (_%g4852448543%_ _%g4852548547%_))))
                (_%g4852448543%_ _%g4852548547%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4852448543%_
                                                 _%g4852548547%_))))
                                        (_%g4852448543%_ _%g4852548547%_)))))
                            (_%g4852348605%_
                             (list (let ((_%instance?48609%_
                                          (let ((__obj80034 _%klass48516%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj80034
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj80034
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj80034
                                                 'predicate)))))
                                     (if _%maybe?48514%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?48609%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?48609%_))
                                   _%var48509%_
                                   _%expr-body48519%_)))
                          _%expr-body48519%_)))))
          (let* ((_%__stx7535175352%_ _%stx48040%_)
                 (_%g4804948137%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7535175352%_))))
            (let ((_%__kont7535475355%_
                   (lambda (_%L48470%_ _%L48472%_ _%L48473%_)
                     (_%expand48045%_
                      _%L48473%_
                      _%L48472%_
                      (foldr (lambda (_%g4849648499%_ _%g4849748502%_)
                               (cons _%g4849648499%_ _%g4849748502%_))
                             '()
                             _%L48470%_)
                      '#t
                      '#f)))
                  (_%__kont7535875359%_
                   (lambda (_%L48348%_ _%L48350%_ _%L48351%_)
                     (_%expand48045%_
                      _%L48351%_
                      _%L48350%_
                      (foldr (lambda (_%g4837448377%_ _%g4837548380%_)
                               (cons _%g4837448377%_ _%g4837548380%_))
                             '()
                             _%L48348%_)
                      '#t
                      '#t)))
                  (_%__kont7536275363%_
                   (lambda (_%L48224%_ _%L48226%_ _%L48227%_)
                     (_%expand48045%_
                      _%L48227%_
                      _%L48226%_
                      (foldr (lambda (_%g4825248255%_ _%g4825348258%_)
                               (cons _%g4825248255%_ _%g4825348258%_))
                             '()
                             _%L48224%_)
                      '#f
                      '#f))))
              (let* ((_%__match7549875499%_
                      (lambda (_%e4811048144%_
                               _%hd4810948148%_
                               _%tl4810848151%_
                               _%e4811348154%_
                               _%hd4811248158%_
                               _%tl4811148161%_
                               _%e4811648164%_
                               _%hd4811548168%_
                               _%tl4811448171%_
                               _%e4811948174%_
                               _%hd4811848178%_
                               _%tl4811748181%_
                               _%e4812248184%_
                               _%hd4812148188%_
                               _%tl4812048191%_
                               _%__splice7536475365%_
                               _%target4812348194%_
                               _%tl4812548197%_)
                        (letrec ((_%loop4812648200%_
                                  (lambda (_%hd4812448204%_ _%body4813048207%_)
                                    (if (gx#stx-pair? _%hd4812448204%_)
                                        (let ((_%e4812748210%_
                                               (gx#syntax-e _%hd4812448204%_)))
                                          (let ((_%lp-tl4812948217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4812748210%_)))
                                                (_%lp-hd4812848214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4812748210%_))))
                                            (_%loop4812648200%_
                                             _%lp-tl4812948217%_
                                             (cons _%lp-hd4812848214%_
                                                   _%body4813048207%_))))
                                        (let ((_%body4813148220%_
                                               (reverse _%body4813048207%_)))
                                          (let ((_%L48224%_ _%body4813148220%_)
                                                (_%L48226%_ _%hd4812148188%_)
                                                (_%L48227%_ _%hd4811548168%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48226%_))
                                                (_%__kont7536275363%_
                                                 _%L48224%_
                                                 _%L48226%_
                                                 _%L48227%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4804948137%_)))))))))
                          (_%loop4812648200%_ _%target4812348194%_ '()))))
                     (_%__match7545475455%_
                      (lambda (_%e4808348268%_
                               _%hd4808248272%_
                               _%tl4808148275%_
                               _%e4808648278%_
                               _%hd4808548282%_
                               _%tl4808448285%_
                               _%e4808948288%_
                               _%hd4808848292%_
                               _%tl4808748295%_
                               _%e4809248298%_
                               _%hd4809148302%_
                               _%tl4809048305%_
                               _%e4809548308%_
                               _%hd4809448312%_
                               _%tl4809348315%_
                               _%__splice7536075361%_
                               _%target4809648318%_
                               _%tl4809848321%_)
                        (letrec ((_%loop4809948324%_
                                  (lambda (_%hd4809748328%_ _%body4810348331%_)
                                    (if (gx#stx-pair? _%hd4809748328%_)
                                        (let ((_%e4810048334%_
                                               (gx#syntax-e _%hd4809748328%_)))
                                          (let ((_%lp-tl4810248341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4810048334%_)))
                                                (_%lp-hd4810148338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4810048334%_))))
                                            (_%loop4809948324%_
                                             _%lp-tl4810248341%_
                                             (cons _%lp-hd4810148338%_
                                                   _%body4810348331%_))))
                                        (let ((_%body4810448344%_
                                               (reverse _%body4810348331%_)))
                                          (let ((_%L48348%_ _%body4810448344%_)
                                                (_%L48350%_ _%hd4809448312%_)
                                                (_%L48351%_ _%hd4808848292%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48350%_))
                                                (_%__kont7535875359%_
                                                 _%L48348%_
                                                 _%L48350%_
                                                 _%L48351%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4804948137%_)))))))))
                          (_%loop4809948324%_ _%target4809648318%_ '()))))
                     (_%__match7541075411%_
                      (lambda (_%e4805648390%_
                               _%hd4805548394%_
                               _%tl4805448397%_
                               _%e4805948400%_
                               _%hd4805848404%_
                               _%tl4805748407%_
                               _%e4806248410%_
                               _%hd4806148414%_
                               _%tl4806048417%_
                               _%e4806548420%_
                               _%hd4806448424%_
                               _%tl4806348427%_
                               _%e4806848430%_
                               _%hd4806748434%_
                               _%tl4806648437%_
                               _%__splice7535675357%_
                               _%target4806948440%_
                               _%tl4807148443%_)
                        (letrec ((_%loop4807248446%_
                                  (lambda (_%hd4807048450%_ _%body4807648453%_)
                                    (if (gx#stx-pair? _%hd4807048450%_)
                                        (let ((_%e4807348456%_
                                               (gx#syntax-e _%hd4807048450%_)))
                                          (let ((_%lp-tl4807548463%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4807348456%_)))
                                                (_%lp-hd4807448460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4807348456%_))))
                                            (_%loop4807248446%_
                                             _%lp-tl4807548463%_
                                             (cons _%lp-hd4807448460%_
                                                   _%body4807648453%_))))
                                        (let ((_%body4807748466%_
                                               (reverse _%body4807648453%_)))
                                          (let ((_%L48470%_ _%body4807748466%_)
                                                (_%L48472%_ _%hd4806748434%_)
                                                (_%L48473%_ _%hd4806148414%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48472%_))
                                                (_%__kont7535475355%_
                                                 _%L48470%_
                                                 _%L48472%_
                                                 _%L48473%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4804948137%_)))))))))
                          (_%loop4807248446%_ _%target4806948440%_ '())))))
                (if (gx#stx-pair? _%__stx7535175352%_)
                    (let ((_%e4805648390%_ (gx#syntax-e _%__stx7535175352%_)))
                      (let ((_%tl4805448397%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4805648390%_)))
                            (_%hd4805548394%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4805648390%_))))
                        (if (gx#stx-pair? _%tl4805448397%_)
                            (let ((_%e4805948400%_
                                   (gx#syntax-e _%tl4805448397%_)))
                              (let ((_%tl4805748407%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4805948400%_)))
                                    (_%hd4805848404%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4805948400%_))))
                                (if (gx#stx-pair? _%hd4805848404%_)
                                    (let ((_%e4806248410%_
                                           (gx#syntax-e _%hd4805848404%_)))
                                      (let ((_%tl4806048417%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4806248410%_)))
                                            (_%hd4806148414%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4806248410%_))))
                                        (if (gx#stx-pair? _%tl4806048417%_)
                                            (let ((_%e4806548420%_
                                                   (gx#syntax-e
                                                    _%tl4806048417%_)))
                                              (let ((_%tl4806348427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4806548420%_)))
                                                    (_%hd4806448424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4806548420%_))))
                                                (if (gx#identifier?
                                                     _%hd4806448424%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80210_|
                                                         _%hd4806448424%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4806348427%_)
                                                            (let ((_%e4806848430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4806348427%_)))
                      (let ((_%tl4806648437%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4806848430%_)))
                            (_%hd4806748434%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4806848430%_))))
                        (if (gx#stx-null? _%tl4806648437%_)
                            (if (gx#stx-pair/null? _%tl4805748407%_)
                                (let ((_%__splice7535675357%_
                                       (gx#syntax-split-splice
                                        _%tl4805748407%_
                                        '0)))
                                  (let ((_%tl4807148443%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7535675357%_
                                            '1)))
                                        (_%target4806948440%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7535675357%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4807148443%_)
                                        (_%__match7541075411%_
                                         _%e4805648390%_
                                         _%hd4805548394%_
                                         _%tl4805448397%_
                                         _%e4805948400%_
                                         _%hd4805848404%_
                                         _%tl4805748407%_
                                         _%e4806248410%_
                                         _%hd4806148414%_
                                         _%tl4806048417%_
                                         _%e4806548420%_
                                         _%hd4806448424%_
                                         _%tl4806348427%_
                                         _%e4806848430%_
                                         _%hd4806748434%_
                                         _%tl4806648437%_
                                         _%__splice7535675357%_
                                         _%target4806948440%_
                                         _%tl4807148443%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4804948137%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4804948137%_)))
                            (let () (declare (not safe)) (_%g4804948137%_)))))
                    (let () (declare (not safe)) (_%g4804948137%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80211_|
                     _%hd4806448424%_)
                    (if (gx#stx-pair? _%tl4806348427%_)
                        (let ((_%e4809548308%_ (gx#syntax-e _%tl4806348427%_)))
                          (let ((_%tl4809348315%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4809548308%_)))
                                (_%hd4809448312%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4809548308%_))))
                            (if (gx#stx-null? _%tl4809348315%_)
                                (if (gx#stx-pair/null? _%tl4805748407%_)
                                    (let ((_%__splice7536075361%_
                                           (gx#syntax-split-splice
                                            _%tl4805748407%_
                                            '0)))
                                      (let ((_%tl4809848321%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7536075361%_
                                                '1)))
                                            (_%target4809648318%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7536075361%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4809848321%_)
                                            (_%__match7545475455%_
                                             _%e4805648390%_
                                             _%hd4805548394%_
                                             _%tl4805448397%_
                                             _%e4805948400%_
                                             _%hd4805848404%_
                                             _%tl4805748407%_
                                             _%e4806248410%_
                                             _%hd4806148414%_
                                             _%tl4806048417%_
                                             _%e4806548420%_
                                             _%hd4806448424%_
                                             _%tl4806348427%_
                                             _%e4809548308%_
                                             _%hd4809448312%_
                                             _%tl4809348315%_
                                             _%__splice7536075361%_
                                             _%target4809648318%_
                                             _%tl4809848321%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4804948137%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4804948137%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4804948137%_)))))
                        (let () (declare (not safe)) (_%g4804948137%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80212_|
                         _%hd4806448424%_)
                        (if (gx#stx-pair? _%tl4806348427%_)
                            (let ((_%e4812248184%_
                                   (gx#syntax-e _%tl4806348427%_)))
                              (let ((_%tl4812048191%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4812248184%_)))
                                    (_%hd4812148188%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4812248184%_))))
                                (if (gx#stx-null? _%tl4812048191%_)
                                    (if (gx#stx-pair/null? _%tl4805748407%_)
                                        (let ((_%__splice7536475365%_
                                               (gx#syntax-split-splice
                                                _%tl4805748407%_
                                                '0)))
                                          (let ((_%tl4812548197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7536475365%_
                                                    '1)))
                                                (_%target4812348194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7536475365%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4812548197%_)
                                                (_%__match7549875499%_
                                                 _%e4805648390%_
                                                 _%hd4805548394%_
                                                 _%tl4805448397%_
                                                 _%e4805948400%_
                                                 _%hd4805848404%_
                                                 _%tl4805748407%_
                                                 _%e4806248410%_
                                                 _%hd4806148414%_
                                                 _%tl4806048417%_
                                                 _%e4806548420%_
                                                 _%hd4806448424%_
                                                 _%tl4806348427%_
                                                 _%e4812248184%_
                                                 _%hd4812148188%_
                                                 _%tl4812048191%_
                                                 _%__splice7536475365%_
                                                 _%target4812348194%_
                                                 _%tl4812548197%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4804948137%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4804948137%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4804948137%_)))))
                            (let () (declare (not safe)) (_%g4804948137%_)))
                        (let () (declare (not safe)) (_%g4804948137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4804948137%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4804948137%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4804948137%_)))))
                            (let () (declare (not safe)) (_%g4804948137%_)))))
                    (let () (declare (not safe)) (_%g4804948137%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx48828%_)
        (letrec ((_%expand-body48831%_
                  (lambda (_%var49648%_
                           _%Interface49650%_
                           _%body49651%_
                           _%checked?49652%_)
                    (let* ((_%type49654%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx48828%_
                               _%Interface49650%_)))
                           (_%g4965749701%_
                            (lambda (_%g4965849697%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4965849697%_)))
                           (_%g4965649859%_
                            (lambda (_%g4965849705%_)
                              (if (gx#stx-pair? _%g4965849705%_)
                                  (let ((_%e4966849708%_
                                         (gx#syntax-e _%g4965849705%_)))
                                    (let ((_%hd4966749712%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4966849708%_)))
                                          (_%tl4966649715%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4966849708%_))))
                                      (if (gx#stx-pair? _%tl4966649715%_)
                                          (let ((_%e4967149718%_
                                                 (gx#syntax-e
                                                  _%tl4966649715%_)))
                                            (let ((_%hd4967049722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4967149718%_)))
                                                  (_%tl4966949725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4967149718%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4966949725%_)
                                                  (let ((_%e4967449728%_
                                                         (gx#syntax-e
                                                          _%tl4966949725%_)))
                                                    (let ((_%hd4967349732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4967449728%_)))
                                                          (_%tl4967249735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4967449728%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4967249735%_)
                                                          (let ((_%e4967749738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4967249735%_)))
                    (let ((_%hd4967649742%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4967749738%_)))
                          (_%tl4967549745%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4967749738%_))))
                      (if (gx#stx-pair? _%tl4967549745%_)
                          (let ((_%e4968049748%_
                                 (gx#syntax-e _%tl4967549745%_)))
                            (let ((_%hd4967949752%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4968049748%_)))
                                  (_%tl4967849755%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4968049748%_))))
                              (if (gx#stx-pair? _%tl4967849755%_)
                                  (let ((_%e4968349758%_
                                         (gx#syntax-e _%tl4967849755%_)))
                                    (let ((_%hd4968249762%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4968349758%_)))
                                          (_%tl4968149765%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4968349758%_))))
                                      (if (gx#stx-pair? _%tl4968149765%_)
                                          (let ((_%e4968649768%_
                                                 (gx#syntax-e
                                                  _%tl4968149765%_)))
                                            (let ((_%hd4968549772%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4968649768%_)))
                                                  (_%tl4968449775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4968649768%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4968549772%_)
                                                  (let ((_g80213_
                                                         (gx#syntax-split-splice
                                                          _%hd4968549772%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80214_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80213_)
                           (##vector-length _g80213_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80214_ 2)))
                    (error "Context expects 2 values" _g80214_)))
              (let ((_%target4968749778%_
                     (let () (declare (not safe)) (##vector-ref _g80213_ 0)))
                    (_%tl4968949781%_
                     (let () (declare (not safe)) (##vector-ref _g80213_ 1))))
                (if (gx#stx-null? _%tl4968949781%_)
                    (letrec ((_%loop4969049784%_
                              (lambda (_%hd4968849788%_ _%body4969449791%_)
                                (if (gx#stx-pair? _%hd4968849788%_)
                                    (let ((_%e4969149794%_
                                           (gx#syntax-e _%hd4968849788%_)))
                                      (let ((_%lp-hd4969249798%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4969149794%_)))
                                            (_%lp-tl4969349801%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4969149794%_))))
                                        (_%loop4969049784%_
                                         _%lp-tl4969349801%_
                                         (cons _%lp-hd4969249798%_
                                               _%body4969449791%_))))
                                    (let ((_%body4969549804%_
                                           (reverse _%body4969449791%_)))
                                      (if (gx#stx-null? _%tl4968449775%_)
                                          ((lambda (_%L49808%_
                                                    _%L49810%_
                                                    _%L49811%_
                                                    _%L49812%_
                                                    _%L49813%_
                                                    _%L49814%_
                                                    _%L49815%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L49812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L49813%_ '()))
                                           (cons _%L49812%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L49815%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L49812%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L49814%_ '()))
                                 (cons _%L49811%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L49810%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4985049853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4985149856%_)
                        (cons _%g4985049853%_ _%g4985149856%_))
                      '()
                      _%L49808%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4969549804%_
                                           _%hd4968249762%_
                                           _%hd4967949752%_
                                           _%hd4967649742%_
                                           _%hd4967349732%_
                                           _%hd4967049722%_
                                           _%hd4966749712%_)
                                          (_%g4965749701%_
                                           _%g4965849705%_)))))))
                      (_%loop4969049784%_ _%target4968749778%_ '()))
                    (_%g4965749701%_ _%g4965849705%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4965749701%_
                                                   _%g4965849705%_))))
                                          (_%g4965749701%_ _%g4965849705%_))))
                                  (_%g4965749701%_ _%g4965849705%_))))
                          (_%g4965749701%_ _%g4965849705%_))))
                  (_%g4965749701%_ _%g4965849705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4965749701%_
                                                   _%g4965849705%_))))
                                          (_%g4965749701%_ _%g4965849705%_))))
                                  (_%g4965749701%_ _%g4965849705%_)))))
                      (_%g4965649859%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type49654%_
                             (let ((__obj80035 _%type49654%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj80035
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj80035
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj80035
                                    'instance-type)))
                             _%var49648%_
                             _%checked?49652%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49651%_)))))
                 (_%expand48833%_
                  (lambda (_%var49447%_
                           _%Interface49449%_
                           _%body49450%_
                           _%checked?49451%_
                           _%checked-methods?49452%_
                           _%maybe?49453%_)
                    (let* ((_%g4945549463%_
                            (lambda (_%g4945649459%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4945649459%_)))
                           (_%g4945449640%_
                            (lambda (_%g4945649467%_)
                              ((lambda (_%L49470%_)
                                 (let ()
                                   (if _%checked?49451%_
                                       (if _%maybe?49453%_
                                           (let* ((_%g4948249497%_
                                                   (lambda (_%g4948349493%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4948349493%_)))
                                                  (_%g4948149543%_
                                                   (lambda (_%g4948349501%_)
                                                     (if (gx#stx-pair?
                                                          _%g4948349501%_)
                                                         (let ((_%e4948849504%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4948349501%_)))
                   (let ((_%hd4948749508%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4948849504%_)))
                         (_%tl4948649511%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4948849504%_))))
                     (if (gx#stx-pair? _%tl4948649511%_)
                         (let ((_%e4949149514%_
                                (gx#syntax-e _%tl4948649511%_)))
                           (let ((_%hd4949049518%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4949149514%_)))
                                 (_%tl4948949521%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4949149514%_))))
                             (if (gx#stx-null? _%tl4948949521%_)
                                 ((lambda (_%L49524%_ _%L49526%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49526%_
                                                        (cons (cons _%L49524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49526%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons _%L49526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49470%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'nil-dereference!)
                                              (cons _%L49526%_ '()))
                                        '()))))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd4949049518%_
                                  _%hd4948749508%_)
                                 (_%g4948249497%_ _%g4948349501%_))))
                         (_%g4948249497%_ _%g4948349501%_))))
                 (_%g4948249497%_ _%g4948349501%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4948149543%_
                                              (list _%var49447%_
                                                    _%Interface49449%_)))
                                           (let* ((_%g4954749562%_
                                                   (lambda (_%g4954849558%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4954849558%_)))
                                                  (_%g4954649606%_
                                                   (lambda (_%g4954849566%_)
                                                     (if (gx#stx-pair?
                                                          _%g4954849566%_)
                                                         (let ((_%e4955349569%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4954849566%_)))
                   (let ((_%hd4955249573%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4955349569%_)))
                         (_%tl4955149576%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4955349569%_))))
                     (if (gx#stx-pair? _%tl4955149576%_)
                         (let ((_%e4955649579%_
                                (gx#syntax-e _%tl4955149576%_)))
                           (let ((_%hd4955549583%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4955649579%_)))
                                 (_%tl4955449586%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4955649579%_))))
                             (if (gx#stx-null? _%tl4955449586%_)
                                 ((lambda (_%L49589%_ _%L49591%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49591%_
                                                        (cons (cons _%L49589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49591%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L49470%_ '())))))
                                  _%hd4955549583%_
                                  _%hd4955249573%_)
                                 (_%g4954749562%_ _%g4954849566%_))))
                         (_%g4954749562%_ _%g4954849566%_))))
                 (_%g4954749562%_ _%g4954849566%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4954649606%_
                                              (list _%var49447%_
                                                    _%Interface49449%_))))
                                       (if _%maybe?49453%_
                                           (let* ((_%g4961049618%_
                                                   (lambda (_%g4961149614%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4961149614%_)))
                                                  (_%g4960949636%_
                                                   (lambda (_%g4961149622%_)
                                                     ((lambda (_%L49625%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L49625%_
                              (cons _%L49470%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'nil-dereference!)
                                                (cons _%L49625%_ '()))
                                          '()))))))
              _%g4961149622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4960949636%_ _%var49447%_))
                                           _%L49470%_))))
                               _%g4945649467%_))))
                      (_%g4945449640%_
                       (_%expand-body48831%_
                        _%var49447%_
                        _%Interface49449%_
                        _%body49450%_
                        (let ((_%$e49644%_ _%checked?49451%_))
                          (if _%$e49644%_
                              _%$e49644%_
                              _%checked-methods?49452%_))))))))
          (let* ((_%__stx7550175502%_ _%stx48828%_)
                 (_%g4883848953%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7550175502%_))))
            (let ((_%__kont7550475505%_
                   (lambda (_%L49408%_ _%L49410%_ _%L49411%_)
                     (_%expand48833%_
                      _%L49411%_
                      _%L49410%_
                      (foldr (lambda (_%g4943449437%_ _%g4943549440%_)
                               (cons _%g4943449437%_ _%g4943549440%_))
                             '()
                             _%L49408%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7550875509%_
                   (lambda (_%L49286%_ _%L49288%_ _%L49289%_)
                     (_%expand48833%_
                      _%L49289%_
                      _%L49288%_
                      (foldr (lambda (_%g4931249315%_ _%g4931349318%_)
                               (cons _%g4931249315%_ _%g4931349318%_))
                             '()
                             _%L49286%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7551275513%_
                   (lambda (_%L49164%_ _%L49166%_ _%L49167%_)
                     (_%expand48833%_
                      _%L49167%_
                      _%L49166%_
                      (foldr (lambda (_%g4919049193%_ _%g4919149196%_)
                               (cons _%g4919049193%_ _%g4919149196%_))
                             '()
                             _%L49164%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7551675517%_
                   (lambda (_%L49040%_ _%L49042%_ _%L49043%_)
                     (_%expand48833%_
                      _%L49043%_
                      _%L49042%_
                      (foldr (lambda (_%g4906849071%_ _%g4906949074%_)
                               (cons _%g4906849071%_ _%g4906949074%_))
                             '()
                             _%L49040%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7569675697%_
                      (lambda (_%e4892648960%_
                               _%hd4892548964%_
                               _%tl4892448967%_
                               _%e4892948970%_
                               _%hd4892848974%_
                               _%tl4892748977%_
                               _%e4893248980%_
                               _%hd4893148984%_
                               _%tl4893048987%_
                               _%e4893548990%_
                               _%hd4893448994%_
                               _%tl4893348997%_
                               _%e4893849000%_
                               _%hd4893749004%_
                               _%tl4893649007%_
                               _%__splice7551875519%_
                               _%target4893949010%_
                               _%tl4894149013%_)
                        (letrec ((_%loop4894249016%_
                                  (lambda (_%hd4894049020%_ _%body4894649023%_)
                                    (if (gx#stx-pair? _%hd4894049020%_)
                                        (let ((_%e4894349026%_
                                               (gx#syntax-e _%hd4894049020%_)))
                                          (let ((_%lp-tl4894549033%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4894349026%_)))
                                                (_%lp-hd4894449030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4894349026%_))))
                                            (_%loop4894249016%_
                                             _%lp-tl4894549033%_
                                             (cons _%lp-hd4894449030%_
                                                   _%body4894649023%_))))
                                        (let ((_%body4894749036%_
                                               (reverse _%body4894649023%_)))
                                          (let ((_%L49040%_ _%body4894749036%_)
                                                (_%L49042%_ _%hd4893749004%_)
                                                (_%L49043%_ _%hd4893148984%_))
                                            (if (and (gx#identifier?
                                                      _%L49043%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49042%_)))
                                                (_%__kont7551675517%_
                                                 _%L49040%_
                                                 _%L49042%_
                                                 _%L49043%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4883848953%_)))))))))
                          (_%loop4894249016%_ _%target4893949010%_ '()))))
                     (_%__match7565275653%_
                      (lambda (_%e4889949084%_
                               _%hd4889849088%_
                               _%tl4889749091%_
                               _%e4890249094%_
                               _%hd4890149098%_
                               _%tl4890049101%_
                               _%e4890549104%_
                               _%hd4890449108%_
                               _%tl4890349111%_
                               _%e4890849114%_
                               _%hd4890749118%_
                               _%tl4890649121%_
                               _%e4891149124%_
                               _%hd4891049128%_
                               _%tl4890949131%_
                               _%__splice7551475515%_
                               _%target4891249134%_
                               _%tl4891449137%_)
                        (letrec ((_%loop4891549140%_
                                  (lambda (_%hd4891349144%_ _%body4891949147%_)
                                    (if (gx#stx-pair? _%hd4891349144%_)
                                        (let ((_%e4891649150%_
                                               (gx#syntax-e _%hd4891349144%_)))
                                          (let ((_%lp-tl4891849157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4891649150%_)))
                                                (_%lp-hd4891749154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4891649150%_))))
                                            (_%loop4891549140%_
                                             _%lp-tl4891849157%_
                                             (cons _%lp-hd4891749154%_
                                                   _%body4891949147%_))))
                                        (let ((_%body4892049160%_
                                               (reverse _%body4891949147%_)))
                                          (let ((_%L49164%_ _%body4892049160%_)
                                                (_%L49166%_ _%hd4891049128%_)
                                                (_%L49167%_ _%hd4890449108%_))
                                            (if (and (gx#identifier?
                                                      _%L49167%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49166%_)))
                                                (_%__kont7551275513%_
                                                 _%L49164%_
                                                 _%L49166%_
                                                 _%L49167%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4883848953%_)))))))))
                          (_%loop4891549140%_ _%target4891249134%_ '()))))
                     (_%__match7560875609%_
                      (lambda (_%e4887249206%_
                               _%hd4887149210%_
                               _%tl4887049213%_
                               _%e4887549216%_
                               _%hd4887449220%_
                               _%tl4887349223%_
                               _%e4887849226%_
                               _%hd4887749230%_
                               _%tl4887649233%_
                               _%e4888149236%_
                               _%hd4888049240%_
                               _%tl4887949243%_
                               _%e4888449246%_
                               _%hd4888349250%_
                               _%tl4888249253%_
                               _%__splice7551075511%_
                               _%target4888549256%_
                               _%tl4888749259%_)
                        (letrec ((_%loop4888849262%_
                                  (lambda (_%hd4888649266%_ _%body4889249269%_)
                                    (if (gx#stx-pair? _%hd4888649266%_)
                                        (let ((_%e4888949272%_
                                               (gx#syntax-e _%hd4888649266%_)))
                                          (let ((_%lp-tl4889149279%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4888949272%_)))
                                                (_%lp-hd4889049276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4888949272%_))))
                                            (_%loop4888849262%_
                                             _%lp-tl4889149279%_
                                             (cons _%lp-hd4889049276%_
                                                   _%body4889249269%_))))
                                        (let ((_%body4889349282%_
                                               (reverse _%body4889249269%_)))
                                          (let ((_%L49286%_ _%body4889349282%_)
                                                (_%L49288%_ _%hd4888349250%_)
                                                (_%L49289%_ _%hd4887749230%_))
                                            (if (and (gx#identifier?
                                                      _%L49289%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49288%_)))
                                                (_%__kont7550875509%_
                                                 _%L49286%_
                                                 _%L49288%_
                                                 _%L49289%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4883848953%_)))))))))
                          (_%loop4888849262%_ _%target4888549256%_ '()))))
                     (_%__match7556475565%_
                      (lambda (_%e4884549328%_
                               _%hd4884449332%_
                               _%tl4884349335%_
                               _%e4884849338%_
                               _%hd4884749342%_
                               _%tl4884649345%_
                               _%e4885149348%_
                               _%hd4885049352%_
                               _%tl4884949355%_
                               _%e4885449358%_
                               _%hd4885349362%_
                               _%tl4885249365%_
                               _%e4885749368%_
                               _%hd4885649372%_
                               _%tl4885549375%_
                               _%__splice7550675507%_
                               _%target4885849378%_
                               _%tl4886049381%_)
                        (letrec ((_%loop4886149384%_
                                  (lambda (_%hd4885949388%_ _%body4886549391%_)
                                    (if (gx#stx-pair? _%hd4885949388%_)
                                        (let ((_%e4886249394%_
                                               (gx#syntax-e _%hd4885949388%_)))
                                          (let ((_%lp-tl4886449401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4886249394%_)))
                                                (_%lp-hd4886349398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4886249394%_))))
                                            (_%loop4886149384%_
                                             _%lp-tl4886449401%_
                                             (cons _%lp-hd4886349398%_
                                                   _%body4886549391%_))))
                                        (let ((_%body4886649404%_
                                               (reverse _%body4886549391%_)))
                                          (let ((_%L49408%_ _%body4886649404%_)
                                                (_%L49410%_ _%hd4885649372%_)
                                                (_%L49411%_ _%hd4885049352%_))
                                            (if (and (gx#identifier?
                                                      _%L49411%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49410%_)))
                                                (_%__kont7550475505%_
                                                 _%L49408%_
                                                 _%L49410%_
                                                 _%L49411%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4883848953%_)))))))))
                          (_%loop4886149384%_ _%target4885849378%_ '())))))
                (if (gx#stx-pair? _%__stx7550175502%_)
                    (let ((_%e4884549328%_ (gx#syntax-e _%__stx7550175502%_)))
                      (let ((_%tl4884349335%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4884549328%_)))
                            (_%hd4884449332%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4884549328%_))))
                        (if (gx#stx-pair? _%tl4884349335%_)
                            (let ((_%e4884849338%_
                                   (gx#syntax-e _%tl4884349335%_)))
                              (let ((_%tl4884649345%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4884849338%_)))
                                    (_%hd4884749342%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4884849338%_))))
                                (if (gx#stx-pair? _%hd4884749342%_)
                                    (let ((_%e4885149348%_
                                           (gx#syntax-e _%hd4884749342%_)))
                                      (let ((_%tl4884949355%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4885149348%_)))
                                            (_%hd4885049352%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4885149348%_))))
                                        (if (gx#stx-pair? _%tl4884949355%_)
                                            (let ((_%e4885449358%_
                                                   (gx#syntax-e
                                                    _%tl4884949355%_)))
                                              (let ((_%tl4885249365%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4885449358%_)))
                                                    (_%hd4885349362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4885449358%_))))
                                                (if (gx#identifier?
                                                     _%hd4885349362%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80215_|
                                                         _%hd4885349362%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4885249365%_)
                                                            (let ((_%e4885749368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4885249365%_)))
                      (let ((_%tl4885549375%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4885749368%_)))
                            (_%hd4885649372%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4885749368%_))))
                        (if (gx#stx-null? _%tl4885549375%_)
                            (if (gx#stx-pair/null? _%tl4884649345%_)
                                (let ((_%__splice7550675507%_
                                       (gx#syntax-split-splice
                                        _%tl4884649345%_
                                        '0)))
                                  (let ((_%tl4886049381%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7550675507%_
                                            '1)))
                                        (_%target4885849378%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7550675507%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4886049381%_)
                                        (_%__match7556475565%_
                                         _%e4884549328%_
                                         _%hd4884449332%_
                                         _%tl4884349335%_
                                         _%e4884849338%_
                                         _%hd4884749342%_
                                         _%tl4884649345%_
                                         _%e4885149348%_
                                         _%hd4885049352%_
                                         _%tl4884949355%_
                                         _%e4885449358%_
                                         _%hd4885349362%_
                                         _%tl4885249365%_
                                         _%e4885749368%_
                                         _%hd4885649372%_
                                         _%tl4885549375%_
                                         _%__splice7550675507%_
                                         _%target4885849378%_
                                         _%tl4886049381%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4883848953%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4883848953%_)))
                            (let () (declare (not safe)) (_%g4883848953%_)))))
                    (let () (declare (not safe)) (_%g4883848953%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80216_|
                     _%hd4885349362%_)
                    (if (gx#stx-pair? _%tl4885249365%_)
                        (let ((_%e4888449246%_ (gx#syntax-e _%tl4885249365%_)))
                          (let ((_%tl4888249253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4888449246%_)))
                                (_%hd4888349250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4888449246%_))))
                            (if (gx#stx-null? _%tl4888249253%_)
                                (if (gx#stx-pair/null? _%tl4884649345%_)
                                    (let ((_%__splice7551075511%_
                                           (gx#syntax-split-splice
                                            _%tl4884649345%_
                                            '0)))
                                      (let ((_%tl4888749259%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7551075511%_
                                                '1)))
                                            (_%target4888549256%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7551075511%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4888749259%_)
                                            (_%__match7560875609%_
                                             _%e4884549328%_
                                             _%hd4884449332%_
                                             _%tl4884349335%_
                                             _%e4884849338%_
                                             _%hd4884749342%_
                                             _%tl4884649345%_
                                             _%e4885149348%_
                                             _%hd4885049352%_
                                             _%tl4884949355%_
                                             _%e4885449358%_
                                             _%hd4885349362%_
                                             _%tl4885249365%_
                                             _%e4888449246%_
                                             _%hd4888349250%_
                                             _%tl4888249253%_
                                             _%__splice7551075511%_
                                             _%target4888549256%_
                                             _%tl4888749259%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4883848953%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4883848953%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4883848953%_)))))
                        (let () (declare (not safe)) (_%g4883848953%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80217_|
                         _%hd4885349362%_)
                        (if (gx#stx-pair? _%tl4885249365%_)
                            (let ((_%e4891149124%_
                                   (gx#syntax-e _%tl4885249365%_)))
                              (let ((_%tl4890949131%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4891149124%_)))
                                    (_%hd4891049128%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4891149124%_))))
                                (if (gx#stx-null? _%tl4890949131%_)
                                    (if (gx#stx-pair/null? _%tl4884649345%_)
                                        (let ((_%__splice7551475515%_
                                               (gx#syntax-split-splice
                                                _%tl4884649345%_
                                                '0)))
                                          (let ((_%tl4891449137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7551475515%_
                                                    '1)))
                                                (_%target4891249134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7551475515%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4891449137%_)
                                                (_%__match7565275653%_
                                                 _%e4884549328%_
                                                 _%hd4884449332%_
                                                 _%tl4884349335%_
                                                 _%e4884849338%_
                                                 _%hd4884749342%_
                                                 _%tl4884649345%_
                                                 _%e4885149348%_
                                                 _%hd4885049352%_
                                                 _%tl4884949355%_
                                                 _%e4885449358%_
                                                 _%hd4885349362%_
                                                 _%tl4885249365%_
                                                 _%e4891149124%_
                                                 _%hd4891049128%_
                                                 _%tl4890949131%_
                                                 _%__splice7551475515%_
                                                 _%target4891249134%_
                                                 _%tl4891449137%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4883848953%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4883848953%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4883848953%_)))))
                            (let () (declare (not safe)) (_%g4883848953%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80218_|
                             _%hd4885349362%_)
                            (if (gx#stx-pair? _%tl4885249365%_)
                                (let ((_%e4893849000%_
                                       (gx#syntax-e _%tl4885249365%_)))
                                  (let ((_%tl4893649007%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4893849000%_)))
                                        (_%hd4893749004%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4893849000%_))))
                                    (if (gx#stx-null? _%tl4893649007%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4884649345%_)
                                            (let ((_%__splice7551875519%_
                                                   (gx#syntax-split-splice
                                                    _%tl4884649345%_
                                                    '0)))
                                              (let ((_%tl4894149013%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7551875519%_
                                                        '1)))
                                                    (_%target4893949010%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7551875519%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4894149013%_)
                                                    (_%__match7569675697%_
                                                     _%e4884549328%_
                                                     _%hd4884449332%_
                                                     _%tl4884349335%_
                                                     _%e4884849338%_
                                                     _%hd4884749342%_
                                                     _%tl4884649345%_
                                                     _%e4885149348%_
                                                     _%hd4885049352%_
                                                     _%tl4884949355%_
                                                     _%e4885449358%_
                                                     _%hd4885349362%_
                                                     _%tl4885249365%_
                                                     _%e4893849000%_
                                                     _%hd4893749004%_
                                                     _%tl4893649007%_
                                                     _%__splice7551875519%_
                                                     _%target4893949010%_
                                                     _%tl4894149013%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4883848953%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4883848953%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4883848953%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4883848953%_)))
                            (let () (declare (not safe)) (_%g4883848953%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4883848953%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4883848953%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4883848953%_)))))
                            (let () (declare (not safe)) (_%g4883848953%_)))))
                    (let () (declare (not safe)) (_%g4883848953%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx49868%_)
        (let* ((_%__stx7569975700%_ _%stx49868%_)
               (_%g4987349933%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7569975700%_))))
          (let ((_%__kont7570275703%_
                 (lambda (_%L50510%_ _%L50512%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L50512%_ '()))
                               (foldr (lambda (_%g5052850531%_ _%g5052950534%_)
                                        (cons _%g5052850531%_ _%g5052950534%_))
                                      '()
                                      _%L50510%_)))))
                (_%__kont7570675707%_
                 (lambda (_%L50081%_ _%L50083%_)
                   (if (let ()
                         (declare (not safe))
                         (|gerbil/core/contract~Using[1]#dotted-identifier?|
                          _%L50083%_))
                       (let* ((_%g5010350110%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                  _%stx49868%_
                                  _%L50083%_)))
                              (_%E5010550116%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5010350110%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5010650429%_
                               (lambda (_%parts50120%_ _%var50122%_)
                                 (let ((_%$e50124%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50122%_))))
                                   (if _%$e50124%_
                                       ((lambda (_%te50128%_)
                                          (let _%loop50131%_ ((_%parts50134%_
                                                               _%parts50120%_)
                                                              (_%type50136%_
                                                               (##direct-structure-ref
                                                                _%te50128%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50137%_
                                                               _%var50122%_)
                                                              (_%nil-check?50138%_
                                                               '#f))
                                            (let* ((_%parts5013950147%_
                                                    _%parts50134%_)
                                                   (_%else5014150208%_
                                                    (lambda ()
                                                      (let* ((_%g5015950167%_
                                                              (lambda (_%g5016050163%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5016050163%_)))
                     (_%g5015850204%_
                      (lambda (_%g5016050171%_)
                        ((lambda (_%L50174%_)
                           (let ()
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons _%L50174%_
                                         (foldr (lambda (_%g5019550198%_
                                                         _%g5019650201%_)
                                                  (cons _%g5019550198%_
                                                        _%g5019650201%_))
                                                '()
                                                _%L50081%_)))))
                         _%g5016050171%_))))
                (_%g5015850204%_ _%object50137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5014350403%_
                                                    (lambda (_%rest50212%_
                                                             _%part50214%_)
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (not _%nil-check?50138%_))
                       (let ((__tmp80219 (symbol->string _%part50214%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp80219)))
                  (let ()
                    (let ((_%str50218%_ (symbol->string _%part50214%_)))
                      (_%loop50131%_
                       (cons (let ((__tmp80220
                                    (substring
                                     _%str50218%_
                                     '1
                                     (string-length _%str50218%_))))
                               (declare (not safe))
                               (##string->symbol __tmp80220))
                             _%rest50212%_)
                       _%type50136%_
                       _%object50137%_
                       '#t)))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50136%_))
                      (let ()
                        (let* ((_%g5022350238%_
                                (lambda (_%g5022450234%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5022450234%_)))
                               (_%g5022250315%_
                                (lambda (_%g5022450242%_)
                                  (if (gx#stx-pair? _%g5022450242%_)
                                      (let ((_%e5022950245%_
                                             (gx#syntax-e _%g5022450242%_)))
                                        (let ((_%hd5022850249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5022950245%_)))
                                              (_%tl5022750252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5022950245%_))))
                                          (if (gx#stx-pair? _%tl5022750252%_)
                                              (let ((_%e5023250255%_
                                                     (gx#syntax-e
                                                      _%tl5022750252%_)))
                                                (let ((_%hd5023150259%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5023250255%_)))
                                                      (_%tl5023050262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5023250255%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5023050262%_)
                                                      ((lambda (_%L50265%_
                                                                _%L50267%_)
                                                         (let ()
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (null? _%rest50212%_))
                       (let ()
                         (if _%nil-check?50138%_
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons (cons _%L50265%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'check-nil!)
                                                           (cons _%L50267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (foldr (lambda (_%g5028650289%_
                                                         _%g5028750292%_)
                                                  (cons _%g5028650289%_
                                                        _%g5028750292%_))
                                                '()
                                                _%L50081%_)))
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons (cons _%L50265%_
                                               (cons _%L50267%_ '()))
                                         (foldr (lambda (_%g5029450297%_
                                                         _%g5029550300%_)
                                                  (cons _%g5029450297%_
                                                        _%g5029550300%_))
                                                '()
                                                _%L50081%_)))))
                       (let ((_%$e50303%_
                              (let ()
                                (declare (not safe))
                                (gerbil/core/mop~MOP-2#!class-slot-type
                                 _%type50136%_
                                 _%part50214%_))))
                         (if _%$e50303%_
                             ((lambda (_%type50307%_)
                                (let ((_%type50310%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx49868%_
                                          _%type50307%_))))
                                  (if _%nil-check?50138%_
                                      (_%loop50131%_
                                       _%rest50212%_
                                       _%type50310%_
                                       (cons _%L50265%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'check-nil!)
                                                         (cons _%L50267%_ '()))
                                                   '()))
                                       '#f)
                                      (_%loop50131%_
                                       _%rest50212%_
                                       _%type50310%_
                                       (cons _%L50265%_ (cons _%L50267%_ '()))
                                       '#f))))
                              _%$e50303%_)
                             (let ()
                               (gx#raise-syntax-error
                                '#f
                                '"unresolved dotted reference; unknown type for slot"
                                _%stx49868%_
                                _%L50083%_
                                _%part50214%_)))))))
               _%hd5023150259%_
               _%hd5022850249%_)
              (_%g5022350238%_ _%g5022450242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5022350238%_
                                               _%g5022450242%_))))
                                      (_%g5022350238%_ _%g5022450242%_)))))
                          (_%g5022250315%_
                           (list _%object50137%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                    _%stx49868%_
                                    _%type50136%_
                                    _%part50214%_))))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50136%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest50212%_))
                                (let* ((_%g5032150336%_
                                        (lambda (_%g5032250332%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g5032250332%_)))
                                       (_%g5032050397%_
                                        (lambda (_%g5032250340%_)
                                          (if (gx#stx-pair? _%g5032250340%_)
                                              (let ((_%e5032750343%_
                                                     (gx#syntax-e
                                                      _%g5032250340%_)))
                                                (let ((_%hd5032650347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5032750343%_)))
                                                      (_%tl5032550350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5032750343%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5032550350%_)
                                                      (let ((_%e5033050353%_
                                                             (gx#syntax-e
                                                              _%tl5032550350%_)))
                                                        (let ((_%hd5032950357%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5033050353%_)))
                      (_%tl5032850360%_
                       (let () (declare (not safe)) (##cdr _%e5033050353%_))))
                  (if (gx#stx-null? _%tl5032850360%_)
                      ((lambda (_%L50363%_ _%L50365%_)
                         (let ()
                           (if _%nil-check?50138%_
                               (cons (gx#datum->syntax '#f '%%app)
                                     (cons (cons (gx#datum->syntax '#f '%%ref)
                                                 (cons _%L50363%_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'check-nil!)
                                                       (cons _%L50365%_ '()))
                                                 (foldr (lambda (_%g5038050383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5038150386%_)
                  (cons _%g5038050383%_ _%g5038150386%_))
                '()
                _%L50081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons (gx#datum->syntax '#f '%%app)
                                     (cons (cons (gx#datum->syntax '#f '%%ref)
                                                 (cons _%L50363%_ '()))
                                           (cons _%L50365%_
                                                 (foldr (lambda (_%g5038850391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5038950394%_)
                  (cons _%g5038850391%_ _%g5038950394%_))
                '()
                _%L50081%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _%hd5032950357%_
                       _%hd5032650347%_)
                      (_%g5032150336%_ _%g5032250340%_))))
              (_%g5032150336%_ _%g5032250340%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5032150336%_
                                               _%g5032250340%_)))))
                                  (_%g5032050397%_
                                   (list _%object50137%_
                                         (gx#syntax-local-introduce
                                          (make-symbol
                                           (if (##direct-structure-ref
                                                _%te50128%_
                                                '3
                                                gerbil/core/contract~TypeEnv#type-env::t
                                                '#f)
                                               '"&"
                                               '"")
                                           (let ((__obj80036 _%type50136%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj80036
                                                    'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj80036
                                                    '1
                                                    '#f
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/contract~InterfaceInfo#interface-info::t
                                                  __obj80036
                                                  'name)))
                                           '"-"
                                           _%part50214%_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"illegal dotted reference; interface has no slots"
                                 _%stx49868%_
                                 _%L50083%_
                                 _%part50214%_)))
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"unexpected type"
                             _%stx49868%_
                             _%type50136%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5013950147%_))
                                                  (let ((_%hd5014450407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5013950147%_)))
                                                        (_%tl5014550410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5013950147%_))))
                                                    (let* ((_%part50413%_
                                                            _%hd5014450407%_)
                                                           (_%rest50416%_
                                                            _%tl5014550410%_))
                                                      (_%K5014350403%_
                                                       _%rest50416%_
                                                       _%part50413%_)))
                                                  (_%else5014150208%_)))))
                                        _%$e50124%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f '%%app)
                                               (cons _%L50083%_
                                                     (foldr (lambda (_%g5042050423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5042150426%_)
                      (cons _%g5042050423%_ _%g5042150426%_))
                    '()
                    _%L50081%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5010350110%_))
                             (let ((_%hd5010750433%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5010350110%_)))
                                   (_%tl5010850436%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5010350110%_))))
                               (let* ((_%var50439%_ _%hd5010750433%_)
                                      (_%parts50442%_ _%tl5010850436%_))
                                 (_%K5010650429%_
                                  _%parts50442%_
                                  _%var50439%_)))
                             (_%E5010550116%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50083%_
                                   (foldr (lambda (_%g5044450447%_
                                                   _%g5044550450%_)
                                            (cons _%g5044450447%_
                                                  _%g5044550450%_))
                                          '()
                                          _%L50081%_))))))
                (_%__kont7571075711%_
                 (lambda (_%L49980%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g4999549998%_ _%g4999650001%_)
                                  (cons _%g4999549998%_ _%g4999650001%_))
                                '()
                                _%L49980%_)))))
            (let* ((_%__match7578675787%_
                    (lambda (_%e4991849940%_
                             _%hd4991749944%_
                             _%tl4991649947%_
                             _%__splice7571275713%_
                             _%target4991949950%_
                             _%tl4992149953%_)
                      (letrec ((_%loop4992249956%_
                                (lambda (_%hd4992049960%_ _%arg4992649963%_)
                                  (if (gx#stx-pair? _%hd4992049960%_)
                                      (let ((_%e4992349966%_
                                             (gx#syntax-e _%hd4992049960%_)))
                                        (let ((_%lp-tl4992549973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4992349966%_)))
                                              (_%lp-hd4992449970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4992349966%_))))
                                          (_%loop4992249956%_
                                           _%lp-tl4992549973%_
                                           (cons _%lp-hd4992449970%_
                                                 _%arg4992649963%_))))
                                      (let ((_%arg4992749976%_
                                             (reverse _%arg4992649963%_)))
                                        (_%__kont7571075711%_
                                         _%arg4992749976%_))))))
                        (_%loop4992249956%_ _%target4991949950%_ '()))))
                   (_%__match7577275773%_
                    (lambda (_%e4989650011%_
                             _%hd4989550015%_
                             _%tl4989450018%_
                             _%e4989950021%_
                             _%hd4989850025%_
                             _%tl4989750028%_
                             _%e4990250031%_
                             _%hd4990150035%_
                             _%tl4990050038%_
                             _%e4990550041%_
                             _%hd4990450045%_
                             _%tl4990350048%_
                             _%__splice7570875709%_
                             _%target4990650051%_
                             _%tl4990850054%_)
                      (letrec ((_%loop4990950057%_
                                (lambda (_%hd4990750061%_ _%rand4991350064%_)
                                  (if (gx#stx-pair? _%hd4990750061%_)
                                      (let ((_%e4991050067%_
                                             (gx#syntax-e _%hd4990750061%_)))
                                        (let ((_%lp-tl4991250074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4991050067%_)))
                                              (_%lp-hd4991150071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4991050067%_))))
                                          (_%loop4990950057%_
                                           _%lp-tl4991250074%_
                                           (cons _%lp-hd4991150071%_
                                                 _%rand4991350064%_))))
                                      (let ((_%rand4991450077%_
                                             (reverse _%rand4991350064%_)))
                                        (_%__kont7570675707%_
                                         _%rand4991450077%_
                                         _%hd4990450045%_))))))
                        (_%loop4990950057%_ _%target4990650051%_ '()))))
                   (_%__match7574675747%_
                    (lambda (_%e4989650011%_
                             _%hd4989550015%_
                             _%tl4989450018%_
                             _%e4989950021%_
                             _%hd4989850025%_
                             _%tl4989750028%_)
                      (if (gx#stx-pair? _%hd4989850025%_)
                          (let ((_%e4990250031%_
                                 (gx#syntax-e _%hd4989850025%_)))
                            (let ((_%tl4990050038%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4990250031%_)))
                                  (_%hd4990150035%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4990250031%_))))
                              (if (gx#identifier? _%hd4990150035%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80221_|
                                       _%hd4990150035%_)
                                      (if (gx#stx-pair? _%tl4990050038%_)
                                          (let ((_%e4990550041%_
                                                 (gx#syntax-e
                                                  _%tl4990050038%_)))
                                            (let ((_%tl4990350048%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4990550041%_)))
                                                  (_%hd4990450045%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4990550041%_))))
                                              (if (gx#stx-null?
                                                   _%tl4990350048%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4989750028%_)
                                                      (let ((_%__splice7570875709%_
                                                             (gx#syntax-split-splice
                                                              _%tl4989750028%_
                                                              '0)))
                                                        (let ((_%tl4990850054%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7570875709%_ '1)))
                      (_%target4990650051%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7570875709%_ '0))))
                  (if (gx#stx-null? _%tl4990850054%_)
                      (_%__match7577275773%_
                       _%e4989650011%_
                       _%hd4989550015%_
                       _%tl4989450018%_
                       _%e4989950021%_
                       _%hd4989850025%_
                       _%tl4989750028%_
                       _%e4990250031%_
                       _%hd4990150035%_
                       _%tl4990050038%_
                       _%e4990550041%_
                       _%hd4990450045%_
                       _%tl4990350048%_
                       _%__splice7570875709%_
                       _%target4990650051%_
                       _%tl4990850054%_)
                      (if (gx#stx-pair/null? _%tl4989450018%_)
                          (let ((_%__splice7571275713%_
                                 (gx#syntax-split-splice _%tl4989450018%_ '0)))
                            (let ((_%tl4992149953%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7571275713%_ '1)))
                                  (_%target4991949950%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7571275713%_
                                      '0))))
                              (if (gx#stx-null? _%tl4992149953%_)
                                  (_%__match7578675787%_
                                   _%e4989650011%_
                                   _%hd4989550015%_
                                   _%tl4989450018%_
                                   _%__splice7571275713%_
                                   _%target4991949950%_
                                   _%tl4992149953%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4987349933%_)))))
                          (let () (declare (not safe)) (_%g4987349933%_))))))
              (if (gx#stx-pair/null? _%tl4989450018%_)
                  (let ((_%__splice7571275713%_
                         (gx#syntax-split-splice _%tl4989450018%_ '0)))
                    (let ((_%tl4992149953%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7571275713%_ '1)))
                          (_%target4991949950%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7571275713%_ '0))))
                      (if (gx#stx-null? _%tl4992149953%_)
                          (_%__match7578675787%_
                           _%e4989650011%_
                           _%hd4989550015%_
                           _%tl4989450018%_
                           _%__splice7571275713%_
                           _%target4991949950%_
                           _%tl4992149953%_)
                          (let () (declare (not safe)) (_%g4987349933%_)))))
                  (let () (declare (not safe)) (_%g4987349933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4989450018%_)
                                                      (let ((_%__splice7571275713%_
                                                             (gx#syntax-split-splice
                                                              _%tl4989450018%_
                                                              '0)))
                                                        (let ((_%tl4992149953%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7571275713%_ '1)))
                      (_%target4991949950%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7571275713%_ '0))))
                  (if (gx#stx-null? _%tl4992149953%_)
                      (_%__match7578675787%_
                       _%e4989650011%_
                       _%hd4989550015%_
                       _%tl4989450018%_
                       _%__splice7571275713%_
                       _%target4991949950%_
                       _%tl4992149953%_)
                      (let () (declare (not safe)) (_%g4987349933%_)))))
              (let () (declare (not safe)) (_%g4987349933%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4989450018%_)
                                              (let ((_%__splice7571275713%_
                                                     (gx#syntax-split-splice
                                                      _%tl4989450018%_
                                                      '0)))
                                                (let ((_%tl4992149953%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7571275713%_
                                                          '1)))
                                                      (_%target4991949950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7571275713%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4992149953%_)
                                                      (_%__match7578675787%_
                                                       _%e4989650011%_
                                                       _%hd4989550015%_
                                                       _%tl4989450018%_
                                                       _%__splice7571275713%_
                                                       _%target4991949950%_
                                                       _%tl4992149953%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4987349933%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4987349933%_))))
                                      (if (gx#stx-pair/null? _%tl4989450018%_)
                                          (let ((_%__splice7571275713%_
                                                 (gx#syntax-split-splice
                                                  _%tl4989450018%_
                                                  '0)))
                                            (let ((_%tl4992149953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7571275713%_
                                                      '1)))
                                                  (_%target4991949950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7571275713%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4992149953%_)
                                                  (_%__match7578675787%_
                                                   _%e4989650011%_
                                                   _%hd4989550015%_
                                                   _%tl4989450018%_
                                                   _%__splice7571275713%_
                                                   _%target4991949950%_
                                                   _%tl4992149953%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4987349933%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4987349933%_))))
                                  (if (gx#stx-pair/null? _%tl4989450018%_)
                                      (let ((_%__splice7571275713%_
                                             (gx#syntax-split-splice
                                              _%tl4989450018%_
                                              '0)))
                                        (let ((_%tl4992149953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7571275713%_
                                                  '1)))
                                              (_%target4991949950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7571275713%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4992149953%_)
                                              (_%__match7578675787%_
                                               _%e4989650011%_
                                               _%hd4989550015%_
                                               _%tl4989450018%_
                                               _%__splice7571275713%_
                                               _%target4991949950%_
                                               _%tl4992149953%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4987349933%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4987349933%_))))))
                          (if (gx#stx-pair/null? _%tl4989450018%_)
                              (let ((_%__splice7571275713%_
                                     (gx#syntax-split-splice
                                      _%tl4989450018%_
                                      '0)))
                                (let ((_%tl4992149953%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7571275713%_
                                          '1)))
                                      (_%target4991949950%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7571275713%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4992149953%_)
                                      (_%__match7578675787%_
                                       _%e4989650011%_
                                       _%hd4989550015%_
                                       _%tl4989450018%_
                                       _%__splice7571275713%_
                                       _%target4991949950%_
                                       _%tl4992149953%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4987349933%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4987349933%_))))))
                   (_%__match7573475735%_
                    (lambda (_%e4987950460%_
                             _%hd4987850464%_
                             _%tl4987750467%_
                             _%e4988250470%_
                             _%hd4988150474%_
                             _%tl4988050477%_
                             _%__splice7570475705%_
                             _%target4988350480%_
                             _%tl4988550483%_)
                      (letrec ((_%loop4988650486%_
                                (lambda (_%hd4988450490%_ _%rand4989050493%_)
                                  (if (gx#stx-pair? _%hd4988450490%_)
                                      (let ((_%e4988750496%_
                                             (gx#syntax-e _%hd4988450490%_)))
                                        (let ((_%lp-tl4988950503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4988750496%_)))
                                              (_%lp-hd4988850500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4988750496%_))))
                                          (_%loop4988650486%_
                                           _%lp-tl4988950503%_
                                           (cons _%lp-hd4988850500%_
                                                 _%rand4989050493%_))))
                                      (let ((_%rand4989150506%_
                                             (reverse _%rand4989050493%_)))
                                        (let ((_%L50510%_ _%rand4989150506%_)
                                              (_%L50512%_ _%hd4988150474%_))
                                          (if (gx#identifier? _%L50512%_)
                                              (_%__kont7570275703%_
                                               _%L50510%_
                                               _%L50512%_)
                                              (_%__match7574675747%_
                                               _%e4987950460%_
                                               _%hd4987850464%_
                                               _%tl4987750467%_
                                               _%e4988250470%_
                                               _%hd4988150474%_
                                               _%tl4988050477%_))))))))
                        (_%loop4988650486%_ _%target4988350480%_ '())))))
              (if (gx#stx-pair? _%__stx7569975700%_)
                  (let ((_%e4987950460%_ (gx#syntax-e _%__stx7569975700%_)))
                    (let ((_%tl4987750467%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4987950460%_)))
                          (_%hd4987850464%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4987950460%_))))
                      (if (gx#stx-pair? _%tl4987750467%_)
                          (let ((_%e4988250470%_
                                 (gx#syntax-e _%tl4987750467%_)))
                            (let ((_%tl4988050477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4988250470%_)))
                                  (_%hd4988150474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4988250470%_))))
                              (if (gx#stx-pair/null? _%tl4988050477%_)
                                  (let ((_%__splice7570475705%_
                                         (gx#syntax-split-splice
                                          _%tl4988050477%_
                                          '0)))
                                    (let ((_%tl4988550483%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7570475705%_
                                              '1)))
                                          (_%target4988350480%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7570475705%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4988550483%_)
                                          (_%__match7573475735%_
                                           _%e4987950460%_
                                           _%hd4987850464%_
                                           _%tl4987750467%_
                                           _%e4988250470%_
                                           _%hd4988150474%_
                                           _%tl4988050477%_
                                           _%__splice7570475705%_
                                           _%target4988350480%_
                                           _%tl4988550483%_)
                                          (if (gx#stx-pair? _%hd4988150474%_)
                                              (let ((_%e4990250031%_
                                                     (gx#syntax-e
                                                      _%hd4988150474%_)))
                                                (let ((_%tl4990050038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4990250031%_)))
                                                      (_%hd4990150035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4990250031%_))))
                                                  (if (gx#identifier?
                                                       _%hd4990150035%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80221_|
                                                           _%hd4990150035%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4990050038%_)
                                                              (let ((_%e4990550041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4990050038%_)))
                        (let ((_%tl4990350048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4990550041%_)))
                              (_%hd4990450045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4990550041%_))))
                          (if (gx#stx-pair/null? _%tl4987750467%_)
                              (let ((_%__splice7571275713%_
                                     (gx#syntax-split-splice
                                      _%tl4987750467%_
                                      '0)))
                                (let ((_%tl4992149953%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7571275713%_
                                          '1)))
                                      (_%target4991949950%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7571275713%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4992149953%_)
                                      (_%__match7578675787%_
                                       _%e4987950460%_
                                       _%hd4987850464%_
                                       _%tl4987750467%_
                                       _%__splice7571275713%_
                                       _%target4991949950%_
                                       _%tl4992149953%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4987349933%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4987349933%_)))))
                      (if (gx#stx-pair/null? _%tl4987750467%_)
                          (let ((_%__splice7571275713%_
                                 (gx#syntax-split-splice _%tl4987750467%_ '0)))
                            (let ((_%tl4992149953%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7571275713%_ '1)))
                                  (_%target4991949950%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7571275713%_
                                      '0))))
                              (if (gx#stx-null? _%tl4992149953%_)
                                  (_%__match7578675787%_
                                   _%e4987950460%_
                                   _%hd4987850464%_
                                   _%tl4987750467%_
                                   _%__splice7571275713%_
                                   _%target4991949950%_
                                   _%tl4992149953%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4987349933%_)))))
                          (let () (declare (not safe)) (_%g4987349933%_))))
                  (if (gx#stx-pair/null? _%tl4987750467%_)
                      (let ((_%__splice7571275713%_
                             (gx#syntax-split-splice _%tl4987750467%_ '0)))
                        (let ((_%tl4992149953%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7571275713%_ '1)))
                              (_%target4991949950%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7571275713%_ '0))))
                          (if (gx#stx-null? _%tl4992149953%_)
                              (_%__match7578675787%_
                               _%e4987950460%_
                               _%hd4987850464%_
                               _%tl4987750467%_
                               _%__splice7571275713%_
                               _%target4991949950%_
                               _%tl4992149953%_)
                              (let ()
                                (declare (not safe))
                                (_%g4987349933%_)))))
                      (let () (declare (not safe)) (_%g4987349933%_))))
              (if (gx#stx-pair/null? _%tl4987750467%_)
                  (let ((_%__splice7571275713%_
                         (gx#syntax-split-splice _%tl4987750467%_ '0)))
                    (let ((_%tl4992149953%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7571275713%_ '1)))
                          (_%target4991949950%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7571275713%_ '0))))
                      (if (gx#stx-null? _%tl4992149953%_)
                          (_%__match7578675787%_
                           _%e4987950460%_
                           _%hd4987850464%_
                           _%tl4987750467%_
                           _%__splice7571275713%_
                           _%target4991949950%_
                           _%tl4992149953%_)
                          (let () (declare (not safe)) (_%g4987349933%_)))))
                  (let () (declare (not safe)) (_%g4987349933%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4987750467%_)
                                                  (let ((_%__splice7571275713%_
                                                         (gx#syntax-split-splice
                                                          _%tl4987750467%_
                                                          '0)))
                                                    (let ((_%tl4992149953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7571275713%_
                                                              '1)))
                                                          (_%target4991949950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7571275713%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4992149953%_)
                                                          (_%__match7578675787%_
                                                           _%e4987950460%_
                                                           _%hd4987850464%_
                                                           _%tl4987750467%_
                                                           _%__splice7571275713%_
                                                           _%target4991949950%_
                                                           _%tl4992149953%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4987349933%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4987349933%_)))))))
                                  (if (gx#stx-pair? _%hd4988150474%_)
                                      (let ((_%e4990250031%_
                                             (gx#syntax-e _%hd4988150474%_)))
                                        (let ((_%tl4990050038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4990250031%_)))
                                              (_%hd4990150035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4990250031%_))))
                                          (if (gx#identifier? _%hd4990150035%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80221_|
                                                   _%hd4990150035%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4990050038%_)
                                                      (let ((_%e4990550041%_
                                                             (gx#syntax-e
                                                              _%tl4990050038%_)))
                                                        (let ((_%tl4990350048%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4990550041%_)))
                      (_%hd4990450045%_
                       (let () (declare (not safe)) (##car _%e4990550041%_))))
                  (if (gx#stx-pair/null? _%tl4987750467%_)
                      (let ((_%__splice7571275713%_
                             (gx#syntax-split-splice _%tl4987750467%_ '0)))
                        (let ((_%tl4992149953%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7571275713%_ '1)))
                              (_%target4991949950%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7571275713%_ '0))))
                          (if (gx#stx-null? _%tl4992149953%_)
                              (_%__match7578675787%_
                               _%e4987950460%_
                               _%hd4987850464%_
                               _%tl4987750467%_
                               _%__splice7571275713%_
                               _%target4991949950%_
                               _%tl4992149953%_)
                              (let ()
                                (declare (not safe))
                                (_%g4987349933%_)))))
                      (let () (declare (not safe)) (_%g4987349933%_)))))
              (if (gx#stx-pair/null? _%tl4987750467%_)
                  (let ((_%__splice7571275713%_
                         (gx#syntax-split-splice _%tl4987750467%_ '0)))
                    (let ((_%tl4992149953%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7571275713%_ '1)))
                          (_%target4991949950%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7571275713%_ '0))))
                      (if (gx#stx-null? _%tl4992149953%_)
                          (_%__match7578675787%_
                           _%e4987950460%_
                           _%hd4987850464%_
                           _%tl4987750467%_
                           _%__splice7571275713%_
                           _%target4991949950%_
                           _%tl4992149953%_)
                          (let () (declare (not safe)) (_%g4987349933%_)))))
                  (let () (declare (not safe)) (_%g4987349933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4987750467%_)
                                                      (let ((_%__splice7571275713%_
                                                             (gx#syntax-split-splice
                                                              _%tl4987750467%_
                                                              '0)))
                                                        (let ((_%tl4992149953%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7571275713%_ '1)))
                      (_%target4991949950%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7571275713%_ '0))))
                  (if (gx#stx-null? _%tl4992149953%_)
                      (_%__match7578675787%_
                       _%e4987950460%_
                       _%hd4987850464%_
                       _%tl4987750467%_
                       _%__splice7571275713%_
                       _%target4991949950%_
                       _%tl4992149953%_)
                      (let () (declare (not safe)) (_%g4987349933%_)))))
              (let () (declare (not safe)) (_%g4987349933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4987750467%_)
                                                  (let ((_%__splice7571275713%_
                                                         (gx#syntax-split-splice
                                                          _%tl4987750467%_
                                                          '0)))
                                                    (let ((_%tl4992149953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7571275713%_
                                                              '1)))
                                                          (_%target4991949950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7571275713%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4992149953%_)
                                                          (_%__match7578675787%_
                                                           _%e4987950460%_
                                                           _%hd4987850464%_
                                                           _%tl4987750467%_
                                                           _%__splice7571275713%_
                                                           _%target4991949950%_
                                                           _%tl4992149953%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4987349933%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4987349933%_))))))
                                      (if (gx#stx-pair/null? _%tl4987750467%_)
                                          (let ((_%__splice7571275713%_
                                                 (gx#syntax-split-splice
                                                  _%tl4987750467%_
                                                  '0)))
                                            (let ((_%tl4992149953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7571275713%_
                                                      '1)))
                                                  (_%target4991949950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7571275713%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4992149953%_)
                                                  (_%__match7578675787%_
                                                   _%e4987950460%_
                                                   _%hd4987850464%_
                                                   _%tl4987750467%_
                                                   _%__splice7571275713%_
                                                   _%target4991949950%_
                                                   _%tl4992149953%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4987349933%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4987349933%_)))))))
                          (if (gx#stx-pair/null? _%tl4987750467%_)
                              (let ((_%__splice7571275713%_
                                     (gx#syntax-split-splice
                                      _%tl4987750467%_
                                      '0)))
                                (let ((_%tl4992149953%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7571275713%_
                                          '1)))
                                      (_%target4991949950%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7571275713%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4992149953%_)
                                      (_%__match7578675787%_
                                       _%e4987950460%_
                                       _%hd4987850464%_
                                       _%tl4987750467%_
                                       _%__splice7571275713%_
                                       _%target4991949950%_
                                       _%tl4992149953%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4987349933%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4987349933%_))))))
                  (let () (declare (not safe)) (_%g4987349933%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx50544%_)
        (let* ((_%__stx7578975790%_ _%stx50544%_)
               (_%g5054850569%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7578975790%_))))
          (let ((_%__kont7579275793%_
                 (lambda (_%L50637%_)
                   (let* ((_%g5064950656%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50544%_
                              _%L50637%_)))
                          (_%E5065150662%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5064950656%_
                                    '([var . parts]))
                             (void)))
                          (_%K5065250878%_
                           (lambda (_%parts50666%_ _%var50668%_)
                             (let ((_%$e50670%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var50668%_))))
                               (if _%$e50670%_
                                   ((lambda (_%te50674%_)
                                      (let _%loop50677%_ ((_%parts50680%_
                                                           _%parts50666%_)
                                                          (_%type50682%_
                                                           (##direct-structure-ref
                                                            _%te50674%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object50683%_
                                                           _%var50668%_)
                                                          (_%nil-check?50684%_
                                                           '#f))
                                        (let* ((_%parts5068550693%_
                                                _%parts50680%_)
                                               (_%else5068750705%_
                                                (lambda () _%object50683%_))
                                               (_%K5068950860%_
                                                (lambda (_%rest50709%_
                                                         _%part50711%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?50684%_))
                                                           (let ((__tmp80222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part50711%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80222)))
              (let ()
                (let ((_%str50715%_ (symbol->string _%part50711%_)))
                  (_%loop50677%_
                   (cons (let ((__tmp80223
                                (substring
                                 _%str50715%_
                                 '1
                                 (string-length _%str50715%_))))
                           (declare (not safe))
                           (##string->symbol __tmp80223))
                         _%rest50709%_)
                   _%type50682%_
                   _%object50683%_
                   '#t)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type50682%_))
                  (let ()
                    (let* ((_%g5072050735%_
                            (lambda (_%g5072150731%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5072150731%_)))
                           (_%g5071950852%_
                            (lambda (_%g5072150739%_)
                              (if (gx#stx-pair? _%g5072150739%_)
                                  (let ((_%e5072650742%_
                                         (gx#syntax-e _%g5072150739%_)))
                                    (let ((_%hd5072550746%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5072650742%_)))
                                          (_%tl5072450749%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5072650742%_))))
                                      (if (gx#stx-pair? _%tl5072450749%_)
                                          (let ((_%e5072950752%_
                                                 (gx#syntax-e
                                                  _%tl5072450749%_)))
                                            (let ((_%hd5072850756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5072950752%_)))
                                                  (_%tl5072750759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5072950752%_))))
                                              (if (gx#stx-null?
                                                   _%tl5072750759%_)
                                                  ((lambda (_%L50762%_
                                                            _%L50764%_)
                                                     (let ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%rest50709%_))
                                                           (let ()
                                                             (let ((_%$e50794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gerbil/core/mop~MOP-2#!class-slot-type
                               _%type50682%_
                               _%part50711%_))))
                       (if _%$e50794%_
                           ((lambda (_%slot-type50798%_)
                              (let* ((_%g5080150809%_
                                      (lambda (_%g5080250805%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5080250805%_)))
                                     (_%g5080050832%_
                                      (lambda (_%g5080250813%_)
                                        ((lambda (_%L50816%_)
                                           (let ()
                                             (if _%nil-check?50684%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@type)
                           (cons _%L50816%_ '()))
                     (cons (cons _%L50762%_
                                 (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                             (cons _%L50764%_ '()))
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
                           (cons _%L50816%_ '()))
                     (cons (cons _%L50762%_ (cons _%L50764%_ '())) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g5080250813%_))))
                                (_%g5080050832%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                    _%stx50544%_
                                    _%type50682%_)))))
                            _%$e50794%_)
                           (if _%nil-check?50684%_
                               (let ()
                                 (cons _%L50762%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L50764%_ '()))
                                             '())))
                               (let ()
                                 (cons _%L50762%_ (cons _%L50764%_ '())))))))
                   (let ((_%$e50840%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#!class-slot-type
                             _%type50682%_
                             _%part50711%_))))
                     (if _%$e50840%_
                         ((lambda (_%type50844%_)
                            (let ((_%type50847%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50544%_
                                      _%type50844%_))))
                              (if _%nil-check?50684%_
                                  (_%loop50677%_
                                   _%rest50709%_
                                   _%type50847%_
                                   (cons _%L50762%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'check-nil!)
                                                     (cons _%L50764%_ '()))
                                               '()))
                                   '#f)
                                  (_%loop50677%_
                                   _%rest50709%_
                                   _%type50847%_
                                   (cons _%L50762%_ (cons _%L50764%_ '()))
                                   '#f))))
                          _%$e50840%_)
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unresolved dotted reference; unknown type for slot"
                            _%stx50544%_
                            _%L50637%_
                            _%part50711%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd5072850756%_
                                                   _%hd5072550746%_)
                                                  (_%g5072050735%_
                                                   _%g5072150739%_))))
                                          (_%g5072050735%_ _%g5072150739%_))))
                                  (_%g5072050735%_ _%g5072150739%_)))))
                      (_%g5071950852%_
                       (list _%object50683%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50544%_
                                _%type50682%_
                                _%part50711%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type50682%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50544%_
                         _%type50682%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5068550693%_))
                                              (let ((_%hd5069050864%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5068550693%_)))
                                                    (_%tl5069150867%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5068550693%_))))
                                                (let* ((_%part50870%_
                                                        _%hd5069050864%_)
                                                       (_%rest50873%_
                                                        _%tl5069150867%_))
                                                  (_%K5068950860%_
                                                   _%rest50873%_
                                                   _%part50870%_)))
                                              (_%else5068750705%_)))))
                                    _%$e50670%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f '%%ref)
                                           (cons _%L50637%_ '()))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5064950656%_))
                         (let ((_%hd5065350882%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5064950656%_)))
                               (_%tl5065450885%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5064950656%_))))
                           (let* ((_%var50888%_ _%hd5065350882%_)
                                  (_%parts50891%_ _%tl5065450885%_))
                             (_%K5065250878%_ _%parts50891%_ _%var50888%_)))
                         (_%E5065150662%_)))))
                (_%__kont7579475795%_
                 (lambda (_%L50596%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L50596%_ '())))))
            (let ((_%__match7581075811%_
                   (lambda (_%e5055350617%_
                            _%hd5055250621%_
                            _%tl5055150624%_
                            _%e5055650627%_
                            _%hd5055550631%_
                            _%tl5055450634%_)
                     (let ((_%L50637%_ _%hd5055550631%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L50637%_))
                           (_%__kont7579275793%_ _%L50637%_)
                           (_%__kont7579475795%_ _%hd5055550631%_))))))
              (if (gx#stx-pair? _%__stx7578975790%_)
                  (let ((_%e5055350617%_ (gx#syntax-e _%__stx7578975790%_)))
                    (let ((_%tl5055150624%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5055350617%_)))
                          (_%hd5055250621%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5055350617%_))))
                      (if (gx#stx-pair? _%tl5055150624%_)
                          (let ((_%e5055650627%_
                                 (gx#syntax-e _%tl5055150624%_)))
                            (let ((_%tl5055450634%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5055650627%_)))
                                  (_%hd5055550631%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5055650627%_))))
                              (if (gx#stx-null? _%tl5055450634%_)
                                  (_%__match7581075811%_
                                   _%e5055350617%_
                                   _%hd5055250621%_
                                   _%tl5055150624%_
                                   _%e5055650627%_
                                   _%hd5055550631%_
                                   _%tl5055450634%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5054850569%_)))))
                          (let () (declare (not safe)) (_%g5054850569%_)))))
                  (let () (declare (not safe)) (_%g5054850569%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx50898%_)
        (let* ((_%__stx7582775828%_ _%stx50898%_)
               (_%g5090250931%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7582775828%_))))
          (let ((_%__kont7583075831%_
                 (lambda (_%L51023%_ _%L51025%_)
                   (let* ((_%g5103951046%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50898%_
                              _%L51025%_)))
                          (_%E5104151052%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5103951046%_
                                    '([var . parts]))
                             (void)))
                          (_%K5104251285%_
                           (lambda (_%parts51056%_ _%var51058%_)
                             (let ((_%$e51060%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51058%_))))
                               (if _%$e51060%_
                                   ((lambda (_%te51064%_)
                                      (let _%loop51067%_ ((_%parts51070%_
                                                           _%parts51056%_)
                                                          (_%type51072%_
                                                           (##direct-structure-ref
                                                            _%te51064%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51073%_
                                                           _%var51058%_)
                                                          (_%nil-check?51074%_
                                                           '#f))
                                        (let* ((_%parts5107551082%_
                                                _%parts51070%_)
                                               (_%E5107751088%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5107551082%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5107851267%_
                                                (lambda (_%rest51092%_
                                                         _%part51094%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?51074%_))
                                                           (let ((__tmp80224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51094%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80224)))
              (let ()
                (let ((_%str51098%_ (symbol->string _%part51094%_)))
                  (_%loop51067%_
                   (cons (let ((__tmp80225
                                (substring
                                 _%str51098%_
                                 '1
                                 (string-length _%str51098%_))))
                           (declare (not safe))
                           (##string->symbol __tmp80225))
                         _%rest51092%_)
                   _%type51072%_
                   _%object51073%_
                   '#t)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51072%_))
                  (let ()
                    (if (let () (declare (not safe)) (null? _%rest51092%_))
                        (let ()
                          (let* ((_%g5110551120%_
                                  (lambda (_%g5110651116%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5110651116%_)))
                                 (_%g5110451177%_
                                  (lambda (_%g5110651124%_)
                                    (if (gx#stx-pair? _%g5110651124%_)
                                        (let ((_%e5111151127%_
                                               (gx#syntax-e _%g5110651124%_)))
                                          (let ((_%hd5111051131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5111151127%_)))
                                                (_%tl5110951134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5111151127%_))))
                                            (if (gx#stx-pair? _%tl5110951134%_)
                                                (let ((_%e5111451137%_
                                                       (gx#syntax-e
                                                        _%tl5110951134%_)))
                                                  (let ((_%hd5111351141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5111451137%_)))
                                                        (_%tl5111251144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5111451137%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5111251144%_)
                                                        ((lambda (_%L51147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L51149%_)
                   (let ()
                     (if _%nil-check?51074%_
                         (cons _%L51147%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51149%_ '()))
                                     (cons _%L51023%_ '())))
                         (cons _%L51147%_
                               (cons _%L51149%_ (cons _%L51023%_ '()))))))
                 _%hd5111351141%_
                 _%hd5111051131%_)
                (_%g5110551120%_ _%g5110651124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5110551120%_
                                                 _%g5110651124%_))))
                                        (_%g5110551120%_ _%g5110651124%_)))))
                            (_%g5110451177%_
                             (list _%object51073%_
                                   (let ((__tmp80226
                                          (if (##direct-structure-ref
                                               _%te51064%_
                                               '3
                                               gerbil/core/contract~TypeEnv#type-env::t
                                               '#f)
                                              (let ((_%$e51181%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/mop~MOP-2#!class-slot-type
                                                        _%type51072%_
                                                        _%part51094%_))))
                                                (if _%$e51181%_
                                                    _%$e51181%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#!class-slot-contract
                                                       _%type51072%_
                                                       _%part51094%_))))
                                              '#f)))
                                     (declare (not safe))
                                     (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                      _%stx50898%_
                                      _%type51072%_
                                      _%part51094%_
                                      __tmp80226))))))
                        (let ((_%$e51185%_
                               (let ()
                                 (declare (not safe))
                                 (gerbil/core/mop~MOP-2#!class-slot-type
                                  _%type51072%_
                                  _%part51094%_))))
                          (if _%$e51185%_
                              ((lambda (_%type51189%_)
                                 (let* ((_%type51192%_
                                         (let ()
                                           (declare (not safe))
                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                            _%stx50898%_
                                            _%type51189%_)))
                                        (_%g5119551210%_
                                         (lambda (_%g5119651206%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g5119651206%_)))
                                        (_%g5119451257%_
                                         (lambda (_%g5119651214%_)
                                           (if (gx#stx-pair? _%g5119651214%_)
                                               (let ((_%e5120151217%_
                                                      (gx#syntax-e
                                                       _%g5119651214%_)))
                                                 (let ((_%hd5120051221%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5120151217%_)))
                                                       (_%tl5119951224%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5120151217%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl5119951224%_)
                                                       (let ((_%e5120451227%_
                                                              (gx#syntax-e
                                                               _%tl5119951224%_)))
                                                         (let ((_%hd5120351231%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5120451227%_)))
                       (_%tl5120251234%_
                        (let () (declare (not safe)) (##cdr _%e5120451227%_))))
                   (if (gx#stx-null? _%tl5120251234%_)
                       ((lambda (_%L51237%_ _%L51239%_)
                          (let ()
                            (if _%nil-check?51074%_
                                (_%loop51067%_
                                 _%rest51092%_
                                 _%type51192%_
                                 (cons _%L51237%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L51239%_ '()))
                                             '()))
                                 '#f)
                                (_%loop51067%_
                                 _%rest51092%_
                                 _%type51192%_
                                 (cons _%L51237%_ (cons _%L51239%_ '()))
                                 '#f))))
                        _%hd5120351231%_
                        _%hd5120051221%_)
                       (_%g5119551210%_ _%g5119651214%_))))
               (_%g5119551210%_ _%g5119651214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5119551210%_
                                                _%g5119651214%_)))))
                                   (_%g5119451257%_
                                    (list _%object51073%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                             _%stx50898%_
                                             _%type51192%_
                                             _%part51094%_))))))
                               _%$e51185%_)
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"unresolved dotted reference; unknown type for slot"
                                 _%stx50898%_
                                 _%L51025%_
                                 _%part51094%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51072%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50898%_
                         _%type51072%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5107551082%_))
                                              (let ((_%hd5107951271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5107551082%_)))
                                                    (_%tl5108051274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5107551082%_))))
                                                (let* ((_%part51277%_
                                                        _%hd5107951271%_)
                                                       (_%rest51280%_
                                                        _%tl5108051274%_))
                                                  (_%K5107851267%_
                                                   _%rest51280%_
                                                   _%part51277%_)))
                                              (_%E5107751088%_)))))
                                    _%$e51060%_)
                                   (let ()
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/more-sugar[1]#expand-set!|
                                        _%stx50898%_))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5103951046%_))
                         (let ((_%hd5104351289%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5103951046%_)))
                               (_%tl5104451292%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5103951046%_))))
                           (let* ((_%var51295%_ _%hd5104351289%_)
                                  (_%parts51298%_ _%tl5104451292%_))
                             (_%K5104251285%_ _%parts51298%_ _%var51295%_)))
                         (_%E5104151052%_)))))
                (_%__kont7583275833%_
                 (lambda (_%L50968%_ _%L50970%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx50898%_)))))
            (let ((_%__match7585475855%_
                   (lambda (_%e5090850993%_
                            _%hd5090750997%_
                            _%tl5090651000%_
                            _%e5091151003%_
                            _%hd5091051007%_
                            _%tl5090951010%_
                            _%e5091451013%_
                            _%hd5091351017%_
                            _%tl5091251020%_)
                     (let ((_%L51023%_ _%hd5091351017%_)
                           (_%L51025%_ _%hd5091051007%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L51025%_))
                           (_%__kont7583075831%_ _%L51023%_ _%L51025%_)
                           (_%__kont7583275833%_
                            _%hd5091351017%_
                            _%hd5091051007%_))))))
              (if (gx#stx-pair? _%__stx7582775828%_)
                  (let ((_%e5090850993%_ (gx#syntax-e _%__stx7582775828%_)))
                    (let ((_%tl5090651000%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5090850993%_)))
                          (_%hd5090750997%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5090850993%_))))
                      (if (gx#stx-pair? _%tl5090651000%_)
                          (let ((_%e5091151003%_
                                 (gx#syntax-e _%tl5090651000%_)))
                            (let ((_%tl5090951010%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5091151003%_)))
                                  (_%hd5091051007%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5091151003%_))))
                              (if (gx#stx-pair? _%tl5090951010%_)
                                  (let ((_%e5091451013%_
                                         (gx#syntax-e _%tl5090951010%_)))
                                    (let ((_%tl5091251020%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5091451013%_)))
                                          (_%hd5091351017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5091451013%_))))
                                      (if (gx#stx-null? _%tl5091251020%_)
                                          (_%__match7585475855%_
                                           _%e5090850993%_
                                           _%hd5090750997%_
                                           _%tl5090651000%_
                                           _%e5091151003%_
                                           _%hd5091051007%_
                                           _%tl5090951010%_
                                           _%e5091451013%_
                                           _%hd5091351017%_
                                           _%tl5091251020%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5090250931%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5090250931%_)))))
                          (let () (declare (not safe)) (_%g5090250931%_)))))
                  (let () (declare (not safe)) (_%g5090250931%_))))))))))
