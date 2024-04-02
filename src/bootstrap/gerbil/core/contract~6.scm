(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g80055_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80056_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80057_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80058_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80059_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80064_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80065_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80066_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80069_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80070_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80071_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80072_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g80075_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46612%_)
        (let* ((_%__stx7486874869%_ _%stx46612%_)
               (_%g4662146824%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7486874869%_))))
          (let ((_%__kont7487174872%_
                 (lambda (_%L47733%_
                          _%L47735%_
                          _%L47736%_
                          _%L47737%_
                          _%L47738%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47738%_ (cons _%L47737%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47738%_
                                                       (cons _%L47736%_
                                                             (cons _%L47735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4778147784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4778247787%_)
                  (cons _%g4778147784%_ _%g4778247787%_))
                '()
                _%L47733%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7487574876%_
                 (lambda (_%L47591%_
                          _%L47593%_
                          _%L47594%_
                          _%L47595%_
                          _%L47596%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47596%_ (cons _%L47595%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47596%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f ':-)
                                       (cons _%L47593%_ '())))
                           (foldr (lambda (_%g4762747630%_ _%g4762847633%_)
                                    (cons _%g4762747630%_ _%g4762847633%_))
                                  '()
                                  _%L47591%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7487974880%_
                 (lambda (_%L47363%_ _%L47365%_ _%L47366%_ _%L47367%_)
                   (let ((_%meta47404%_
                          (gx#syntax-local-value _%L47365%_ false)))
                     (if (let () (declare (not safe)) (not _%meta47404%_))
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unknown type"
                            _%stx46612%_
                            _%L47365%_))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta47404%_))
                             (let ()
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%L47367%_
                                                 (cons _%L47366%_
                                                       (cons _%L47365%_ '())))
                                           (foldr (lambda (_%g4741047413%_
                                                           _%g4741147416%_)
                                                    (cons _%g4741047413%_
                                                          _%g4741147416%_))
                                                  '()
                                                  _%L47363%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (class-instance?
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    _%meta47404%_))
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'with-class)
                                         (cons (cons _%L47367%_
                                                     (cons _%L47366%_
                                                           (cons _%L47365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (foldr (lambda (_%g4742047423%_
                                                               _%g4742147426%_)
                                                        (cons _%g4742047423%_
                                                              _%g4742147426%_))
                                                      '()
                                                      _%L47363%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                        _%meta47404%_))
                                     (let ()
                                       (let* ((_%g4743147439%_
                                               (lambda (_%g4743247435%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g4743247435%_)))
                                              (_%g4743047468%_
                                               (lambda (_%g4743247443%_)
                                                 ((lambda (_%L47446%_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'using)
                                                            (cons (cons _%L47367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%L47366%_ (cons _%L47446%_ '())))
                          (foldr (lambda (_%g4745947462%_ _%g4746047465%_)
                                   (cons _%g4745947462%_ _%g4746047465%_))
                                 '()
                                 _%L47363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g4743247443%_))))
                                         (_%g4743047468%_
                                          (let ((__obj79888 _%meta47404%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj79888
                                                   'gerbil/core/contract~TypeReference#type-reference::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj79888
                                                   '1
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                 __obj79888
                                                 'identifier))))))
                                     (let ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad type; must be an interface, struct, or class with complete type information"
                                        _%stx46612%_
                                        _%L47365%_
                                        _%meta47404%_)))))))))
                (_%__kont7488374884%_
                 (lambda (_%L47241%_ _%L47243%_ _%L47244%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47244%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47243%_ '())))
                               (foldr (lambda (_%g4726747270%_ _%g4726847273%_)
                                        (cons _%g4726747270%_ _%g4726847273%_))
                                      '()
                                      _%L47241%_)))))
                (_%__kont7488774888%_
                 (lambda (_%L47113%_ _%L47115%_ _%L47116%_ _%L47117%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L47117%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47116%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47117%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':-)
                                                             (cons _%L47115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4714547148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4714647151%_)
                  (cons _%g4714547148%_ _%g4714647151%_))
                '()
                _%L47113%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7489174892%_
                 (lambda (_%L46975%_ _%L46977%_ _%L46978%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons _%L46978%_
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46977%_
                                                 (foldr (lambda (_%g4699747000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4699847003%_)
                  (cons _%g4699747000%_ _%g4699847003%_))
                '()
                _%L46975%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7489574896%_
                 (lambda (_%L46881%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4689946902%_ _%g4690046905%_)
                                        (cons _%g4689946902%_ _%g4690046905%_))
                                      '()
                                      _%L46881%_))))))
            (let* ((_%__match7520375204%_
                    (lambda (_%e4680646831%_
                             _%hd4680546835%_
                             _%tl4680446838%_
                             _%e4680946841%_
                             _%hd4680846845%_
                             _%tl4680746848%_
                             _%__splice7489774898%_
                             _%target4681046851%_
                             _%tl4681246854%_)
                      (letrec ((_%loop4681346857%_
                                (lambda (_%hd4681146861%_ _%body4681746864%_)
                                  (if (gx#stx-pair? _%hd4681146861%_)
                                      (let ((_%e4681446867%_
                                             (gx#syntax-e _%hd4681146861%_)))
                                        (let ((_%lp-tl4681646874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4681446867%_)))
                                              (_%lp-hd4681546871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4681446867%_))))
                                          (_%loop4681346857%_
                                           _%lp-tl4681646874%_
                                           (cons _%lp-hd4681546871%_
                                                 _%body4681746864%_))))
                                      (let ((_%body4681846877%_
                                             (reverse _%body4681746864%_)))
                                        (_%__kont7489574896%_
                                         _%body4681846877%_))))))
                        (_%loop4681346857%_ _%target4681046851%_ '()))))
                   (_%__match7518175182%_
                    (lambda (_%e4678746915%_
                             _%hd4678646919%_
                             _%tl4678546922%_
                             _%e4679046925%_
                             _%hd4678946929%_
                             _%tl4678846932%_
                             _%e4679346935%_
                             _%hd4679246939%_
                             _%tl4679146942%_
                             _%__splice7489374894%_
                             _%target4679446945%_
                             _%tl4679646948%_)
                      (letrec ((_%loop4679746951%_
                                (lambda (_%hd4679546955%_ _%body4680146958%_)
                                  (if (gx#stx-pair? _%hd4679546955%_)
                                      (let ((_%e4679846961%_
                                             (gx#syntax-e _%hd4679546955%_)))
                                        (let ((_%lp-tl4680046968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4679846961%_)))
                                              (_%lp-hd4679946965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4679846961%_))))
                                          (_%loop4679746951%_
                                           _%lp-tl4680046968%_
                                           (cons _%lp-hd4679946965%_
                                                 _%body4680146958%_))))
                                      (let ((_%body4680246971%_
                                             (reverse _%body4680146958%_)))
                                        (_%__kont7489174892%_
                                         _%body4680246971%_
                                         _%tl4679146942%_
                                         _%hd4679246939%_))))))
                        (_%loop4679746951%_ _%target4679446945%_ '()))))
                   (_%__match7515575156%_
                    (lambda (_%e4675447013%_
                             _%hd4675347017%_
                             _%tl4675247020%_
                             _%e4675747023%_
                             _%hd4675647027%_
                             _%tl4675547030%_
                             _%e4676047033%_
                             _%hd4675947037%_
                             _%tl4675847040%_
                             _%e4676347043%_
                             _%hd4676247047%_
                             _%tl4676147050%_
                             _%e4676647053%_
                             _%hd4676547057%_
                             _%tl4676447060%_
                             _%e4676947063%_
                             _%hd4676847067%_
                             _%tl4676747070%_
                             _%e4677247073%_
                             _%hd4677147077%_
                             _%tl4677047080%_
                             _%__splice7488974890%_
                             _%target4677347083%_
                             _%tl4677547086%_)
                      (letrec ((_%loop4677647089%_
                                (lambda (_%hd4677447093%_ _%body4678047096%_)
                                  (if (gx#stx-pair? _%hd4677447093%_)
                                      (let ((_%e4677747099%_
                                             (gx#syntax-e _%hd4677447093%_)))
                                        (let ((_%lp-tl4677947106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4677747099%_)))
                                              (_%lp-hd4677847103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4677747099%_))))
                                          (_%loop4677647089%_
                                           _%lp-tl4677947106%_
                                           (cons _%lp-hd4677847103%_
                                                 _%body4678047096%_))))
                                      (let ((_%body4678147109%_
                                             (reverse _%body4678047096%_)))
                                        (let ((_%L47113%_ _%body4678147109%_)
                                              (_%L47115%_ _%hd4677147077%_)
                                              (_%L47116%_ _%hd4676547057%_)
                                              (_%L47117%_ _%hd4675947037%_))
                                          (if (and (gx#identifier? _%L47117%_)
                                                   (gx#identifier? _%L47115%_))
                                              (_%__kont7488774888%_
                                               _%L47113%_
                                               _%L47115%_
                                               _%L47116%_
                                               _%L47117%_)
                                              (_%__match7518175182%_
                                               _%e4675447013%_
                                               _%hd4675347017%_
                                               _%tl4675247020%_
                                               _%e4675747023%_
                                               _%hd4675647027%_
                                               _%tl4675547030%_
                                               _%e4676047033%_
                                               _%hd4675947037%_
                                               _%tl4675847040%_
                                               _%__splice7488974890%_
                                               _%target4677347083%_
                                               _%tl4677547086%_))))))))
                        (_%loop4677647089%_ _%target4677347083%_ '()))))
                   (_%__match7509575096%_
                    (lambda (_%e4672647161%_
                             _%hd4672547165%_
                             _%tl4672447168%_
                             _%e4672947171%_
                             _%hd4672847175%_
                             _%tl4672747178%_
                             _%e4673247181%_
                             _%hd4673147185%_
                             _%tl4673047188%_
                             _%e4673547191%_
                             _%hd4673447195%_
                             _%tl4673347198%_
                             _%e4673847201%_
                             _%hd4673747205%_
                             _%tl4673647208%_
                             _%__splice7488574886%_
                             _%target4673947211%_
                             _%tl4674147214%_)
                      (letrec ((_%loop4674247217%_
                                (lambda (_%hd4674047221%_ _%body4674647224%_)
                                  (if (gx#stx-pair? _%hd4674047221%_)
                                      (let ((_%e4674347227%_
                                             (gx#syntax-e _%hd4674047221%_)))
                                        (let ((_%lp-tl4674547234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4674347227%_)))
                                              (_%lp-hd4674447231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4674347227%_))))
                                          (_%loop4674247217%_
                                           _%lp-tl4674547234%_
                                           (cons _%lp-hd4674447231%_
                                                 _%body4674647224%_))))
                                      (let ((_%body4674747237%_
                                             (reverse _%body4674647224%_)))
                                        (let ((_%L47241%_ _%body4674747237%_)
                                              (_%L47243%_ _%hd4673747205%_)
                                              (_%L47244%_ _%hd4673147185%_))
                                          (if (gx#identifier? _%L47244%_)
                                              (_%__kont7488374884%_
                                               _%L47241%_
                                               _%L47243%_
                                               _%L47244%_)
                                              (_%__match7518175182%_
                                               _%e4672647161%_
                                               _%hd4672547165%_
                                               _%tl4672447168%_
                                               _%e4672947171%_
                                               _%hd4672847175%_
                                               _%tl4672747178%_
                                               _%e4673247181%_
                                               _%hd4673147185%_
                                               _%tl4673047188%_
                                               _%__splice7488574886%_
                                               _%target4673947211%_
                                               _%tl4674147214%_))))))))
                        (_%loop4674247217%_ _%target4673947211%_ '()))))
                   (_%__match7507575076%_
                    (lambda (_%e4672647161%_
                             _%hd4672547165%_
                             _%tl4672447168%_
                             _%e4672947171%_
                             _%hd4672847175%_
                             _%tl4672747178%_
                             _%e4673247181%_
                             _%hd4673147185%_
                             _%tl4673047188%_
                             _%e4673547191%_
                             _%hd4673447195%_
                             _%tl4673347198%_)
                      (if (gx#identifier? _%hd4673447195%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80055_|
                               _%hd4673447195%_)
                              (if (gx#stx-pair? _%tl4673347198%_)
                                  (let ((_%e4673847201%_
                                         (gx#syntax-e _%tl4673347198%_)))
                                    (let ((_%tl4673647208%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4673847201%_)))
                                          (_%hd4673747205%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4673847201%_))))
                                      (if (gx#stx-null? _%tl4673647208%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4672747178%_)
                                              (let ((_%__splice7488574886%_
                                                     (gx#syntax-split-splice
                                                      _%tl4672747178%_
                                                      '0)))
                                                (let ((_%tl4674147214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7488574886%_
                                                          '1)))
                                                      (_%target4673947211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7488574886%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4674147214%_)
                                                      (_%__match7509575096%_
                                                       _%e4672647161%_
                                                       _%hd4672547165%_
                                                       _%tl4672447168%_
                                                       _%e4672947171%_
                                                       _%hd4672847175%_
                                                       _%tl4672747178%_
                                                       _%e4673247181%_
                                                       _%hd4673147185%_
                                                       _%tl4673047188%_
                                                       _%e4673547191%_
                                                       _%hd4673447195%_
                                                       _%tl4673347198%_
                                                       _%e4673847201%_
                                                       _%hd4673747205%_
                                                       _%tl4673647208%_
                                                       _%__splice7488574886%_
                                                       _%target4673947211%_
                                                       _%tl4674147214%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4662146824%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))
                                          (if (gx#stx-pair? _%tl4673647208%_)
                                              (let ((_%e4676947063%_
                                                     (gx#syntax-e
                                                      _%tl4673647208%_)))
                                                (let ((_%tl4676747070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4676947063%_)))
                                                      (_%hd4676847067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4676947063%_))))
                                                  (if (gx#identifier?
                                                       _%hd4676847067%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80056_|
                                                           _%hd4676847067%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4676747070%_)
                                                              (let ((_%e4677247073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4676747070%_)))
                        (let ((_%tl4677047080%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4677247073%_)))
                              (_%hd4677147077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4677247073%_))))
                          (if (gx#stx-null? _%tl4677047080%_)
                              (if (gx#stx-pair/null? _%tl4672747178%_)
                                  (let ((_%__splice7488974890%_
                                         (gx#syntax-split-splice
                                          _%tl4672747178%_
                                          '0)))
                                    (let ((_%tl4677547086%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488974890%_
                                              '1)))
                                          (_%target4677347083%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488974890%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677547086%_)
                                          (_%__match7515575156%_
                                           _%e4672647161%_
                                           _%hd4672547165%_
                                           _%tl4672447168%_
                                           _%e4672947171%_
                                           _%hd4672847175%_
                                           _%tl4672747178%_
                                           _%e4673247181%_
                                           _%hd4673147185%_
                                           _%tl4673047188%_
                                           _%e4673547191%_
                                           _%hd4673447195%_
                                           _%tl4673347198%_
                                           _%e4673847201%_
                                           _%hd4673747205%_
                                           _%tl4673647208%_
                                           _%e4676947063%_
                                           _%hd4676847067%_
                                           _%tl4676747070%_
                                           _%e4677247073%_
                                           _%hd4677147077%_
                                           _%tl4677047080%_
                                           _%__splice7488974890%_
                                           _%target4677347083%_
                                           _%tl4677547086%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))
                              (if (gx#stx-pair/null? _%tl4672747178%_)
                                  (let ((_%__splice7489374894%_
                                         (gx#syntax-split-splice
                                          _%tl4672747178%_
                                          '0)))
                                    (let ((_%tl4679646948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '1)))
                                          (_%target4679446945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4679646948%_)
                                          (_%__match7518175182%_
                                           _%e4672647161%_
                                           _%hd4672547165%_
                                           _%tl4672447168%_
                                           _%e4672947171%_
                                           _%hd4672847175%_
                                           _%tl4672747178%_
                                           _%e4673247181%_
                                           _%hd4673147185%_
                                           _%tl4673047188%_
                                           _%__splice7489374894%_
                                           _%target4679446945%_
                                           _%tl4679646948%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_))))))
                      (if (gx#stx-pair/null? _%tl4672747178%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4672747178%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4672647161%_
                                   _%hd4672547165%_
                                   _%tl4672447168%_
                                   _%e4672947171%_
                                   _%hd4672847175%_
                                   _%tl4672747178%_
                                   _%e4673247181%_
                                   _%hd4673147185%_
                                   _%tl4673047188%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))
                  (if (gx#stx-pair/null? _%tl4672747178%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4672747178%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4672647161%_
                               _%hd4672547165%_
                               _%tl4672447168%_
                               _%e4672947171%_
                               _%hd4672847175%_
                               _%tl4672747178%_
                               _%e4673247181%_
                               _%hd4673147185%_
                               _%tl4673047188%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_))))
              (if (gx#stx-pair/null? _%tl4672747178%_)
                  (let ((_%__splice7489374894%_
                         (gx#syntax-split-splice _%tl4672747178%_ '0)))
                    (let ((_%tl4679646948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '1)))
                          (_%target4679446945%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '0))))
                      (if (gx#stx-null? _%tl4679646948%_)
                          (_%__match7518175182%_
                           _%e4672647161%_
                           _%hd4672547165%_
                           _%tl4672447168%_
                           _%e4672947171%_
                           _%hd4672847175%_
                           _%tl4672747178%_
                           _%e4673247181%_
                           _%hd4673147185%_
                           _%tl4673047188%_
                           _%__splice7489374894%_
                           _%target4679446945%_
                           _%tl4679646948%_)
                          (let () (declare (not safe)) (_%g4662146824%_)))))
                  (let () (declare (not safe)) (_%g4662146824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4672747178%_)
                                                  (let ((_%__splice7489374894%_
                                                         (gx#syntax-split-splice
                                                          _%tl4672747178%_
                                                          '0)))
                                                    (let ((_%tl4679646948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7489374894%_
                                                              '1)))
                                                          (_%target4679446945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7489374894%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4679646948%_)
                                                          (_%__match7518175182%_
                                                           _%e4672647161%_
                                                           _%hd4672547165%_
                                                           _%tl4672447168%_
                                                           _%e4672947171%_
                                                           _%hd4672847175%_
                                                           _%tl4672747178%_
                                                           _%e4673247181%_
                                                           _%hd4673147185%_
                                                           _%tl4673047188%_
                                                           _%__splice7489374894%_
                                                           _%target4679446945%_
                                                           _%tl4679646948%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4662146824%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))))
                                  (if (gx#stx-pair/null? _%tl4672747178%_)
                                      (let ((_%__splice7489374894%_
                                             (gx#syntax-split-splice
                                              _%tl4672747178%_
                                              '0)))
                                        (let ((_%tl4679646948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '1)))
                                              (_%target4679446945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4679646948%_)
                                              (_%__match7518175182%_
                                               _%e4672647161%_
                                               _%hd4672547165%_
                                               _%tl4672447168%_
                                               _%e4672947171%_
                                               _%hd4672847175%_
                                               _%tl4672747178%_
                                               _%e4673247181%_
                                               _%hd4673147185%_
                                               _%tl4673047188%_
                                               _%__splice7489374894%_
                                               _%target4679446945%_
                                               _%tl4679646948%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_))))
                              (if (gx#stx-pair/null? _%tl4672747178%_)
                                  (let ((_%__splice7489374894%_
                                         (gx#syntax-split-splice
                                          _%tl4672747178%_
                                          '0)))
                                    (let ((_%tl4679646948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '1)))
                                          (_%target4679446945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4679646948%_)
                                          (_%__match7518175182%_
                                           _%e4672647161%_
                                           _%hd4672547165%_
                                           _%tl4672447168%_
                                           _%e4672947171%_
                                           _%hd4672847175%_
                                           _%tl4672747178%_
                                           _%e4673247181%_
                                           _%hd4673147185%_
                                           _%tl4673047188%_
                                           _%__splice7489374894%_
                                           _%target4679446945%_
                                           _%tl4679646948%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_))))
                          (if (gx#stx-pair/null? _%tl4672747178%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4672747178%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4672647161%_
                                       _%hd4672547165%_
                                       _%tl4672447168%_
                                       _%e4672947171%_
                                       _%hd4672847175%_
                                       _%tl4672747178%_
                                       _%e4673247181%_
                                       _%hd4673147185%_
                                       _%tl4673047188%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_))))))
                   (_%__match7505175052%_
                    (lambda (_%e4669947283%_
                             _%hd4669847287%_
                             _%tl4669747290%_
                             _%e4670247293%_
                             _%hd4670147297%_
                             _%tl4670047300%_
                             _%e4670547303%_
                             _%hd4670447307%_
                             _%tl4670347310%_
                             _%e4670847313%_
                             _%hd4670747317%_
                             _%tl4670647320%_
                             _%e4671147323%_
                             _%hd4671047327%_
                             _%tl4670947330%_
                             _%__splice7488174882%_
                             _%target4671247333%_
                             _%tl4671447336%_)
                      (letrec ((_%loop4671547339%_
                                (lambda (_%hd4671347343%_ _%body4671947346%_)
                                  (if (gx#stx-pair? _%hd4671347343%_)
                                      (let ((_%e4671647349%_
                                             (gx#syntax-e _%hd4671347343%_)))
                                        (let ((_%lp-tl4671847356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4671647349%_)))
                                              (_%lp-hd4671747353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4671647349%_))))
                                          (_%loop4671547339%_
                                           _%lp-tl4671847356%_
                                           (cons _%lp-hd4671747353%_
                                                 _%body4671947346%_))))
                                      (let ((_%body4672047359%_
                                             (reverse _%body4671947346%_)))
                                        (let ((_%L47363%_ _%body4672047359%_)
                                              (_%L47365%_ _%hd4671047327%_)
                                              (_%L47366%_ _%hd4670747317%_)
                                              (_%L47367%_ _%hd4670447307%_))
                                          (if (and (gx#identifier? _%L47367%_)
                                                   (gx#identifier? _%L47365%_)
                                                   (gx#identifier? _%L47366%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47366%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47366%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47366%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47366%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7487974880%_
                                               _%L47363%_
                                               _%L47365%_
                                               _%L47366%_
                                               _%L47367%_)
                                              (_%__match7507575076%_
                                               _%e4669947283%_
                                               _%hd4669847287%_
                                               _%tl4669747290%_
                                               _%e4670247293%_
                                               _%hd4670147297%_
                                               _%tl4670047300%_
                                               _%e4670547303%_
                                               _%hd4670447307%_
                                               _%tl4670347310%_
                                               _%e4670847313%_
                                               _%hd4670747317%_
                                               _%tl4670647320%_))))))))
                        (_%loop4671547339%_ _%target4671247333%_ '()))))
                   (_%__match7501175012%_
                    (lambda (_%e4666247481%_
                             _%hd4666147485%_
                             _%tl4666047488%_
                             _%e4666547491%_
                             _%hd4666447495%_
                             _%tl4666347498%_
                             _%e4666847501%_
                             _%hd4666747505%_
                             _%tl4666647508%_
                             _%e4667147511%_
                             _%hd4667047515%_
                             _%tl4666947518%_
                             _%e4667447521%_
                             _%hd4667347525%_
                             _%tl4667247528%_
                             _%e4667747531%_
                             _%hd4667647535%_
                             _%tl4667547538%_
                             _%e4668047541%_
                             _%hd4667947545%_
                             _%tl4667847548%_
                             _%e4668347551%_
                             _%hd4668247555%_
                             _%tl4668147558%_
                             _%__splice7487774878%_
                             _%target4668447561%_
                             _%tl4668647564%_)
                      (letrec ((_%loop4668747567%_
                                (lambda (_%hd4668547571%_ _%body4669147574%_)
                                  (if (gx#stx-pair? _%hd4668547571%_)
                                      (let ((_%e4668847577%_
                                             (gx#syntax-e _%hd4668547571%_)))
                                        (let ((_%lp-tl4669047584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4668847577%_)))
                                              (_%lp-hd4668947581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4668847577%_))))
                                          (_%loop4668747567%_
                                           _%lp-tl4669047584%_
                                           (cons _%lp-hd4668947581%_
                                                 _%body4669147574%_))))
                                      (let ((_%body4669247587%_
                                             (reverse _%body4669147574%_)))
                                        (let ((_%L47591%_ _%body4669247587%_)
                                              (_%L47593%_ _%hd4668247555%_)
                                              (_%L47594%_ _%hd4667647535%_)
                                              (_%L47595%_ _%hd4667047515%_)
                                              (_%L47596%_ _%hd4666747505%_))
                                          (if (and (gx#identifier? _%L47596%_)
                                                   (gx#identifier? _%L47593%_))
                                              (_%__kont7487574876%_
                                               _%L47591%_
                                               _%L47593%_
                                               _%L47594%_
                                               _%L47595%_
                                               _%L47596%_)
                                              (_%__match7507575076%_
                                               _%e4666247481%_
                                               _%hd4666147485%_
                                               _%tl4666047488%_
                                               _%e4666547491%_
                                               _%hd4666447495%_
                                               _%tl4666347498%_
                                               _%e4666847501%_
                                               _%hd4666747505%_
                                               _%tl4666647508%_
                                               _%e4667147511%_
                                               _%hd4667047515%_
                                               _%tl4666947518%_))))))))
                        (_%loop4668747567%_ _%target4668447561%_ '()))))
                   (_%__match7497574976%_
                    (lambda (_%e4666247481%_
                             _%hd4666147485%_
                             _%tl4666047488%_
                             _%e4666547491%_
                             _%hd4666447495%_
                             _%tl4666347498%_
                             _%e4666847501%_
                             _%hd4666747505%_
                             _%tl4666647508%_
                             _%e4667147511%_
                             _%hd4667047515%_
                             _%tl4666947518%_
                             _%e4667447521%_
                             _%hd4667347525%_
                             _%tl4667247528%_)
                      (if (gx#identifier? _%hd4667347525%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80057_|
                               _%hd4667347525%_)
                              (if (gx#stx-pair? _%tl4667247528%_)
                                  (let ((_%e4667747531%_
                                         (gx#syntax-e _%tl4667247528%_)))
                                    (let ((_%tl4667547538%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4667747531%_)))
                                          (_%hd4667647535%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4667747531%_))))
                                      (if (gx#stx-pair? _%tl4667547538%_)
                                          (let ((_%e4668047541%_
                                                 (gx#syntax-e
                                                  _%tl4667547538%_)))
                                            (let ((_%tl4667847548%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4668047541%_)))
                                                  (_%hd4667947545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4668047541%_))))
                                              (if (gx#identifier?
                                                   _%hd4667947545%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80058_|
                                                       _%hd4667947545%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4667847548%_)
                                                          (let ((_%e4668347551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4667847548%_)))
                    (let ((_%tl4668147558%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4668347551%_)))
                          (_%hd4668247555%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4668347551%_))))
                      (if (gx#stx-null? _%tl4668147558%_)
                          (if (gx#stx-pair/null? _%tl4666347498%_)
                              (let ((_%__splice7487774878%_
                                     (gx#syntax-split-splice
                                      _%tl4666347498%_
                                      '0)))
                                (let ((_%tl4668647564%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7487774878%_
                                          '1)))
                                      (_%target4668447561%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7487774878%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4668647564%_)
                                      (_%__match7501175012%_
                                       _%e4666247481%_
                                       _%hd4666147485%_
                                       _%tl4666047488%_
                                       _%e4666547491%_
                                       _%hd4666447495%_
                                       _%tl4666347498%_
                                       _%e4666847501%_
                                       _%hd4666747505%_
                                       _%tl4666647508%_
                                       _%e4667147511%_
                                       _%hd4667047515%_
                                       _%tl4666947518%_
                                       _%e4667447521%_
                                       _%hd4667347525%_
                                       _%tl4667247528%_
                                       _%e4667747531%_
                                       _%hd4667647535%_
                                       _%tl4667547538%_
                                       _%e4668047541%_
                                       _%hd4667947545%_
                                       _%tl4667847548%_
                                       _%e4668347551%_
                                       _%hd4668247555%_
                                       _%tl4668147558%_
                                       _%__splice7487774878%_
                                       _%target4668447561%_
                                       _%tl4668647564%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_)))
                          (if (gx#stx-pair/null? _%tl4666347498%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4666347498%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4666247481%_
                                       _%hd4666147485%_
                                       _%tl4666047488%_
                                       _%e4666547491%_
                                       _%hd4666447495%_
                                       _%tl4666347498%_
                                       _%e4666847501%_
                                       _%hd4666747505%_
                                       _%tl4666647508%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_))))))
                  (if (gx#identifier? _%hd4667047515%_)
                      (if (gx#free-identifier=?
                           |gerbil/core/contract~Using[1]#_g80055_|
                           _%hd4667047515%_)
                          (if (gx#identifier? _%hd4667647535%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80056_|
                                   _%hd4667647535%_)
                                  (if (gx#stx-null? _%tl4667847548%_)
                                      (if (gx#stx-pair/null? _%tl4666347498%_)
                                          (let ((_%__splice7488974890%_
                                                 (gx#syntax-split-splice
                                                  _%tl4666347498%_
                                                  '0)))
                                            (let ((_%tl4677547086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7488974890%_
                                                      '1)))
                                                  (_%target4677347083%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7488974890%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4677547086%_)
                                                  (_%__match7515575156%_
                                                   _%e4666247481%_
                                                   _%hd4666147485%_
                                                   _%tl4666047488%_
                                                   _%e4666547491%_
                                                   _%hd4666447495%_
                                                   _%tl4666347498%_
                                                   _%e4666847501%_
                                                   _%hd4666747505%_
                                                   _%tl4666647508%_
                                                   _%e4667147511%_
                                                   _%hd4667047515%_
                                                   _%tl4666947518%_
                                                   _%e4667447521%_
                                                   _%hd4667347525%_
                                                   _%tl4667247528%_
                                                   _%e4667747531%_
                                                   _%hd4667647535%_
                                                   _%tl4667547538%_
                                                   _%e4668047541%_
                                                   _%hd4667947545%_
                                                   _%tl4667847548%_
                                                   _%__splice7488974890%_
                                                   _%target4677347083%_
                                                   _%tl4677547086%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))
                                      (if (gx#stx-pair/null? _%tl4666347498%_)
                                          (let ((_%__splice7489374894%_
                                                 (gx#syntax-split-splice
                                                  _%tl4666347498%_
                                                  '0)))
                                            (let ((_%tl4679646948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '1)))
                                                  (_%target4679446945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679646948%_)
                                                  (_%__match7518175182%_
                                                   _%e4666247481%_
                                                   _%hd4666147485%_
                                                   _%tl4666047488%_
                                                   _%e4666547491%_
                                                   _%hd4666447495%_
                                                   _%tl4666347498%_
                                                   _%e4666847501%_
                                                   _%hd4666747505%_
                                                   _%tl4666647508%_
                                                   _%__splice7489374894%_
                                                   _%target4679446945%_
                                                   _%tl4679646948%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_))))
                                  (if (gx#stx-pair/null? _%tl4666347498%_)
                                      (let ((_%__splice7489374894%_
                                             (gx#syntax-split-splice
                                              _%tl4666347498%_
                                              '0)))
                                        (let ((_%tl4679646948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '1)))
                                              (_%target4679446945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4679646948%_)
                                              (_%__match7518175182%_
                                               _%e4666247481%_
                                               _%hd4666147485%_
                                               _%tl4666047488%_
                                               _%e4666547491%_
                                               _%hd4666447495%_
                                               _%tl4666347498%_
                                               _%e4666847501%_
                                               _%hd4666747505%_
                                               _%tl4666647508%_
                                               _%__splice7489374894%_
                                               _%target4679446945%_
                                               _%tl4679646948%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_))))
                              (if (gx#stx-pair/null? _%tl4666347498%_)
                                  (let ((_%__splice7489374894%_
                                         (gx#syntax-split-splice
                                          _%tl4666347498%_
                                          '0)))
                                    (let ((_%tl4679646948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '1)))
                                          (_%target4679446945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4679646948%_)
                                          (_%__match7518175182%_
                                           _%e4666247481%_
                                           _%hd4666147485%_
                                           _%tl4666047488%_
                                           _%e4666547491%_
                                           _%hd4666447495%_
                                           _%tl4666347498%_
                                           _%e4666847501%_
                                           _%hd4666747505%_
                                           _%tl4666647508%_
                                           _%__splice7489374894%_
                                           _%target4679446945%_
                                           _%tl4679646948%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_))))
                          (if (gx#stx-pair/null? _%tl4666347498%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4666347498%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4666247481%_
                                       _%hd4666147485%_
                                       _%tl4666047488%_
                                       _%e4666547491%_
                                       _%hd4666447495%_
                                       _%tl4666347498%_
                                       _%e4666847501%_
                                       _%hd4666747505%_
                                       _%tl4666647508%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_))))
                      (if (gx#stx-pair/null? _%tl4666347498%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4666347498%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4666247481%_
                                   _%hd4666147485%_
                                   _%tl4666047488%_
                                   _%e4666547491%_
                                   _%hd4666447495%_
                                   _%tl4666347498%_
                                   _%e4666847501%_
                                   _%hd4666747505%_
                                   _%tl4666647508%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_)))))
              (if (gx#identifier? _%hd4667047515%_)
                  (if (gx#free-identifier=?
                       |gerbil/core/contract~Using[1]#_g80055_|
                       _%hd4667047515%_)
                      (if (gx#identifier? _%hd4667647535%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80056_|
                               _%hd4667647535%_)
                              (if (gx#stx-null? _%tl4667847548%_)
                                  (if (gx#stx-pair/null? _%tl4666347498%_)
                                      (let ((_%__splice7488974890%_
                                             (gx#syntax-split-splice
                                              _%tl4666347498%_
                                              '0)))
                                        (let ((_%tl4677547086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7488974890%_
                                                  '1)))
                                              (_%target4677347083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7488974890%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4677547086%_)
                                              (_%__match7515575156%_
                                               _%e4666247481%_
                                               _%hd4666147485%_
                                               _%tl4666047488%_
                                               _%e4666547491%_
                                               _%hd4666447495%_
                                               _%tl4666347498%_
                                               _%e4666847501%_
                                               _%hd4666747505%_
                                               _%tl4666647508%_
                                               _%e4667147511%_
                                               _%hd4667047515%_
                                               _%tl4666947518%_
                                               _%e4667447521%_
                                               _%hd4667347525%_
                                               _%tl4667247528%_
                                               _%e4667747531%_
                                               _%hd4667647535%_
                                               _%tl4667547538%_
                                               _%e4668047541%_
                                               _%hd4667947545%_
                                               _%tl4667847548%_
                                               _%__splice7488974890%_
                                               _%target4677347083%_
                                               _%tl4677547086%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))
                                  (if (gx#stx-pair/null? _%tl4666347498%_)
                                      (let ((_%__splice7489374894%_
                                             (gx#syntax-split-splice
                                              _%tl4666347498%_
                                              '0)))
                                        (let ((_%tl4679646948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '1)))
                                              (_%target4679446945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4679646948%_)
                                              (_%__match7518175182%_
                                               _%e4666247481%_
                                               _%hd4666147485%_
                                               _%tl4666047488%_
                                               _%e4666547491%_
                                               _%hd4666447495%_
                                               _%tl4666347498%_
                                               _%e4666847501%_
                                               _%hd4666747505%_
                                               _%tl4666647508%_
                                               _%__splice7489374894%_
                                               _%target4679446945%_
                                               _%tl4679646948%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_))))
                              (if (gx#stx-pair/null? _%tl4666347498%_)
                                  (let ((_%__splice7489374894%_
                                         (gx#syntax-split-splice
                                          _%tl4666347498%_
                                          '0)))
                                    (let ((_%tl4679646948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '1)))
                                          (_%target4679446945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4679646948%_)
                                          (_%__match7518175182%_
                                           _%e4666247481%_
                                           _%hd4666147485%_
                                           _%tl4666047488%_
                                           _%e4666547491%_
                                           _%hd4666447495%_
                                           _%tl4666347498%_
                                           _%e4666847501%_
                                           _%hd4666747505%_
                                           _%tl4666647508%_
                                           _%__splice7489374894%_
                                           _%target4679446945%_
                                           _%tl4679646948%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_))))
                          (if (gx#stx-pair/null? _%tl4666347498%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4666347498%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4666247481%_
                                       _%hd4666147485%_
                                       _%tl4666047488%_
                                       _%e4666547491%_
                                       _%hd4666447495%_
                                       _%tl4666347498%_
                                       _%e4666847501%_
                                       _%hd4666747505%_
                                       _%tl4666647508%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_))))
                      (if (gx#stx-pair/null? _%tl4666347498%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4666347498%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4666247481%_
                                   _%hd4666147485%_
                                   _%tl4666047488%_
                                   _%e4666547491%_
                                   _%hd4666447495%_
                                   _%tl4666347498%_
                                   _%e4666847501%_
                                   _%hd4666747505%_
                                   _%tl4666647508%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))
                  (if (gx#stx-pair/null? _%tl4666347498%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4666347498%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4666247481%_
                               _%hd4666147485%_
                               _%tl4666047488%_
                               _%e4666547491%_
                               _%hd4666447495%_
                               _%tl4666347498%_
                               _%e4666847501%_
                               _%hd4666747505%_
                               _%tl4666647508%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4667047515%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80055_|
                                                           _%hd4667047515%_)
                                                          (if (gx#identifier?
                                                               _%hd4667647535%_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core/contract~Using[1]#_g80056_|
                           _%hd4667647535%_)
                          (if (gx#stx-null? _%tl4667847548%_)
                              (if (gx#stx-pair/null? _%tl4666347498%_)
                                  (let ((_%__splice7488974890%_
                                         (gx#syntax-split-splice
                                          _%tl4666347498%_
                                          '0)))
                                    (let ((_%tl4677547086%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488974890%_
                                              '1)))
                                          (_%target4677347083%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488974890%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677547086%_)
                                          (_%__match7515575156%_
                                           _%e4666247481%_
                                           _%hd4666147485%_
                                           _%tl4666047488%_
                                           _%e4666547491%_
                                           _%hd4666447495%_
                                           _%tl4666347498%_
                                           _%e4666847501%_
                                           _%hd4666747505%_
                                           _%tl4666647508%_
                                           _%e4667147511%_
                                           _%hd4667047515%_
                                           _%tl4666947518%_
                                           _%e4667447521%_
                                           _%hd4667347525%_
                                           _%tl4667247528%_
                                           _%e4667747531%_
                                           _%hd4667647535%_
                                           _%tl4667547538%_
                                           _%e4668047541%_
                                           _%hd4667947545%_
                                           _%tl4667847548%_
                                           _%__splice7488974890%_
                                           _%target4677347083%_
                                           _%tl4677547086%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))
                              (if (gx#stx-pair/null? _%tl4666347498%_)
                                  (let ((_%__splice7489374894%_
                                         (gx#syntax-split-splice
                                          _%tl4666347498%_
                                          '0)))
                                    (let ((_%tl4679646948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '1)))
                                          (_%target4679446945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4679646948%_)
                                          (_%__match7518175182%_
                                           _%e4666247481%_
                                           _%hd4666147485%_
                                           _%tl4666047488%_
                                           _%e4666547491%_
                                           _%hd4666447495%_
                                           _%tl4666347498%_
                                           _%e4666847501%_
                                           _%hd4666747505%_
                                           _%tl4666647508%_
                                           _%__splice7489374894%_
                                           _%target4679446945%_
                                           _%tl4679646948%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_))))
                          (if (gx#stx-pair/null? _%tl4666347498%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4666347498%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4666247481%_
                                       _%hd4666147485%_
                                       _%tl4666047488%_
                                       _%e4666547491%_
                                       _%hd4666447495%_
                                       _%tl4666347498%_
                                       _%e4666847501%_
                                       _%hd4666747505%_
                                       _%tl4666647508%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_))))
                      (if (gx#stx-pair/null? _%tl4666347498%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4666347498%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4666247481%_
                                   _%hd4666147485%_
                                   _%tl4666047488%_
                                   _%e4666547491%_
                                   _%hd4666447495%_
                                   _%tl4666347498%_
                                   _%e4666847501%_
                                   _%hd4666747505%_
                                   _%tl4666647508%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))
                  (if (gx#stx-pair/null? _%tl4666347498%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4666347498%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4666247481%_
                               _%hd4666147485%_
                               _%tl4666047488%_
                               _%e4666547491%_
                               _%hd4666447495%_
                               _%tl4666347498%_
                               _%e4666847501%_
                               _%hd4666747505%_
                               _%tl4666647508%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_))))
              (if (gx#stx-pair/null? _%tl4666347498%_)
                  (let ((_%__splice7489374894%_
                         (gx#syntax-split-splice _%tl4666347498%_ '0)))
                    (let ((_%tl4679646948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '1)))
                          (_%target4679446945%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '0))))
                      (if (gx#stx-null? _%tl4679646948%_)
                          (_%__match7518175182%_
                           _%e4666247481%_
                           _%hd4666147485%_
                           _%tl4666047488%_
                           _%e4666547491%_
                           _%hd4666447495%_
                           _%tl4666347498%_
                           _%e4666847501%_
                           _%hd4666747505%_
                           _%tl4666647508%_
                           _%__splice7489374894%_
                           _%target4679446945%_
                           _%tl4679646948%_)
                          (let () (declare (not safe)) (_%g4662146824%_)))))
                  (let () (declare (not safe)) (_%g4662146824%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4666347498%_)
                                              (let ((_%__splice7489374894%_
                                                     (gx#syntax-split-splice
                                                      _%tl4666347498%_
                                                      '0)))
                                                (let ((_%tl4679646948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '1)))
                                                      (_%target4679446945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4679646948%_)
                                                      (_%__match7518175182%_
                                                       _%e4666247481%_
                                                       _%hd4666147485%_
                                                       _%tl4666047488%_
                                                       _%e4666547491%_
                                                       _%hd4666447495%_
                                                       _%tl4666347498%_
                                                       _%e4666847501%_
                                                       _%hd4666747505%_
                                                       _%tl4666647508%_
                                                       _%__splice7489374894%_
                                                       _%target4679446945%_
                                                       _%tl4679646948%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4662146824%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_))))))
                                  (if (gx#stx-null? _%tl4667247528%_)
                                      (if (gx#stx-pair/null? _%tl4666347498%_)
                                          (let ((_%__splice7488174882%_
                                                 (gx#syntax-split-splice
                                                  _%tl4666347498%_
                                                  '0)))
                                            (let ((_%tl4671447336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7488174882%_
                                                      '1)))
                                                  (_%target4671247333%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7488174882%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4671447336%_)
                                                  (_%__match7505175052%_
                                                   _%e4666247481%_
                                                   _%hd4666147485%_
                                                   _%tl4666047488%_
                                                   _%e4666547491%_
                                                   _%hd4666447495%_
                                                   _%tl4666347498%_
                                                   _%e4666847501%_
                                                   _%hd4666747505%_
                                                   _%tl4666647508%_
                                                   _%e4667147511%_
                                                   _%hd4667047515%_
                                                   _%tl4666947518%_
                                                   _%e4667447521%_
                                                   _%hd4667347525%_
                                                   _%tl4667247528%_
                                                   _%__splice7488174882%_
                                                   _%target4671247333%_
                                                   _%tl4671447336%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))
                                      (if (gx#stx-pair/null? _%tl4666347498%_)
                                          (let ((_%__splice7489374894%_
                                                 (gx#syntax-split-splice
                                                  _%tl4666347498%_
                                                  '0)))
                                            (let ((_%tl4679646948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '1)))
                                                  (_%target4679446945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679646948%_)
                                                  (_%__match7518175182%_
                                                   _%e4666247481%_
                                                   _%hd4666147485%_
                                                   _%tl4666047488%_
                                                   _%e4666547491%_
                                                   _%hd4666447495%_
                                                   _%tl4666347498%_
                                                   _%e4666847501%_
                                                   _%hd4666747505%_
                                                   _%tl4666647508%_
                                                   _%__splice7489374894%_
                                                   _%target4679446945%_
                                                   _%tl4679646948%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                              (if (gx#stx-null? _%tl4667247528%_)
                                  (if (gx#stx-pair/null? _%tl4666347498%_)
                                      (let ((_%__splice7488174882%_
                                             (gx#syntax-split-splice
                                              _%tl4666347498%_
                                              '0)))
                                        (let ((_%tl4671447336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7488174882%_
                                                  '1)))
                                              (_%target4671247333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7488174882%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4671447336%_)
                                              (_%__match7505175052%_
                                               _%e4666247481%_
                                               _%hd4666147485%_
                                               _%tl4666047488%_
                                               _%e4666547491%_
                                               _%hd4666447495%_
                                               _%tl4666347498%_
                                               _%e4666847501%_
                                               _%hd4666747505%_
                                               _%tl4666647508%_
                                               _%e4667147511%_
                                               _%hd4667047515%_
                                               _%tl4666947518%_
                                               _%e4667447521%_
                                               _%hd4667347525%_
                                               _%tl4667247528%_
                                               _%__splice7488174882%_
                                               _%target4671247333%_
                                               _%tl4671447336%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))
                                  (if (gx#identifier? _%hd4667047515%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80055_|
                                           _%hd4667047515%_)
                                          (if (gx#stx-pair? _%tl4667247528%_)
                                              (let ((_%e4676947063%_
                                                     (gx#syntax-e
                                                      _%tl4667247528%_)))
                                                (let ((_%tl4676747070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4676947063%_)))
                                                      (_%hd4676847067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4676947063%_))))
                                                  (if (gx#identifier?
                                                       _%hd4676847067%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80056_|
                                                           _%hd4676847067%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4676747070%_)
                                                              (let ((_%e4677247073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4676747070%_)))
                        (let ((_%tl4677047080%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4677247073%_)))
                              (_%hd4677147077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4677247073%_))))
                          (if (gx#stx-null? _%tl4677047080%_)
                              (if (gx#stx-pair/null? _%tl4666347498%_)
                                  (let ((_%__splice7488974890%_
                                         (gx#syntax-split-splice
                                          _%tl4666347498%_
                                          '0)))
                                    (let ((_%tl4677547086%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488974890%_
                                              '1)))
                                          (_%target4677347083%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488974890%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677547086%_)
                                          (_%__match7515575156%_
                                           _%e4666247481%_
                                           _%hd4666147485%_
                                           _%tl4666047488%_
                                           _%e4666547491%_
                                           _%hd4666447495%_
                                           _%tl4666347498%_
                                           _%e4666847501%_
                                           _%hd4666747505%_
                                           _%tl4666647508%_
                                           _%e4667147511%_
                                           _%hd4667047515%_
                                           _%tl4666947518%_
                                           _%e4667447521%_
                                           _%hd4667347525%_
                                           _%tl4667247528%_
                                           _%e4676947063%_
                                           _%hd4676847067%_
                                           _%tl4676747070%_
                                           _%e4677247073%_
                                           _%hd4677147077%_
                                           _%tl4677047080%_
                                           _%__splice7488974890%_
                                           _%target4677347083%_
                                           _%tl4677547086%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))
                              (if (gx#stx-pair/null? _%tl4666347498%_)
                                  (let ((_%__splice7489374894%_
                                         (gx#syntax-split-splice
                                          _%tl4666347498%_
                                          '0)))
                                    (let ((_%tl4679646948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '1)))
                                          (_%target4679446945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4679646948%_)
                                          (_%__match7518175182%_
                                           _%e4666247481%_
                                           _%hd4666147485%_
                                           _%tl4666047488%_
                                           _%e4666547491%_
                                           _%hd4666447495%_
                                           _%tl4666347498%_
                                           _%e4666847501%_
                                           _%hd4666747505%_
                                           _%tl4666647508%_
                                           _%__splice7489374894%_
                                           _%target4679446945%_
                                           _%tl4679646948%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_))))))
                      (if (gx#stx-pair/null? _%tl4666347498%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4666347498%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4666247481%_
                                   _%hd4666147485%_
                                   _%tl4666047488%_
                                   _%e4666547491%_
                                   _%hd4666447495%_
                                   _%tl4666347498%_
                                   _%e4666847501%_
                                   _%hd4666747505%_
                                   _%tl4666647508%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))
                  (if (gx#stx-pair/null? _%tl4666347498%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4666347498%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4666247481%_
                               _%hd4666147485%_
                               _%tl4666047488%_
                               _%e4666547491%_
                               _%hd4666447495%_
                               _%tl4666347498%_
                               _%e4666847501%_
                               _%hd4666747505%_
                               _%tl4666647508%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_))))
              (if (gx#stx-pair/null? _%tl4666347498%_)
                  (let ((_%__splice7489374894%_
                         (gx#syntax-split-splice _%tl4666347498%_ '0)))
                    (let ((_%tl4679646948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '1)))
                          (_%target4679446945%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '0))))
                      (if (gx#stx-null? _%tl4679646948%_)
                          (_%__match7518175182%_
                           _%e4666247481%_
                           _%hd4666147485%_
                           _%tl4666047488%_
                           _%e4666547491%_
                           _%hd4666447495%_
                           _%tl4666347498%_
                           _%e4666847501%_
                           _%hd4666747505%_
                           _%tl4666647508%_
                           _%__splice7489374894%_
                           _%target4679446945%_
                           _%tl4679646948%_)
                          (let () (declare (not safe)) (_%g4662146824%_)))))
                  (let () (declare (not safe)) (_%g4662146824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4666347498%_)
                                                  (let ((_%__splice7489374894%_
                                                         (gx#syntax-split-splice
                                                          _%tl4666347498%_
                                                          '0)))
                                                    (let ((_%tl4679646948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7489374894%_
                                                              '1)))
                                                          (_%target4679446945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7489374894%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4679646948%_)
                                                          (_%__match7518175182%_
                                                           _%e4666247481%_
                                                           _%hd4666147485%_
                                                           _%tl4666047488%_
                                                           _%e4666547491%_
                                                           _%hd4666447495%_
                                                           _%tl4666347498%_
                                                           _%e4666847501%_
                                                           _%hd4666747505%_
                                                           _%tl4666647508%_
                                                           _%__splice7489374894%_
                                                           _%target4679446945%_
                                                           _%tl4679646948%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4662146824%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4666347498%_)
                                              (let ((_%__splice7489374894%_
                                                     (gx#syntax-split-splice
                                                      _%tl4666347498%_
                                                      '0)))
                                                (let ((_%tl4679646948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '1)))
                                                      (_%target4679446945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4679646948%_)
                                                      (_%__match7518175182%_
                                                       _%e4666247481%_
                                                       _%hd4666147485%_
                                                       _%tl4666047488%_
                                                       _%e4666547491%_
                                                       _%hd4666447495%_
                                                       _%tl4666347498%_
                                                       _%e4666847501%_
                                                       _%hd4666747505%_
                                                       _%tl4666647508%_
                                                       _%__splice7489374894%_
                                                       _%target4679446945%_
                                                       _%tl4679646948%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4662146824%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_))))
                                      (if (gx#stx-pair/null? _%tl4666347498%_)
                                          (let ((_%__splice7489374894%_
                                                 (gx#syntax-split-splice
                                                  _%tl4666347498%_
                                                  '0)))
                                            (let ((_%tl4679646948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '1)))
                                                  (_%target4679446945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679646948%_)
                                                  (_%__match7518175182%_
                                                   _%e4666247481%_
                                                   _%hd4666147485%_
                                                   _%tl4666047488%_
                                                   _%e4666547491%_
                                                   _%hd4666447495%_
                                                   _%tl4666347498%_
                                                   _%e4666847501%_
                                                   _%hd4666747505%_
                                                   _%tl4666647508%_
                                                   _%__splice7489374894%_
                                                   _%target4679446945%_
                                                   _%tl4679646948%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_))))))
                          (if (gx#stx-null? _%tl4667247528%_)
                              (if (gx#stx-pair/null? _%tl4666347498%_)
                                  (let ((_%__splice7488174882%_
                                         (gx#syntax-split-splice
                                          _%tl4666347498%_
                                          '0)))
                                    (let ((_%tl4671447336%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488174882%_
                                              '1)))
                                          (_%target4671247333%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488174882%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4671447336%_)
                                          (_%__match7505175052%_
                                           _%e4666247481%_
                                           _%hd4666147485%_
                                           _%tl4666047488%_
                                           _%e4666547491%_
                                           _%hd4666447495%_
                                           _%tl4666347498%_
                                           _%e4666847501%_
                                           _%hd4666747505%_
                                           _%tl4666647508%_
                                           _%e4667147511%_
                                           _%hd4667047515%_
                                           _%tl4666947518%_
                                           _%e4667447521%_
                                           _%hd4667347525%_
                                           _%tl4667247528%_
                                           _%__splice7488174882%_
                                           _%target4671247333%_
                                           _%tl4671447336%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))
                              (if (gx#identifier? _%hd4667047515%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80055_|
                                       _%hd4667047515%_)
                                      (if (gx#stx-pair? _%tl4667247528%_)
                                          (let ((_%e4676947063%_
                                                 (gx#syntax-e
                                                  _%tl4667247528%_)))
                                            (let ((_%tl4676747070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4676947063%_)))
                                                  (_%hd4676847067%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4676947063%_))))
                                              (if (gx#identifier?
                                                   _%hd4676847067%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80056_|
                                                       _%hd4676847067%_)
                                                      (if (gx#stx-pair?
                                                           _%tl4676747070%_)
                                                          (let ((_%e4677247073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4676747070%_)))
                    (let ((_%tl4677047080%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4677247073%_)))
                          (_%hd4677147077%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4677247073%_))))
                      (if (gx#stx-null? _%tl4677047080%_)
                          (if (gx#stx-pair/null? _%tl4666347498%_)
                              (let ((_%__splice7488974890%_
                                     (gx#syntax-split-splice
                                      _%tl4666347498%_
                                      '0)))
                                (let ((_%tl4677547086%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7488974890%_
                                          '1)))
                                      (_%target4677347083%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7488974890%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677547086%_)
                                      (_%__match7515575156%_
                                       _%e4666247481%_
                                       _%hd4666147485%_
                                       _%tl4666047488%_
                                       _%e4666547491%_
                                       _%hd4666447495%_
                                       _%tl4666347498%_
                                       _%e4666847501%_
                                       _%hd4666747505%_
                                       _%tl4666647508%_
                                       _%e4667147511%_
                                       _%hd4667047515%_
                                       _%tl4666947518%_
                                       _%e4667447521%_
                                       _%hd4667347525%_
                                       _%tl4667247528%_
                                       _%e4676947063%_
                                       _%hd4676847067%_
                                       _%tl4676747070%_
                                       _%e4677247073%_
                                       _%hd4677147077%_
                                       _%tl4677047080%_
                                       _%__splice7488974890%_
                                       _%target4677347083%_
                                       _%tl4677547086%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_)))
                          (if (gx#stx-pair/null? _%tl4666347498%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4666347498%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4666247481%_
                                       _%hd4666147485%_
                                       _%tl4666047488%_
                                       _%e4666547491%_
                                       _%hd4666447495%_
                                       _%tl4666347498%_
                                       _%e4666847501%_
                                       _%hd4666747505%_
                                       _%tl4666647508%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_))))))
                  (if (gx#stx-pair/null? _%tl4666347498%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4666347498%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4666247481%_
                               _%hd4666147485%_
                               _%tl4666047488%_
                               _%e4666547491%_
                               _%hd4666447495%_
                               _%tl4666347498%_
                               _%e4666847501%_
                               _%hd4666747505%_
                               _%tl4666647508%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_))))
              (if (gx#stx-pair/null? _%tl4666347498%_)
                  (let ((_%__splice7489374894%_
                         (gx#syntax-split-splice _%tl4666347498%_ '0)))
                    (let ((_%tl4679646948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '1)))
                          (_%target4679446945%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '0))))
                      (if (gx#stx-null? _%tl4679646948%_)
                          (_%__match7518175182%_
                           _%e4666247481%_
                           _%hd4666147485%_
                           _%tl4666047488%_
                           _%e4666547491%_
                           _%hd4666447495%_
                           _%tl4666347498%_
                           _%e4666847501%_
                           _%hd4666747505%_
                           _%tl4666647508%_
                           _%__splice7489374894%_
                           _%target4679446945%_
                           _%tl4679646948%_)
                          (let () (declare (not safe)) (_%g4662146824%_)))))
                  (let () (declare (not safe)) (_%g4662146824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4666347498%_)
                                                      (let ((_%__splice7489374894%_
                                                             (gx#syntax-split-splice
                                                              _%tl4666347498%_
                                                              '0)))
                                                        (let ((_%tl4679646948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '1)))
                      (_%target4679446945%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '0))))
                  (if (gx#stx-null? _%tl4679646948%_)
                      (_%__match7518175182%_
                       _%e4666247481%_
                       _%hd4666147485%_
                       _%tl4666047488%_
                       _%e4666547491%_
                       _%hd4666447495%_
                       _%tl4666347498%_
                       _%e4666847501%_
                       _%hd4666747505%_
                       _%tl4666647508%_
                       _%__splice7489374894%_
                       _%target4679446945%_
                       _%tl4679646948%_)
                      (let () (declare (not safe)) (_%g4662146824%_)))))
              (let () (declare (not safe)) (_%g4662146824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4666347498%_)
                                              (let ((_%__splice7489374894%_
                                                     (gx#syntax-split-splice
                                                      _%tl4666347498%_
                                                      '0)))
                                                (let ((_%tl4679646948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '1)))
                                                      (_%target4679446945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4679646948%_)
                                                      (_%__match7518175182%_
                                                       _%e4666247481%_
                                                       _%hd4666147485%_
                                                       _%tl4666047488%_
                                                       _%e4666547491%_
                                                       _%hd4666447495%_
                                                       _%tl4666347498%_
                                                       _%e4666847501%_
                                                       _%hd4666747505%_
                                                       _%tl4666647508%_
                                                       _%__splice7489374894%_
                                                       _%target4679446945%_
                                                       _%tl4679646948%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4662146824%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_))))
                                      (if (gx#stx-pair/null? _%tl4666347498%_)
                                          (let ((_%__splice7489374894%_
                                                 (gx#syntax-split-splice
                                                  _%tl4666347498%_
                                                  '0)))
                                            (let ((_%tl4679646948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '1)))
                                                  (_%target4679446945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679646948%_)
                                                  (_%__match7518175182%_
                                                   _%e4666247481%_
                                                   _%hd4666147485%_
                                                   _%tl4666047488%_
                                                   _%e4666547491%_
                                                   _%hd4666447495%_
                                                   _%tl4666347498%_
                                                   _%e4666847501%_
                                                   _%hd4666747505%_
                                                   _%tl4666647508%_
                                                   _%__splice7489374894%_
                                                   _%target4679446945%_
                                                   _%tl4679646948%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_))))
                                  (if (gx#stx-pair/null? _%tl4666347498%_)
                                      (let ((_%__splice7489374894%_
                                             (gx#syntax-split-splice
                                              _%tl4666347498%_
                                              '0)))
                                        (let ((_%tl4679646948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '1)))
                                              (_%target4679446945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4679646948%_)
                                              (_%__match7518175182%_
                                               _%e4666247481%_
                                               _%hd4666147485%_
                                               _%tl4666047488%_
                                               _%e4666547491%_
                                               _%hd4666447495%_
                                               _%tl4666347498%_
                                               _%e4666847501%_
                                               _%hd4666747505%_
                                               _%tl4666647508%_
                                               _%__splice7489374894%_
                                               _%target4679446945%_
                                               _%tl4679646948%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_))))))))
                   (_%__match7494574946%_
                    (lambda (_%e4663047643%_
                             _%hd4662947647%_
                             _%tl4662847650%_
                             _%e4663347653%_
                             _%hd4663247657%_
                             _%tl4663147660%_
                             _%e4663647663%_
                             _%hd4663547667%_
                             _%tl4663447670%_
                             _%e4663947673%_
                             _%hd4663847677%_
                             _%tl4663747680%_
                             _%e4664247683%_
                             _%hd4664147687%_
                             _%tl4664047690%_
                             _%e4664547693%_
                             _%hd4664447697%_
                             _%tl4664347700%_
                             _%__splice7487374874%_
                             _%target4664647703%_
                             _%tl4664847706%_)
                      (letrec ((_%loop4664947709%_
                                (lambda (_%hd4664747713%_ _%body4665347716%_)
                                  (if (gx#stx-pair? _%hd4664747713%_)
                                      (let ((_%e4665047719%_
                                             (gx#syntax-e _%hd4664747713%_)))
                                        (let ((_%lp-tl4665247726%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4665047719%_)))
                                              (_%lp-hd4665147723%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4665047719%_))))
                                          (_%loop4664947709%_
                                           _%lp-tl4665247726%_
                                           (cons _%lp-hd4665147723%_
                                                 _%body4665347716%_))))
                                      (let ((_%body4665447729%_
                                             (reverse _%body4665347716%_)))
                                        (let ((_%L47733%_ _%body4665447729%_)
                                              (_%L47735%_ _%hd4664447697%_)
                                              (_%L47736%_ _%hd4664147687%_)
                                              (_%L47737%_ _%hd4663847677%_)
                                              (_%L47738%_ _%hd4663547667%_))
                                          (if (and (gx#identifier? _%L47738%_)
                                                   (gx#identifier? _%L47736%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47736%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47736%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47736%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47736%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47736%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7487174872%_
                                               _%L47733%_
                                               _%L47735%_
                                               _%L47736%_
                                               _%L47737%_
                                               _%L47738%_)
                                              (_%__match7497574976%_
                                               _%e4663047643%_
                                               _%hd4662947647%_
                                               _%tl4662847650%_
                                               _%e4663347653%_
                                               _%hd4663247657%_
                                               _%tl4663147660%_
                                               _%e4663647663%_
                                               _%hd4663547667%_
                                               _%tl4663447670%_
                                               _%e4663947673%_
                                               _%hd4663847677%_
                                               _%tl4663747680%_
                                               _%e4664247683%_
                                               _%hd4664147687%_
                                               _%tl4664047690%_))))))))
                        (_%loop4664947709%_ _%target4664647703%_ '())))))
              (if (gx#stx-pair? _%__stx7486874869%_)
                  (let ((_%e4663047643%_ (gx#syntax-e _%__stx7486874869%_)))
                    (let ((_%tl4662847650%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4663047643%_)))
                          (_%hd4662947647%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4663047643%_))))
                      (if (gx#stx-pair? _%tl4662847650%_)
                          (let ((_%e4663347653%_
                                 (gx#syntax-e _%tl4662847650%_)))
                            (let ((_%tl4663147660%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4663347653%_)))
                                  (_%hd4663247657%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4663347653%_))))
                              (if (gx#stx-pair? _%hd4663247657%_)
                                  (let ((_%e4663647663%_
                                         (gx#syntax-e _%hd4663247657%_)))
                                    (let ((_%tl4663447670%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4663647663%_)))
                                          (_%hd4663547667%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4663647663%_))))
                                      (if (gx#stx-pair? _%tl4663447670%_)
                                          (let ((_%e4663947673%_
                                                 (gx#syntax-e
                                                  _%tl4663447670%_)))
                                            (let ((_%tl4663747680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4663947673%_)))
                                                  (_%hd4663847677%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4663947673%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4663747680%_)
                                                  (let ((_%e4664247683%_
                                                         (gx#syntax-e
                                                          _%tl4663747680%_)))
                                                    (let ((_%tl4664047690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4664247683%_)))
                                                          (_%hd4664147687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4664247683%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4664047690%_)
                                                          (let ((_%e4664547693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4664047690%_)))
                    (let ((_%tl4664347700%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4664547693%_)))
                          (_%hd4664447697%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4664547693%_))))
                      (if (gx#stx-null? _%tl4664347700%_)
                          (if (gx#stx-pair/null? _%tl4663147660%_)
                              (let ((_%__splice7487374874%_
                                     (gx#syntax-split-splice
                                      _%tl4663147660%_
                                      '0)))
                                (let ((_%tl4664847706%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7487374874%_
                                          '1)))
                                      (_%target4664647703%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7487374874%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4664847706%_)
                                      (_%__match7494574946%_
                                       _%e4663047643%_
                                       _%hd4662947647%_
                                       _%tl4662847650%_
                                       _%e4663347653%_
                                       _%hd4663247657%_
                                       _%tl4663147660%_
                                       _%e4663647663%_
                                       _%hd4663547667%_
                                       _%tl4663447670%_
                                       _%e4663947673%_
                                       _%hd4663847677%_
                                       _%tl4663747680%_
                                       _%e4664247683%_
                                       _%hd4664147687%_
                                       _%tl4664047690%_
                                       _%e4664547693%_
                                       _%hd4664447697%_
                                       _%tl4664347700%_
                                       _%__splice7487374874%_
                                       _%target4664647703%_
                                       _%tl4664847706%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_)))
                          (if (gx#identifier? _%hd4664147687%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g80057_|
                                   _%hd4664147687%_)
                                  (if (gx#stx-pair? _%tl4664347700%_)
                                      (let ((_%e4668047541%_
                                             (gx#syntax-e _%tl4664347700%_)))
                                        (let ((_%tl4667847548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4668047541%_)))
                                              (_%hd4667947545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4668047541%_))))
                                          (if (gx#identifier? _%hd4667947545%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80058_|
                                                   _%hd4667947545%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4667847548%_)
                                                      (let ((_%e4668347551%_
                                                             (gx#syntax-e
                                                              _%tl4667847548%_)))
                                                        (let ((_%tl4668147558%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4668347551%_)))
                      (_%hd4668247555%_
                       (let () (declare (not safe)) (##car _%e4668347551%_))))
                  (if (gx#stx-null? _%tl4668147558%_)
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7487774878%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4668647564%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7487774878%_ '1)))
                                  (_%target4668447561%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7487774878%_
                                      '0))))
                              (if (gx#stx-null? _%tl4668647564%_)
                                  (_%__match7501175012%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%e4663947673%_
                                   _%hd4663847677%_
                                   _%tl4663747680%_
                                   _%e4664247683%_
                                   _%hd4664147687%_
                                   _%tl4664047690%_
                                   _%e4664547693%_
                                   _%hd4664447697%_
                                   _%tl4664347700%_
                                   _%e4668047541%_
                                   _%hd4667947545%_
                                   _%tl4667847548%_
                                   _%e4668347551%_
                                   _%hd4668247555%_
                                   _%tl4668147558%_
                                   _%__splice7487774878%_
                                   _%target4668447561%_
                                   _%tl4668647564%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_)))
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))))
              (if (gx#identifier? _%hd4663847677%_)
                  (if (gx#free-identifier=?
                       |gerbil/core/contract~Using[1]#_g80055_|
                       _%hd4663847677%_)
                      (if (gx#identifier? _%hd4664447697%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g80056_|
                               _%hd4664447697%_)
                              (if (gx#stx-null? _%tl4667847548%_)
                                  (if (gx#stx-pair/null? _%tl4663147660%_)
                                      (let ((_%__splice7488974890%_
                                             (gx#syntax-split-splice
                                              _%tl4663147660%_
                                              '0)))
                                        (let ((_%tl4677547086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7488974890%_
                                                  '1)))
                                              (_%target4677347083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7488974890%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4677547086%_)
                                              (_%__match7515575156%_
                                               _%e4663047643%_
                                               _%hd4662947647%_
                                               _%tl4662847650%_
                                               _%e4663347653%_
                                               _%hd4663247657%_
                                               _%tl4663147660%_
                                               _%e4663647663%_
                                               _%hd4663547667%_
                                               _%tl4663447670%_
                                               _%e4663947673%_
                                               _%hd4663847677%_
                                               _%tl4663747680%_
                                               _%e4664247683%_
                                               _%hd4664147687%_
                                               _%tl4664047690%_
                                               _%e4664547693%_
                                               _%hd4664447697%_
                                               _%tl4664347700%_
                                               _%e4668047541%_
                                               _%hd4667947545%_
                                               _%tl4667847548%_
                                               _%__splice7488974890%_
                                               _%target4677347083%_
                                               _%tl4677547086%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))
                                  (if (gx#stx-pair/null? _%tl4663147660%_)
                                      (let ((_%__splice7489374894%_
                                             (gx#syntax-split-splice
                                              _%tl4663147660%_
                                              '0)))
                                        (let ((_%tl4679646948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '1)))
                                              (_%target4679446945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4679646948%_)
                                              (_%__match7518175182%_
                                               _%e4663047643%_
                                               _%hd4662947647%_
                                               _%tl4662847650%_
                                               _%e4663347653%_
                                               _%hd4663247657%_
                                               _%tl4663147660%_
                                               _%e4663647663%_
                                               _%hd4663547667%_
                                               _%tl4663447670%_
                                               _%__splice7489374894%_
                                               _%target4679446945%_
                                               _%tl4679646948%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_))))
                              (if (gx#stx-pair/null? _%tl4663147660%_)
                                  (let ((_%__splice7489374894%_
                                         (gx#syntax-split-splice
                                          _%tl4663147660%_
                                          '0)))
                                    (let ((_%tl4679646948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '1)))
                                          (_%target4679446945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4679646948%_)
                                          (_%__match7518175182%_
                                           _%e4663047643%_
                                           _%hd4662947647%_
                                           _%tl4662847650%_
                                           _%e4663347653%_
                                           _%hd4663247657%_
                                           _%tl4663147660%_
                                           _%e4663647663%_
                                           _%hd4663547667%_
                                           _%tl4663447670%_
                                           _%__splice7489374894%_
                                           _%target4679446945%_
                                           _%tl4679646948%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_))))
                          (if (gx#stx-pair/null? _%tl4663147660%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4663147660%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4663047643%_
                                       _%hd4662947647%_
                                       _%tl4662847650%_
                                       _%e4663347653%_
                                       _%hd4663247657%_
                                       _%tl4663147660%_
                                       _%e4663647663%_
                                       _%hd4663547667%_
                                       _%tl4663447670%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_))))
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))
                  (if (gx#stx-pair/null? _%tl4663147660%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4663147660%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4663047643%_
                               _%hd4662947647%_
                               _%tl4662847650%_
                               _%e4663347653%_
                               _%hd4663247657%_
                               _%tl4663147660%_
                               _%e4663647663%_
                               _%hd4663547667%_
                               _%tl4663447670%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4663847677%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80055_|
                                                           _%hd4663847677%_)
                                                          (if (gx#identifier?
                                                               _%hd4664447697%_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core/contract~Using[1]#_g80056_|
                           _%hd4664447697%_)
                          (if (gx#stx-null? _%tl4667847548%_)
                              (if (gx#stx-pair/null? _%tl4663147660%_)
                                  (let ((_%__splice7488974890%_
                                         (gx#syntax-split-splice
                                          _%tl4663147660%_
                                          '0)))
                                    (let ((_%tl4677547086%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488974890%_
                                              '1)))
                                          (_%target4677347083%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7488974890%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4677547086%_)
                                          (_%__match7515575156%_
                                           _%e4663047643%_
                                           _%hd4662947647%_
                                           _%tl4662847650%_
                                           _%e4663347653%_
                                           _%hd4663247657%_
                                           _%tl4663147660%_
                                           _%e4663647663%_
                                           _%hd4663547667%_
                                           _%tl4663447670%_
                                           _%e4663947673%_
                                           _%hd4663847677%_
                                           _%tl4663747680%_
                                           _%e4664247683%_
                                           _%hd4664147687%_
                                           _%tl4664047690%_
                                           _%e4664547693%_
                                           _%hd4664447697%_
                                           _%tl4664347700%_
                                           _%e4668047541%_
                                           _%hd4667947545%_
                                           _%tl4667847548%_
                                           _%__splice7488974890%_
                                           _%target4677347083%_
                                           _%tl4677547086%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))
                              (if (gx#stx-pair/null? _%tl4663147660%_)
                                  (let ((_%__splice7489374894%_
                                         (gx#syntax-split-splice
                                          _%tl4663147660%_
                                          '0)))
                                    (let ((_%tl4679646948%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '1)))
                                          (_%target4679446945%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7489374894%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4679646948%_)
                                          (_%__match7518175182%_
                                           _%e4663047643%_
                                           _%hd4662947647%_
                                           _%tl4662847650%_
                                           _%e4663347653%_
                                           _%hd4663247657%_
                                           _%tl4663147660%_
                                           _%e4663647663%_
                                           _%hd4663547667%_
                                           _%tl4663447670%_
                                           _%__splice7489374894%_
                                           _%target4679446945%_
                                           _%tl4679646948%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_))))
                          (if (gx#stx-pair/null? _%tl4663147660%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4663147660%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4663047643%_
                                       _%hd4662947647%_
                                       _%tl4662847650%_
                                       _%e4663347653%_
                                       _%hd4663247657%_
                                       _%tl4663147660%_
                                       _%e4663647663%_
                                       _%hd4663547667%_
                                       _%tl4663447670%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_))))
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))
                  (if (gx#stx-pair/null? _%tl4663147660%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4663147660%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4663047643%_
                               _%hd4662947647%_
                               _%tl4662847650%_
                               _%e4663347653%_
                               _%hd4663247657%_
                               _%tl4663147660%_
                               _%e4663647663%_
                               _%hd4663547667%_
                               _%tl4663447670%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_))))
              (if (gx#stx-pair/null? _%tl4663147660%_)
                  (let ((_%__splice7489374894%_
                         (gx#syntax-split-splice _%tl4663147660%_ '0)))
                    (let ((_%tl4679646948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '1)))
                          (_%target4679446945%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '0))))
                      (if (gx#stx-null? _%tl4679646948%_)
                          (_%__match7518175182%_
                           _%e4663047643%_
                           _%hd4662947647%_
                           _%tl4662847650%_
                           _%e4663347653%_
                           _%hd4663247657%_
                           _%tl4663147660%_
                           _%e4663647663%_
                           _%hd4663547667%_
                           _%tl4663447670%_
                           _%__splice7489374894%_
                           _%target4679446945%_
                           _%tl4679646948%_)
                          (let () (declare (not safe)) (_%g4662146824%_)))))
                  (let () (declare (not safe)) (_%g4662146824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4663847677%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g80055_|
                                                       _%hd4663847677%_)
                                                      (if (gx#identifier?
                                                           _%hd4664447697%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~Using[1]#_g80056_|
                                                               _%hd4664447697%_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4667847548%_)
                          (if (gx#stx-pair/null? _%tl4663147660%_)
                              (let ((_%__splice7488974890%_
                                     (gx#syntax-split-splice
                                      _%tl4663147660%_
                                      '0)))
                                (let ((_%tl4677547086%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7488974890%_
                                          '1)))
                                      (_%target4677347083%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7488974890%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4677547086%_)
                                      (_%__match7515575156%_
                                       _%e4663047643%_
                                       _%hd4662947647%_
                                       _%tl4662847650%_
                                       _%e4663347653%_
                                       _%hd4663247657%_
                                       _%tl4663147660%_
                                       _%e4663647663%_
                                       _%hd4663547667%_
                                       _%tl4663447670%_
                                       _%e4663947673%_
                                       _%hd4663847677%_
                                       _%tl4663747680%_
                                       _%e4664247683%_
                                       _%hd4664147687%_
                                       _%tl4664047690%_
                                       _%e4664547693%_
                                       _%hd4664447697%_
                                       _%tl4664347700%_
                                       _%e4668047541%_
                                       _%hd4667947545%_
                                       _%tl4667847548%_
                                       _%__splice7488974890%_
                                       _%target4677347083%_
                                       _%tl4677547086%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_)))
                          (if (gx#stx-pair/null? _%tl4663147660%_)
                              (let ((_%__splice7489374894%_
                                     (gx#syntax-split-splice
                                      _%tl4663147660%_
                                      '0)))
                                (let ((_%tl4679646948%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '1)))
                                      (_%target4679446945%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7489374894%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4679646948%_)
                                      (_%__match7518175182%_
                                       _%e4663047643%_
                                       _%hd4662947647%_
                                       _%tl4662847650%_
                                       _%e4663347653%_
                                       _%hd4663247657%_
                                       _%tl4663147660%_
                                       _%e4663647663%_
                                       _%hd4663547667%_
                                       _%tl4663447670%_
                                       _%__splice7489374894%_
                                       _%target4679446945%_
                                       _%tl4679646948%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_)))))
                              (let () (declare (not safe)) (_%g4662146824%_))))
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))
                  (if (gx#stx-pair/null? _%tl4663147660%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4663147660%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4663047643%_
                               _%hd4662947647%_
                               _%tl4662847650%_
                               _%e4663347653%_
                               _%hd4663247657%_
                               _%tl4663147660%_
                               _%e4663647663%_
                               _%hd4663547667%_
                               _%tl4663447670%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_))))
              (if (gx#stx-pair/null? _%tl4663147660%_)
                  (let ((_%__splice7489374894%_
                         (gx#syntax-split-splice _%tl4663147660%_ '0)))
                    (let ((_%tl4679646948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '1)))
                          (_%target4679446945%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '0))))
                      (if (gx#stx-null? _%tl4679646948%_)
                          (_%__match7518175182%_
                           _%e4663047643%_
                           _%hd4662947647%_
                           _%tl4662847650%_
                           _%e4663347653%_
                           _%hd4663247657%_
                           _%tl4663147660%_
                           _%e4663647663%_
                           _%hd4663547667%_
                           _%tl4663447670%_
                           _%__splice7489374894%_
                           _%target4679446945%_
                           _%tl4679646948%_)
                          (let () (declare (not safe)) (_%g4662146824%_)))))
                  (let () (declare (not safe)) (_%g4662146824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4663147660%_)
                                                      (let ((_%__splice7489374894%_
                                                             (gx#syntax-split-splice
                                                              _%tl4663147660%_
                                                              '0)))
                                                        (let ((_%tl4679646948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '1)))
                      (_%target4679446945%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '0))))
                  (if (gx#stx-null? _%tl4679646948%_)
                      (_%__match7518175182%_
                       _%e4663047643%_
                       _%hd4662947647%_
                       _%tl4662847650%_
                       _%e4663347653%_
                       _%hd4663247657%_
                       _%tl4663147660%_
                       _%e4663647663%_
                       _%hd4663547667%_
                       _%tl4663447670%_
                       _%__splice7489374894%_
                       _%target4679446945%_
                       _%tl4679646948%_)
                      (let () (declare (not safe)) (_%g4662146824%_)))))
              (let () (declare (not safe)) (_%g4662146824%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair/null? _%tl4663147660%_)
                                          (let ((_%__splice7489374894%_
                                                 (gx#syntax-split-splice
                                                  _%tl4663147660%_
                                                  '0)))
                                            (let ((_%tl4679646948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '1)))
                                                  (_%target4679446945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679646948%_)
                                                  (_%__match7518175182%_
                                                   _%e4663047643%_
                                                   _%hd4662947647%_
                                                   _%tl4662847650%_
                                                   _%e4663347653%_
                                                   _%hd4663247657%_
                                                   _%tl4663147660%_
                                                   _%e4663647663%_
                                                   _%hd4663547667%_
                                                   _%tl4663447670%_
                                                   _%__splice7489374894%_
                                                   _%target4679446945%_
                                                   _%tl4679646948%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_))))
                                  (if (gx#identifier? _%hd4663847677%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g80055_|
                                           _%hd4663847677%_)
                                          (if (gx#identifier? _%hd4664447697%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80056_|
                                                   _%hd4664447697%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4664347700%_)
                                                      (let ((_%e4677247073%_
                                                             (gx#syntax-e
                                                              _%tl4664347700%_)))
                                                        (let ((_%tl4677047080%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4677247073%_)))
                      (_%hd4677147077%_
                       (let () (declare (not safe)) (##car _%e4677247073%_))))
                  (if (gx#stx-null? _%tl4677047080%_)
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7488974890%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4677547086%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7488974890%_ '1)))
                                  (_%target4677347083%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7488974890%_
                                      '0))))
                              (if (gx#stx-null? _%tl4677547086%_)
                                  (_%__match7515575156%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%e4663947673%_
                                   _%hd4663847677%_
                                   _%tl4663747680%_
                                   _%e4664247683%_
                                   _%hd4664147687%_
                                   _%tl4664047690%_
                                   _%e4664547693%_
                                   _%hd4664447697%_
                                   _%tl4664347700%_
                                   _%e4677247073%_
                                   _%hd4677147077%_
                                   _%tl4677047080%_
                                   _%__splice7488974890%_
                                   _%target4677347083%_
                                   _%tl4677547086%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_)))
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_))))))
              (if (gx#stx-pair/null? _%tl4663147660%_)
                  (let ((_%__splice7489374894%_
                         (gx#syntax-split-splice _%tl4663147660%_ '0)))
                    (let ((_%tl4679646948%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '1)))
                          (_%target4679446945%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7489374894%_ '0))))
                      (if (gx#stx-null? _%tl4679646948%_)
                          (_%__match7518175182%_
                           _%e4663047643%_
                           _%hd4662947647%_
                           _%tl4662847650%_
                           _%e4663347653%_
                           _%hd4663247657%_
                           _%tl4663147660%_
                           _%e4663647663%_
                           _%hd4663547667%_
                           _%tl4663447670%_
                           _%__splice7489374894%_
                           _%target4679446945%_
                           _%tl4679646948%_)
                          (let () (declare (not safe)) (_%g4662146824%_)))))
                  (let () (declare (not safe)) (_%g4662146824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4663147660%_)
                                                      (let ((_%__splice7489374894%_
                                                             (gx#syntax-split-splice
                                                              _%tl4663147660%_
                                                              '0)))
                                                        (let ((_%tl4679646948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '1)))
                      (_%target4679446945%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '0))))
                  (if (gx#stx-null? _%tl4679646948%_)
                      (_%__match7518175182%_
                       _%e4663047643%_
                       _%hd4662947647%_
                       _%tl4662847650%_
                       _%e4663347653%_
                       _%hd4663247657%_
                       _%tl4663147660%_
                       _%e4663647663%_
                       _%hd4663547667%_
                       _%tl4663447670%_
                       _%__splice7489374894%_
                       _%target4679446945%_
                       _%tl4679646948%_)
                      (let () (declare (not safe)) (_%g4662146824%_)))))
              (let () (declare (not safe)) (_%g4662146824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4663147660%_)
                                                  (let ((_%__splice7489374894%_
                                                         (gx#syntax-split-splice
                                                          _%tl4663147660%_
                                                          '0)))
                                                    (let ((_%tl4679646948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7489374894%_
                                                              '1)))
                                                          (_%target4679446945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7489374894%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4679646948%_)
                                                          (_%__match7518175182%_
                                                           _%e4663047643%_
                                                           _%hd4662947647%_
                                                           _%tl4662847650%_
                                                           _%e4663347653%_
                                                           _%hd4663247657%_
                                                           _%tl4663147660%_
                                                           _%e4663647663%_
                                                           _%hd4663547667%_
                                                           _%tl4663447670%_
                                                           _%__splice7489374894%_
                                                           _%target4679446945%_
                                                           _%tl4679646948%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4662146824%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4663147660%_)
                                              (let ((_%__splice7489374894%_
                                                     (gx#syntax-split-splice
                                                      _%tl4663147660%_
                                                      '0)))
                                                (let ((_%tl4679646948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '1)))
                                                      (_%target4679446945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4679646948%_)
                                                      (_%__match7518175182%_
                                                       _%e4663047643%_
                                                       _%hd4662947647%_
                                                       _%tl4662847650%_
                                                       _%e4663347653%_
                                                       _%hd4663247657%_
                                                       _%tl4663147660%_
                                                       _%e4663647663%_
                                                       _%hd4663547667%_
                                                       _%tl4663447670%_
                                                       _%__splice7489374894%_
                                                       _%target4679446945%_
                                                       _%tl4679646948%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4662146824%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_))))
                                      (if (gx#stx-pair/null? _%tl4663147660%_)
                                          (let ((_%__splice7489374894%_
                                                 (gx#syntax-split-splice
                                                  _%tl4663147660%_
                                                  '0)))
                                            (let ((_%tl4679646948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '1)))
                                                  (_%target4679446945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679646948%_)
                                                  (_%__match7518175182%_
                                                   _%e4663047643%_
                                                   _%hd4662947647%_
                                                   _%tl4662847650%_
                                                   _%e4663347653%_
                                                   _%hd4663247657%_
                                                   _%tl4663147660%_
                                                   _%e4663647663%_
                                                   _%hd4663547667%_
                                                   _%tl4663447670%_
                                                   _%__splice7489374894%_
                                                   _%target4679446945%_
                                                   _%tl4679646948%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))))
                              (if (gx#identifier? _%hd4663847677%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80055_|
                                       _%hd4663847677%_)
                                      (if (gx#identifier? _%hd4664447697%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~Using[1]#_g80056_|
                                               _%hd4664447697%_)
                                              (if (gx#stx-pair?
                                                   _%tl4664347700%_)
                                                  (let ((_%e4677247073%_
                                                         (gx#syntax-e
                                                          _%tl4664347700%_)))
                                                    (let ((_%tl4677047080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4677247073%_)))
                                                          (_%hd4677147077%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4677247073%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4677047080%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4663147660%_)
                                                              (let ((_%__splice7488974890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4663147660%_ '0)))
                        (let ((_%tl4677547086%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7488974890%_ '1)))
                              (_%target4677347083%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7488974890%_ '0))))
                          (if (gx#stx-null? _%tl4677547086%_)
                              (_%__match7515575156%_
                               _%e4663047643%_
                               _%hd4662947647%_
                               _%tl4662847650%_
                               _%e4663347653%_
                               _%hd4663247657%_
                               _%tl4663147660%_
                               _%e4663647663%_
                               _%hd4663547667%_
                               _%tl4663447670%_
                               _%e4663947673%_
                               _%hd4663847677%_
                               _%tl4663747680%_
                               _%e4664247683%_
                               _%hd4664147687%_
                               _%tl4664047690%_
                               _%e4664547693%_
                               _%hd4664447697%_
                               _%tl4664347700%_
                               _%e4677247073%_
                               _%hd4677147077%_
                               _%tl4677047080%_
                               _%__splice7488974890%_
                               _%target4677347083%_
                               _%tl4677547086%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_)))
                  (if (gx#stx-pair/null? _%tl4663147660%_)
                      (let ((_%__splice7489374894%_
                             (gx#syntax-split-splice _%tl4663147660%_ '0)))
                        (let ((_%tl4679646948%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '1)))
                              (_%target4679446945%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7489374894%_ '0))))
                          (if (gx#stx-null? _%tl4679646948%_)
                              (_%__match7518175182%_
                               _%e4663047643%_
                               _%hd4662947647%_
                               _%tl4662847650%_
                               _%e4663347653%_
                               _%hd4663247657%_
                               _%tl4663147660%_
                               _%e4663647663%_
                               _%hd4663547667%_
                               _%tl4663447670%_
                               _%__splice7489374894%_
                               _%target4679446945%_
                               _%tl4679646948%_)
                              (let ()
                                (declare (not safe))
                                (_%g4662146824%_)))))
                      (let () (declare (not safe)) (_%g4662146824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4663147660%_)
                                                      (let ((_%__splice7489374894%_
                                                             (gx#syntax-split-splice
                                                              _%tl4663147660%_
                                                              '0)))
                                                        (let ((_%tl4679646948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '1)))
                      (_%target4679446945%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '0))))
                  (if (gx#stx-null? _%tl4679646948%_)
                      (_%__match7518175182%_
                       _%e4663047643%_
                       _%hd4662947647%_
                       _%tl4662847650%_
                       _%e4663347653%_
                       _%hd4663247657%_
                       _%tl4663147660%_
                       _%e4663647663%_
                       _%hd4663547667%_
                       _%tl4663447670%_
                       _%__splice7489374894%_
                       _%target4679446945%_
                       _%tl4679646948%_)
                      (let () (declare (not safe)) (_%g4662146824%_)))))
              (let () (declare (not safe)) (_%g4662146824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4663147660%_)
                                                  (let ((_%__splice7489374894%_
                                                         (gx#syntax-split-splice
                                                          _%tl4663147660%_
                                                          '0)))
                                                    (let ((_%tl4679646948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7489374894%_
                                                              '1)))
                                                          (_%target4679446945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7489374894%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4679646948%_)
                                                          (_%__match7518175182%_
                                                           _%e4663047643%_
                                                           _%hd4662947647%_
                                                           _%tl4662847650%_
                                                           _%e4663347653%_
                                                           _%hd4663247657%_
                                                           _%tl4663147660%_
                                                           _%e4663647663%_
                                                           _%hd4663547667%_
                                                           _%tl4663447670%_
                                                           _%__splice7489374894%_
                                                           _%target4679446945%_
                                                           _%tl4679646948%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4662146824%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4663147660%_)
                                              (let ((_%__splice7489374894%_
                                                     (gx#syntax-split-splice
                                                      _%tl4663147660%_
                                                      '0)))
                                                (let ((_%tl4679646948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '1)))
                                                      (_%target4679446945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4679646948%_)
                                                      (_%__match7518175182%_
                                                       _%e4663047643%_
                                                       _%hd4662947647%_
                                                       _%tl4662847650%_
                                                       _%e4663347653%_
                                                       _%hd4663247657%_
                                                       _%tl4663147660%_
                                                       _%e4663647663%_
                                                       _%hd4663547667%_
                                                       _%tl4663447670%_
                                                       _%__splice7489374894%_
                                                       _%target4679446945%_
                                                       _%tl4679646948%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4662146824%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_))))
                                      (if (gx#stx-pair/null? _%tl4663147660%_)
                                          (let ((_%__splice7489374894%_
                                                 (gx#syntax-split-splice
                                                  _%tl4663147660%_
                                                  '0)))
                                            (let ((_%tl4679646948%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '1)))
                                                  (_%target4679446945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489374894%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4679646948%_)
                                                  (_%__match7518175182%_
                                                   _%e4663047643%_
                                                   _%hd4662947647%_
                                                   _%tl4662847650%_
                                                   _%e4663347653%_
                                                   _%hd4663247657%_
                                                   _%tl4663147660%_
                                                   _%e4663647663%_
                                                   _%hd4663547667%_
                                                   _%tl4663447670%_
                                                   _%__splice7489374894%_
                                                   _%target4679446945%_
                                                   _%tl4679646948%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_))))
                                  (if (gx#stx-pair/null? _%tl4663147660%_)
                                      (let ((_%__splice7489374894%_
                                             (gx#syntax-split-splice
                                              _%tl4663147660%_
                                              '0)))
                                        (let ((_%tl4679646948%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '1)))
                                              (_%target4679446945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7489374894%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4679646948%_)
                                              (_%__match7518175182%_
                                               _%e4663047643%_
                                               _%hd4662947647%_
                                               _%tl4662847650%_
                                               _%e4663347653%_
                                               _%hd4663247657%_
                                               _%tl4663147660%_
                                               _%e4663647663%_
                                               _%hd4663547667%_
                                               _%tl4663447670%_
                                               _%__splice7489374894%_
                                               _%target4679446945%_
                                               _%tl4679646948%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_))))))))
                  (if (gx#stx-null? _%tl4664047690%_)
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7488174882%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4671447336%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7488174882%_ '1)))
                                  (_%target4671247333%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7488174882%_
                                      '0))))
                              (if (gx#stx-null? _%tl4671447336%_)
                                  (_%__match7505175052%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%e4663947673%_
                                   _%hd4663847677%_
                                   _%tl4663747680%_
                                   _%e4664247683%_
                                   _%hd4664147687%_
                                   _%tl4664047690%_
                                   _%__splice7488174882%_
                                   _%target4671247333%_
                                   _%tl4671447336%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_)))
                      (if (gx#stx-pair/null? _%tl4663147660%_)
                          (let ((_%__splice7489374894%_
                                 (gx#syntax-split-splice _%tl4663147660%_ '0)))
                            (let ((_%tl4679646948%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7489374894%_ '1)))
                                  (_%target4679446945%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7489374894%_
                                      '0))))
                              (if (gx#stx-null? _%tl4679646948%_)
                                  (_%__match7518175182%_
                                   _%e4663047643%_
                                   _%hd4662947647%_
                                   _%tl4662847650%_
                                   _%e4663347653%_
                                   _%hd4663247657%_
                                   _%tl4663147660%_
                                   _%e4663647663%_
                                   _%hd4663547667%_
                                   _%tl4663447670%_
                                   _%__splice7489374894%_
                                   _%target4679446945%_
                                   _%tl4679646948%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4662146824%_)))))
                          (let () (declare (not safe)) (_%g4662146824%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4663147660%_)
                                                      (let ((_%__splice7489374894%_
                                                             (gx#syntax-split-splice
                                                              _%tl4663147660%_
                                                              '0)))
                                                        (let ((_%tl4679646948%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '1)))
                      (_%target4679446945%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7489374894%_ '0))))
                  (if (gx#stx-null? _%tl4679646948%_)
                      (_%__match7518175182%_
                       _%e4663047643%_
                       _%hd4662947647%_
                       _%tl4662847650%_
                       _%e4663347653%_
                       _%hd4663247657%_
                       _%tl4663147660%_
                       _%e4663647663%_
                       _%hd4663547667%_
                       _%tl4663447670%_
                       _%__splice7489374894%_
                       _%target4679446945%_
                       _%tl4679646948%_)
                      (let () (declare (not safe)) (_%g4662146824%_)))))
              (let () (declare (not safe)) (_%g4662146824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4663147660%_)
                                              (let ((_%__splice7489374894%_
                                                     (gx#syntax-split-splice
                                                      _%tl4663147660%_
                                                      '0)))
                                                (let ((_%tl4679646948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '1)))
                                                      (_%target4679446945%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7489374894%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4679646948%_)
                                                      (_%__match7518175182%_
                                                       _%e4663047643%_
                                                       _%hd4662947647%_
                                                       _%tl4662847650%_
                                                       _%e4663347653%_
                                                       _%hd4663247657%_
                                                       _%tl4663147660%_
                                                       _%e4663647663%_
                                                       _%hd4663547667%_
                                                       _%tl4663447670%_
                                                       _%__splice7489374894%_
                                                       _%target4679446945%_
                                                       _%tl4679646948%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4662146824%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4662146824%_))))))
                                  (if (gx#stx-null? _%hd4663247657%_)
                                      (if (gx#stx-pair/null? _%tl4663147660%_)
                                          (let ((_%__splice7489774898%_
                                                 (gx#syntax-split-splice
                                                  _%tl4663147660%_
                                                  '0)))
                                            (let ((_%tl4681246854%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489774898%_
                                                      '1)))
                                                  (_%target4681046851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7489774898%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4681246854%_)
                                                  (_%__match7520375204%_
                                                   _%e4663047643%_
                                                   _%hd4662947647%_
                                                   _%tl4662847650%_
                                                   _%e4663347653%_
                                                   _%hd4663247657%_
                                                   _%tl4663147660%_
                                                   _%__splice7489774898%_
                                                   _%target4681046851%_
                                                   _%tl4681246854%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4662146824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4662146824%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4662146824%_))))))
                          (let () (declare (not safe)) (_%g4662146824%_)))))
                  (let () (declare (not safe)) (_%g4662146824%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47801%_)
        (let* ((_%g4780547839%_
                (lambda (_%g4780647835%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4780647835%_)))
               (_%g4780447962%_
                (lambda (_%g4780647843%_)
                  (if (gx#stx-pair? _%g4780647843%_)
                      (let ((_%e4781247846%_ (gx#syntax-e _%g4780647843%_)))
                        (let ((_%hd4781147850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4781247846%_)))
                              (_%tl4781047853%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4781247846%_))))
                          (if (gx#stx-pair? _%tl4781047853%_)
                              (let ((_%e4781547856%_
                                     (gx#syntax-e _%tl4781047853%_)))
                                (let ((_%hd4781447860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4781547856%_)))
                                      (_%tl4781347863%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4781547856%_))))
                                  (if (gx#stx-pair? _%hd4781447860%_)
                                      (let ((_%e4781847866%_
                                             (gx#syntax-e _%hd4781447860%_)))
                                        (let ((_%hd4781747870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4781847866%_)))
                                              (_%tl4781647873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4781847866%_))))
                                          (if (gx#stx-pair? _%tl4781647873%_)
                                              (let ((_%e4782147876%_
                                                     (gx#syntax-e
                                                      _%tl4781647873%_)))
                                                (let ((_%hd4782047880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4782147876%_)))
                                                      (_%tl4781947883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4782147876%_))))
                                                  (if (gx#identifier?
                                                       _%hd4782047880%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80059_|
                                                           _%hd4782047880%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4781947883%_)
                                                              (let ((_%e4782447886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4781947883%_)))
                        (let ((_%hd4782347890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4782447886%_)))
                              (_%tl4782247893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4782447886%_))))
                          (if (gx#stx-null? _%tl4782247893%_)
                              (if (gx#stx-pair/null? _%tl4781347863%_)
                                  (let ((_g80060_
                                         (gx#syntax-split-splice
                                          _%tl4781347863%_
                                          '0)))
                                    (begin
                                      (let ((_g80061_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g80060_)
                                                   (##vector-length _g80060_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g80061_ 2)))
                                            (error "Context expects 2 values"
                                                   _g80061_)))
                                      (let ((_%target4782547896%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80060_ 0)))
                                            (_%tl4782747899%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g80060_ 1))))
                                        (if (gx#stx-null? _%tl4782747899%_)
                                            (letrec ((_%loop4782847902%_
                                                      (lambda (_%hd4782647906%_
                                                               _%body4783247909%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4782647906%_)
                                                            (let ((_%e4782947912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4782647906%_)))
                      (let ((_%lp-hd4783047916%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4782947912%_)))
                            (_%lp-tl4783147919%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4782947912%_))))
                        (_%loop4782847902%_
                         _%lp-tl4783147919%_
                         (cons _%lp-hd4783047916%_ _%body4783247909%_))))
                    (let ((_%body4783347922%_ (reverse _%body4783247909%_)))
                      ((lambda (_%L47926%_ _%L47928%_ _%L47929%_)
                         (if (gx#identifier? _%L47929%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47928%_
                                               (cons _%L47929%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4795347956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4795447959%_)
                            (cons _%g4795347956%_ _%g4795447959%_))
                          '()
                          _%L47926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47928%_ (cons _%L47929%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4780547839%_ _%g4780647843%_)))
                       _%body4783347922%_
                       _%hd4782347890%_
                       _%hd4781747870%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4782847902%_
                                               _%target4782547896%_
                                               '()))
                                            (_%g4780547839%_
                                             _%g4780647843%_)))))
                                  (_%g4780547839%_ _%g4780647843%_))
                              (_%g4780547839%_ _%g4780647843%_))))
                      (_%g4780547839%_ _%g4780647843%_))
                  (_%g4780547839%_ _%g4780647843%_))
              (_%g4780547839%_ _%g4780647843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4780547839%_
                                               _%g4780647843%_))))
                                      (_%g4780547839%_ _%g4780647843%_))))
                              (_%g4780547839%_ _%g4780647843%_))))
                      (_%g4780547839%_ _%g4780647843%_)))))
          (_%g4780447962%_ _%$stx47801%_))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id48013%_)
        (if (gx#identifier? _%id48013%_)
            (let ((_%index4801548017%_
                   (string-index
                    (symbol->string (gx#stx-e _%id48013%_))
                    '#\.)))
              (if _%index4801548017%_
                  (let ((_%index48021%_ _%index4801548017%_))
                    (> _%index48021%_ '0))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx48006%_ _%id48008%_)
        (let ((_%parts48010%_
               (string-split (symbol->string (gx#stx-e _%id48008%_)) '#\.)))
          (if (find string-empty? _%parts48010%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx48006%_
               _%id48008%_)
              (cons (gx#stx-identifier _%id48008%_ (car _%parts48010%_))
                    (map string->symbol (cdr _%parts48010%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47987%_ _%klass-or-id47989%_ _%slot47990%_)
        (let* ((_%klass47992%_
                (if (gx#identifier? _%klass-or-id47989%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47987%_
                       _%klass-or-id47989%_))
                    _%klass-or-id47989%_))
               (_%accessors47995%_
                (let ((__obj79889 _%klass47992%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj79889
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj79889 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj79889
                       'unchecked-accessors)))))
          (let ((_%$e48000%_ (assgetq _%slot47990%_ _%accessors47995%_)))
            (if _%$e48000%_
                _%$e48000%_
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"no accessor for slot"
                   _%stx47987%_
                   _%klass47992%_
                   _%slot47990%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47967%_
               _%klass-or-id47969%_
               _%slot47970%_
               _%checked?47971%_)
        (let* ((_%klass47973%_
                (if (gx#identifier? _%klass-or-id47969%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47967%_
                       _%klass-or-id47969%_))
                    _%klass-or-id47969%_))
               (_%mutators47976%_
                (if _%checked?47971%_
                    (let ((__obj79890 _%klass47973%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj79890
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj79890 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj79890
                           'mutators)))
                    (let ((__obj79891 _%klass47973%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj79891
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj79891 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj79891
                           'unchecked-mutators))))))
          (let ((_%$e47981%_ (assgetq _%slot47970%_ _%mutators47976%_)))
            (if _%$e47981%_
                _%$e47981%_
                (let ()
                  (gx#raise-syntax-error
                   '#f
                   '"no mutator for slot"
                   _%stx47967%_
                   _%klass47973%_
                   _%slot47970%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48024%_)
        (letrec ((_%expand-body48027%_
                  (lambda (_%klass48596%_
                           _%var48598%_
                           _%Type48599%_
                           _%body48600%_
                           _%checked?48601%_)
                    (let* ((_%g4860348647%_
                            (lambda (_%g4860448643%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4860448643%_)))
                           (_%g4860248804%_
                            (lambda (_%g4860448651%_)
                              (if (gx#stx-pair? _%g4860448651%_)
                                  (let ((_%e4861448654%_
                                         (gx#syntax-e _%g4860448651%_)))
                                    (let ((_%hd4861348658%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4861448654%_)))
                                          (_%tl4861248661%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4861448654%_))))
                                      (if (gx#stx-pair? _%tl4861248661%_)
                                          (let ((_%e4861748664%_
                                                 (gx#syntax-e
                                                  _%tl4861248661%_)))
                                            (let ((_%hd4861648668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4861748664%_)))
                                                  (_%tl4861548671%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4861748664%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4861548671%_)
                                                  (let ((_%e4862048674%_
                                                         (gx#syntax-e
                                                          _%tl4861548671%_)))
                                                    (let ((_%hd4861948678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4862048674%_)))
                                                          (_%tl4861848681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4862048674%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4861848681%_)
                                                          (let ((_%e4862348684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4861848681%_)))
                    (let ((_%hd4862248688%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4862348684%_)))
                          (_%tl4862148691%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4862348684%_))))
                      (if (gx#stx-pair? _%tl4862148691%_)
                          (let ((_%e4862648694%_
                                 (gx#syntax-e _%tl4862148691%_)))
                            (let ((_%hd4862548698%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4862648694%_)))
                                  (_%tl4862448701%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4862648694%_))))
                              (if (gx#stx-pair? _%tl4862448701%_)
                                  (let ((_%e4862948704%_
                                         (gx#syntax-e _%tl4862448701%_)))
                                    (let ((_%hd4862848708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4862948704%_)))
                                          (_%tl4862748711%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4862948704%_))))
                                      (if (gx#stx-pair? _%tl4862748711%_)
                                          (let ((_%e4863248714%_
                                                 (gx#syntax-e
                                                  _%tl4862748711%_)))
                                            (let ((_%hd4863148718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4863248714%_)))
                                                  (_%tl4863048721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4863248714%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4863148718%_)
                                                  (let ((_g80062_
                                                         (gx#syntax-split-splice
                                                          _%hd4863148718%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80063_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80062_)
                           (##vector-length _g80062_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80063_ 2)))
                    (error "Context expects 2 values" _g80063_)))
              (let ((_%target4863348724%_
                     (let () (declare (not safe)) (##vector-ref _g80062_ 0)))
                    (_%tl4863548727%_
                     (let () (declare (not safe)) (##vector-ref _g80062_ 1))))
                (if (gx#stx-null? _%tl4863548727%_)
                    (letrec ((_%loop4863648730%_
                              (lambda (_%hd4863448734%_ _%body4864048737%_)
                                (if (gx#stx-pair? _%hd4863448734%_)
                                    (let ((_%e4863748740%_
                                           (gx#syntax-e _%hd4863448734%_)))
                                      (let ((_%lp-hd4863848744%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4863748740%_)))
                                            (_%lp-tl4863948747%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4863748740%_))))
                                        (_%loop4863648730%_
                                         _%lp-tl4863948747%_
                                         (cons _%lp-hd4863848744%_
                                               _%body4864048737%_))))
                                    (let ((_%body4864148750%_
                                           (reverse _%body4864048737%_)))
                                      (if (gx#stx-null? _%tl4863048721%_)
                                          ((lambda (_%L48754%_
                                                    _%L48756%_
                                                    _%L48757%_
                                                    _%L48758%_
                                                    _%L48759%_
                                                    _%L48760%_
                                                    _%L48761%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L48759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L48760%_ '()))
                                           (cons _%L48759%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L48761%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L48759%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L48758%_ '()))
                                 (cons _%L48757%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L48756%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4879548798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4879648801%_)
                        (cons _%g4879548798%_ _%g4879648801%_))
                      '()
                      _%L48754%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4864148750%_
                                           _%hd4862848708%_
                                           _%hd4862548698%_
                                           _%hd4862248688%_
                                           _%hd4861948678%_
                                           _%hd4861648668%_
                                           _%hd4861348658%_)
                                          (_%g4860348647%_
                                           _%g4860448651%_)))))))
                      (_%loop4863648730%_ _%target4863348724%_ '()))
                    (_%g4860348647%_ _%g4860448651%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4860348647%_
                                                   _%g4860448651%_))))
                                          (_%g4860348647%_ _%g4860448651%_))))
                                  (_%g4860348647%_ _%g4860448651%_))))
                          (_%g4860348647%_ _%g4860448651%_))))
                  (_%g4860348647%_ _%g4860448651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4860348647%_
                                                   _%g4860448651%_))))
                                          (_%g4860348647%_ _%g4860448651%_))))
                                  (_%g4860348647%_ _%g4860448651%_)))))
                      (_%g4860248804%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj79892 _%klass48596%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj79892
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj79892
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj79892
                                    'type-descriptor)))
                             _%var48598%_
                             _%klass48596%_
                             _%checked?48601%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body48600%_)))))
                 (_%expand48029%_
                  (lambda (_%var48493%_
                           _%Type48495%_
                           _%body48496%_
                           _%checked?48497%_
                           _%maybe?48498%_)
                    (let* ((_%klass48500%_
                            (gx#syntax-local-value _%Type48495%_ false))
                           (_%expr-body48503%_
                            (_%expand-body48027%_
                             _%klass48500%_
                             _%var48493%_
                             _%Type48495%_
                             _%body48496%_
                             _%checked?48497%_)))
                      (if _%checked?48497%_
                          (let* ((_%g4850848527%_
                                  (lambda (_%g4850948523%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4850948523%_)))
                                 (_%g4850748589%_
                                  (lambda (_%g4850948531%_)
                                    (if (gx#stx-pair? _%g4850948531%_)
                                        (let ((_%e4851548534%_
                                               (gx#syntax-e _%g4850948531%_)))
                                          (let ((_%hd4851448538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4851548534%_)))
                                                (_%tl4851348541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4851548534%_))))
                                            (if (gx#stx-pair? _%tl4851348541%_)
                                                (let ((_%e4851848544%_
                                                       (gx#syntax-e
                                                        _%tl4851348541%_)))
                                                  (let ((_%hd4851748548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4851848544%_)))
                                                        (_%tl4851648551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4851848544%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4851648551%_)
                                                        (let ((_%e4852148554%_
                                                               (gx#syntax-e
                                                                _%tl4851648551%_)))
                                                          (let ((_%hd4852048558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4852148554%_)))
                        (_%tl4851948561%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4852148554%_))))
                    (if (gx#stx-null? _%tl4851948561%_)
                        ((lambda (_%L48564%_ _%L48566%_ _%L48567%_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'with-contract)
                                   (cons (cons _%L48566%_
                                               (cons (gx#datum->syntax '#f ':~)
                                                     (cons _%L48567%_ '())))
                                         (cons _%L48564%_ '())))))
                         _%hd4852048558%_
                         _%hd4851748548%_
                         _%hd4851448538%_)
                        (_%g4850848527%_ _%g4850948531%_))))
                (_%g4850848527%_ _%g4850948531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4850848527%_
                                                 _%g4850948531%_))))
                                        (_%g4850848527%_ _%g4850948531%_)))))
                            (_%g4850748589%_
                             (list (let ((_%instance?48593%_
                                          (let ((__obj79893 _%klass48500%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj79893
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj79893
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj79893
                                                 'predicate)))))
                                     (if _%maybe?48498%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?48593%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?48593%_))
                                   _%var48493%_
                                   _%expr-body48503%_)))
                          _%expr-body48503%_)))))
          (let* ((_%__stx7520675207%_ _%stx48024%_)
                 (_%g4803348121%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7520675207%_))))
            (let ((_%__kont7520975210%_
                   (lambda (_%L48454%_ _%L48456%_ _%L48457%_)
                     (_%expand48029%_
                      _%L48457%_
                      _%L48456%_
                      (foldr (lambda (_%g4848048483%_ _%g4848148486%_)
                               (cons _%g4848048483%_ _%g4848148486%_))
                             '()
                             _%L48454%_)
                      '#t
                      '#f)))
                  (_%__kont7521375214%_
                   (lambda (_%L48332%_ _%L48334%_ _%L48335%_)
                     (_%expand48029%_
                      _%L48335%_
                      _%L48334%_
                      (foldr (lambda (_%g4835848361%_ _%g4835948364%_)
                               (cons _%g4835848361%_ _%g4835948364%_))
                             '()
                             _%L48332%_)
                      '#t
                      '#t)))
                  (_%__kont7521775218%_
                   (lambda (_%L48208%_ _%L48210%_ _%L48211%_)
                     (_%expand48029%_
                      _%L48211%_
                      _%L48210%_
                      (foldr (lambda (_%g4823648239%_ _%g4823748242%_)
                               (cons _%g4823648239%_ _%g4823748242%_))
                             '()
                             _%L48208%_)
                      '#f
                      '#f))))
              (let* ((_%__match7535375354%_
                      (lambda (_%e4809448128%_
                               _%hd4809348132%_
                               _%tl4809248135%_
                               _%e4809748138%_
                               _%hd4809648142%_
                               _%tl4809548145%_
                               _%e4810048148%_
                               _%hd4809948152%_
                               _%tl4809848155%_
                               _%e4810348158%_
                               _%hd4810248162%_
                               _%tl4810148165%_
                               _%e4810648168%_
                               _%hd4810548172%_
                               _%tl4810448175%_
                               _%__splice7521975220%_
                               _%target4810748178%_
                               _%tl4810948181%_)
                        (letrec ((_%loop4811048184%_
                                  (lambda (_%hd4810848188%_ _%body4811448191%_)
                                    (if (gx#stx-pair? _%hd4810848188%_)
                                        (let ((_%e4811148194%_
                                               (gx#syntax-e _%hd4810848188%_)))
                                          (let ((_%lp-tl4811348201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4811148194%_)))
                                                (_%lp-hd4811248198%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4811148194%_))))
                                            (_%loop4811048184%_
                                             _%lp-tl4811348201%_
                                             (cons _%lp-hd4811248198%_
                                                   _%body4811448191%_))))
                                        (let ((_%body4811548204%_
                                               (reverse _%body4811448191%_)))
                                          (let ((_%L48208%_ _%body4811548204%_)
                                                (_%L48210%_ _%hd4810548172%_)
                                                (_%L48211%_ _%hd4809948152%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48210%_))
                                                (_%__kont7521775218%_
                                                 _%L48208%_
                                                 _%L48210%_
                                                 _%L48211%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4803348121%_)))))))))
                          (_%loop4811048184%_ _%target4810748178%_ '()))))
                     (_%__match7530975310%_
                      (lambda (_%e4806748252%_
                               _%hd4806648256%_
                               _%tl4806548259%_
                               _%e4807048262%_
                               _%hd4806948266%_
                               _%tl4806848269%_
                               _%e4807348272%_
                               _%hd4807248276%_
                               _%tl4807148279%_
                               _%e4807648282%_
                               _%hd4807548286%_
                               _%tl4807448289%_
                               _%e4807948292%_
                               _%hd4807848296%_
                               _%tl4807748299%_
                               _%__splice7521575216%_
                               _%target4808048302%_
                               _%tl4808248305%_)
                        (letrec ((_%loop4808348308%_
                                  (lambda (_%hd4808148312%_ _%body4808748315%_)
                                    (if (gx#stx-pair? _%hd4808148312%_)
                                        (let ((_%e4808448318%_
                                               (gx#syntax-e _%hd4808148312%_)))
                                          (let ((_%lp-tl4808648325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4808448318%_)))
                                                (_%lp-hd4808548322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4808448318%_))))
                                            (_%loop4808348308%_
                                             _%lp-tl4808648325%_
                                             (cons _%lp-hd4808548322%_
                                                   _%body4808748315%_))))
                                        (let ((_%body4808848328%_
                                               (reverse _%body4808748315%_)))
                                          (let ((_%L48332%_ _%body4808848328%_)
                                                (_%L48334%_ _%hd4807848296%_)
                                                (_%L48335%_ _%hd4807248276%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48334%_))
                                                (_%__kont7521375214%_
                                                 _%L48332%_
                                                 _%L48334%_
                                                 _%L48335%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4803348121%_)))))))))
                          (_%loop4808348308%_ _%target4808048302%_ '()))))
                     (_%__match7526575266%_
                      (lambda (_%e4804048374%_
                               _%hd4803948378%_
                               _%tl4803848381%_
                               _%e4804348384%_
                               _%hd4804248388%_
                               _%tl4804148391%_
                               _%e4804648394%_
                               _%hd4804548398%_
                               _%tl4804448401%_
                               _%e4804948404%_
                               _%hd4804848408%_
                               _%tl4804748411%_
                               _%e4805248414%_
                               _%hd4805148418%_
                               _%tl4805048421%_
                               _%__splice7521175212%_
                               _%target4805348424%_
                               _%tl4805548427%_)
                        (letrec ((_%loop4805648430%_
                                  (lambda (_%hd4805448434%_ _%body4806048437%_)
                                    (if (gx#stx-pair? _%hd4805448434%_)
                                        (let ((_%e4805748440%_
                                               (gx#syntax-e _%hd4805448434%_)))
                                          (let ((_%lp-tl4805948447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4805748440%_)))
                                                (_%lp-hd4805848444%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4805748440%_))))
                                            (_%loop4805648430%_
                                             _%lp-tl4805948447%_
                                             (cons _%lp-hd4805848444%_
                                                   _%body4806048437%_))))
                                        (let ((_%body4806148450%_
                                               (reverse _%body4806048437%_)))
                                          (let ((_%L48454%_ _%body4806148450%_)
                                                (_%L48456%_ _%hd4805148418%_)
                                                (_%L48457%_ _%hd4804548398%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48456%_))
                                                (_%__kont7520975210%_
                                                 _%L48454%_
                                                 _%L48456%_
                                                 _%L48457%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4803348121%_)))))))))
                          (_%loop4805648430%_ _%target4805348424%_ '())))))
                (if (gx#stx-pair? _%__stx7520675207%_)
                    (let ((_%e4804048374%_ (gx#syntax-e _%__stx7520675207%_)))
                      (let ((_%tl4803848381%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4804048374%_)))
                            (_%hd4803948378%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4804048374%_))))
                        (if (gx#stx-pair? _%tl4803848381%_)
                            (let ((_%e4804348384%_
                                   (gx#syntax-e _%tl4803848381%_)))
                              (let ((_%tl4804148391%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4804348384%_)))
                                    (_%hd4804248388%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4804348384%_))))
                                (if (gx#stx-pair? _%hd4804248388%_)
                                    (let ((_%e4804648394%_
                                           (gx#syntax-e _%hd4804248388%_)))
                                      (let ((_%tl4804448401%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4804648394%_)))
                                            (_%hd4804548398%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4804648394%_))))
                                        (if (gx#stx-pair? _%tl4804448401%_)
                                            (let ((_%e4804948404%_
                                                   (gx#syntax-e
                                                    _%tl4804448401%_)))
                                              (let ((_%tl4804748411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4804948404%_)))
                                                    (_%hd4804848408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4804948404%_))))
                                                (if (gx#identifier?
                                                     _%hd4804848408%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80064_|
                                                         _%hd4804848408%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4804748411%_)
                                                            (let ((_%e4805248414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4804748411%_)))
                      (let ((_%tl4805048421%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4805248414%_)))
                            (_%hd4805148418%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4805248414%_))))
                        (if (gx#stx-null? _%tl4805048421%_)
                            (if (gx#stx-pair/null? _%tl4804148391%_)
                                (let ((_%__splice7521175212%_
                                       (gx#syntax-split-splice
                                        _%tl4804148391%_
                                        '0)))
                                  (let ((_%tl4805548427%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7521175212%_
                                            '1)))
                                        (_%target4805348424%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7521175212%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4805548427%_)
                                        (_%__match7526575266%_
                                         _%e4804048374%_
                                         _%hd4803948378%_
                                         _%tl4803848381%_
                                         _%e4804348384%_
                                         _%hd4804248388%_
                                         _%tl4804148391%_
                                         _%e4804648394%_
                                         _%hd4804548398%_
                                         _%tl4804448401%_
                                         _%e4804948404%_
                                         _%hd4804848408%_
                                         _%tl4804748411%_
                                         _%e4805248414%_
                                         _%hd4805148418%_
                                         _%tl4805048421%_
                                         _%__splice7521175212%_
                                         _%target4805348424%_
                                         _%tl4805548427%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4803348121%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4803348121%_)))
                            (let () (declare (not safe)) (_%g4803348121%_)))))
                    (let () (declare (not safe)) (_%g4803348121%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80065_|
                     _%hd4804848408%_)
                    (if (gx#stx-pair? _%tl4804748411%_)
                        (let ((_%e4807948292%_ (gx#syntax-e _%tl4804748411%_)))
                          (let ((_%tl4807748299%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4807948292%_)))
                                (_%hd4807848296%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4807948292%_))))
                            (if (gx#stx-null? _%tl4807748299%_)
                                (if (gx#stx-pair/null? _%tl4804148391%_)
                                    (let ((_%__splice7521575216%_
                                           (gx#syntax-split-splice
                                            _%tl4804148391%_
                                            '0)))
                                      (let ((_%tl4808248305%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7521575216%_
                                                '1)))
                                            (_%target4808048302%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7521575216%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4808248305%_)
                                            (_%__match7530975310%_
                                             _%e4804048374%_
                                             _%hd4803948378%_
                                             _%tl4803848381%_
                                             _%e4804348384%_
                                             _%hd4804248388%_
                                             _%tl4804148391%_
                                             _%e4804648394%_
                                             _%hd4804548398%_
                                             _%tl4804448401%_
                                             _%e4804948404%_
                                             _%hd4804848408%_
                                             _%tl4804748411%_
                                             _%e4807948292%_
                                             _%hd4807848296%_
                                             _%tl4807748299%_
                                             _%__splice7521575216%_
                                             _%target4808048302%_
                                             _%tl4808248305%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4803348121%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4803348121%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4803348121%_)))))
                        (let () (declare (not safe)) (_%g4803348121%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80066_|
                         _%hd4804848408%_)
                        (if (gx#stx-pair? _%tl4804748411%_)
                            (let ((_%e4810648168%_
                                   (gx#syntax-e _%tl4804748411%_)))
                              (let ((_%tl4810448175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4810648168%_)))
                                    (_%hd4810548172%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4810648168%_))))
                                (if (gx#stx-null? _%tl4810448175%_)
                                    (if (gx#stx-pair/null? _%tl4804148391%_)
                                        (let ((_%__splice7521975220%_
                                               (gx#syntax-split-splice
                                                _%tl4804148391%_
                                                '0)))
                                          (let ((_%tl4810948181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7521975220%_
                                                    '1)))
                                                (_%target4810748178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7521975220%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4810948181%_)
                                                (_%__match7535375354%_
                                                 _%e4804048374%_
                                                 _%hd4803948378%_
                                                 _%tl4803848381%_
                                                 _%e4804348384%_
                                                 _%hd4804248388%_
                                                 _%tl4804148391%_
                                                 _%e4804648394%_
                                                 _%hd4804548398%_
                                                 _%tl4804448401%_
                                                 _%e4804948404%_
                                                 _%hd4804848408%_
                                                 _%tl4804748411%_
                                                 _%e4810648168%_
                                                 _%hd4810548172%_
                                                 _%tl4810448175%_
                                                 _%__splice7521975220%_
                                                 _%target4810748178%_
                                                 _%tl4810948181%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4803348121%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4803348121%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4803348121%_)))))
                            (let () (declare (not safe)) (_%g4803348121%_)))
                        (let () (declare (not safe)) (_%g4803348121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4803348121%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4803348121%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4803348121%_)))))
                            (let () (declare (not safe)) (_%g4803348121%_)))))
                    (let () (declare (not safe)) (_%g4803348121%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx48812%_)
        (letrec ((_%expand-body48815%_
                  (lambda (_%var49632%_
                           _%Interface49634%_
                           _%body49635%_
                           _%checked?49636%_)
                    (let* ((_%type49638%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx48812%_
                               _%Interface49634%_)))
                           (_%g4964149685%_
                            (lambda (_%g4964249681%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4964249681%_)))
                           (_%g4964049843%_
                            (lambda (_%g4964249689%_)
                              (if (gx#stx-pair? _%g4964249689%_)
                                  (let ((_%e4965249692%_
                                         (gx#syntax-e _%g4964249689%_)))
                                    (let ((_%hd4965149696%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4965249692%_)))
                                          (_%tl4965049699%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4965249692%_))))
                                      (if (gx#stx-pair? _%tl4965049699%_)
                                          (let ((_%e4965549702%_
                                                 (gx#syntax-e
                                                  _%tl4965049699%_)))
                                            (let ((_%hd4965449706%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4965549702%_)))
                                                  (_%tl4965349709%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4965549702%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4965349709%_)
                                                  (let ((_%e4965849712%_
                                                         (gx#syntax-e
                                                          _%tl4965349709%_)))
                                                    (let ((_%hd4965749716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4965849712%_)))
                                                          (_%tl4965649719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4965849712%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4965649719%_)
                                                          (let ((_%e4966149722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4965649719%_)))
                    (let ((_%hd4966049726%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4966149722%_)))
                          (_%tl4965949729%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4966149722%_))))
                      (if (gx#stx-pair? _%tl4965949729%_)
                          (let ((_%e4966449732%_
                                 (gx#syntax-e _%tl4965949729%_)))
                            (let ((_%hd4966349736%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4966449732%_)))
                                  (_%tl4966249739%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4966449732%_))))
                              (if (gx#stx-pair? _%tl4966249739%_)
                                  (let ((_%e4966749742%_
                                         (gx#syntax-e _%tl4966249739%_)))
                                    (let ((_%hd4966649746%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4966749742%_)))
                                          (_%tl4966549749%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4966749742%_))))
                                      (if (gx#stx-pair? _%tl4966549749%_)
                                          (let ((_%e4967049752%_
                                                 (gx#syntax-e
                                                  _%tl4966549749%_)))
                                            (let ((_%hd4966949756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4967049752%_)))
                                                  (_%tl4966849759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4967049752%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4966949756%_)
                                                  (let ((_g80067_
                                                         (gx#syntax-split-splice
                                                          _%hd4966949756%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g80068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g80067_)
                           (##vector-length _g80067_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g80068_ 2)))
                    (error "Context expects 2 values" _g80068_)))
              (let ((_%target4967149762%_
                     (let () (declare (not safe)) (##vector-ref _g80067_ 0)))
                    (_%tl4967349765%_
                     (let () (declare (not safe)) (##vector-ref _g80067_ 1))))
                (if (gx#stx-null? _%tl4967349765%_)
                    (letrec ((_%loop4967449768%_
                              (lambda (_%hd4967249772%_ _%body4967849775%_)
                                (if (gx#stx-pair? _%hd4967249772%_)
                                    (let ((_%e4967549778%_
                                           (gx#syntax-e _%hd4967249772%_)))
                                      (let ((_%lp-hd4967649782%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4967549778%_)))
                                            (_%lp-tl4967749785%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4967549778%_))))
                                        (_%loop4967449768%_
                                         _%lp-tl4967749785%_
                                         (cons _%lp-hd4967649782%_
                                               _%body4967849775%_))))
                                    (let ((_%body4967949788%_
                                           (reverse _%body4967849775%_)))
                                      (if (gx#stx-null? _%tl4966849759%_)
                                          ((lambda (_%L49792%_
                                                    _%L49794%_
                                                    _%L49795%_
                                                    _%L49796%_
                                                    _%L49797%_
                                                    _%L49798%_
                                                    _%L49799%_)
                                             (let ()
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%L49796%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'begin-annotation)
                                     (cons (cons (gx#datum->syntax '#f '@type)
                                                 (cons _%L49797%_ '()))
                                           (cons _%L49796%_ '())))
                               '()))
                   (cons (cons (gx#datum->syntax '#f 'let-syntax)
                               (cons (cons (cons _%L49799%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'make-type-env)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote-syntax)
                                 (cons _%L49796%_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%L49798%_ '()))
                                 (cons _%L49795%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L49794%_ '()))
                                             '())))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (cons (gx#datum->syntax '#f 'let)
                                                 (cons '()
                                                       (foldr (lambda (_%g4983449837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4983549840%_)
                        (cons _%g4983449837%_ _%g4983549840%_))
                      '()
                      _%L49792%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4967949788%_
                                           _%hd4966649746%_
                                           _%hd4966349736%_
                                           _%hd4966049726%_
                                           _%hd4965749716%_
                                           _%hd4965449706%_
                                           _%hd4965149696%_)
                                          (_%g4964149685%_
                                           _%g4964249689%_)))))))
                      (_%loop4967449768%_ _%target4967149762%_ '()))
                    (_%g4964149685%_ _%g4964249689%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4964149685%_
                                                   _%g4964249689%_))))
                                          (_%g4964149685%_ _%g4964249689%_))))
                                  (_%g4964149685%_ _%g4964249689%_))))
                          (_%g4964149685%_ _%g4964249689%_))))
                  (_%g4964149685%_ _%g4964249689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4964149685%_
                                                   _%g4964249689%_))))
                                          (_%g4964149685%_ _%g4964249689%_))))
                                  (_%g4964149685%_ _%g4964249689%_)))))
                      (_%g4964049843%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type49638%_
                             (let ((__obj79894 _%type49638%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj79894
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj79894
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj79894
                                    'instance-type)))
                             _%var49632%_
                             _%checked?49636%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49635%_)))))
                 (_%expand48817%_
                  (lambda (_%var49431%_
                           _%Interface49433%_
                           _%body49434%_
                           _%checked?49435%_
                           _%checked-methods?49436%_
                           _%maybe?49437%_)
                    (let* ((_%g4943949447%_
                            (lambda (_%g4944049443%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4944049443%_)))
                           (_%g4943849624%_
                            (lambda (_%g4944049451%_)
                              ((lambda (_%L49454%_)
                                 (let ()
                                   (if _%checked?49435%_
                                       (if _%maybe?49437%_
                                           (let* ((_%g4946649481%_
                                                   (lambda (_%g4946749477%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4946749477%_)))
                                                  (_%g4946549527%_
                                                   (lambda (_%g4946749485%_)
                                                     (if (gx#stx-pair?
                                                          _%g4946749485%_)
                                                         (let ((_%e4947249488%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4946749485%_)))
                   (let ((_%hd4947149492%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4947249488%_)))
                         (_%tl4947049495%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4947249488%_))))
                     (if (gx#stx-pair? _%tl4947049495%_)
                         (let ((_%e4947549498%_
                                (gx#syntax-e _%tl4947049495%_)))
                           (let ((_%hd4947449502%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4947549498%_)))
                                 (_%tl4947349505%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4947549498%_))))
                             (if (gx#stx-null? _%tl4947349505%_)
                                 ((lambda (_%L49508%_ _%L49510%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49510%_
                                                        (cons (cons _%L49508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49510%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'if)
                                                              (cons _%L49510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49454%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'nil-dereference!)
                                              (cons _%L49510%_ '()))
                                        '()))))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%hd4947449502%_
                                  _%hd4947149492%_)
                                 (_%g4946649481%_ _%g4946749485%_))))
                         (_%g4946649481%_ _%g4946749485%_))))
                 (_%g4946649481%_ _%g4946749485%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4946549527%_
                                              (list _%var49431%_
                                                    _%Interface49433%_)))
                                           (let* ((_%g4953149546%_
                                                   (lambda (_%g4953249542%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4953249542%_)))
                                                  (_%g4953049590%_
                                                   (lambda (_%g4953249550%_)
                                                     (if (gx#stx-pair?
                                                          _%g4953249550%_)
                                                         (let ((_%e4953749553%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4953249550%_)))
                   (let ((_%hd4953649557%_
                          (let ()
                            (declare (not safe))
                            (##car _%e4953749553%_)))
                         (_%tl4953549560%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e4953749553%_))))
                     (if (gx#stx-pair? _%tl4953549560%_)
                         (let ((_%e4954049563%_
                                (gx#syntax-e _%tl4953549560%_)))
                           (let ((_%hd4953949567%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e4954049563%_)))
                                 (_%tl4953849570%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e4954049563%_))))
                             (if (gx#stx-null? _%tl4953849570%_)
                                 ((lambda (_%L49573%_ _%L49575%_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let)
                                            (cons (cons _%L49575%_
                                                        (cons (cons _%L49573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L49575%_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L49454%_ '())))))
                                  _%hd4953949567%_
                                  _%hd4953649557%_)
                                 (_%g4953149546%_ _%g4953249550%_))))
                         (_%g4953149546%_ _%g4953249550%_))))
                 (_%g4953149546%_ _%g4953249550%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4953049590%_
                                              (list _%var49431%_
                                                    _%Interface49433%_))))
                                       (if _%maybe?49437%_
                                           (let* ((_%g4959449602%_
                                                   (lambda (_%g4959549598%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4959549598%_)))
                                                  (_%g4959349620%_
                                                   (lambda (_%g4959549606%_)
                                                     ((lambda (_%L49609%_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L49609%_
                              (cons _%L49454%_
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'nil-dereference!)
                                                (cons _%L49609%_ '()))
                                          '()))))))
              _%g4959549606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4959349620%_ _%var49431%_))
                                           _%L49454%_))))
                               _%g4944049451%_))))
                      (_%g4943849624%_
                       (_%expand-body48815%_
                        _%var49431%_
                        _%Interface49433%_
                        _%body49434%_
                        (let ((_%$e49628%_ _%checked?49435%_))
                          (if _%$e49628%_
                              _%$e49628%_
                              _%checked-methods?49436%_))))))))
          (let* ((_%__stx7535675357%_ _%stx48812%_)
                 (_%g4882248937%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7535675357%_))))
            (let ((_%__kont7535975360%_
                   (lambda (_%L49392%_ _%L49394%_ _%L49395%_)
                     (_%expand48817%_
                      _%L49395%_
                      _%L49394%_
                      (foldr (lambda (_%g4941849421%_ _%g4941949424%_)
                               (cons _%g4941849421%_ _%g4941949424%_))
                             '()
                             _%L49392%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7536375364%_
                   (lambda (_%L49270%_ _%L49272%_ _%L49273%_)
                     (_%expand48817%_
                      _%L49273%_
                      _%L49272%_
                      (foldr (lambda (_%g4929649299%_ _%g4929749302%_)
                               (cons _%g4929649299%_ _%g4929749302%_))
                             '()
                             _%L49270%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7536775368%_
                   (lambda (_%L49148%_ _%L49150%_ _%L49151%_)
                     (_%expand48817%_
                      _%L49151%_
                      _%L49150%_
                      (foldr (lambda (_%g4917449177%_ _%g4917549180%_)
                               (cons _%g4917449177%_ _%g4917549180%_))
                             '()
                             _%L49148%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7537175372%_
                   (lambda (_%L49024%_ _%L49026%_ _%L49027%_)
                     (_%expand48817%_
                      _%L49027%_
                      _%L49026%_
                      (foldr (lambda (_%g4905249055%_ _%g4905349058%_)
                               (cons _%g4905249055%_ _%g4905349058%_))
                             '()
                             _%L49024%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7555175552%_
                      (lambda (_%e4891048944%_
                               _%hd4890948948%_
                               _%tl4890848951%_
                               _%e4891348954%_
                               _%hd4891248958%_
                               _%tl4891148961%_
                               _%e4891648964%_
                               _%hd4891548968%_
                               _%tl4891448971%_
                               _%e4891948974%_
                               _%hd4891848978%_
                               _%tl4891748981%_
                               _%e4892248984%_
                               _%hd4892148988%_
                               _%tl4892048991%_
                               _%__splice7537375374%_
                               _%target4892348994%_
                               _%tl4892548997%_)
                        (letrec ((_%loop4892649000%_
                                  (lambda (_%hd4892449004%_ _%body4893049007%_)
                                    (if (gx#stx-pair? _%hd4892449004%_)
                                        (let ((_%e4892749010%_
                                               (gx#syntax-e _%hd4892449004%_)))
                                          (let ((_%lp-tl4892949017%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4892749010%_)))
                                                (_%lp-hd4892849014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4892749010%_))))
                                            (_%loop4892649000%_
                                             _%lp-tl4892949017%_
                                             (cons _%lp-hd4892849014%_
                                                   _%body4893049007%_))))
                                        (let ((_%body4893149020%_
                                               (reverse _%body4893049007%_)))
                                          (let ((_%L49024%_ _%body4893149020%_)
                                                (_%L49026%_ _%hd4892148988%_)
                                                (_%L49027%_ _%hd4891548968%_))
                                            (if (and (gx#identifier?
                                                      _%L49027%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49026%_)))
                                                (_%__kont7537175372%_
                                                 _%L49024%_
                                                 _%L49026%_
                                                 _%L49027%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4882248937%_)))))))))
                          (_%loop4892649000%_ _%target4892348994%_ '()))))
                     (_%__match7550775508%_
                      (lambda (_%e4888349068%_
                               _%hd4888249072%_
                               _%tl4888149075%_
                               _%e4888649078%_
                               _%hd4888549082%_
                               _%tl4888449085%_
                               _%e4888949088%_
                               _%hd4888849092%_
                               _%tl4888749095%_
                               _%e4889249098%_
                               _%hd4889149102%_
                               _%tl4889049105%_
                               _%e4889549108%_
                               _%hd4889449112%_
                               _%tl4889349115%_
                               _%__splice7536975370%_
                               _%target4889649118%_
                               _%tl4889849121%_)
                        (letrec ((_%loop4889949124%_
                                  (lambda (_%hd4889749128%_ _%body4890349131%_)
                                    (if (gx#stx-pair? _%hd4889749128%_)
                                        (let ((_%e4890049134%_
                                               (gx#syntax-e _%hd4889749128%_)))
                                          (let ((_%lp-tl4890249141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4890049134%_)))
                                                (_%lp-hd4890149138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4890049134%_))))
                                            (_%loop4889949124%_
                                             _%lp-tl4890249141%_
                                             (cons _%lp-hd4890149138%_
                                                   _%body4890349131%_))))
                                        (let ((_%body4890449144%_
                                               (reverse _%body4890349131%_)))
                                          (let ((_%L49148%_ _%body4890449144%_)
                                                (_%L49150%_ _%hd4889449112%_)
                                                (_%L49151%_ _%hd4888849092%_))
                                            (if (and (gx#identifier?
                                                      _%L49151%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49150%_)))
                                                (_%__kont7536775368%_
                                                 _%L49148%_
                                                 _%L49150%_
                                                 _%L49151%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4882248937%_)))))))))
                          (_%loop4889949124%_ _%target4889649118%_ '()))))
                     (_%__match7546375464%_
                      (lambda (_%e4885649190%_
                               _%hd4885549194%_
                               _%tl4885449197%_
                               _%e4885949200%_
                               _%hd4885849204%_
                               _%tl4885749207%_
                               _%e4886249210%_
                               _%hd4886149214%_
                               _%tl4886049217%_
                               _%e4886549220%_
                               _%hd4886449224%_
                               _%tl4886349227%_
                               _%e4886849230%_
                               _%hd4886749234%_
                               _%tl4886649237%_
                               _%__splice7536575366%_
                               _%target4886949240%_
                               _%tl4887149243%_)
                        (letrec ((_%loop4887249246%_
                                  (lambda (_%hd4887049250%_ _%body4887649253%_)
                                    (if (gx#stx-pair? _%hd4887049250%_)
                                        (let ((_%e4887349256%_
                                               (gx#syntax-e _%hd4887049250%_)))
                                          (let ((_%lp-tl4887549263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4887349256%_)))
                                                (_%lp-hd4887449260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4887349256%_))))
                                            (_%loop4887249246%_
                                             _%lp-tl4887549263%_
                                             (cons _%lp-hd4887449260%_
                                                   _%body4887649253%_))))
                                        (let ((_%body4887749266%_
                                               (reverse _%body4887649253%_)))
                                          (let ((_%L49270%_ _%body4887749266%_)
                                                (_%L49272%_ _%hd4886749234%_)
                                                (_%L49273%_ _%hd4886149214%_))
                                            (if (and (gx#identifier?
                                                      _%L49273%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49272%_)))
                                                (_%__kont7536375364%_
                                                 _%L49270%_
                                                 _%L49272%_
                                                 _%L49273%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4882248937%_)))))))))
                          (_%loop4887249246%_ _%target4886949240%_ '()))))
                     (_%__match7541975420%_
                      (lambda (_%e4882949312%_
                               _%hd4882849316%_
                               _%tl4882749319%_
                               _%e4883249322%_
                               _%hd4883149326%_
                               _%tl4883049329%_
                               _%e4883549332%_
                               _%hd4883449336%_
                               _%tl4883349339%_
                               _%e4883849342%_
                               _%hd4883749346%_
                               _%tl4883649349%_
                               _%e4884149352%_
                               _%hd4884049356%_
                               _%tl4883949359%_
                               _%__splice7536175362%_
                               _%target4884249362%_
                               _%tl4884449365%_)
                        (letrec ((_%loop4884549368%_
                                  (lambda (_%hd4884349372%_ _%body4884949375%_)
                                    (if (gx#stx-pair? _%hd4884349372%_)
                                        (let ((_%e4884649378%_
                                               (gx#syntax-e _%hd4884349372%_)))
                                          (let ((_%lp-tl4884849385%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4884649378%_)))
                                                (_%lp-hd4884749382%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4884649378%_))))
                                            (_%loop4884549368%_
                                             _%lp-tl4884849385%_
                                             (cons _%lp-hd4884749382%_
                                                   _%body4884949375%_))))
                                        (let ((_%body4885049388%_
                                               (reverse _%body4884949375%_)))
                                          (let ((_%L49392%_ _%body4885049388%_)
                                                (_%L49394%_ _%hd4884049356%_)
                                                (_%L49395%_ _%hd4883449336%_))
                                            (if (and (gx#identifier?
                                                      _%L49395%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49394%_)))
                                                (_%__kont7535975360%_
                                                 _%L49392%_
                                                 _%L49394%_
                                                 _%L49395%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4882248937%_)))))))))
                          (_%loop4884549368%_ _%target4884249362%_ '())))))
                (if (gx#stx-pair? _%__stx7535675357%_)
                    (let ((_%e4882949312%_ (gx#syntax-e _%__stx7535675357%_)))
                      (let ((_%tl4882749319%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4882949312%_)))
                            (_%hd4882849316%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4882949312%_))))
                        (if (gx#stx-pair? _%tl4882749319%_)
                            (let ((_%e4883249322%_
                                   (gx#syntax-e _%tl4882749319%_)))
                              (let ((_%tl4883049329%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4883249322%_)))
                                    (_%hd4883149326%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4883249322%_))))
                                (if (gx#stx-pair? _%hd4883149326%_)
                                    (let ((_%e4883549332%_
                                           (gx#syntax-e _%hd4883149326%_)))
                                      (let ((_%tl4883349339%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4883549332%_)))
                                            (_%hd4883449336%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4883549332%_))))
                                        (if (gx#stx-pair? _%tl4883349339%_)
                                            (let ((_%e4883849342%_
                                                   (gx#syntax-e
                                                    _%tl4883349339%_)))
                                              (let ((_%tl4883649349%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4883849342%_)))
                                                    (_%hd4883749346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4883849342%_))))
                                                (if (gx#identifier?
                                                     _%hd4883749346%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~Using[1]#_g80069_|
                                                         _%hd4883749346%_)
                                                        (if (gx#stx-pair?
                                                             _%tl4883649349%_)
                                                            (let ((_%e4884149352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl4883649349%_)))
                      (let ((_%tl4883949359%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4884149352%_)))
                            (_%hd4884049356%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4884149352%_))))
                        (if (gx#stx-null? _%tl4883949359%_)
                            (if (gx#stx-pair/null? _%tl4883049329%_)
                                (let ((_%__splice7536175362%_
                                       (gx#syntax-split-splice
                                        _%tl4883049329%_
                                        '0)))
                                  (let ((_%tl4884449365%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7536175362%_
                                            '1)))
                                        (_%target4884249362%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice7536175362%_
                                            '0))))
                                    (if (gx#stx-null? _%tl4884449365%_)
                                        (_%__match7541975420%_
                                         _%e4882949312%_
                                         _%hd4882849316%_
                                         _%tl4882749319%_
                                         _%e4883249322%_
                                         _%hd4883149326%_
                                         _%tl4883049329%_
                                         _%e4883549332%_
                                         _%hd4883449336%_
                                         _%tl4883349339%_
                                         _%e4883849342%_
                                         _%hd4883749346%_
                                         _%tl4883649349%_
                                         _%e4884149352%_
                                         _%hd4884049356%_
                                         _%tl4883949359%_
                                         _%__splice7536175362%_
                                         _%target4884249362%_
                                         _%tl4884449365%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4882248937%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4882248937%_)))
                            (let () (declare (not safe)) (_%g4882248937%_)))))
                    (let () (declare (not safe)) (_%g4882248937%_)))
                (if (gx#free-identifier=?
                     |gerbil/core/contract~Using[1]#_g80070_|
                     _%hd4883749346%_)
                    (if (gx#stx-pair? _%tl4883649349%_)
                        (let ((_%e4886849230%_ (gx#syntax-e _%tl4883649349%_)))
                          (let ((_%tl4886649237%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4886849230%_)))
                                (_%hd4886749234%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4886849230%_))))
                            (if (gx#stx-null? _%tl4886649237%_)
                                (if (gx#stx-pair/null? _%tl4883049329%_)
                                    (let ((_%__splice7536575366%_
                                           (gx#syntax-split-splice
                                            _%tl4883049329%_
                                            '0)))
                                      (let ((_%tl4887149243%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7536575366%_
                                                '1)))
                                            (_%target4886949240%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice7536575366%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4887149243%_)
                                            (_%__match7546375464%_
                                             _%e4882949312%_
                                             _%hd4882849316%_
                                             _%tl4882749319%_
                                             _%e4883249322%_
                                             _%hd4883149326%_
                                             _%tl4883049329%_
                                             _%e4883549332%_
                                             _%hd4883449336%_
                                             _%tl4883349339%_
                                             _%e4883849342%_
                                             _%hd4883749346%_
                                             _%tl4883649349%_
                                             _%e4886849230%_
                                             _%hd4886749234%_
                                             _%tl4886649237%_
                                             _%__splice7536575366%_
                                             _%target4886949240%_
                                             _%tl4887149243%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4882248937%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4882248937%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g4882248937%_)))))
                        (let () (declare (not safe)) (_%g4882248937%_)))
                    (if (gx#free-identifier=?
                         |gerbil/core/contract~Using[1]#_g80071_|
                         _%hd4883749346%_)
                        (if (gx#stx-pair? _%tl4883649349%_)
                            (let ((_%e4889549108%_
                                   (gx#syntax-e _%tl4883649349%_)))
                              (let ((_%tl4889349115%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4889549108%_)))
                                    (_%hd4889449112%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4889549108%_))))
                                (if (gx#stx-null? _%tl4889349115%_)
                                    (if (gx#stx-pair/null? _%tl4883049329%_)
                                        (let ((_%__splice7536975370%_
                                               (gx#syntax-split-splice
                                                _%tl4883049329%_
                                                '0)))
                                          (let ((_%tl4889849121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7536975370%_
                                                    '1)))
                                                (_%target4889649118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice7536975370%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4889849121%_)
                                                (_%__match7550775508%_
                                                 _%e4882949312%_
                                                 _%hd4882849316%_
                                                 _%tl4882749319%_
                                                 _%e4883249322%_
                                                 _%hd4883149326%_
                                                 _%tl4883049329%_
                                                 _%e4883549332%_
                                                 _%hd4883449336%_
                                                 _%tl4883349339%_
                                                 _%e4883849342%_
                                                 _%hd4883749346%_
                                                 _%tl4883649349%_
                                                 _%e4889549108%_
                                                 _%hd4889449112%_
                                                 _%tl4889349115%_
                                                 _%__splice7536975370%_
                                                 _%target4889649118%_
                                                 _%tl4889849121%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4882248937%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4882248937%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4882248937%_)))))
                            (let () (declare (not safe)) (_%g4882248937%_)))
                        (if (gx#free-identifier=?
                             |gerbil/core/contract~Using[1]#_g80072_|
                             _%hd4883749346%_)
                            (if (gx#stx-pair? _%tl4883649349%_)
                                (let ((_%e4892248984%_
                                       (gx#syntax-e _%tl4883649349%_)))
                                  (let ((_%tl4892048991%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4892248984%_)))
                                        (_%hd4892148988%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4892248984%_))))
                                    (if (gx#stx-null? _%tl4892048991%_)
                                        (if (gx#stx-pair/null?
                                             _%tl4883049329%_)
                                            (let ((_%__splice7537375374%_
                                                   (gx#syntax-split-splice
                                                    _%tl4883049329%_
                                                    '0)))
                                              (let ((_%tl4892548997%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7537375374%_
                                                        '1)))
                                                    (_%target4892348994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice7537375374%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4892548997%_)
                                                    (_%__match7555175552%_
                                                     _%e4882949312%_
                                                     _%hd4882849316%_
                                                     _%tl4882749319%_
                                                     _%e4883249322%_
                                                     _%hd4883149326%_
                                                     _%tl4883049329%_
                                                     _%e4883549332%_
                                                     _%hd4883449336%_
                                                     _%tl4883349339%_
                                                     _%e4883849342%_
                                                     _%hd4883749346%_
                                                     _%tl4883649349%_
                                                     _%e4892248984%_
                                                     _%hd4892148988%_
                                                     _%tl4892048991%_
                                                     _%__splice7537375374%_
                                                     _%target4892348994%_
                                                     _%tl4892548997%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4882248937%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4882248937%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4882248937%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4882248937%_)))
                            (let () (declare (not safe)) (_%g4882248937%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4882248937%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4882248937%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4882248937%_)))))
                            (let () (declare (not safe)) (_%g4882248937%_)))))
                    (let () (declare (not safe)) (_%g4882248937%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx49852%_)
        (let* ((_%__stx7555475555%_ _%stx49852%_)
               (_%g4985749917%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7555475555%_))))
          (let ((_%__kont7555775558%_
                 (lambda (_%L50494%_ _%L50496%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L50496%_ '()))
                               (foldr (lambda (_%g5051250515%_ _%g5051350518%_)
                                        (cons _%g5051250515%_ _%g5051350518%_))
                                      '()
                                      _%L50494%_)))))
                (_%__kont7556175562%_
                 (lambda (_%L50065%_ _%L50067%_)
                   (if (let ()
                         (declare (not safe))
                         (|gerbil/core/contract~Using[1]#dotted-identifier?|
                          _%L50067%_))
                       (let* ((_%g5008750094%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                  _%stx49852%_
                                  _%L50067%_)))
                              (_%E5008950100%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5008750094%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5009050413%_
                               (lambda (_%parts50104%_ _%var50106%_)
                                 (let ((_%$e50108%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50106%_))))
                                   (if _%$e50108%_
                                       ((lambda (_%te50112%_)
                                          (let _%loop50115%_ ((_%parts50118%_
                                                               _%parts50104%_)
                                                              (_%type50120%_
                                                               (##direct-structure-ref
                                                                _%te50112%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50121%_
                                                               _%var50106%_)
                                                              (_%nil-check?50122%_
                                                               '#f))
                                            (let* ((_%parts5012350131%_
                                                    _%parts50118%_)
                                                   (_%else5012550192%_
                                                    (lambda ()
                                                      (let* ((_%g5014350151%_
                                                              (lambda (_%g5014450147%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5014450147%_)))
                     (_%g5014250188%_
                      (lambda (_%g5014450155%_)
                        ((lambda (_%L50158%_)
                           (let ()
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons _%L50158%_
                                         (foldr (lambda (_%g5017950182%_
                                                         _%g5018050185%_)
                                                  (cons _%g5017950182%_
                                                        _%g5018050185%_))
                                                '()
                                                _%L50065%_)))))
                         _%g5014450155%_))))
                (_%g5014250188%_ _%object50121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5012750387%_
                                                    (lambda (_%rest50196%_
                                                             _%part50198%_)
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (not _%nil-check?50122%_))
                       (let ((__tmp80073 (symbol->string _%part50198%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp80073)))
                  (let ()
                    (let ((_%str50202%_ (symbol->string _%part50198%_)))
                      (_%loop50115%_
                       (cons (let ((__tmp80074
                                    (substring
                                     _%str50202%_
                                     '1
                                     (string-length _%str50202%_))))
                               (declare (not safe))
                               (##string->symbol __tmp80074))
                             _%rest50196%_)
                       _%type50120%_
                       _%object50121%_
                       '#t)))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50120%_))
                      (let ()
                        (let* ((_%g5020750222%_
                                (lambda (_%g5020850218%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5020850218%_)))
                               (_%g5020650299%_
                                (lambda (_%g5020850226%_)
                                  (if (gx#stx-pair? _%g5020850226%_)
                                      (let ((_%e5021350229%_
                                             (gx#syntax-e _%g5020850226%_)))
                                        (let ((_%hd5021250233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5021350229%_)))
                                              (_%tl5021150236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5021350229%_))))
                                          (if (gx#stx-pair? _%tl5021150236%_)
                                              (let ((_%e5021650239%_
                                                     (gx#syntax-e
                                                      _%tl5021150236%_)))
                                                (let ((_%hd5021550243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5021650239%_)))
                                                      (_%tl5021450246%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5021650239%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5021450246%_)
                                                      ((lambda (_%L50249%_
                                                                _%L50251%_)
                                                         (let ()
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (null? _%rest50196%_))
                       (let ()
                         (if _%nil-check?50122%_
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons (cons _%L50249%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'check-nil!)
                                                           (cons _%L50251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (foldr (lambda (_%g5027050273%_
                                                         _%g5027150276%_)
                                                  (cons _%g5027050273%_
                                                        _%g5027150276%_))
                                                '()
                                                _%L50065%_)))
                             (cons (gx#datum->syntax '#f '%%app)
                                   (cons (cons _%L50249%_
                                               (cons _%L50251%_ '()))
                                         (foldr (lambda (_%g5027850281%_
                                                         _%g5027950284%_)
                                                  (cons _%g5027850281%_
                                                        _%g5027950284%_))
                                                '()
                                                _%L50065%_)))))
                       (let ((_%$e50287%_
                              (let ()
                                (declare (not safe))
                                (gerbil/core/mop~MOP-2#!class-slot-type
                                 _%type50120%_
                                 _%part50198%_))))
                         (if _%$e50287%_
                             ((lambda (_%type50291%_)
                                (let ((_%type50294%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx49852%_
                                          _%type50291%_))))
                                  (if _%nil-check?50122%_
                                      (_%loop50115%_
                                       _%rest50196%_
                                       _%type50294%_
                                       (cons _%L50249%_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'check-nil!)
                                                         (cons _%L50251%_ '()))
                                                   '()))
                                       '#f)
                                      (_%loop50115%_
                                       _%rest50196%_
                                       _%type50294%_
                                       (cons _%L50249%_ (cons _%L50251%_ '()))
                                       '#f))))
                              _%$e50287%_)
                             (let ()
                               (gx#raise-syntax-error
                                '#f
                                '"unresolved dotted reference; unknown type for slot"
                                _%stx49852%_
                                _%L50067%_
                                _%part50198%_)))))))
               _%hd5021550243%_
               _%hd5021250233%_)
              (_%g5020750222%_ _%g5020850226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5020750222%_
                                               _%g5020850226%_))))
                                      (_%g5020750222%_ _%g5020850226%_)))))
                          (_%g5020650299%_
                           (list _%object50121%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                    _%stx49852%_
                                    _%type50120%_
                                    _%part50198%_))))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50120%_))
                          (let ()
                            (if (let ()
                                  (declare (not safe))
                                  (null? _%rest50196%_))
                                (let* ((_%g5030550320%_
                                        (lambda (_%g5030650316%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g5030650316%_)))
                                       (_%g5030450381%_
                                        (lambda (_%g5030650324%_)
                                          (if (gx#stx-pair? _%g5030650324%_)
                                              (let ((_%e5031150327%_
                                                     (gx#syntax-e
                                                      _%g5030650324%_)))
                                                (let ((_%hd5031050331%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5031150327%_)))
                                                      (_%tl5030950334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5031150327%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5030950334%_)
                                                      (let ((_%e5031450337%_
                                                             (gx#syntax-e
                                                              _%tl5030950334%_)))
                                                        (let ((_%hd5031350341%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e5031450337%_)))
                      (_%tl5031250344%_
                       (let () (declare (not safe)) (##cdr _%e5031450337%_))))
                  (if (gx#stx-null? _%tl5031250344%_)
                      ((lambda (_%L50347%_ _%L50349%_)
                         (let ()
                           (if _%nil-check?50122%_
                               (cons (gx#datum->syntax '#f '%%app)
                                     (cons (cons (gx#datum->syntax '#f '%%ref)
                                                 (cons _%L50347%_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'check-nil!)
                                                       (cons _%L50349%_ '()))
                                                 (foldr (lambda (_%g5036450367%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5036550370%_)
                  (cons _%g5036450367%_ _%g5036550370%_))
                '()
                _%L50065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons (gx#datum->syntax '#f '%%app)
                                     (cons (cons (gx#datum->syntax '#f '%%ref)
                                                 (cons _%L50347%_ '()))
                                           (cons _%L50349%_
                                                 (foldr (lambda (_%g5037250375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5037350378%_)
                  (cons _%g5037250375%_ _%g5037350378%_))
                '()
                _%L50065%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _%hd5031350341%_
                       _%hd5031050331%_)
                      (_%g5030550320%_ _%g5030650324%_))))
              (_%g5030550320%_ _%g5030650324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5030550320%_
                                               _%g5030650324%_)))))
                                  (_%g5030450381%_
                                   (list _%object50121%_
                                         (gx#syntax-local-introduce
                                          (make-symbol
                                           (if (##direct-structure-ref
                                                _%te50112%_
                                                '3
                                                gerbil/core/contract~TypeEnv#type-env::t
                                                '#f)
                                               '"&"
                                               '"")
                                           (let ((__obj79895 _%type50120%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-direct-instance-of?
                                                    __obj79895
                                                    'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    __obj79895
                                                    '1
                                                    '#f
                                                    '#f))
                                                 (class-slot-ref
                                                  gerbil/core/contract~InterfaceInfo#interface-info::t
                                                  __obj79895
                                                  'name)))
                                           '"-"
                                           _%part50198%_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"illegal dotted reference; interface has no slots"
                                 _%stx49852%_
                                 _%L50067%_
                                 _%part50198%_)))
                          (let ()
                            (gx#raise-syntax-error
                             '#f
                             '"unexpected type"
                             _%stx49852%_
                             _%type50120%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%parts5012350131%_))
                                                  (let ((_%hd5012850391%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5012350131%_)))
                                                        (_%tl5012950394%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5012350131%_))))
                                                    (let* ((_%part50397%_
                                                            _%hd5012850391%_)
                                                           (_%rest50400%_
                                                            _%tl5012950394%_))
                                                      (_%K5012750387%_
                                                       _%rest50400%_
                                                       _%part50397%_)))
                                                  (_%else5012550192%_)))))
                                        _%$e50108%_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f '%%app)
                                               (cons _%L50067%_
                                                     (foldr (lambda (_%g5040450407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5040550410%_)
                      (cons _%g5040450407%_ _%g5040550410%_))
                    '()
                    _%L50065%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g5008750094%_))
                             (let ((_%hd5009150417%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5008750094%_)))
                                   (_%tl5009250420%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5008750094%_))))
                               (let* ((_%var50423%_ _%hd5009150417%_)
                                      (_%parts50426%_ _%tl5009250420%_))
                                 (_%K5009050413%_
                                  _%parts50426%_
                                  _%var50423%_)))
                             (_%E5008950100%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50067%_
                                   (foldr (lambda (_%g5042850431%_
                                                   _%g5042950434%_)
                                            (cons _%g5042850431%_
                                                  _%g5042950434%_))
                                          '()
                                          _%L50065%_))))))
                (_%__kont7556575566%_
                 (lambda (_%L49964%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g4997949982%_ _%g4998049985%_)
                                  (cons _%g4997949982%_ _%g4998049985%_))
                                '()
                                _%L49964%_)))))
            (let* ((_%__match7564175642%_
                    (lambda (_%e4990249924%_
                             _%hd4990149928%_
                             _%tl4990049931%_
                             _%__splice7556775568%_
                             _%target4990349934%_
                             _%tl4990549937%_)
                      (letrec ((_%loop4990649940%_
                                (lambda (_%hd4990449944%_ _%arg4991049947%_)
                                  (if (gx#stx-pair? _%hd4990449944%_)
                                      (let ((_%e4990749950%_
                                             (gx#syntax-e _%hd4990449944%_)))
                                        (let ((_%lp-tl4990949957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4990749950%_)))
                                              (_%lp-hd4990849954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4990749950%_))))
                                          (_%loop4990649940%_
                                           _%lp-tl4990949957%_
                                           (cons _%lp-hd4990849954%_
                                                 _%arg4991049947%_))))
                                      (let ((_%arg4991149960%_
                                             (reverse _%arg4991049947%_)))
                                        (_%__kont7556575566%_
                                         _%arg4991149960%_))))))
                        (_%loop4990649940%_ _%target4990349934%_ '()))))
                   (_%__match7562775628%_
                    (lambda (_%e4988049995%_
                             _%hd4987949999%_
                             _%tl4987850002%_
                             _%e4988350005%_
                             _%hd4988250009%_
                             _%tl4988150012%_
                             _%e4988650015%_
                             _%hd4988550019%_
                             _%tl4988450022%_
                             _%e4988950025%_
                             _%hd4988850029%_
                             _%tl4988750032%_
                             _%__splice7556375564%_
                             _%target4989050035%_
                             _%tl4989250038%_)
                      (letrec ((_%loop4989350041%_
                                (lambda (_%hd4989150045%_ _%rand4989750048%_)
                                  (if (gx#stx-pair? _%hd4989150045%_)
                                      (let ((_%e4989450051%_
                                             (gx#syntax-e _%hd4989150045%_)))
                                        (let ((_%lp-tl4989650058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4989450051%_)))
                                              (_%lp-hd4989550055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4989450051%_))))
                                          (_%loop4989350041%_
                                           _%lp-tl4989650058%_
                                           (cons _%lp-hd4989550055%_
                                                 _%rand4989750048%_))))
                                      (let ((_%rand4989850061%_
                                             (reverse _%rand4989750048%_)))
                                        (_%__kont7556175562%_
                                         _%rand4989850061%_
                                         _%hd4988850029%_))))))
                        (_%loop4989350041%_ _%target4989050035%_ '()))))
                   (_%__match7560175602%_
                    (lambda (_%e4988049995%_
                             _%hd4987949999%_
                             _%tl4987850002%_
                             _%e4988350005%_
                             _%hd4988250009%_
                             _%tl4988150012%_)
                      (if (gx#stx-pair? _%hd4988250009%_)
                          (let ((_%e4988650015%_
                                 (gx#syntax-e _%hd4988250009%_)))
                            (let ((_%tl4988450022%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4988650015%_)))
                                  (_%hd4988550019%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4988650015%_))))
                              (if (gx#identifier? _%hd4988550019%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g80075_|
                                       _%hd4988550019%_)
                                      (if (gx#stx-pair? _%tl4988450022%_)
                                          (let ((_%e4988950025%_
                                                 (gx#syntax-e
                                                  _%tl4988450022%_)))
                                            (let ((_%tl4988750032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4988950025%_)))
                                                  (_%hd4988850029%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4988950025%_))))
                                              (if (gx#stx-null?
                                                   _%tl4988750032%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4988150012%_)
                                                      (let ((_%__splice7556375564%_
                                                             (gx#syntax-split-splice
                                                              _%tl4988150012%_
                                                              '0)))
                                                        (let ((_%tl4989250038%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7556375564%_ '1)))
                      (_%target4989050035%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7556375564%_ '0))))
                  (if (gx#stx-null? _%tl4989250038%_)
                      (_%__match7562775628%_
                       _%e4988049995%_
                       _%hd4987949999%_
                       _%tl4987850002%_
                       _%e4988350005%_
                       _%hd4988250009%_
                       _%tl4988150012%_
                       _%e4988650015%_
                       _%hd4988550019%_
                       _%tl4988450022%_
                       _%e4988950025%_
                       _%hd4988850029%_
                       _%tl4988750032%_
                       _%__splice7556375564%_
                       _%target4989050035%_
                       _%tl4989250038%_)
                      (if (gx#stx-pair/null? _%tl4987850002%_)
                          (let ((_%__splice7556775568%_
                                 (gx#syntax-split-splice _%tl4987850002%_ '0)))
                            (let ((_%tl4990549937%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7556775568%_ '1)))
                                  (_%target4990349934%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7556775568%_
                                      '0))))
                              (if (gx#stx-null? _%tl4990549937%_)
                                  (_%__match7564175642%_
                                   _%e4988049995%_
                                   _%hd4987949999%_
                                   _%tl4987850002%_
                                   _%__splice7556775568%_
                                   _%target4990349934%_
                                   _%tl4990549937%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4985749917%_)))))
                          (let () (declare (not safe)) (_%g4985749917%_))))))
              (if (gx#stx-pair/null? _%tl4987850002%_)
                  (let ((_%__splice7556775568%_
                         (gx#syntax-split-splice _%tl4987850002%_ '0)))
                    (let ((_%tl4990549937%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7556775568%_ '1)))
                          (_%target4990349934%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7556775568%_ '0))))
                      (if (gx#stx-null? _%tl4990549937%_)
                          (_%__match7564175642%_
                           _%e4988049995%_
                           _%hd4987949999%_
                           _%tl4987850002%_
                           _%__splice7556775568%_
                           _%target4990349934%_
                           _%tl4990549937%_)
                          (let () (declare (not safe)) (_%g4985749917%_)))))
                  (let () (declare (not safe)) (_%g4985749917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4987850002%_)
                                                      (let ((_%__splice7556775568%_
                                                             (gx#syntax-split-splice
                                                              _%tl4987850002%_
                                                              '0)))
                                                        (let ((_%tl4990549937%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7556775568%_ '1)))
                      (_%target4990349934%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7556775568%_ '0))))
                  (if (gx#stx-null? _%tl4990549937%_)
                      (_%__match7564175642%_
                       _%e4988049995%_
                       _%hd4987949999%_
                       _%tl4987850002%_
                       _%__splice7556775568%_
                       _%target4990349934%_
                       _%tl4990549937%_)
                      (let () (declare (not safe)) (_%g4985749917%_)))))
              (let () (declare (not safe)) (_%g4985749917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4987850002%_)
                                              (let ((_%__splice7556775568%_
                                                     (gx#syntax-split-splice
                                                      _%tl4987850002%_
                                                      '0)))
                                                (let ((_%tl4990549937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7556775568%_
                                                          '1)))
                                                      (_%target4990349934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7556775568%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4990549937%_)
                                                      (_%__match7564175642%_
                                                       _%e4988049995%_
                                                       _%hd4987949999%_
                                                       _%tl4987850002%_
                                                       _%__splice7556775568%_
                                                       _%target4990349934%_
                                                       _%tl4990549937%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4985749917%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4985749917%_))))
                                      (if (gx#stx-pair/null? _%tl4987850002%_)
                                          (let ((_%__splice7556775568%_
                                                 (gx#syntax-split-splice
                                                  _%tl4987850002%_
                                                  '0)))
                                            (let ((_%tl4990549937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7556775568%_
                                                      '1)))
                                                  (_%target4990349934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7556775568%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4990549937%_)
                                                  (_%__match7564175642%_
                                                   _%e4988049995%_
                                                   _%hd4987949999%_
                                                   _%tl4987850002%_
                                                   _%__splice7556775568%_
                                                   _%target4990349934%_
                                                   _%tl4990549937%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4985749917%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4985749917%_))))
                                  (if (gx#stx-pair/null? _%tl4987850002%_)
                                      (let ((_%__splice7556775568%_
                                             (gx#syntax-split-splice
                                              _%tl4987850002%_
                                              '0)))
                                        (let ((_%tl4990549937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7556775568%_
                                                  '1)))
                                              (_%target4990349934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7556775568%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4990549937%_)
                                              (_%__match7564175642%_
                                               _%e4988049995%_
                                               _%hd4987949999%_
                                               _%tl4987850002%_
                                               _%__splice7556775568%_
                                               _%target4990349934%_
                                               _%tl4990549937%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4985749917%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4985749917%_))))))
                          (if (gx#stx-pair/null? _%tl4987850002%_)
                              (let ((_%__splice7556775568%_
                                     (gx#syntax-split-splice
                                      _%tl4987850002%_
                                      '0)))
                                (let ((_%tl4990549937%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7556775568%_
                                          '1)))
                                      (_%target4990349934%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7556775568%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4990549937%_)
                                      (_%__match7564175642%_
                                       _%e4988049995%_
                                       _%hd4987949999%_
                                       _%tl4987850002%_
                                       _%__splice7556775568%_
                                       _%target4990349934%_
                                       _%tl4990549937%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4985749917%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4985749917%_))))))
                   (_%__match7558975590%_
                    (lambda (_%e4986350444%_
                             _%hd4986250448%_
                             _%tl4986150451%_
                             _%e4986650454%_
                             _%hd4986550458%_
                             _%tl4986450461%_
                             _%__splice7555975560%_
                             _%target4986750464%_
                             _%tl4986950467%_)
                      (letrec ((_%loop4987050470%_
                                (lambda (_%hd4986850474%_ _%rand4987450477%_)
                                  (if (gx#stx-pair? _%hd4986850474%_)
                                      (let ((_%e4987150480%_
                                             (gx#syntax-e _%hd4986850474%_)))
                                        (let ((_%lp-tl4987350487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4987150480%_)))
                                              (_%lp-hd4987250484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4987150480%_))))
                                          (_%loop4987050470%_
                                           _%lp-tl4987350487%_
                                           (cons _%lp-hd4987250484%_
                                                 _%rand4987450477%_))))
                                      (let ((_%rand4987550490%_
                                             (reverse _%rand4987450477%_)))
                                        (let ((_%L50494%_ _%rand4987550490%_)
                                              (_%L50496%_ _%hd4986550458%_))
                                          (if (gx#identifier? _%L50496%_)
                                              (_%__kont7555775558%_
                                               _%L50494%_
                                               _%L50496%_)
                                              (_%__match7560175602%_
                                               _%e4986350444%_
                                               _%hd4986250448%_
                                               _%tl4986150451%_
                                               _%e4986650454%_
                                               _%hd4986550458%_
                                               _%tl4986450461%_))))))))
                        (_%loop4987050470%_ _%target4986750464%_ '())))))
              (if (gx#stx-pair? _%__stx7555475555%_)
                  (let ((_%e4986350444%_ (gx#syntax-e _%__stx7555475555%_)))
                    (let ((_%tl4986150451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4986350444%_)))
                          (_%hd4986250448%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4986350444%_))))
                      (if (gx#stx-pair? _%tl4986150451%_)
                          (let ((_%e4986650454%_
                                 (gx#syntax-e _%tl4986150451%_)))
                            (let ((_%tl4986450461%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4986650454%_)))
                                  (_%hd4986550458%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4986650454%_))))
                              (if (gx#stx-pair/null? _%tl4986450461%_)
                                  (let ((_%__splice7555975560%_
                                         (gx#syntax-split-splice
                                          _%tl4986450461%_
                                          '0)))
                                    (let ((_%tl4986950467%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7555975560%_
                                              '1)))
                                          (_%target4986750464%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7555975560%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4986950467%_)
                                          (_%__match7558975590%_
                                           _%e4986350444%_
                                           _%hd4986250448%_
                                           _%tl4986150451%_
                                           _%e4986650454%_
                                           _%hd4986550458%_
                                           _%tl4986450461%_
                                           _%__splice7555975560%_
                                           _%target4986750464%_
                                           _%tl4986950467%_)
                                          (if (gx#stx-pair? _%hd4986550458%_)
                                              (let ((_%e4988650015%_
                                                     (gx#syntax-e
                                                      _%hd4986550458%_)))
                                                (let ((_%tl4988450022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4988650015%_)))
                                                      (_%hd4988550019%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4988650015%_))))
                                                  (if (gx#identifier?
                                                       _%hd4988550019%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g80075_|
                                                           _%hd4988550019%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4988450022%_)
                                                              (let ((_%e4988950025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4988450022%_)))
                        (let ((_%tl4988750032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4988950025%_)))
                              (_%hd4988850029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4988950025%_))))
                          (if (gx#stx-pair/null? _%tl4986150451%_)
                              (let ((_%__splice7556775568%_
                                     (gx#syntax-split-splice
                                      _%tl4986150451%_
                                      '0)))
                                (let ((_%tl4990549937%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7556775568%_
                                          '1)))
                                      (_%target4990349934%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7556775568%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4990549937%_)
                                      (_%__match7564175642%_
                                       _%e4986350444%_
                                       _%hd4986250448%_
                                       _%tl4986150451%_
                                       _%__splice7556775568%_
                                       _%target4990349934%_
                                       _%tl4990549937%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4985749917%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4985749917%_)))))
                      (if (gx#stx-pair/null? _%tl4986150451%_)
                          (let ((_%__splice7556775568%_
                                 (gx#syntax-split-splice _%tl4986150451%_ '0)))
                            (let ((_%tl4990549937%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7556775568%_ '1)))
                                  (_%target4990349934%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7556775568%_
                                      '0))))
                              (if (gx#stx-null? _%tl4990549937%_)
                                  (_%__match7564175642%_
                                   _%e4986350444%_
                                   _%hd4986250448%_
                                   _%tl4986150451%_
                                   _%__splice7556775568%_
                                   _%target4990349934%_
                                   _%tl4990549937%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4985749917%_)))))
                          (let () (declare (not safe)) (_%g4985749917%_))))
                  (if (gx#stx-pair/null? _%tl4986150451%_)
                      (let ((_%__splice7556775568%_
                             (gx#syntax-split-splice _%tl4986150451%_ '0)))
                        (let ((_%tl4990549937%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7556775568%_ '1)))
                              (_%target4990349934%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7556775568%_ '0))))
                          (if (gx#stx-null? _%tl4990549937%_)
                              (_%__match7564175642%_
                               _%e4986350444%_
                               _%hd4986250448%_
                               _%tl4986150451%_
                               _%__splice7556775568%_
                               _%target4990349934%_
                               _%tl4990549937%_)
                              (let ()
                                (declare (not safe))
                                (_%g4985749917%_)))))
                      (let () (declare (not safe)) (_%g4985749917%_))))
              (if (gx#stx-pair/null? _%tl4986150451%_)
                  (let ((_%__splice7556775568%_
                         (gx#syntax-split-splice _%tl4986150451%_ '0)))
                    (let ((_%tl4990549937%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7556775568%_ '1)))
                          (_%target4990349934%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7556775568%_ '0))))
                      (if (gx#stx-null? _%tl4990549937%_)
                          (_%__match7564175642%_
                           _%e4986350444%_
                           _%hd4986250448%_
                           _%tl4986150451%_
                           _%__splice7556775568%_
                           _%target4990349934%_
                           _%tl4990549937%_)
                          (let () (declare (not safe)) (_%g4985749917%_)))))
                  (let () (declare (not safe)) (_%g4985749917%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4986150451%_)
                                                  (let ((_%__splice7556775568%_
                                                         (gx#syntax-split-splice
                                                          _%tl4986150451%_
                                                          '0)))
                                                    (let ((_%tl4990549937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7556775568%_
                                                              '1)))
                                                          (_%target4990349934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7556775568%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4990549937%_)
                                                          (_%__match7564175642%_
                                                           _%e4986350444%_
                                                           _%hd4986250448%_
                                                           _%tl4986150451%_
                                                           _%__splice7556775568%_
                                                           _%target4990349934%_
                                                           _%tl4990549937%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4985749917%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4985749917%_)))))))
                                  (if (gx#stx-pair? _%hd4986550458%_)
                                      (let ((_%e4988650015%_
                                             (gx#syntax-e _%hd4986550458%_)))
                                        (let ((_%tl4988450022%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4988650015%_)))
                                              (_%hd4988550019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4988650015%_))))
                                          (if (gx#identifier? _%hd4988550019%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g80075_|
                                                   _%hd4988550019%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4988450022%_)
                                                      (let ((_%e4988950025%_
                                                             (gx#syntax-e
                                                              _%tl4988450022%_)))
                                                        (let ((_%tl4988750032%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4988950025%_)))
                      (_%hd4988850029%_
                       (let () (declare (not safe)) (##car _%e4988950025%_))))
                  (if (gx#stx-pair/null? _%tl4986150451%_)
                      (let ((_%__splice7556775568%_
                             (gx#syntax-split-splice _%tl4986150451%_ '0)))
                        (let ((_%tl4990549937%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7556775568%_ '1)))
                              (_%target4990349934%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7556775568%_ '0))))
                          (if (gx#stx-null? _%tl4990549937%_)
                              (_%__match7564175642%_
                               _%e4986350444%_
                               _%hd4986250448%_
                               _%tl4986150451%_
                               _%__splice7556775568%_
                               _%target4990349934%_
                               _%tl4990549937%_)
                              (let ()
                                (declare (not safe))
                                (_%g4985749917%_)))))
                      (let () (declare (not safe)) (_%g4985749917%_)))))
              (if (gx#stx-pair/null? _%tl4986150451%_)
                  (let ((_%__splice7556775568%_
                         (gx#syntax-split-splice _%tl4986150451%_ '0)))
                    (let ((_%tl4990549937%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7556775568%_ '1)))
                          (_%target4990349934%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7556775568%_ '0))))
                      (if (gx#stx-null? _%tl4990549937%_)
                          (_%__match7564175642%_
                           _%e4986350444%_
                           _%hd4986250448%_
                           _%tl4986150451%_
                           _%__splice7556775568%_
                           _%target4990349934%_
                           _%tl4990549937%_)
                          (let () (declare (not safe)) (_%g4985749917%_)))))
                  (let () (declare (not safe)) (_%g4985749917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4986150451%_)
                                                      (let ((_%__splice7556775568%_
                                                             (gx#syntax-split-splice
                                                              _%tl4986150451%_
                                                              '0)))
                                                        (let ((_%tl4990549937%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7556775568%_ '1)))
                      (_%target4990349934%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7556775568%_ '0))))
                  (if (gx#stx-null? _%tl4990549937%_)
                      (_%__match7564175642%_
                       _%e4986350444%_
                       _%hd4986250448%_
                       _%tl4986150451%_
                       _%__splice7556775568%_
                       _%target4990349934%_
                       _%tl4990549937%_)
                      (let () (declare (not safe)) (_%g4985749917%_)))))
              (let () (declare (not safe)) (_%g4985749917%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl4986150451%_)
                                                  (let ((_%__splice7556775568%_
                                                         (gx#syntax-split-splice
                                                          _%tl4986150451%_
                                                          '0)))
                                                    (let ((_%tl4990549937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7556775568%_
                                                              '1)))
                                                          (_%target4990349934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7556775568%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4990549937%_)
                                                          (_%__match7564175642%_
                                                           _%e4986350444%_
                                                           _%hd4986250448%_
                                                           _%tl4986150451%_
                                                           _%__splice7556775568%_
                                                           _%target4990349934%_
                                                           _%tl4990549937%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4985749917%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4985749917%_))))))
                                      (if (gx#stx-pair/null? _%tl4986150451%_)
                                          (let ((_%__splice7556775568%_
                                                 (gx#syntax-split-splice
                                                  _%tl4986150451%_
                                                  '0)))
                                            (let ((_%tl4990549937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7556775568%_
                                                      '1)))
                                                  (_%target4990349934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7556775568%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4990549937%_)
                                                  (_%__match7564175642%_
                                                   _%e4986350444%_
                                                   _%hd4986250448%_
                                                   _%tl4986150451%_
                                                   _%__splice7556775568%_
                                                   _%target4990349934%_
                                                   _%tl4990549937%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4985749917%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4985749917%_)))))))
                          (if (gx#stx-pair/null? _%tl4986150451%_)
                              (let ((_%__splice7556775568%_
                                     (gx#syntax-split-splice
                                      _%tl4986150451%_
                                      '0)))
                                (let ((_%tl4990549937%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7556775568%_
                                          '1)))
                                      (_%target4990349934%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7556775568%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4990549937%_)
                                      (_%__match7564175642%_
                                       _%e4986350444%_
                                       _%hd4986250448%_
                                       _%tl4986150451%_
                                       _%__splice7556775568%_
                                       _%target4990349934%_
                                       _%tl4990549937%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4985749917%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4985749917%_))))))
                  (let () (declare (not safe)) (_%g4985749917%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx50528%_)
        (let* ((_%__stx7564475645%_ _%stx50528%_)
               (_%g5053250553%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7564475645%_))))
          (let ((_%__kont7564775648%_
                 (lambda (_%L50621%_)
                   (let* ((_%g5063350640%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50528%_
                              _%L50621%_)))
                          (_%E5063550646%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5063350640%_
                                    '([var . parts]))
                             (void)))
                          (_%K5063650862%_
                           (lambda (_%parts50650%_ _%var50652%_)
                             (let ((_%$e50654%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var50652%_))))
                               (if _%$e50654%_
                                   ((lambda (_%te50658%_)
                                      (let _%loop50661%_ ((_%parts50664%_
                                                           _%parts50650%_)
                                                          (_%type50666%_
                                                           (##direct-structure-ref
                                                            _%te50658%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object50667%_
                                                           _%var50652%_)
                                                          (_%nil-check?50668%_
                                                           '#f))
                                        (let* ((_%parts5066950677%_
                                                _%parts50664%_)
                                               (_%else5067150689%_
                                                (lambda () _%object50667%_))
                                               (_%K5067350844%_
                                                (lambda (_%rest50693%_
                                                         _%part50695%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?50668%_))
                                                           (let ((__tmp80076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part50695%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80076)))
              (let ()
                (let ((_%str50699%_ (symbol->string _%part50695%_)))
                  (_%loop50661%_
                   (cons (let ((__tmp80077
                                (substring
                                 _%str50699%_
                                 '1
                                 (string-length _%str50699%_))))
                           (declare (not safe))
                           (##string->symbol __tmp80077))
                         _%rest50693%_)
                   _%type50666%_
                   _%object50667%_
                   '#t)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type50666%_))
                  (let ()
                    (let* ((_%g5070450719%_
                            (lambda (_%g5070550715%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5070550715%_)))
                           (_%g5070350836%_
                            (lambda (_%g5070550723%_)
                              (if (gx#stx-pair? _%g5070550723%_)
                                  (let ((_%e5071050726%_
                                         (gx#syntax-e _%g5070550723%_)))
                                    (let ((_%hd5070950730%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5071050726%_)))
                                          (_%tl5070850733%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5071050726%_))))
                                      (if (gx#stx-pair? _%tl5070850733%_)
                                          (let ((_%e5071350736%_
                                                 (gx#syntax-e
                                                  _%tl5070850733%_)))
                                            (let ((_%hd5071250740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5071350736%_)))
                                                  (_%tl5071150743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5071350736%_))))
                                              (if (gx#stx-null?
                                                   _%tl5071150743%_)
                                                  ((lambda (_%L50746%_
                                                            _%L50748%_)
                                                     (let ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _%rest50693%_))
                                                           (let ()
                                                             (let ((_%$e50778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gerbil/core/mop~MOP-2#!class-slot-type
                               _%type50666%_
                               _%part50695%_))))
                       (if _%$e50778%_
                           ((lambda (_%slot-type50782%_)
                              (let* ((_%g5078550793%_
                                      (lambda (_%g5078650789%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5078650789%_)))
                                     (_%g5078450816%_
                                      (lambda (_%g5078650797%_)
                                        ((lambda (_%L50800%_)
                                           (let ()
                                             (if _%nil-check?50668%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@type)
                           (cons _%L50800%_ '()))
                     (cons (cons _%L50746%_
                                 (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                             (cons _%L50748%_ '()))
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
                           (cons _%L50800%_ '()))
                     (cons (cons _%L50746%_ (cons _%L50748%_ '())) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g5078650797%_))))
                                (_%g5078450816%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                    _%stx50528%_
                                    _%type50666%_)))))
                            _%$e50778%_)
                           (if _%nil-check?50668%_
                               (let ()
                                 (cons _%L50746%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L50748%_ '()))
                                             '())))
                               (let ()
                                 (cons _%L50746%_ (cons _%L50748%_ '())))))))
                   (let ((_%$e50824%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/mop~MOP-2#!class-slot-type
                             _%type50666%_
                             _%part50695%_))))
                     (if _%$e50824%_
                         ((lambda (_%type50828%_)
                            (let ((_%type50831%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50528%_
                                      _%type50828%_))))
                              (if _%nil-check?50668%_
                                  (_%loop50661%_
                                   _%rest50693%_
                                   _%type50831%_
                                   (cons _%L50746%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'check-nil!)
                                                     (cons _%L50748%_ '()))
                                               '()))
                                   '#f)
                                  (_%loop50661%_
                                   _%rest50693%_
                                   _%type50831%_
                                   (cons _%L50746%_ (cons _%L50748%_ '()))
                                   '#f))))
                          _%$e50824%_)
                         (let ()
                           (gx#raise-syntax-error
                            '#f
                            '"unresolved dotted reference; unknown type for slot"
                            _%stx50528%_
                            _%L50621%_
                            _%part50695%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%hd5071250740%_
                                                   _%hd5070950730%_)
                                                  (_%g5070450719%_
                                                   _%g5070550723%_))))
                                          (_%g5070450719%_ _%g5070550723%_))))
                                  (_%g5070450719%_ _%g5070550723%_)))))
                      (_%g5070350836%_
                       (list _%object50667%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50528%_
                                _%type50666%_
                                _%part50695%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type50666%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50528%_
                         _%type50666%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5066950677%_))
                                              (let ((_%hd5067450848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5066950677%_)))
                                                    (_%tl5067550851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5066950677%_))))
                                                (let* ((_%part50854%_
                                                        _%hd5067450848%_)
                                                       (_%rest50857%_
                                                        _%tl5067550851%_))
                                                  (_%K5067350844%_
                                                   _%rest50857%_
                                                   _%part50854%_)))
                                              (_%else5067150689%_)))))
                                    _%$e50654%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f '%%ref)
                                           (cons _%L50621%_ '()))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5063350640%_))
                         (let ((_%hd5063750866%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5063350640%_)))
                               (_%tl5063850869%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5063350640%_))))
                           (let* ((_%var50872%_ _%hd5063750866%_)
                                  (_%parts50875%_ _%tl5063850869%_))
                             (_%K5063650862%_ _%parts50875%_ _%var50872%_)))
                         (_%E5063550646%_)))))
                (_%__kont7564975650%_
                 (lambda (_%L50580%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L50580%_ '())))))
            (let ((_%__match7566575666%_
                   (lambda (_%e5053750601%_
                            _%hd5053650605%_
                            _%tl5053550608%_
                            _%e5054050611%_
                            _%hd5053950615%_
                            _%tl5053850618%_)
                     (let ((_%L50621%_ _%hd5053950615%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L50621%_))
                           (_%__kont7564775648%_ _%L50621%_)
                           (_%__kont7564975650%_ _%hd5053950615%_))))))
              (if (gx#stx-pair? _%__stx7564475645%_)
                  (let ((_%e5053750601%_ (gx#syntax-e _%__stx7564475645%_)))
                    (let ((_%tl5053550608%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5053750601%_)))
                          (_%hd5053650605%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5053750601%_))))
                      (if (gx#stx-pair? _%tl5053550608%_)
                          (let ((_%e5054050611%_
                                 (gx#syntax-e _%tl5053550608%_)))
                            (let ((_%tl5053850618%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5054050611%_)))
                                  (_%hd5053950615%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5054050611%_))))
                              (if (gx#stx-null? _%tl5053850618%_)
                                  (_%__match7566575666%_
                                   _%e5053750601%_
                                   _%hd5053650605%_
                                   _%tl5053550608%_
                                   _%e5054050611%_
                                   _%hd5053950615%_
                                   _%tl5053850618%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5053250553%_)))))
                          (let () (declare (not safe)) (_%g5053250553%_)))))
                  (let () (declare (not safe)) (_%g5053250553%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx50882%_)
        (let* ((_%__stx7568275683%_ _%stx50882%_)
               (_%g5088650915%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7568275683%_))))
          (let ((_%__kont7568575686%_
                 (lambda (_%L51007%_ _%L51009%_)
                   (let* ((_%g5102351030%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                              _%stx50882%_
                              _%L51009%_)))
                          (_%E5102551036%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5102351030%_
                                    '([var . parts]))
                             (void)))
                          (_%K5102651269%_
                           (lambda (_%parts51040%_ _%var51042%_)
                             (let ((_%$e51044%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51042%_))))
                               (if _%$e51044%_
                                   ((lambda (_%te51048%_)
                                      (let _%loop51051%_ ((_%parts51054%_
                                                           _%parts51040%_)
                                                          (_%type51056%_
                                                           (##direct-structure-ref
                                                            _%te51048%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51057%_
                                                           _%var51042%_)
                                                          (_%nil-check?51058%_
                                                           '#f))
                                        (let* ((_%parts5105951066%_
                                                _%parts51054%_)
                                               (_%E5106151072%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5105951066%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5106251251%_
                                                (lambda (_%rest51076%_
                                                         _%part51078%_)
                                                  (if (and (let ()
                                                             (declare
                                                               (not safe))
                                                             (not _%nil-check?51058%_))
                                                           (let ((__tmp80078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51078%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp80078)))
              (let ()
                (let ((_%str51082%_ (symbol->string _%part51078%_)))
                  (_%loop51051%_
                   (cons (let ((__tmp80079
                                (substring
                                 _%str51082%_
                                 '1
                                 (string-length _%str51082%_))))
                           (declare (not safe))
                           (##string->symbol __tmp80079))
                         _%rest51076%_)
                   _%type51056%_
                   _%object51057%_
                   '#t)))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51056%_))
                  (let ()
                    (if (let () (declare (not safe)) (null? _%rest51076%_))
                        (let ()
                          (let* ((_%g5108951104%_
                                  (lambda (_%g5109051100%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5109051100%_)))
                                 (_%g5108851161%_
                                  (lambda (_%g5109051108%_)
                                    (if (gx#stx-pair? _%g5109051108%_)
                                        (let ((_%e5109551111%_
                                               (gx#syntax-e _%g5109051108%_)))
                                          (let ((_%hd5109451115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5109551111%_)))
                                                (_%tl5109351118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5109551111%_))))
                                            (if (gx#stx-pair? _%tl5109351118%_)
                                                (let ((_%e5109851121%_
                                                       (gx#syntax-e
                                                        _%tl5109351118%_)))
                                                  (let ((_%hd5109751125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5109851121%_)))
                                                        (_%tl5109651128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5109851121%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5109651128%_)
                                                        ((lambda (_%L51131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L51133%_)
                   (let ()
                     (if _%nil-check?51058%_
                         (cons _%L51131%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51133%_ '()))
                                     (cons _%L51007%_ '())))
                         (cons _%L51131%_
                               (cons _%L51133%_ (cons _%L51007%_ '()))))))
                 _%hd5109751125%_
                 _%hd5109451115%_)
                (_%g5108951104%_ _%g5109051108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5108951104%_
                                                 _%g5109051108%_))))
                                        (_%g5108951104%_ _%g5109051108%_)))))
                            (_%g5108851161%_
                             (list _%object51057%_
                                   (let ((__tmp80080
                                          (if (##direct-structure-ref
                                               _%te51048%_
                                               '3
                                               gerbil/core/contract~TypeEnv#type-env::t
                                               '#f)
                                              (let ((_%$e51165%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/mop~MOP-2#!class-slot-type
                                                        _%type51056%_
                                                        _%part51078%_))))
                                                (if _%$e51165%_
                                                    _%$e51165%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#!class-slot-contract
                                                       _%type51056%_
                                                       _%part51078%_))))
                                              '#f)))
                                     (declare (not safe))
                                     (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                      _%stx50882%_
                                      _%type51056%_
                                      _%part51078%_
                                      __tmp80080))))))
                        (let ((_%$e51169%_
                               (let ()
                                 (declare (not safe))
                                 (gerbil/core/mop~MOP-2#!class-slot-type
                                  _%type51056%_
                                  _%part51078%_))))
                          (if _%$e51169%_
                              ((lambda (_%type51173%_)
                                 (let* ((_%type51176%_
                                         (let ()
                                           (declare (not safe))
                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                            _%stx50882%_
                                            _%type51173%_)))
                                        (_%g5117951194%_
                                         (lambda (_%g5118051190%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g5118051190%_)))
                                        (_%g5117851241%_
                                         (lambda (_%g5118051198%_)
                                           (if (gx#stx-pair? _%g5118051198%_)
                                               (let ((_%e5118551201%_
                                                      (gx#syntax-e
                                                       _%g5118051198%_)))
                                                 (let ((_%hd5118451205%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5118551201%_)))
                                                       (_%tl5118351208%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5118551201%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl5118351208%_)
                                                       (let ((_%e5118851211%_
                                                              (gx#syntax-e
                                                               _%tl5118351208%_)))
                                                         (let ((_%hd5118751215%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5118851211%_)))
                       (_%tl5118651218%_
                        (let () (declare (not safe)) (##cdr _%e5118851211%_))))
                   (if (gx#stx-null? _%tl5118651218%_)
                       ((lambda (_%L51221%_ _%L51223%_)
                          (let ()
                            (if _%nil-check?51058%_
                                (_%loop51051%_
                                 _%rest51076%_
                                 _%type51176%_
                                 (cons _%L51221%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'check-nil!)
                                                   (cons _%L51223%_ '()))
                                             '()))
                                 '#f)
                                (_%loop51051%_
                                 _%rest51076%_
                                 _%type51176%_
                                 (cons _%L51221%_ (cons _%L51223%_ '()))
                                 '#f))))
                        _%hd5118751215%_
                        _%hd5118451205%_)
                       (_%g5117951194%_ _%g5118051198%_))))
               (_%g5117951194%_ _%g5118051198%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5117951194%_
                                                _%g5118051198%_)))))
                                   (_%g5117851241%_
                                    (list _%object51057%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                             _%stx50882%_
                                             _%type51176%_
                                             _%part51078%_))))))
                               _%$e51169%_)
                              (let ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"unresolved dotted reference; unknown type for slot"
                                 _%stx50882%_
                                 _%L51009%_
                                 _%part51078%_))))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51056%_))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"illegal dotted reference; interface has no slots"))
                      (let ()
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type"
                         _%stx50882%_
                         _%type51056%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%parts5105951066%_))
                                              (let ((_%hd5106351255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5105951066%_)))
                                                    (_%tl5106451258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5105951066%_))))
                                                (let* ((_%part51261%_
                                                        _%hd5106351255%_)
                                                       (_%rest51264%_
                                                        _%tl5106451258%_))
                                                  (_%K5106251251%_
                                                   _%rest51264%_
                                                   _%part51261%_)))
                                              (_%E5106151072%_)))))
                                    _%$e51044%_)
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'set!)
                                           (cons _%L51009%_
                                                 (cons _%L51007%_ '())))))))))
                     (if (let ()
                           (declare (not safe))
                           (##pair? _%g5102351030%_))
                         (let ((_%hd5102751273%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5102351030%_)))
                               (_%tl5102851276%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5102351030%_))))
                           (let* ((_%var51279%_ _%hd5102751273%_)
                                  (_%parts51282%_ _%tl5102851276%_))
                             (_%K5102651269%_ _%parts51282%_ _%var51279%_)))
                         (_%E5102551036%_)))))
                (_%__kont7568775688%_
                 (lambda (_%L50952%_ _%L50954%_)
                   (cons (gx#datum->syntax '#f 'set!)
                         (cons _%L50954%_ (cons _%L50952%_ '()))))))
            (let ((_%__match7570975710%_
                   (lambda (_%e5089250977%_
                            _%hd5089150981%_
                            _%tl5089050984%_
                            _%e5089550987%_
                            _%hd5089450991%_
                            _%tl5089350994%_
                            _%e5089850997%_
                            _%hd5089751001%_
                            _%tl5089651004%_)
                     (let ((_%L51007%_ _%hd5089751001%_)
                           (_%L51009%_ _%hd5089450991%_))
                       (if (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~Using[1]#dotted-identifier?|
                              _%L51009%_))
                           (_%__kont7568575686%_ _%L51007%_ _%L51009%_)
                           (_%__kont7568775688%_
                            _%hd5089751001%_
                            _%hd5089450991%_))))))
              (if (gx#stx-pair? _%__stx7568275683%_)
                  (let ((_%e5089250977%_ (gx#syntax-e _%__stx7568275683%_)))
                    (let ((_%tl5089050984%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5089250977%_)))
                          (_%hd5089150981%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5089250977%_))))
                      (if (gx#stx-pair? _%tl5089050984%_)
                          (let ((_%e5089550987%_
                                 (gx#syntax-e _%tl5089050984%_)))
                            (let ((_%tl5089350994%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5089550987%_)))
                                  (_%hd5089450991%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5089550987%_))))
                              (if (gx#stx-pair? _%tl5089350994%_)
                                  (let ((_%e5089850997%_
                                         (gx#syntax-e _%tl5089350994%_)))
                                    (let ((_%tl5089651004%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5089850997%_)))
                                          (_%hd5089751001%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5089850997%_))))
                                      (if (gx#stx-null? _%tl5089651004%_)
                                          (_%__match7570975710%_
                                           _%e5089250977%_
                                           _%hd5089150981%_
                                           _%tl5089050984%_
                                           _%e5089550987%_
                                           _%hd5089450991%_
                                           _%tl5089350994%_
                                           _%e5089850997%_
                                           _%hd5089751001%_
                                           _%tl5089651004%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5088650915%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5088650915%_)))))
                          (let () (declare (not safe)) (_%g5088650915%_)))))
                  (let () (declare (not safe)) (_%g5088650915%_))))))))))
