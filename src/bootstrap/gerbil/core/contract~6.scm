(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g105198_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105199_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105200_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105203_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105204_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105207_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105208_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105209_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105210_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105214_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105215_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105216_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105217_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g105221_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx55867%_)
        (let* ((_%__stx9852498525%_ _%stx55867%_)
               (_%$%g5587656085%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9852498525%_))))
          (let ((_%__kont9852798528%_
                 (lambda (_%$%g5587856977%_
                          _%$%g5587956979%_
                          _%$%g5588056980%_
                          _%$%g5588156981%_
                          _%$%g5588256982%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5588256982%_
                                     (cons _%$%g5588156981%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5588256982%_
                                                       (cons _%$%g5588056980%_
                                                             (cons _%$%g5587956979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5702557028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5702657031%_)
                  (cons _%$%g5702557028%_ _%$%g5702657031%_))
                '()
                _%$%g5587856977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9853198532%_
                 (lambda (_%$%g5591056823%_
                          _%$%g5591156825%_
                          _%$%g5591256826%_
                          _%$%g5591356827%_
                          _%$%g5591456828%_
                          _%$%g5591556829%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%$%g5591556829%_
                                     (cons _%$%g5591456828%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5591556829%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%$%g5591356827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%$%g5591556829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g5591256826%_
                                       (cons _%$%g5591156825%_ '())))
                           (foldr (lambda (_%$%g5687356876%_ _%$%g5687456879%_)
                                    (cons _%$%g5687356876%_ _%$%g5687456879%_))
                                  '()
                                  _%$%g5591056823%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9853598536%_
                 (lambda (_%$%g5594956642%_
                          _%$%g5595056644%_
                          _%$%g5595156645%_
                          _%$%g5595256646%_)
                   (let ((_%meta56683%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx55867%_
                             _%$%g5595056644%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta56683%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%$%g5595256646%_
                                           (cons _%$%g5595156645%_
                                                 (cons _%$%g5595056644%_ '())))
                                     (foldr (lambda (_%$%g5668756690%_
                                                     _%$%g5668856693%_)
                                              (cons _%$%g5668756690%_
                                                    _%$%g5668856693%_))
                                            '()
                                            _%$%g5594956642%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta56683%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%$%g5595256646%_
                                               (cons _%$%g5595156645%_
                                                     (cons _%$%g5595056644%_
                                                           '())))
                                         (foldr (lambda (_%$%g5669756700%_
                                                         _%$%g5669856703%_)
                                                  (cons _%$%g5669756700%_
                                                        _%$%g5669856703%_))
                                                '()
                                                _%$%g5594956642%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx55867%_
                              _%$%g5595056644%_
                              _%meta56683%_))))))
                (_%__kont9853998540%_
                 (lambda (_%$%g5597756522%_
                          _%$%g5597856524%_
                          _%$%g5597956525%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%$%g5597956525%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5597856524%_ '())))
                               (foldr (lambda (_%$%g5654856551%_
                                               _%$%g5654956554%_)
                                        (cons _%$%g5654856551%_
                                              _%$%g5654956554%_))
                                      '()
                                      _%$%g5597756522%_)))))
                (_%__kont9854398544%_
                 (lambda (_%$%g5600456382%_
                          _%$%g5600556384%_
                          _%$%g5600656385%_
                          _%$%g5600756386%_
                          _%$%g5600856387%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5600856387%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%$%g5600756386%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%$%g5600856387%_
                                                       (cons _%$%g5600656385%_
                                                             (cons _%$%g5600556384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%$%g5642856431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5642956434%_)
                  (cons _%$%g5642856431%_ _%$%g5642956434%_))
                '()
                _%$%g5600456382%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9854798548%_
                 (lambda (_%$%g5603956242%_
                          _%$%g5604056244%_
                          _%$%g5604156245%_
                          _%$%g5604256246%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%$%g5604256246%_ _%$%g5604156245%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%$%g5604056244%_
                                                 (foldr (lambda (_%$%g5626856271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5626956274%_)
                  (cons _%$%g5626856271%_ _%$%g5626956274%_))
                '()
                _%$%g5603956242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9855198552%_
                 (lambda (_%$%g5606456140%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g5615856161%_
                                               _%$%g5615956164%_)
                                        (cons _%$%g5615856161%_
                                              _%$%g5615956164%_))
                                      '()
                                      _%$%g5606456140%_))))))
            (let* ((_%__match9885798858%_
                    (lambda (_%$%e5606556092%_
                             _%$%hd5606656096%_
                             _%$%tl5606756099%_
                             _%$%e5606856102%_
                             _%$%hd5606956106%_
                             _%$%tl5607056109%_
                             _%__splice9855398554%_
                             _%$%target5607156112%_
                             _%$%tl5607356115%_)
                      (letrec ((_%$%loop5607456118%_
                                (lambda (_%$%hd5607256122%_
                                         _%$%body5607856125%_)
                                  (if (gx#stx-pair? _%$%hd5607256122%_)
                                      (let ((_%$%e5607556127%_
                                             (gx#syntax-e _%$%hd5607256122%_)))
                                        (let ((_%$%lp-tl5607756134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5607556127%_)))
                                              (_%$%lp-hd5607656131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5607556127%_))))
                                          (_%$%loop5607456118%_
                                           _%$%lp-tl5607756134%_
                                           (cons _%$%lp-hd5607656131%_
                                                 _%$%body5607856125%_))))
                                      (let ((_%$%body5607956137%_
                                             (reverse _%$%body5607856125%_)))
                                        (_%__kont9855198552%_
                                         _%$%body5607956137%_))))))
                        (_%$%loop5607456118%_ _%$%target5607156112%_ '()))))
                   (_%__match9883598836%_
                    (lambda (_%$%e5604356174%_
                             _%$%hd5604456178%_
                             _%$%tl5604556181%_
                             _%$%e5604656184%_
                             _%$%hd5604756188%_
                             _%$%tl5604856191%_
                             _%$%e5604956194%_
                             _%$%hd5605056198%_
                             _%$%tl5605156201%_
                             _%$%e5605256204%_
                             _%$%hd5605356208%_
                             _%$%tl5605456211%_
                             _%__splice9854998550%_
                             _%$%target5605556214%_
                             _%$%tl5605756217%_)
                      (letrec ((_%$%loop5605856220%_
                                (lambda (_%$%hd5605656224%_
                                         _%$%body5606256227%_)
                                  (if (gx#stx-pair? _%$%hd5605656224%_)
                                      (let ((_%$%e5605956229%_
                                             (gx#syntax-e _%$%hd5605656224%_)))
                                        (let ((_%$%lp-tl5606156236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605956229%_)))
                                              (_%$%lp-hd5606056233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605956229%_))))
                                          (_%$%loop5605856220%_
                                           _%$%lp-tl5606156236%_
                                           (cons _%$%lp-hd5606056233%_
                                                 _%$%body5606256227%_))))
                                      (let ((_%$%body5606356239%_
                                             (reverse _%$%body5606256227%_)))
                                        (let ((_%$%g5603956242%_
                                               _%$%body5606356239%_)
                                              (_%$%g5604056244%_
                                               _%$%tl5605156201%_)
                                              (_%$%g5604156245%_
                                               _%$%tl5605456211%_)
                                              (_%$%g5604256246%_
                                               _%$%hd5605356208%_))
                                          (if (gx#identifier?
                                               _%$%g5604256246%_)
                                              (_%__kont9854798548%_
                                               _%$%g5603956242%_
                                               _%$%g5604056244%_
                                               _%$%g5604156245%_
                                               _%$%g5604256246%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_)))))))))
                        (_%$%loop5605856220%_ _%$%target5605556214%_ '()))))
                   (_%__match9882198822%_
                    (lambda (_%$%e5604356174%_
                             _%$%hd5604456178%_
                             _%$%tl5604556181%_
                             _%$%e5604656184%_
                             _%$%hd5604756188%_
                             _%$%tl5604856191%_
                             _%$%e5604956194%_
                             _%$%hd5605056198%_
                             _%$%tl5605156201%_)
                      (if (gx#stx-pair? _%$%hd5605056198%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5605056198%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (if (gx#stx-pair/null? _%$%tl5604856191%_)
                                  (let ((_%__splice9854998550%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5604856191%_
                                          '0)))
                                    (let ((_%$%tl5605756217%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '1)))
                                          (_%$%target5605556214%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5605756217%_)
                                          (_%__match9883598836%_
                                           _%$%e5604356174%_
                                           _%$%hd5604456178%_
                                           _%$%tl5604556181%_
                                           _%$%e5604656184%_
                                           _%$%hd5604756188%_
                                           _%$%tl5604856191%_
                                           _%$%e5604956194%_
                                           _%$%hd5605056198%_
                                           _%$%tl5605156201%_
                                           _%$%e5605256204%_
                                           _%$%hd5605356208%_
                                           _%$%tl5605456211%_
                                           _%__splice9854998550%_
                                           _%$%target5605556214%_
                                           _%$%tl5605756217%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                   (_%__match9880398804%_
                    (lambda (_%$%e5600956284%_
                             _%$%hd5601056288%_
                             _%$%tl5601156291%_
                             _%$%e5601256294%_
                             _%$%hd5601356298%_
                             _%$%tl5601456301%_
                             _%$%e5601556304%_
                             _%$%hd5601656308%_
                             _%$%tl5601756311%_
                             _%$%e5601856314%_
                             _%$%hd5601956318%_
                             _%$%tl5602056321%_
                             _%$%e5602156324%_
                             _%$%hd5602256328%_
                             _%$%tl5602356331%_
                             _%$%e5602456334%_
                             _%$%hd5602556338%_
                             _%$%tl5602656341%_
                             _%$%e5602756344%_
                             _%$%hd5602856348%_
                             _%$%tl5602956351%_
                             _%__splice9854598546%_
                             _%$%target5603056354%_
                             _%$%tl5603256357%_)
                      (letrec ((_%$%loop5603356360%_
                                (lambda (_%$%hd5603156364%_
                                         _%$%body5603756367%_)
                                  (if (gx#stx-pair? _%$%hd5603156364%_)
                                      (let ((_%$%e5603456369%_
                                             (gx#syntax-e _%$%hd5603156364%_)))
                                        (let ((_%$%lp-tl5603656376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5603456369%_)))
                                              (_%$%lp-hd5603556373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5603456369%_))))
                                          (_%$%loop5603356360%_
                                           _%$%lp-tl5603656376%_
                                           (cons _%$%lp-hd5603556373%_
                                                 _%$%body5603756367%_))))
                                      (let ((_%$%body5603856379%_
                                             (reverse _%$%body5603756367%_)))
                                        (let ((_%$%g5600456382%_
                                               _%$%body5603856379%_)
                                              (_%$%g5600556384%_
                                               _%$%hd5602856348%_)
                                              (_%$%g5600656385%_
                                               _%$%hd5602556338%_)
                                              (_%$%g5600756386%_
                                               _%$%hd5602256328%_)
                                              (_%$%g5600856387%_
                                               _%$%hd5601656308%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5600856387%_)
                                                   (gx#identifier?
                                                    _%$%g5600556384%_)
                                                   (gx#identifier?
                                                    _%$%g5600656385%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5600656385%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5600656385%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5600656385%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5600656385%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9854398544%_
                                               _%$%g5600456382%_
                                               _%$%g5600556384%_
                                               _%$%g5600656385%_
                                               _%$%g5600756386%_
                                               _%$%g5600856387%_)
                                              (_%__match9882198822%_
                                               _%$%e5600956284%_
                                               _%$%hd5601056288%_
                                               _%$%tl5601156291%_
                                               _%$%e5601256294%_
                                               _%$%hd5601356298%_
                                               _%$%tl5601456301%_
                                               _%$%e5601556304%_
                                               _%$%hd5601656308%_
                                               _%$%tl5601756311%_))))))))
                        (_%$%loop5603356360%_ _%$%target5603056354%_ '()))))
                   (_%__match9874798748%_
                    (lambda (_%$%e5598056444%_
                             _%$%hd5598156448%_
                             _%$%tl5598256451%_
                             _%$%e5598356454%_
                             _%$%hd5598456458%_
                             _%$%tl5598556461%_
                             _%$%e5598656464%_
                             _%$%hd5598756468%_
                             _%$%tl5598856471%_
                             _%$%e5598956474%_
                             _%$%hd5599056478%_
                             _%$%tl5599156481%_
                             _%$%e5599256484%_
                             _%$%hd5599356488%_
                             _%$%tl5599456491%_
                             _%__splice9854198542%_
                             _%$%target5599556494%_
                             _%$%tl5599756497%_)
                      (letrec ((_%$%loop5599856500%_
                                (lambda (_%$%hd5599656504%_
                                         _%$%body5600256507%_)
                                  (if (gx#stx-pair? _%$%hd5599656504%_)
                                      (let ((_%$%e5599956509%_
                                             (gx#syntax-e _%$%hd5599656504%_)))
                                        (let ((_%$%lp-tl5600156516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5599956509%_)))
                                              (_%$%lp-hd5600056513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5599956509%_))))
                                          (_%$%loop5599856500%_
                                           _%$%lp-tl5600156516%_
                                           (cons _%$%lp-hd5600056513%_
                                                 _%$%body5600256507%_))))
                                      (let ((_%$%body5600356519%_
                                             (reverse _%$%body5600256507%_)))
                                        (let ((_%$%g5597756522%_
                                               _%$%body5600356519%_)
                                              (_%$%g5597856524%_
                                               _%$%hd5599356488%_)
                                              (_%$%g5597956525%_
                                               _%$%hd5598756468%_))
                                          (if (gx#identifier?
                                               _%$%g5597956525%_)
                                              (_%__kont9853998540%_
                                               _%$%g5597756522%_
                                               _%$%g5597856524%_
                                               _%$%g5597956525%_)
                                              (_%__match9882198822%_
                                               _%$%e5598056444%_
                                               _%$%hd5598156448%_
                                               _%$%tl5598256451%_
                                               _%$%e5598356454%_
                                               _%$%hd5598456458%_
                                               _%$%tl5598556461%_
                                               _%$%e5598656464%_
                                               _%$%hd5598756468%_
                                               _%$%tl5598856471%_))))))))
                        (_%$%loop5599856500%_ _%$%target5599556494%_ '()))))
                   (_%__match9872798728%_
                    (lambda (_%$%e5598056444%_
                             _%$%hd5598156448%_
                             _%$%tl5598256451%_
                             _%$%e5598356454%_
                             _%$%hd5598456458%_
                             _%$%tl5598556461%_
                             _%$%e5598656464%_
                             _%$%hd5598756468%_
                             _%$%tl5598856471%_
                             _%$%e5598956474%_
                             _%$%hd5599056478%_
                             _%$%tl5599156481%_)
                      (if (gx#identifier? _%$%hd5599056478%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g105198_|
                               _%$%hd5599056478%_)
                              (if (gx#stx-pair? _%$%tl5599156481%_)
                                  (let ((_%$%e5599256484%_
                                         (gx#syntax-e _%$%tl5599156481%_)))
                                    (let ((_%$%tl5599456491%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5599256484%_)))
                                          (_%$%hd5599356488%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5599256484%_))))
                                      (if (gx#stx-null? _%$%tl5599456491%_)
                                          (if (gx#stx-pair/null?
                                               _%$%tl5598556461%_)
                                              (let ((_%__splice9854198542%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5598556461%_
                                                      '0)))
                                                (let ((_%$%tl5599756497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9854198542%_
                                                          '1)))
                                                      (_%$%target5599556494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9854198542%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5599756497%_)
                                                      (_%__match9874798748%_
                                                       _%$%e5598056444%_
                                                       _%$%hd5598156448%_
                                                       _%$%tl5598256451%_
                                                       _%$%e5598356454%_
                                                       _%$%hd5598456458%_
                                                       _%$%tl5598556461%_
                                                       _%$%e5598656464%_
                                                       _%$%hd5598756468%_
                                                       _%$%tl5598856471%_
                                                       _%$%e5598956474%_
                                                       _%$%hd5599056478%_
                                                       _%$%tl5599156481%_
                                                       _%$%e5599256484%_
                                                       _%$%hd5599356488%_
                                                       _%$%tl5599456491%_
                                                       _%__splice9854198542%_
                                                       _%$%target5599556494%_
                                                       _%$%tl5599756497%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd5598756468%_)
                                                          (let ((_%$%e5605256204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd5598756468%_)))
                    (let ((_%$%tl5605456211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5605256204%_)))
                          (_%$%hd5605356208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5605256204%_))))
                      (let () (declare (not safe)) (_%$%g5587656085%_))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5598756468%_)
                                                  (let ((_%$%e5605256204%_
                                                         (gx#syntax-e
                                                          _%$%hd5598756468%_)))
                                                    (let ((_%$%tl5605456211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5605256204%_)))
                                                          (_%$%hd5605356208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5605256204%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5587656085%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_))))
                                          (if (gx#stx-pair? _%$%tl5599456491%_)
                                              (let ((_%$%e5602456334%_
                                                     (gx#syntax-e
                                                      _%$%tl5599456491%_)))
                                                (let ((_%$%tl5602656341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602456334%_)))
                                                      (_%$%hd5602556338%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602456334%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5602656341%_)
                                                      (let ((_%$%e5602756344%_
                                                             (gx#syntax-e
                                                              _%$%tl5602656341%_)))
                                                        (let ((_%$%tl5602956351%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5602756344%_)))
                      (_%$%hd5602856348%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5602756344%_))))
                  (if (gx#stx-null? _%$%tl5602956351%_)
                      (if (gx#stx-pair/null? _%$%tl5598556461%_)
                          (let ((_%__splice9854598546%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5598556461%_
                                  '0)))
                            (let ((_%$%tl5603256357%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854598546%_ '1)))
                                  (_%$%target5603056354%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854598546%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5603256357%_)
                                  (_%__match9880398804%_
                                   _%$%e5598056444%_
                                   _%$%hd5598156448%_
                                   _%$%tl5598256451%_
                                   _%$%e5598356454%_
                                   _%$%hd5598456458%_
                                   _%$%tl5598556461%_
                                   _%$%e5598656464%_
                                   _%$%hd5598756468%_
                                   _%$%tl5598856471%_
                                   _%$%e5598956474%_
                                   _%$%hd5599056478%_
                                   _%$%tl5599156481%_
                                   _%$%e5599256484%_
                                   _%$%hd5599356488%_
                                   _%$%tl5599456491%_
                                   _%$%e5602456334%_
                                   _%$%hd5602556338%_
                                   _%$%tl5602656341%_
                                   _%$%e5602756344%_
                                   _%$%hd5602856348%_
                                   _%$%tl5602956351%_
                                   _%__splice9854598546%_
                                   _%$%target5603056354%_
                                   _%$%tl5603256357%_)
                                  (if (gx#stx-pair? _%$%hd5598756468%_)
                                      (let ((_%$%e5605256204%_
                                             (gx#syntax-e _%$%hd5598756468%_)))
                                        (let ((_%$%tl5605456211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605256204%_)))
                                              (_%$%hd5605356208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605256204%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))))
                          (if (gx#stx-pair? _%$%hd5598756468%_)
                              (let ((_%$%e5605256204%_
                                     (gx#syntax-e _%$%hd5598756468%_)))
                                (let ((_%$%tl5605456211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5605256204%_)))
                                      (_%$%hd5605356208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5605256204%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))
                      (if (gx#stx-pair? _%$%hd5598756468%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5598756468%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (if (gx#stx-pair/null? _%$%tl5598556461%_)
                                  (let ((_%__splice9854998550%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5598556461%_
                                          '0)))
                                    (let ((_%$%tl5605756217%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '1)))
                                          (_%$%target5605556214%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5605756217%_)
                                          (_%__match9883598836%_
                                           _%$%e5598056444%_
                                           _%$%hd5598156448%_
                                           _%$%tl5598256451%_
                                           _%$%e5598356454%_
                                           _%$%hd5598456458%_
                                           _%$%tl5598556461%_
                                           _%$%e5598656464%_
                                           _%$%hd5598756468%_
                                           _%$%tl5598856471%_
                                           _%$%e5605256204%_
                                           _%$%hd5605356208%_
                                           _%$%tl5605456211%_
                                           _%__splice9854998550%_
                                           _%$%target5605556214%_
                                           _%$%tl5605756217%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))))
              (if (gx#stx-pair? _%$%hd5598756468%_)
                  (let ((_%$%e5605256204%_ (gx#syntax-e _%$%hd5598756468%_)))
                    (let ((_%$%tl5605456211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5605256204%_)))
                          (_%$%hd5605356208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5605256204%_))))
                      (if (gx#stx-pair/null? _%$%tl5598556461%_)
                          (let ((_%__splice9854998550%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5598556461%_
                                  '0)))
                            (let ((_%$%tl5605756217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854998550%_ '1)))
                                  (_%$%target5605556214%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854998550%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5605756217%_)
                                  (_%__match9883598836%_
                                   _%$%e5598056444%_
                                   _%$%hd5598156448%_
                                   _%$%tl5598256451%_
                                   _%$%e5598356454%_
                                   _%$%hd5598456458%_
                                   _%$%tl5598556461%_
                                   _%$%e5598656464%_
                                   _%$%hd5598756468%_
                                   _%$%tl5598856471%_
                                   _%$%e5605256204%_
                                   _%$%hd5605356208%_
                                   _%$%tl5605456211%_
                                   _%__splice9854998550%_
                                   _%$%target5605556214%_
                                   _%$%tl5605756217%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5598756468%_)
                                                  (let ((_%$%e5605256204%_
                                                         (gx#syntax-e
                                                          _%$%hd5598756468%_)))
                                                    (let ((_%$%tl5605456211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5605256204%_)))
                                                          (_%$%hd5605356208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5605256204%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5598556461%_)
                                                          (let ((_%__splice9854998550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5598556461%_
                          '0)))
                    (let ((_%$%tl5605756217%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9854998550%_ '1)))
                          (_%$%target5605556214%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9854998550%_ '0))))
                      (if (gx#stx-null? _%$%tl5605756217%_)
                          (_%__match9883598836%_
                           _%$%e5598056444%_
                           _%$%hd5598156448%_
                           _%$%tl5598256451%_
                           _%$%e5598356454%_
                           _%$%hd5598456458%_
                           _%$%tl5598556461%_
                           _%$%e5598656464%_
                           _%$%hd5598756468%_
                           _%$%tl5598856471%_
                           _%$%e5605256204%_
                           _%$%hd5605356208%_
                           _%$%tl5605456211%_
                           _%__splice9854998550%_
                           _%$%target5605556214%_
                           _%$%tl5605756217%_)
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))))
                                  (if (gx#stx-pair? _%$%hd5598756468%_)
                                      (let ((_%$%e5605256204%_
                                             (gx#syntax-e _%$%hd5598756468%_)))
                                        (let ((_%$%tl5605456211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605256204%_)))
                                              (_%$%hd5605356208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605256204%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5598556461%_)
                                              (let ((_%__splice9854998550%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5598556461%_
                                                      '0)))
                                                (let ((_%$%tl5605756217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9854998550%_
                                                          '1)))
                                                      (_%$%target5605556214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9854998550%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5605756217%_)
                                                      (_%__match9883598836%_
                                                       _%$%e5598056444%_
                                                       _%$%hd5598156448%_
                                                       _%$%tl5598256451%_
                                                       _%$%e5598356454%_
                                                       _%$%hd5598456458%_
                                                       _%$%tl5598556461%_
                                                       _%$%e5598656464%_
                                                       _%$%hd5598756468%_
                                                       _%$%tl5598856471%_
                                                       _%$%e5605256204%_
                                                       _%$%hd5605356208%_
                                                       _%$%tl5605456211%_
                                                       _%__splice9854998550%_
                                                       _%$%target5605556214%_
                                                       _%$%tl5605756217%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5587656085%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))
                              (if (gx#stx-pair? _%$%hd5598756468%_)
                                  (let ((_%$%e5605256204%_
                                         (gx#syntax-e _%$%hd5598756468%_)))
                                    (let ((_%$%tl5605456211%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5605256204%_)))
                                          (_%$%hd5605356208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5605256204%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl5598556461%_)
                                          (let ((_%__splice9854998550%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5598556461%_
                                                  '0)))
                                            (let ((_%$%tl5605756217%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9854998550%_
                                                      '1)))
                                                  (_%$%target5605556214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9854998550%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5605756217%_)
                                                  (_%__match9883598836%_
                                                   _%$%e5598056444%_
                                                   _%$%hd5598156448%_
                                                   _%$%tl5598256451%_
                                                   _%$%e5598356454%_
                                                   _%$%hd5598456458%_
                                                   _%$%tl5598556461%_
                                                   _%$%e5598656464%_
                                                   _%$%hd5598756468%_
                                                   _%$%tl5598856471%_
                                                   _%$%e5605256204%_
                                                   _%$%hd5605356208%_
                                                   _%$%tl5605456211%_
                                                   _%__splice9854998550%_
                                                   _%$%target5605556214%_
                                                   _%$%tl5605756217%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))
                          (if (gx#stx-pair? _%$%hd5598756468%_)
                              (let ((_%$%e5605256204%_
                                     (gx#syntax-e _%$%hd5598756468%_)))
                                (let ((_%$%tl5605456211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5605256204%_)))
                                      (_%$%hd5605356208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5605256204%_))))
                                  (if (gx#stx-pair/null? _%$%tl5598556461%_)
                                      (let ((_%__splice9854998550%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5598556461%_
                                              '0)))
                                        (let ((_%$%tl5605756217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9854998550%_
                                                  '1)))
                                              (_%$%target5605556214%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9854998550%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5605756217%_)
                                              (_%__match9883598836%_
                                               _%$%e5598056444%_
                                               _%$%hd5598156448%_
                                               _%$%tl5598256451%_
                                               _%$%e5598356454%_
                                               _%$%hd5598456458%_
                                               _%$%tl5598556461%_
                                               _%$%e5598656464%_
                                               _%$%hd5598756468%_
                                               _%$%tl5598856471%_
                                               _%$%e5605256204%_
                                               _%$%hd5605356208%_
                                               _%$%tl5605456211%_
                                               _%__splice9854998550%_
                                               _%$%target5605556214%_
                                               _%$%tl5605756217%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))))
                   (_%__match9870398704%_
                    (lambda (_%$%e5595356564%_
                             _%$%hd5595456568%_
                             _%$%tl5595556571%_
                             _%$%e5595656574%_
                             _%$%hd5595756578%_
                             _%$%tl5595856581%_
                             _%$%e5595956584%_
                             _%$%hd5596056588%_
                             _%$%tl5596156591%_
                             _%$%e5596256594%_
                             _%$%hd5596356598%_
                             _%$%tl5596456601%_
                             _%$%e5596556604%_
                             _%$%hd5596656608%_
                             _%$%tl5596756611%_
                             _%__splice9853798538%_
                             _%$%target5596856614%_
                             _%$%tl5597056617%_)
                      (letrec ((_%$%loop5597156620%_
                                (lambda (_%$%hd5596956624%_
                                         _%$%body5597556627%_)
                                  (if (gx#stx-pair? _%$%hd5596956624%_)
                                      (let ((_%$%e5597256629%_
                                             (gx#syntax-e _%$%hd5596956624%_)))
                                        (let ((_%$%lp-tl5597456636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5597256629%_)))
                                              (_%$%lp-hd5597356633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5597256629%_))))
                                          (_%$%loop5597156620%_
                                           _%$%lp-tl5597456636%_
                                           (cons _%$%lp-hd5597356633%_
                                                 _%$%body5597556627%_))))
                                      (let ((_%$%body5597656639%_
                                             (reverse _%$%body5597556627%_)))
                                        (let ((_%$%g5594956642%_
                                               _%$%body5597656639%_)
                                              (_%$%g5595056644%_
                                               _%$%hd5596656608%_)
                                              (_%$%g5595156645%_
                                               _%$%hd5596356598%_)
                                              (_%$%g5595256646%_
                                               _%$%hd5596056588%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5595256646%_)
                                                   (gx#identifier?
                                                    _%$%g5595056644%_)
                                                   (gx#identifier?
                                                    _%$%g5595156645%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5595156645%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5595156645%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5595156645%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5595156645%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9853598536%_
                                               _%$%g5594956642%_
                                               _%$%g5595056644%_
                                               _%$%g5595156645%_
                                               _%$%g5595256646%_)
                                              (_%__match9872798728%_
                                               _%$%e5595356564%_
                                               _%$%hd5595456568%_
                                               _%$%tl5595556571%_
                                               _%$%e5595656574%_
                                               _%$%hd5595756578%_
                                               _%$%tl5595856581%_
                                               _%$%e5595956584%_
                                               _%$%hd5596056588%_
                                               _%$%tl5596156591%_
                                               _%$%e5596256594%_
                                               _%$%hd5596356598%_
                                               _%$%tl5596456601%_))))))))
                        (_%$%loop5597156620%_ _%$%target5596856614%_ '()))))
                   (_%__match9866398664%_
                    (lambda (_%$%e5591656715%_
                             _%$%hd5591756719%_
                             _%$%tl5591856722%_
                             _%$%e5591956725%_
                             _%$%hd5592056729%_
                             _%$%tl5592156732%_
                             _%$%e5592256735%_
                             _%$%hd5592356739%_
                             _%$%tl5592456742%_
                             _%$%e5592556745%_
                             _%$%hd5592656749%_
                             _%$%tl5592756752%_
                             _%$%e5592856755%_
                             _%$%hd5592956759%_
                             _%$%tl5593056762%_
                             _%$%e5593156765%_
                             _%$%hd5593256769%_
                             _%$%tl5593356772%_
                             _%$%e5593456775%_
                             _%$%hd5593556779%_
                             _%$%tl5593656782%_
                             _%$%e5593756785%_
                             _%$%hd5593856789%_
                             _%$%tl5593956792%_
                             _%__splice9853398534%_
                             _%$%target5594056795%_
                             _%$%tl5594256798%_)
                      (letrec ((_%$%loop5594356801%_
                                (lambda (_%$%hd5594156805%_
                                         _%$%body5594756808%_)
                                  (if (gx#stx-pair? _%$%hd5594156805%_)
                                      (let ((_%$%e5594456810%_
                                             (gx#syntax-e _%$%hd5594156805%_)))
                                        (let ((_%$%lp-tl5594656817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5594456810%_)))
                                              (_%$%lp-hd5594556814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5594456810%_))))
                                          (_%$%loop5594356801%_
                                           _%$%lp-tl5594656817%_
                                           (cons _%$%lp-hd5594556814%_
                                                 _%$%body5594756808%_))))
                                      (let ((_%$%body5594856820%_
                                             (reverse _%$%body5594756808%_)))
                                        (let ((_%$%g5591056823%_
                                               _%$%body5594856820%_)
                                              (_%$%g5591156825%_
                                               _%$%hd5593856789%_)
                                              (_%$%g5591256826%_
                                               _%$%hd5593556779%_)
                                              (_%$%g5591356827%_
                                               _%$%hd5593256769%_)
                                              (_%$%g5591456828%_
                                               _%$%hd5592656749%_)
                                              (_%$%g5591556829%_
                                               _%$%hd5592356739%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5591556829%_)
                                                   (gx#identifier?
                                                    _%$%g5591156825%_)
                                                   (gx#identifier?
                                                    _%$%g5591256826%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5591256826%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5591256826%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5591256826%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5591256826%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9853198532%_
                                               _%$%g5591056823%_
                                               _%$%g5591156825%_
                                               _%$%g5591256826%_
                                               _%$%g5591356827%_
                                               _%$%g5591456828%_
                                               _%$%g5591556829%_)
                                              (_%__match9872798728%_
                                               _%$%e5591656715%_
                                               _%$%hd5591756719%_
                                               _%$%tl5591856722%_
                                               _%$%e5591956725%_
                                               _%$%hd5592056729%_
                                               _%$%tl5592156732%_
                                               _%$%e5592256735%_
                                               _%$%hd5592356739%_
                                               _%$%tl5592456742%_
                                               _%$%e5592556745%_
                                               _%$%hd5592656749%_
                                               _%$%tl5592756752%_))))))))
                        (_%$%loop5594356801%_ _%$%target5594056795%_ '()))))
                   (_%__match9863198632%_
                    (lambda (_%$%e5591656715%_
                             _%$%hd5591756719%_
                             _%$%tl5591856722%_
                             _%$%e5591956725%_
                             _%$%hd5592056729%_
                             _%$%tl5592156732%_
                             _%$%e5592256735%_
                             _%$%hd5592356739%_
                             _%$%tl5592456742%_
                             _%$%e5592556745%_
                             _%$%hd5592656749%_
                             _%$%tl5592756752%_
                             _%$%e5592856755%_
                             _%$%hd5592956759%_
                             _%$%tl5593056762%_)
                      (if (gx#identifier? _%$%hd5592956759%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g105199_|
                               _%$%hd5592956759%_)
                              (if (gx#stx-pair? _%$%tl5593056762%_)
                                  (let ((_%$%e5593156765%_
                                         (gx#syntax-e _%$%tl5593056762%_)))
                                    (let ((_%$%tl5593356772%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5593156765%_)))
                                          (_%$%hd5593256769%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5593156765%_))))
                                      (if (gx#stx-pair? _%$%tl5593356772%_)
                                          (let ((_%$%e5593456775%_
                                                 (gx#syntax-e
                                                  _%$%tl5593356772%_)))
                                            (let ((_%$%tl5593656782%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5593456775%_)))
                                                  (_%$%hd5593556779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5593456775%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5593656782%_)
                                                  (let ((_%$%e5593756785%_
                                                         (gx#syntax-e
                                                          _%$%tl5593656782%_)))
                                                    (let ((_%$%tl5593956792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5593756785%_)))
                                                          (_%$%hd5593856789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5593756785%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5593956792%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5592156732%_)
                                                              (let ((_%__splice9853398534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5592156732%_
                              '0)))
                        (let ((_%$%tl5594256798%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9853398534%_ '1)))
                              (_%$%target5594056795%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9853398534%_ '0))))
                          (if (gx#stx-null? _%$%tl5594256798%_)
                              (_%__match9866398664%_
                               _%$%e5591656715%_
                               _%$%hd5591756719%_
                               _%$%tl5591856722%_
                               _%$%e5591956725%_
                               _%$%hd5592056729%_
                               _%$%tl5592156732%_
                               _%$%e5592256735%_
                               _%$%hd5592356739%_
                               _%$%tl5592456742%_
                               _%$%e5592556745%_
                               _%$%hd5592656749%_
                               _%$%tl5592756752%_
                               _%$%e5592856755%_
                               _%$%hd5592956759%_
                               _%$%tl5593056762%_
                               _%$%e5593156765%_
                               _%$%hd5593256769%_
                               _%$%tl5593356772%_
                               _%$%e5593456775%_
                               _%$%hd5593556779%_
                               _%$%tl5593656782%_
                               _%$%e5593756785%_
                               _%$%hd5593856789%_
                               _%$%tl5593956792%_
                               _%__splice9853398534%_
                               _%$%target5594056795%_
                               _%$%tl5594256798%_)
                              (if (gx#stx-pair? _%$%hd5592356739%_)
                                  (let ((_%$%e5605256204%_
                                         (gx#syntax-e _%$%hd5592356739%_)))
                                    (let ((_%$%tl5605456211%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5605256204%_)))
                                          (_%$%hd5605356208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5605256204%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))))
                      (if (gx#stx-pair? _%$%hd5592356739%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5592356739%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))
                  (if (gx#stx-pair? _%$%hd5592356739%_)
                      (let ((_%$%e5605256204%_
                             (gx#syntax-e _%$%hd5592356739%_)))
                        (let ((_%$%tl5605456211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5605256204%_)))
                              (_%$%hd5605356208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5605256204%_))))
                          (if (gx#stx-pair/null? _%$%tl5592156732%_)
                              (let ((_%__splice9854998550%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5592156732%_
                                      '0)))
                                (let ((_%$%tl5605756217%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9854998550%_
                                          '1)))
                                      (_%$%target5605556214%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9854998550%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5605756217%_)
                                      (_%__match9883598836%_
                                       _%$%e5591656715%_
                                       _%$%hd5591756719%_
                                       _%$%tl5591856722%_
                                       _%$%e5591956725%_
                                       _%$%hd5592056729%_
                                       _%$%tl5592156732%_
                                       _%$%e5592256735%_
                                       _%$%hd5592356739%_
                                       _%$%tl5592456742%_
                                       _%$%e5605256204%_
                                       _%$%hd5605356208%_
                                       _%$%tl5605456211%_
                                       _%__splice9854998550%_
                                       _%$%target5605556214%_
                                       _%$%tl5605756217%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_)))))
                      (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%$%hd5592656749%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g105198_|
                                                           _%$%hd5592656749%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl5593656782%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%tl5592156732%_)
                          (let ((_%__splice9854598546%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5592156732%_
                                  '0)))
                            (let ((_%$%tl5603256357%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854598546%_ '1)))
                                  (_%$%target5603056354%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854598546%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5603256357%_)
                                  (_%__match9880398804%_
                                   _%$%e5591656715%_
                                   _%$%hd5591756719%_
                                   _%$%tl5591856722%_
                                   _%$%e5591956725%_
                                   _%$%hd5592056729%_
                                   _%$%tl5592156732%_
                                   _%$%e5592256735%_
                                   _%$%hd5592356739%_
                                   _%$%tl5592456742%_
                                   _%$%e5592556745%_
                                   _%$%hd5592656749%_
                                   _%$%tl5592756752%_
                                   _%$%e5592856755%_
                                   _%$%hd5592956759%_
                                   _%$%tl5593056762%_
                                   _%$%e5593156765%_
                                   _%$%hd5593256769%_
                                   _%$%tl5593356772%_
                                   _%$%e5593456775%_
                                   _%$%hd5593556779%_
                                   _%$%tl5593656782%_
                                   _%__splice9854598546%_
                                   _%$%target5603056354%_
                                   _%$%tl5603256357%_)
                                  (if (gx#stx-pair? _%$%hd5592356739%_)
                                      (let ((_%$%e5605256204%_
                                             (gx#syntax-e _%$%hd5592356739%_)))
                                        (let ((_%$%tl5605456211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605256204%_)))
                                              (_%$%hd5605356208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605256204%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))))
                          (if (gx#stx-pair? _%$%hd5592356739%_)
                              (let ((_%$%e5605256204%_
                                     (gx#syntax-e _%$%hd5592356739%_)))
                                (let ((_%$%tl5605456211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5605256204%_)))
                                      (_%$%hd5605356208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5605256204%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))
                      (if (gx#stx-pair? _%$%hd5592356739%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5592356739%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (if (gx#stx-pair/null? _%$%tl5592156732%_)
                                  (let ((_%__splice9854998550%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5592156732%_
                                          '0)))
                                    (let ((_%$%tl5605756217%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '1)))
                                          (_%$%target5605556214%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5605756217%_)
                                          (_%__match9883598836%_
                                           _%$%e5591656715%_
                                           _%$%hd5591756719%_
                                           _%$%tl5591856722%_
                                           _%$%e5591956725%_
                                           _%$%hd5592056729%_
                                           _%$%tl5592156732%_
                                           _%$%e5592256735%_
                                           _%$%hd5592356739%_
                                           _%$%tl5592456742%_
                                           _%$%e5605256204%_
                                           _%$%hd5605356208%_
                                           _%$%tl5605456211%_
                                           _%__splice9854998550%_
                                           _%$%target5605556214%_
                                           _%$%tl5605756217%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))
                  (if (gx#stx-pair? _%$%hd5592356739%_)
                      (let ((_%$%e5605256204%_
                             (gx#syntax-e _%$%hd5592356739%_)))
                        (let ((_%$%tl5605456211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5605256204%_)))
                              (_%$%hd5605356208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5605256204%_))))
                          (if (gx#stx-pair/null? _%$%tl5592156732%_)
                              (let ((_%__splice9854998550%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5592156732%_
                                      '0)))
                                (let ((_%$%tl5605756217%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9854998550%_
                                          '1)))
                                      (_%$%target5605556214%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9854998550%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5605756217%_)
                                      (_%__match9883598836%_
                                       _%$%e5591656715%_
                                       _%$%hd5591756719%_
                                       _%$%tl5591856722%_
                                       _%$%e5591956725%_
                                       _%$%hd5592056729%_
                                       _%$%tl5592156732%_
                                       _%$%e5592256735%_
                                       _%$%hd5592356739%_
                                       _%$%tl5592456742%_
                                       _%$%e5605256204%_
                                       _%$%hd5605356208%_
                                       _%$%tl5605456211%_
                                       _%__splice9854998550%_
                                       _%$%target5605556214%_
                                       _%$%tl5605756217%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_)))))
                      (let () (declare (not safe)) (_%$%g5587656085%_))))
              (if (gx#stx-pair? _%$%hd5592356739%_)
                  (let ((_%$%e5605256204%_ (gx#syntax-e _%$%hd5592356739%_)))
                    (let ((_%$%tl5605456211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5605256204%_)))
                          (_%$%hd5605356208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5605256204%_))))
                      (if (gx#stx-pair/null? _%$%tl5592156732%_)
                          (let ((_%__splice9854998550%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5592156732%_
                                  '0)))
                            (let ((_%$%tl5605756217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854998550%_ '1)))
                                  (_%$%target5605556214%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854998550%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5605756217%_)
                                  (_%__match9883598836%_
                                   _%$%e5591656715%_
                                   _%$%hd5591756719%_
                                   _%$%tl5591856722%_
                                   _%$%e5591956725%_
                                   _%$%hd5592056729%_
                                   _%$%tl5592156732%_
                                   _%$%e5592256735%_
                                   _%$%hd5592356739%_
                                   _%$%tl5592456742%_
                                   _%$%e5605256204%_
                                   _%$%hd5605356208%_
                                   _%$%tl5605456211%_
                                   _%__splice9854998550%_
                                   _%$%target5605556214%_
                                   _%$%tl5605756217%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5592356739%_)
                                              (let ((_%$%e5605256204%_
                                                     (gx#syntax-e
                                                      _%$%hd5592356739%_)))
                                                (let ((_%$%tl5605456211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5605256204%_)))
                                                      (_%$%hd5605356208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5605256204%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5592156732%_)
                                                      (let ((_%__splice9854998550%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5592156732%_
                                                              '0)))
                                                        (let ((_%$%tl5605756217%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '1)))
                      (_%$%target5605556214%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '0))))
                  (if (gx#stx-null? _%$%tl5605756217%_)
                      (_%__match9883598836%_
                       _%$%e5591656715%_
                       _%$%hd5591756719%_
                       _%$%tl5591856722%_
                       _%$%e5591956725%_
                       _%$%hd5592056729%_
                       _%$%tl5592156732%_
                       _%$%e5592256735%_
                       _%$%hd5592356739%_
                       _%$%tl5592456742%_
                       _%$%e5605256204%_
                       _%$%hd5605356208%_
                       _%$%tl5605456211%_
                       _%__splice9854998550%_
                       _%$%target5605556214%_
                       _%$%tl5605756217%_)
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))))
                                  (if (gx#stx-null? _%$%tl5593056762%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5592156732%_)
                                          (let ((_%__splice9853798538%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5592156732%_
                                                  '0)))
                                            (let ((_%$%tl5597056617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9853798538%_
                                                      '1)))
                                                  (_%$%target5596856614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9853798538%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5597056617%_)
                                                  (_%__match9870398704%_
                                                   _%$%e5591656715%_
                                                   _%$%hd5591756719%_
                                                   _%$%tl5591856722%_
                                                   _%$%e5591956725%_
                                                   _%$%hd5592056729%_
                                                   _%$%tl5592156732%_
                                                   _%$%e5592256735%_
                                                   _%$%hd5592356739%_
                                                   _%$%tl5592456742%_
                                                   _%$%e5592556745%_
                                                   _%$%hd5592656749%_
                                                   _%$%tl5592756752%_
                                                   _%$%e5592856755%_
                                                   _%$%hd5592956759%_
                                                   _%$%tl5593056762%_
                                                   _%__splice9853798538%_
                                                   _%$%target5596856614%_
                                                   _%$%tl5597056617%_)
                                                  (if (gx#stx-pair?
                                                       _%$%hd5592356739%_)
                                                      (let ((_%$%e5605256204%_
                                                             (gx#syntax-e
                                                              _%$%hd5592356739%_)))
                                                        (let ((_%$%tl5605456211%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5605256204%_)))
                      (_%$%hd5605356208%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5605256204%_))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))
              (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5592356739%_)
                                              (let ((_%$%e5605256204%_
                                                     (gx#syntax-e
                                                      _%$%hd5592356739%_)))
                                                (let ((_%$%tl5605456211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5605256204%_)))
                                                      (_%$%hd5605356208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5605256204%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))
                                      (if (gx#stx-pair? _%$%hd5592356739%_)
                                          (let ((_%$%e5605256204%_
                                                 (gx#syntax-e
                                                  _%$%hd5592356739%_)))
                                            (let ((_%$%tl5605456211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5605256204%_)))
                                                  (_%$%hd5605356208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5605256204%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5592156732%_)
                                                  (let ((_%__splice9854998550%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5592156732%_
                                                          '0)))
                                                    (let ((_%$%tl5605756217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '1)))
                                                          (_%$%target5605556214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5605756217%_)
                                                          (_%__match9883598836%_
                                                           _%$%e5591656715%_
                                                           _%$%hd5591756719%_
                                                           _%$%tl5591856722%_
                                                           _%$%e5591956725%_
                                                           _%$%hd5592056729%_
                                                           _%$%tl5592156732%_
                                                           _%$%e5592256735%_
                                                           _%$%hd5592356739%_
                                                           _%$%tl5592456742%_
                                                           _%$%e5605256204%_
                                                           _%$%hd5605356208%_
                                                           _%$%tl5605456211%_
                                                           _%__splice9854998550%_
                                                           _%$%target5605556214%_
                                                           _%$%tl5605756217%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5587656085%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))))
                              (if (gx#stx-null? _%$%tl5593056762%_)
                                  (if (gx#stx-pair/null? _%$%tl5592156732%_)
                                      (let ((_%__splice9853798538%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5592156732%_
                                              '0)))
                                        (let ((_%$%tl5597056617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9853798538%_
                                                  '1)))
                                              (_%$%target5596856614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9853798538%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5597056617%_)
                                              (_%__match9870398704%_
                                               _%$%e5591656715%_
                                               _%$%hd5591756719%_
                                               _%$%tl5591856722%_
                                               _%$%e5591956725%_
                                               _%$%hd5592056729%_
                                               _%$%tl5592156732%_
                                               _%$%e5592256735%_
                                               _%$%hd5592356739%_
                                               _%$%tl5592456742%_
                                               _%$%e5592556745%_
                                               _%$%hd5592656749%_
                                               _%$%tl5592756752%_
                                               _%$%e5592856755%_
                                               _%$%hd5592956759%_
                                               _%$%tl5593056762%_
                                               _%__splice9853798538%_
                                               _%$%target5596856614%_
                                               _%$%tl5597056617%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd5592356739%_)
                                                  (let ((_%$%e5605256204%_
                                                         (gx#syntax-e
                                                          _%$%hd5592356739%_)))
                                                    (let ((_%$%tl5605456211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5605256204%_)))
                                                          (_%$%hd5605356208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5605256204%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5587656085%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_))))))
                                      (if (gx#stx-pair? _%$%hd5592356739%_)
                                          (let ((_%$%e5605256204%_
                                                 (gx#syntax-e
                                                  _%$%hd5592356739%_)))
                                            (let ((_%$%tl5605456211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5605256204%_)))
                                                  (_%$%hd5605356208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5605256204%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                  (if (gx#identifier? _%$%hd5592656749%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g105198_|
                                           _%$%hd5592656749%_)
                                          (if (gx#stx-pair? _%$%tl5593056762%_)
                                              (let ((_%$%e5602456334%_
                                                     (gx#syntax-e
                                                      _%$%tl5593056762%_)))
                                                (let ((_%$%tl5602656341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602456334%_)))
                                                      (_%$%hd5602556338%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602456334%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl5602656341%_)
                                                      (let ((_%$%e5602756344%_
                                                             (gx#syntax-e
                                                              _%$%tl5602656341%_)))
                                                        (let ((_%$%tl5602956351%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5602756344%_)))
                      (_%$%hd5602856348%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5602756344%_))))
                  (if (gx#stx-null? _%$%tl5602956351%_)
                      (if (gx#stx-pair/null? _%$%tl5592156732%_)
                          (let ((_%__splice9854598546%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5592156732%_
                                  '0)))
                            (let ((_%$%tl5603256357%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854598546%_ '1)))
                                  (_%$%target5603056354%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854598546%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5603256357%_)
                                  (_%__match9880398804%_
                                   _%$%e5591656715%_
                                   _%$%hd5591756719%_
                                   _%$%tl5591856722%_
                                   _%$%e5591956725%_
                                   _%$%hd5592056729%_
                                   _%$%tl5592156732%_
                                   _%$%e5592256735%_
                                   _%$%hd5592356739%_
                                   _%$%tl5592456742%_
                                   _%$%e5592556745%_
                                   _%$%hd5592656749%_
                                   _%$%tl5592756752%_
                                   _%$%e5592856755%_
                                   _%$%hd5592956759%_
                                   _%$%tl5593056762%_
                                   _%$%e5602456334%_
                                   _%$%hd5602556338%_
                                   _%$%tl5602656341%_
                                   _%$%e5602756344%_
                                   _%$%hd5602856348%_
                                   _%$%tl5602956351%_
                                   _%__splice9854598546%_
                                   _%$%target5603056354%_
                                   _%$%tl5603256357%_)
                                  (if (gx#stx-pair? _%$%hd5592356739%_)
                                      (let ((_%$%e5605256204%_
                                             (gx#syntax-e _%$%hd5592356739%_)))
                                        (let ((_%$%tl5605456211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605256204%_)))
                                              (_%$%hd5605356208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605256204%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))))
                          (if (gx#stx-pair? _%$%hd5592356739%_)
                              (let ((_%$%e5605256204%_
                                     (gx#syntax-e _%$%hd5592356739%_)))
                                (let ((_%$%tl5605456211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5605256204%_)))
                                      (_%$%hd5605356208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5605256204%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))
                      (if (gx#stx-pair? _%$%hd5592356739%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5592356739%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (if (gx#stx-pair/null? _%$%tl5592156732%_)
                                  (let ((_%__splice9854998550%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5592156732%_
                                          '0)))
                                    (let ((_%$%tl5605756217%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '1)))
                                          (_%$%target5605556214%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5605756217%_)
                                          (_%__match9883598836%_
                                           _%$%e5591656715%_
                                           _%$%hd5591756719%_
                                           _%$%tl5591856722%_
                                           _%$%e5591956725%_
                                           _%$%hd5592056729%_
                                           _%$%tl5592156732%_
                                           _%$%e5592256735%_
                                           _%$%hd5592356739%_
                                           _%$%tl5592456742%_
                                           _%$%e5605256204%_
                                           _%$%hd5605356208%_
                                           _%$%tl5605456211%_
                                           _%__splice9854998550%_
                                           _%$%target5605556214%_
                                           _%$%tl5605756217%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))))
              (if (gx#stx-pair? _%$%hd5592356739%_)
                  (let ((_%$%e5605256204%_ (gx#syntax-e _%$%hd5592356739%_)))
                    (let ((_%$%tl5605456211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5605256204%_)))
                          (_%$%hd5605356208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5605256204%_))))
                      (if (gx#stx-pair/null? _%$%tl5592156732%_)
                          (let ((_%__splice9854998550%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5592156732%_
                                  '0)))
                            (let ((_%$%tl5605756217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854998550%_ '1)))
                                  (_%$%target5605556214%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854998550%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5605756217%_)
                                  (_%__match9883598836%_
                                   _%$%e5591656715%_
                                   _%$%hd5591756719%_
                                   _%$%tl5591856722%_
                                   _%$%e5591956725%_
                                   _%$%hd5592056729%_
                                   _%$%tl5592156732%_
                                   _%$%e5592256735%_
                                   _%$%hd5592356739%_
                                   _%$%tl5592456742%_
                                   _%$%e5605256204%_
                                   _%$%hd5605356208%_
                                   _%$%tl5605456211%_
                                   _%__splice9854998550%_
                                   _%$%target5605556214%_
                                   _%$%tl5605756217%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5592356739%_)
                                                  (let ((_%$%e5605256204%_
                                                         (gx#syntax-e
                                                          _%$%hd5592356739%_)))
                                                    (let ((_%$%tl5605456211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5605256204%_)))
                                                          (_%$%hd5605356208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5605256204%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5592156732%_)
                                                          (let ((_%__splice9854998550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5592156732%_
                          '0)))
                    (let ((_%$%tl5605756217%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9854998550%_ '1)))
                          (_%$%target5605556214%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9854998550%_ '0))))
                      (if (gx#stx-null? _%$%tl5605756217%_)
                          (_%__match9883598836%_
                           _%$%e5591656715%_
                           _%$%hd5591756719%_
                           _%$%tl5591856722%_
                           _%$%e5591956725%_
                           _%$%hd5592056729%_
                           _%$%tl5592156732%_
                           _%$%e5592256735%_
                           _%$%hd5592356739%_
                           _%$%tl5592456742%_
                           _%$%e5605256204%_
                           _%$%hd5605356208%_
                           _%$%tl5605456211%_
                           _%__splice9854998550%_
                           _%$%target5605556214%_
                           _%$%tl5605756217%_)
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_))))
                                          (if (gx#stx-pair? _%$%hd5592356739%_)
                                              (let ((_%$%e5605256204%_
                                                     (gx#syntax-e
                                                      _%$%hd5592356739%_)))
                                                (let ((_%$%tl5605456211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5605256204%_)))
                                                      (_%$%hd5605356208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5605256204%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5592156732%_)
                                                      (let ((_%__splice9854998550%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5592156732%_
                                                              '0)))
                                                        (let ((_%$%tl5605756217%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '1)))
                      (_%$%target5605556214%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '0))))
                  (if (gx#stx-null? _%$%tl5605756217%_)
                      (_%__match9883598836%_
                       _%$%e5591656715%_
                       _%$%hd5591756719%_
                       _%$%tl5591856722%_
                       _%$%e5591956725%_
                       _%$%hd5592056729%_
                       _%$%tl5592156732%_
                       _%$%e5592256735%_
                       _%$%hd5592356739%_
                       _%$%tl5592456742%_
                       _%$%e5605256204%_
                       _%$%hd5605356208%_
                       _%$%tl5605456211%_
                       _%__splice9854998550%_
                       _%$%target5605556214%_
                       _%$%tl5605756217%_)
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))
                                      (if (gx#stx-pair? _%$%hd5592356739%_)
                                          (let ((_%$%e5605256204%_
                                                 (gx#syntax-e
                                                  _%$%hd5592356739%_)))
                                            (let ((_%$%tl5605456211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5605256204%_)))
                                                  (_%$%hd5605356208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5605256204%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5592156732%_)
                                                  (let ((_%__splice9854998550%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5592156732%_
                                                          '0)))
                                                    (let ((_%$%tl5605756217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '1)))
                                                          (_%$%target5605556214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5605756217%_)
                                                          (_%__match9883598836%_
                                                           _%$%e5591656715%_
                                                           _%$%hd5591756719%_
                                                           _%$%tl5591856722%_
                                                           _%$%e5591956725%_
                                                           _%$%hd5592056729%_
                                                           _%$%tl5592156732%_
                                                           _%$%e5592256735%_
                                                           _%$%hd5592356739%_
                                                           _%$%tl5592456742%_
                                                           _%$%e5605256204%_
                                                           _%$%hd5605356208%_
                                                           _%$%tl5605456211%_
                                                           _%__splice9854998550%_
                                                           _%$%target5605556214%_
                                                           _%$%tl5605756217%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5587656085%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))))
                          (if (gx#stx-null? _%$%tl5593056762%_)
                              (if (gx#stx-pair/null? _%$%tl5592156732%_)
                                  (let ((_%__splice9853798538%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5592156732%_
                                          '0)))
                                    (let ((_%$%tl5597056617%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9853798538%_
                                              '1)))
                                          (_%$%target5596856614%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9853798538%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5597056617%_)
                                          (_%__match9870398704%_
                                           _%$%e5591656715%_
                                           _%$%hd5591756719%_
                                           _%$%tl5591856722%_
                                           _%$%e5591956725%_
                                           _%$%hd5592056729%_
                                           _%$%tl5592156732%_
                                           _%$%e5592256735%_
                                           _%$%hd5592356739%_
                                           _%$%tl5592456742%_
                                           _%$%e5592556745%_
                                           _%$%hd5592656749%_
                                           _%$%tl5592756752%_
                                           _%$%e5592856755%_
                                           _%$%hd5592956759%_
                                           _%$%tl5593056762%_
                                           _%__splice9853798538%_
                                           _%$%target5596856614%_
                                           _%$%tl5597056617%_)
                                          (if (gx#stx-pair? _%$%hd5592356739%_)
                                              (let ((_%$%e5605256204%_
                                                     (gx#syntax-e
                                                      _%$%hd5592356739%_)))
                                                (let ((_%$%tl5605456211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5605256204%_)))
                                                      (_%$%hd5605356208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5605256204%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))))
                                  (if (gx#stx-pair? _%$%hd5592356739%_)
                                      (let ((_%$%e5605256204%_
                                             (gx#syntax-e _%$%hd5592356739%_)))
                                        (let ((_%$%tl5605456211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605256204%_)))
                                              (_%$%hd5605356208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605256204%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))
                              (if (gx#identifier? _%$%hd5592656749%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g105198_|
                                       _%$%hd5592656749%_)
                                      (if (gx#stx-pair? _%$%tl5593056762%_)
                                          (let ((_%$%e5602456334%_
                                                 (gx#syntax-e
                                                  _%$%tl5593056762%_)))
                                            (let ((_%$%tl5602656341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602456334%_)))
                                                  (_%$%hd5602556338%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602456334%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5602656341%_)
                                                  (let ((_%$%e5602756344%_
                                                         (gx#syntax-e
                                                          _%$%tl5602656341%_)))
                                                    (let ((_%$%tl5602956351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5602756344%_)))
                                                          (_%$%hd5602856348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5602756344%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5602956351%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5592156732%_)
                                                              (let ((_%__splice9854598546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5592156732%_
                              '0)))
                        (let ((_%$%tl5603256357%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854598546%_ '1)))
                              (_%$%target5603056354%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854598546%_ '0))))
                          (if (gx#stx-null? _%$%tl5603256357%_)
                              (_%__match9880398804%_
                               _%$%e5591656715%_
                               _%$%hd5591756719%_
                               _%$%tl5591856722%_
                               _%$%e5591956725%_
                               _%$%hd5592056729%_
                               _%$%tl5592156732%_
                               _%$%e5592256735%_
                               _%$%hd5592356739%_
                               _%$%tl5592456742%_
                               _%$%e5592556745%_
                               _%$%hd5592656749%_
                               _%$%tl5592756752%_
                               _%$%e5592856755%_
                               _%$%hd5592956759%_
                               _%$%tl5593056762%_
                               _%$%e5602456334%_
                               _%$%hd5602556338%_
                               _%$%tl5602656341%_
                               _%$%e5602756344%_
                               _%$%hd5602856348%_
                               _%$%tl5602956351%_
                               _%__splice9854598546%_
                               _%$%target5603056354%_
                               _%$%tl5603256357%_)
                              (if (gx#stx-pair? _%$%hd5592356739%_)
                                  (let ((_%$%e5605256204%_
                                         (gx#syntax-e _%$%hd5592356739%_)))
                                    (let ((_%$%tl5605456211%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5605256204%_)))
                                          (_%$%hd5605356208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5605256204%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))))
                      (if (gx#stx-pair? _%$%hd5592356739%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5592356739%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))
                  (if (gx#stx-pair? _%$%hd5592356739%_)
                      (let ((_%$%e5605256204%_
                             (gx#syntax-e _%$%hd5592356739%_)))
                        (let ((_%$%tl5605456211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5605256204%_)))
                              (_%$%hd5605356208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5605256204%_))))
                          (if (gx#stx-pair/null? _%$%tl5592156732%_)
                              (let ((_%__splice9854998550%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5592156732%_
                                      '0)))
                                (let ((_%$%tl5605756217%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9854998550%_
                                          '1)))
                                      (_%$%target5605556214%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9854998550%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5605756217%_)
                                      (_%__match9883598836%_
                                       _%$%e5591656715%_
                                       _%$%hd5591756719%_
                                       _%$%tl5591856722%_
                                       _%$%e5591956725%_
                                       _%$%hd5592056729%_
                                       _%$%tl5592156732%_
                                       _%$%e5592256735%_
                                       _%$%hd5592356739%_
                                       _%$%tl5592456742%_
                                       _%$%e5605256204%_
                                       _%$%hd5605356208%_
                                       _%$%tl5605456211%_
                                       _%__splice9854998550%_
                                       _%$%target5605556214%_
                                       _%$%tl5605756217%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_)))))
                      (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5592356739%_)
                                                      (let ((_%$%e5605256204%_
                                                             (gx#syntax-e
                                                              _%$%hd5592356739%_)))
                                                        (let ((_%$%tl5605456211%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5605256204%_)))
                      (_%$%hd5605356208%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5605256204%_))))
                  (if (gx#stx-pair/null? _%$%tl5592156732%_)
                      (let ((_%__splice9854998550%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5592156732%_
                              '0)))
                        (let ((_%$%tl5605756217%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854998550%_ '1)))
                              (_%$%target5605556214%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854998550%_ '0))))
                          (if (gx#stx-null? _%$%tl5605756217%_)
                              (_%__match9883598836%_
                               _%$%e5591656715%_
                               _%$%hd5591756719%_
                               _%$%tl5591856722%_
                               _%$%e5591956725%_
                               _%$%hd5592056729%_
                               _%$%tl5592156732%_
                               _%$%e5592256735%_
                               _%$%hd5592356739%_
                               _%$%tl5592456742%_
                               _%$%e5605256204%_
                               _%$%hd5605356208%_
                               _%$%tl5605456211%_
                               _%__splice9854998550%_
                               _%$%target5605556214%_
                               _%$%tl5605756217%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_)))))
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5592356739%_)
                                              (let ((_%$%e5605256204%_
                                                     (gx#syntax-e
                                                      _%$%hd5592356739%_)))
                                                (let ((_%$%tl5605456211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5605256204%_)))
                                                      (_%$%hd5605356208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5605256204%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5592156732%_)
                                                      (let ((_%__splice9854998550%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5592156732%_
                                                              '0)))
                                                        (let ((_%$%tl5605756217%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '1)))
                      (_%$%target5605556214%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '0))))
                  (if (gx#stx-null? _%$%tl5605756217%_)
                      (_%__match9883598836%_
                       _%$%e5591656715%_
                       _%$%hd5591756719%_
                       _%$%tl5591856722%_
                       _%$%e5591956725%_
                       _%$%hd5592056729%_
                       _%$%tl5592156732%_
                       _%$%e5592256735%_
                       _%$%hd5592356739%_
                       _%$%tl5592456742%_
                       _%$%e5605256204%_
                       _%$%hd5605356208%_
                       _%$%tl5605456211%_
                       _%__splice9854998550%_
                       _%$%target5605556214%_
                       _%$%tl5605756217%_)
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))
                                      (if (gx#stx-pair? _%$%hd5592356739%_)
                                          (let ((_%$%e5605256204%_
                                                 (gx#syntax-e
                                                  _%$%hd5592356739%_)))
                                            (let ((_%$%tl5605456211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5605256204%_)))
                                                  (_%$%hd5605356208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5605256204%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5592156732%_)
                                                  (let ((_%__splice9854998550%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5592156732%_
                                                          '0)))
                                                    (let ((_%$%tl5605756217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '1)))
                                                          (_%$%target5605556214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5605756217%_)
                                                          (_%__match9883598836%_
                                                           _%$%e5591656715%_
                                                           _%$%hd5591756719%_
                                                           _%$%tl5591856722%_
                                                           _%$%e5591956725%_
                                                           _%$%hd5592056729%_
                                                           _%$%tl5592156732%_
                                                           _%$%e5592256735%_
                                                           _%$%hd5592356739%_
                                                           _%$%tl5592456742%_
                                                           _%$%e5605256204%_
                                                           _%$%hd5605356208%_
                                                           _%$%tl5605456211%_
                                                           _%__splice9854998550%_
                                                           _%$%target5605556214%_
                                                           _%$%tl5605756217%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5587656085%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                  (if (gx#stx-pair? _%$%hd5592356739%_)
                                      (let ((_%$%e5605256204%_
                                             (gx#syntax-e _%$%hd5592356739%_)))
                                        (let ((_%$%tl5605456211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605256204%_)))
                                              (_%$%hd5605356208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605256204%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5592156732%_)
                                              (let ((_%__splice9854998550%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5592156732%_
                                                      '0)))
                                                (let ((_%$%tl5605756217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9854998550%_
                                                          '1)))
                                                      (_%$%target5605556214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9854998550%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5605756217%_)
                                                      (_%__match9883598836%_
                                                       _%$%e5591656715%_
                                                       _%$%hd5591756719%_
                                                       _%$%tl5591856722%_
                                                       _%$%e5591956725%_
                                                       _%$%hd5592056729%_
                                                       _%$%tl5592156732%_
                                                       _%$%e5592256735%_
                                                       _%$%hd5592356739%_
                                                       _%$%tl5592456742%_
                                                       _%$%e5605256204%_
                                                       _%$%hd5605356208%_
                                                       _%$%tl5605456211%_
                                                       _%__splice9854998550%_
                                                       _%$%target5605556214%_
                                                       _%$%tl5605756217%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5587656085%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))))))
                   (_%__match9860198602%_
                    (lambda (_%$%e5588356889%_
                             _%$%hd5588456893%_
                             _%$%tl5588556896%_
                             _%$%e5588656899%_
                             _%$%hd5588756903%_
                             _%$%tl5588856906%_
                             _%$%e5588956909%_
                             _%$%hd5589056913%_
                             _%$%tl5589156916%_
                             _%$%e5589256919%_
                             _%$%hd5589356923%_
                             _%$%tl5589456926%_
                             _%$%e5589556929%_
                             _%$%hd5589656933%_
                             _%$%tl5589756936%_
                             _%$%e5589856939%_
                             _%$%hd5589956943%_
                             _%$%tl5590056946%_
                             _%__splice9852998530%_
                             _%$%target5590156949%_
                             _%$%tl5590356952%_)
                      (letrec ((_%$%loop5590456955%_
                                (lambda (_%$%hd5590256959%_
                                         _%$%body5590856962%_)
                                  (if (gx#stx-pair? _%$%hd5590256959%_)
                                      (let ((_%$%e5590556964%_
                                             (gx#syntax-e _%$%hd5590256959%_)))
                                        (let ((_%$%lp-tl5590756971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5590556964%_)))
                                              (_%$%lp-hd5590656968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5590556964%_))))
                                          (_%$%loop5590456955%_
                                           _%$%lp-tl5590756971%_
                                           (cons _%$%lp-hd5590656968%_
                                                 _%$%body5590856962%_))))
                                      (let ((_%$%body5590956974%_
                                             (reverse _%$%body5590856962%_)))
                                        (let ((_%$%g5587856977%_
                                               _%$%body5590956974%_)
                                              (_%$%g5587956979%_
                                               _%$%hd5589956943%_)
                                              (_%$%g5588056980%_
                                               _%$%hd5589656933%_)
                                              (_%$%g5588156981%_
                                               _%$%hd5589356923%_)
                                              (_%$%g5588256982%_
                                               _%$%hd5589056913%_))
                                          (if (and (gx#identifier?
                                                    _%$%g5588256982%_)
                                                   (gx#identifier?
                                                    _%$%g5588056980%_)
                                                   (or (gx#free-identifier=?
                                                        _%$%g5588056980%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%$%g5588056980%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%$%g5588056980%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%$%g5588056980%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%$%g5588056980%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9852798528%_
                                               _%$%g5587856977%_
                                               _%$%g5587956979%_
                                               _%$%g5588056980%_
                                               _%$%g5588156981%_
                                               _%$%g5588256982%_)
                                              (_%__match9863198632%_
                                               _%$%e5588356889%_
                                               _%$%hd5588456893%_
                                               _%$%tl5588556896%_
                                               _%$%e5588656899%_
                                               _%$%hd5588756903%_
                                               _%$%tl5588856906%_
                                               _%$%e5588956909%_
                                               _%$%hd5589056913%_
                                               _%$%tl5589156916%_
                                               _%$%e5589256919%_
                                               _%$%hd5589356923%_
                                               _%$%tl5589456926%_
                                               _%$%e5589556929%_
                                               _%$%hd5589656933%_
                                               _%$%tl5589756936%_))))))))
                        (_%$%loop5590456955%_ _%$%target5590156949%_ '())))))
              (if (gx#stx-pair? _%__stx9852498525%_)
                  (let ((_%$%e5588356889%_ (gx#syntax-e _%__stx9852498525%_)))
                    (let ((_%$%tl5588556896%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5588356889%_)))
                          (_%$%hd5588456893%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5588356889%_))))
                      (if (gx#stx-pair? _%$%tl5588556896%_)
                          (let ((_%$%e5588656899%_
                                 (gx#syntax-e _%$%tl5588556896%_)))
                            (let ((_%$%tl5588856906%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5588656899%_)))
                                  (_%$%hd5588756903%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5588656899%_))))
                              (if (gx#stx-pair? _%$%hd5588756903%_)
                                  (let ((_%$%e5588956909%_
                                         (gx#syntax-e _%$%hd5588756903%_)))
                                    (let ((_%$%tl5589156916%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5588956909%_)))
                                          (_%$%hd5589056913%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5588956909%_))))
                                      (if (gx#stx-pair? _%$%tl5589156916%_)
                                          (let ((_%$%e5589256919%_
                                                 (gx#syntax-e
                                                  _%$%tl5589156916%_)))
                                            (let ((_%$%tl5589456926%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5589256919%_)))
                                                  (_%$%hd5589356923%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5589256919%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5589456926%_)
                                                  (let ((_%$%e5589556929%_
                                                         (gx#syntax-e
                                                          _%$%tl5589456926%_)))
                                                    (let ((_%$%tl5589756936%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5589556929%_)))
                                                          (_%$%hd5589656933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5589556929%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5589756936%_)
                                                          (let ((_%$%e5589856939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5589756936%_)))
                    (let ((_%$%tl5590056946%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5589856939%_)))
                          (_%$%hd5589956943%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5589856939%_))))
                      (if (gx#stx-null? _%$%tl5590056946%_)
                          (if (gx#stx-pair/null? _%$%tl5588856906%_)
                              (let ((_%__splice9852998530%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5588856906%_
                                      '0)))
                                (let ((_%$%tl5590356952%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9852998530%_
                                          '1)))
                                      (_%$%target5590156949%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9852998530%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5590356952%_)
                                      (_%__match9860198602%_
                                       _%$%e5588356889%_
                                       _%$%hd5588456893%_
                                       _%$%tl5588556896%_
                                       _%$%e5588656899%_
                                       _%$%hd5588756903%_
                                       _%$%tl5588856906%_
                                       _%$%e5588956909%_
                                       _%$%hd5589056913%_
                                       _%$%tl5589156916%_
                                       _%$%e5589256919%_
                                       _%$%hd5589356923%_
                                       _%$%tl5589456926%_
                                       _%$%e5589556929%_
                                       _%$%hd5589656933%_
                                       _%$%tl5589756936%_
                                       _%$%e5589856939%_
                                       _%$%hd5589956943%_
                                       _%$%tl5590056946%_
                                       _%__splice9852998530%_
                                       _%$%target5590156949%_
                                       _%$%tl5590356952%_)
                                      (if (gx#stx-pair? _%$%hd5589056913%_)
                                          (let ((_%$%e5605256204%_
                                                 (gx#syntax-e
                                                  _%$%hd5589056913%_)))
                                            (let ((_%$%tl5605456211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5605256204%_)))
                                                  (_%$%hd5605356208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5605256204%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))))
                              (if (gx#stx-pair? _%$%hd5589056913%_)
                                  (let ((_%$%e5605256204%_
                                         (gx#syntax-e _%$%hd5589056913%_)))
                                    (let ((_%$%tl5605456211%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5605256204%_)))
                                          (_%$%hd5605356208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5605256204%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))
                          (if (gx#identifier? _%$%hd5589656933%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g105199_|
                                   _%$%hd5589656933%_)
                                  (if (gx#stx-pair? _%$%tl5590056946%_)
                                      (let ((_%$%e5593456775%_
                                             (gx#syntax-e _%$%tl5590056946%_)))
                                        (let ((_%$%tl5593656782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5593456775%_)))
                                              (_%$%hd5593556779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5593456775%_))))
                                          (if (gx#stx-pair? _%$%tl5593656782%_)
                                              (let ((_%$%e5593756785%_
                                                     (gx#syntax-e
                                                      _%$%tl5593656782%_)))
                                                (let ((_%$%tl5593956792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5593756785%_)))
                                                      (_%$%hd5593856789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5593756785%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5593956792%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5588856906%_)
                                                          (let ((_%__splice9853398534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5588856906%_
                          '0)))
                    (let ((_%$%tl5594256798%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9853398534%_ '1)))
                          (_%$%target5594056795%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9853398534%_ '0))))
                      (if (gx#stx-null? _%$%tl5594256798%_)
                          (_%__match9866398664%_
                           _%$%e5588356889%_
                           _%$%hd5588456893%_
                           _%$%tl5588556896%_
                           _%$%e5588656899%_
                           _%$%hd5588756903%_
                           _%$%tl5588856906%_
                           _%$%e5588956909%_
                           _%$%hd5589056913%_
                           _%$%tl5589156916%_
                           _%$%e5589256919%_
                           _%$%hd5589356923%_
                           _%$%tl5589456926%_
                           _%$%e5589556929%_
                           _%$%hd5589656933%_
                           _%$%tl5589756936%_
                           _%$%e5589856939%_
                           _%$%hd5589956943%_
                           _%$%tl5590056946%_
                           _%$%e5593456775%_
                           _%$%hd5593556779%_
                           _%$%tl5593656782%_
                           _%$%e5593756785%_
                           _%$%hd5593856789%_
                           _%$%tl5593956792%_
                           _%__splice9853398534%_
                           _%$%target5594056795%_
                           _%$%tl5594256798%_)
                          (if (gx#stx-pair? _%$%hd5589056913%_)
                              (let ((_%$%e5605256204%_
                                     (gx#syntax-e _%$%hd5589056913%_)))
                                (let ((_%$%tl5605456211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5605256204%_)))
                                      (_%$%hd5605356208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5605256204%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))))
                  (if (gx#stx-pair? _%$%hd5589056913%_)
                      (let ((_%$%e5605256204%_
                             (gx#syntax-e _%$%hd5589056913%_)))
                        (let ((_%$%tl5605456211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5605256204%_)))
                              (_%$%hd5605356208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5605256204%_))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))
                      (let () (declare (not safe)) (_%$%g5587656085%_))))
              (if (gx#stx-pair? _%$%hd5589056913%_)
                  (let ((_%$%e5605256204%_ (gx#syntax-e _%$%hd5589056913%_)))
                    (let ((_%$%tl5605456211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5605256204%_)))
                          (_%$%hd5605356208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5605256204%_))))
                      (if (gx#stx-pair/null? _%$%tl5588856906%_)
                          (let ((_%__splice9854998550%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5588856906%_
                                  '0)))
                            (let ((_%$%tl5605756217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854998550%_ '1)))
                                  (_%$%target5605556214%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854998550%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5605756217%_)
                                  (_%__match9883598836%_
                                   _%$%e5588356889%_
                                   _%$%hd5588456893%_
                                   _%$%tl5588556896%_
                                   _%$%e5588656899%_
                                   _%$%hd5588756903%_
                                   _%$%tl5588856906%_
                                   _%$%e5588956909%_
                                   _%$%hd5589056913%_
                                   _%$%tl5589156916%_
                                   _%$%e5605256204%_
                                   _%$%hd5605356208%_
                                   _%$%tl5605456211%_
                                   _%__splice9854998550%_
                                   _%$%target5605556214%_
                                   _%$%tl5605756217%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%$%hd5589356923%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g105198_|
                                                       _%$%hd5589356923%_)
                                                      (if (gx#stx-null?
                                                           _%$%tl5593656782%_)
                                                          (if (gx#stx-pair/null?
                                                               _%$%tl5588856906%_)
                                                              (let ((_%__splice9854598546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%$%tl5588856906%_
                              '0)))
                        (let ((_%$%tl5603256357%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854598546%_ '1)))
                              (_%$%target5603056354%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854598546%_ '0))))
                          (if (gx#stx-null? _%$%tl5603256357%_)
                              (_%__match9880398804%_
                               _%$%e5588356889%_
                               _%$%hd5588456893%_
                               _%$%tl5588556896%_
                               _%$%e5588656899%_
                               _%$%hd5588756903%_
                               _%$%tl5588856906%_
                               _%$%e5588956909%_
                               _%$%hd5589056913%_
                               _%$%tl5589156916%_
                               _%$%e5589256919%_
                               _%$%hd5589356923%_
                               _%$%tl5589456926%_
                               _%$%e5589556929%_
                               _%$%hd5589656933%_
                               _%$%tl5589756936%_
                               _%$%e5589856939%_
                               _%$%hd5589956943%_
                               _%$%tl5590056946%_
                               _%$%e5593456775%_
                               _%$%hd5593556779%_
                               _%$%tl5593656782%_
                               _%__splice9854598546%_
                               _%$%target5603056354%_
                               _%$%tl5603256357%_)
                              (if (gx#stx-pair? _%$%hd5589056913%_)
                                  (let ((_%$%e5605256204%_
                                         (gx#syntax-e _%$%hd5589056913%_)))
                                    (let ((_%$%tl5605456211%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5605256204%_)))
                                          (_%$%hd5605356208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5605256204%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))))
                      (if (gx#stx-pair? _%$%hd5589056913%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5589056913%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))
                  (if (gx#stx-pair? _%$%hd5589056913%_)
                      (let ((_%$%e5605256204%_
                             (gx#syntax-e _%$%hd5589056913%_)))
                        (let ((_%$%tl5605456211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5605256204%_)))
                              (_%$%hd5605356208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5605256204%_))))
                          (if (gx#stx-pair/null? _%$%tl5588856906%_)
                              (let ((_%__splice9854998550%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5588856906%_
                                      '0)))
                                (let ((_%$%tl5605756217%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9854998550%_
                                          '1)))
                                      (_%$%target5605556214%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9854998550%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5605756217%_)
                                      (_%__match9883598836%_
                                       _%$%e5588356889%_
                                       _%$%hd5588456893%_
                                       _%$%tl5588556896%_
                                       _%$%e5588656899%_
                                       _%$%hd5588756903%_
                                       _%$%tl5588856906%_
                                       _%$%e5588956909%_
                                       _%$%hd5589056913%_
                                       _%$%tl5589156916%_
                                       _%$%e5605256204%_
                                       _%$%hd5605356208%_
                                       _%$%tl5605456211%_
                                       _%__splice9854998550%_
                                       _%$%target5605556214%_
                                       _%$%tl5605756217%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_)))))
                      (let () (declare (not safe)) (_%$%g5587656085%_))))
              (if (gx#stx-pair? _%$%hd5589056913%_)
                  (let ((_%$%e5605256204%_ (gx#syntax-e _%$%hd5589056913%_)))
                    (let ((_%$%tl5605456211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5605256204%_)))
                          (_%$%hd5605356208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5605256204%_))))
                      (if (gx#stx-pair/null? _%$%tl5588856906%_)
                          (let ((_%__splice9854998550%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5588856906%_
                                  '0)))
                            (let ((_%$%tl5605756217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854998550%_ '1)))
                                  (_%$%target5605556214%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854998550%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5605756217%_)
                                  (_%__match9883598836%_
                                   _%$%e5588356889%_
                                   _%$%hd5588456893%_
                                   _%$%tl5588556896%_
                                   _%$%e5588656899%_
                                   _%$%hd5588756903%_
                                   _%$%tl5588856906%_
                                   _%$%e5588956909%_
                                   _%$%hd5589056913%_
                                   _%$%tl5589156916%_
                                   _%$%e5605256204%_
                                   _%$%hd5605356208%_
                                   _%$%tl5605456211%_
                                   _%__splice9854998550%_
                                   _%$%target5605556214%_
                                   _%$%tl5605756217%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5589056913%_)
                                                      (let ((_%$%e5605256204%_
                                                             (gx#syntax-e
                                                              _%$%hd5589056913%_)))
                                                        (let ((_%$%tl5605456211%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5605256204%_)))
                      (_%$%hd5605356208%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5605256204%_))))
                  (if (gx#stx-pair/null? _%$%tl5588856906%_)
                      (let ((_%__splice9854998550%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5588856906%_
                              '0)))
                        (let ((_%$%tl5605756217%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854998550%_ '1)))
                              (_%$%target5605556214%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854998550%_ '0))))
                          (if (gx#stx-null? _%$%tl5605756217%_)
                              (_%__match9883598836%_
                               _%$%e5588356889%_
                               _%$%hd5588456893%_
                               _%$%tl5588556896%_
                               _%$%e5588656899%_
                               _%$%hd5588756903%_
                               _%$%tl5588856906%_
                               _%$%e5588956909%_
                               _%$%hd5589056913%_
                               _%$%tl5589156916%_
                               _%$%e5605256204%_
                               _%$%hd5605356208%_
                               _%$%tl5605456211%_
                               _%__splice9854998550%_
                               _%$%target5605556214%_
                               _%$%tl5605756217%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_)))))
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%$%hd5589056913%_)
                                          (let ((_%$%e5605256204%_
                                                 (gx#syntax-e
                                                  _%$%hd5589056913%_)))
                                            (let ((_%$%tl5605456211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5605256204%_)))
                                                  (_%$%hd5605356208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5605256204%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5588856906%_)
                                                  (let ((_%__splice9854998550%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5588856906%_
                                                          '0)))
                                                    (let ((_%$%tl5605756217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '1)))
                                                          (_%$%target5605556214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5605756217%_)
                                                          (_%__match9883598836%_
                                                           _%$%e5588356889%_
                                                           _%$%hd5588456893%_
                                                           _%$%tl5588556896%_
                                                           _%$%e5588656899%_
                                                           _%$%hd5588756903%_
                                                           _%$%tl5588856906%_
                                                           _%$%e5588956909%_
                                                           _%$%hd5589056913%_
                                                           _%$%tl5589156916%_
                                                           _%$%e5605256204%_
                                                           _%$%hd5605356208%_
                                                           _%$%tl5605456211%_
                                                           _%__splice9854998550%_
                                                           _%$%target5605556214%_
                                                           _%$%tl5605756217%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5587656085%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                  (if (gx#identifier? _%$%hd5589356923%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g105198_|
                                           _%$%hd5589356923%_)
                                          (if (gx#stx-pair? _%$%tl5590056946%_)
                                              (let ((_%$%e5602756344%_
                                                     (gx#syntax-e
                                                      _%$%tl5590056946%_)))
                                                (let ((_%$%tl5602956351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5602756344%_)))
                                                      (_%$%hd5602856348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5602756344%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5602956351%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5588856906%_)
                                                          (let ((_%__splice9854598546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5588856906%_
                          '0)))
                    (let ((_%$%tl5603256357%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9854598546%_ '1)))
                          (_%$%target5603056354%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9854598546%_ '0))))
                      (if (gx#stx-null? _%$%tl5603256357%_)
                          (_%__match9880398804%_
                           _%$%e5588356889%_
                           _%$%hd5588456893%_
                           _%$%tl5588556896%_
                           _%$%e5588656899%_
                           _%$%hd5588756903%_
                           _%$%tl5588856906%_
                           _%$%e5588956909%_
                           _%$%hd5589056913%_
                           _%$%tl5589156916%_
                           _%$%e5589256919%_
                           _%$%hd5589356923%_
                           _%$%tl5589456926%_
                           _%$%e5589556929%_
                           _%$%hd5589656933%_
                           _%$%tl5589756936%_
                           _%$%e5589856939%_
                           _%$%hd5589956943%_
                           _%$%tl5590056946%_
                           _%$%e5602756344%_
                           _%$%hd5602856348%_
                           _%$%tl5602956351%_
                           _%__splice9854598546%_
                           _%$%target5603056354%_
                           _%$%tl5603256357%_)
                          (if (gx#stx-pair? _%$%hd5589056913%_)
                              (let ((_%$%e5605256204%_
                                     (gx#syntax-e _%$%hd5589056913%_)))
                                (let ((_%$%tl5605456211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5605256204%_)))
                                      (_%$%hd5605356208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5605256204%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))))
                  (if (gx#stx-pair? _%$%hd5589056913%_)
                      (let ((_%$%e5605256204%_
                             (gx#syntax-e _%$%hd5589056913%_)))
                        (let ((_%$%tl5605456211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5605256204%_)))
                              (_%$%hd5605356208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5605256204%_))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))
                      (let () (declare (not safe)) (_%$%g5587656085%_))))
              (if (gx#stx-pair? _%$%hd5589056913%_)
                  (let ((_%$%e5605256204%_ (gx#syntax-e _%$%hd5589056913%_)))
                    (let ((_%$%tl5605456211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5605256204%_)))
                          (_%$%hd5605356208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5605256204%_))))
                      (if (gx#stx-pair/null? _%$%tl5588856906%_)
                          (let ((_%__splice9854998550%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5588856906%_
                                  '0)))
                            (let ((_%$%tl5605756217%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9854998550%_ '1)))
                                  (_%$%target5605556214%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9854998550%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5605756217%_)
                                  (_%__match9883598836%_
                                   _%$%e5588356889%_
                                   _%$%hd5588456893%_
                                   _%$%tl5588556896%_
                                   _%$%e5588656899%_
                                   _%$%hd5588756903%_
                                   _%$%tl5588856906%_
                                   _%$%e5588956909%_
                                   _%$%hd5589056913%_
                                   _%$%tl5589156916%_
                                   _%$%e5605256204%_
                                   _%$%hd5605356208%_
                                   _%$%tl5605456211%_
                                   _%__splice9854998550%_
                                   _%$%target5605556214%_
                                   _%$%tl5605756217%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%$%hd5589056913%_)
                                                  (let ((_%$%e5605256204%_
                                                         (gx#syntax-e
                                                          _%$%hd5589056913%_)))
                                                    (let ((_%$%tl5605456211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5605256204%_)))
                                                          (_%$%hd5605356208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5605256204%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl5588856906%_)
                                                          (let ((_%__splice9854998550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl5588856906%_
                          '0)))
                    (let ((_%$%tl5605756217%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9854998550%_ '1)))
                          (_%$%target5605556214%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9854998550%_ '0))))
                      (if (gx#stx-null? _%$%tl5605756217%_)
                          (_%__match9883598836%_
                           _%$%e5588356889%_
                           _%$%hd5588456893%_
                           _%$%tl5588556896%_
                           _%$%e5588656899%_
                           _%$%hd5588756903%_
                           _%$%tl5588856906%_
                           _%$%e5588956909%_
                           _%$%hd5589056913%_
                           _%$%tl5589156916%_
                           _%$%e5605256204%_
                           _%$%hd5605356208%_
                           _%$%tl5605456211%_
                           _%__splice9854998550%_
                           _%$%target5605556214%_
                           _%$%tl5605756217%_)
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_))))
                                          (if (gx#stx-pair? _%$%hd5589056913%_)
                                              (let ((_%$%e5605256204%_
                                                     (gx#syntax-e
                                                      _%$%hd5589056913%_)))
                                                (let ((_%$%tl5605456211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5605256204%_)))
                                                      (_%$%hd5605356208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5605256204%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5588856906%_)
                                                      (let ((_%__splice9854998550%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5588856906%_
                                                              '0)))
                                                        (let ((_%$%tl5605756217%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '1)))
                      (_%$%target5605556214%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '0))))
                  (if (gx#stx-null? _%$%tl5605756217%_)
                      (_%__match9883598836%_
                       _%$%e5588356889%_
                       _%$%hd5588456893%_
                       _%$%tl5588556896%_
                       _%$%e5588656899%_
                       _%$%hd5588756903%_
                       _%$%tl5588856906%_
                       _%$%e5588956909%_
                       _%$%hd5589056913%_
                       _%$%tl5589156916%_
                       _%$%e5605256204%_
                       _%$%hd5605356208%_
                       _%$%tl5605456211%_
                       _%__splice9854998550%_
                       _%$%target5605556214%_
                       _%$%tl5605756217%_)
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))
                                      (if (gx#stx-pair? _%$%hd5589056913%_)
                                          (let ((_%$%e5605256204%_
                                                 (gx#syntax-e
                                                  _%$%hd5589056913%_)))
                                            (let ((_%$%tl5605456211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5605256204%_)))
                                                  (_%$%hd5605356208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5605256204%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5588856906%_)
                                                  (let ((_%__splice9854998550%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5588856906%_
                                                          '0)))
                                                    (let ((_%$%tl5605756217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '1)))
                                                          (_%$%target5605556214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5605756217%_)
                                                          (_%__match9883598836%_
                                                           _%$%e5588356889%_
                                                           _%$%hd5588456893%_
                                                           _%$%tl5588556896%_
                                                           _%$%e5588656899%_
                                                           _%$%hd5588756903%_
                                                           _%$%tl5588856906%_
                                                           _%$%e5588956909%_
                                                           _%$%hd5589056913%_
                                                           _%$%tl5589156916%_
                                                           _%$%e5605256204%_
                                                           _%$%hd5605356208%_
                                                           _%$%tl5605456211%_
                                                           _%__splice9854998550%_
                                                           _%$%target5605556214%_
                                                           _%$%tl5605756217%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5587656085%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))))
                              (if (gx#identifier? _%$%hd5589356923%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g105198_|
                                       _%$%hd5589356923%_)
                                      (if (gx#stx-pair? _%$%tl5590056946%_)
                                          (let ((_%$%e5602756344%_
                                                 (gx#syntax-e
                                                  _%$%tl5590056946%_)))
                                            (let ((_%$%tl5602956351%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5602756344%_)))
                                                  (_%$%hd5602856348%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5602756344%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5602956351%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5588856906%_)
                                                      (let ((_%__splice9854598546%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5588856906%_
                                                              '0)))
                                                        (let ((_%$%tl5603256357%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9854598546%_ '1)))
                      (_%$%target5603056354%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9854598546%_ '0))))
                  (if (gx#stx-null? _%$%tl5603256357%_)
                      (_%__match9880398804%_
                       _%$%e5588356889%_
                       _%$%hd5588456893%_
                       _%$%tl5588556896%_
                       _%$%e5588656899%_
                       _%$%hd5588756903%_
                       _%$%tl5588856906%_
                       _%$%e5588956909%_
                       _%$%hd5589056913%_
                       _%$%tl5589156916%_
                       _%$%e5589256919%_
                       _%$%hd5589356923%_
                       _%$%tl5589456926%_
                       _%$%e5589556929%_
                       _%$%hd5589656933%_
                       _%$%tl5589756936%_
                       _%$%e5589856939%_
                       _%$%hd5589956943%_
                       _%$%tl5590056946%_
                       _%$%e5602756344%_
                       _%$%hd5602856348%_
                       _%$%tl5602956351%_
                       _%__splice9854598546%_
                       _%$%target5603056354%_
                       _%$%tl5603256357%_)
                      (if (gx#stx-pair? _%$%hd5589056913%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5589056913%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))
                          (let () (declare (not safe)) (_%$%g5587656085%_))))))
              (if (gx#stx-pair? _%$%hd5589056913%_)
                  (let ((_%$%e5605256204%_ (gx#syntax-e _%$%hd5589056913%_)))
                    (let ((_%$%tl5605456211%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5605256204%_)))
                          (_%$%hd5605356208%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5605256204%_))))
                      (let () (declare (not safe)) (_%$%g5587656085%_))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5589056913%_)
                                                      (let ((_%$%e5605256204%_
                                                             (gx#syntax-e
                                                              _%$%hd5589056913%_)))
                                                        (let ((_%$%tl5605456211%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5605256204%_)))
                      (_%$%hd5605356208%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5605256204%_))))
                  (if (gx#stx-pair/null? _%$%tl5588856906%_)
                      (let ((_%__splice9854998550%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5588856906%_
                              '0)))
                        (let ((_%$%tl5605756217%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854998550%_ '1)))
                              (_%$%target5605556214%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854998550%_ '0))))
                          (if (gx#stx-null? _%$%tl5605756217%_)
                              (_%__match9883598836%_
                               _%$%e5588356889%_
                               _%$%hd5588456893%_
                               _%$%tl5588556896%_
                               _%$%e5588656899%_
                               _%$%hd5588756903%_
                               _%$%tl5588856906%_
                               _%$%e5588956909%_
                               _%$%hd5589056913%_
                               _%$%tl5589156916%_
                               _%$%e5605256204%_
                               _%$%hd5605356208%_
                               _%$%tl5605456211%_
                               _%__splice9854998550%_
                               _%$%target5605556214%_
                               _%$%tl5605756217%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_)))))
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5589056913%_)
                                              (let ((_%$%e5605256204%_
                                                     (gx#syntax-e
                                                      _%$%hd5589056913%_)))
                                                (let ((_%$%tl5605456211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5605256204%_)))
                                                      (_%$%hd5605356208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5605256204%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5588856906%_)
                                                      (let ((_%__splice9854998550%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5588856906%_
                                                              '0)))
                                                        (let ((_%$%tl5605756217%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '1)))
                      (_%$%target5605556214%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '0))))
                  (if (gx#stx-null? _%$%tl5605756217%_)
                      (_%__match9883598836%_
                       _%$%e5588356889%_
                       _%$%hd5588456893%_
                       _%$%tl5588556896%_
                       _%$%e5588656899%_
                       _%$%hd5588756903%_
                       _%$%tl5588856906%_
                       _%$%e5588956909%_
                       _%$%hd5589056913%_
                       _%$%tl5589156916%_
                       _%$%e5605256204%_
                       _%$%hd5605356208%_
                       _%$%tl5605456211%_
                       _%__splice9854998550%_
                       _%$%target5605556214%_
                       _%$%tl5605756217%_)
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))
                                      (if (gx#stx-pair? _%$%hd5589056913%_)
                                          (let ((_%$%e5605256204%_
                                                 (gx#syntax-e
                                                  _%$%hd5589056913%_)))
                                            (let ((_%$%tl5605456211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5605256204%_)))
                                                  (_%$%hd5605356208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5605256204%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%tl5588856906%_)
                                                  (let ((_%__splice9854998550%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl5588856906%_
                                                          '0)))
                                                    (let ((_%$%tl5605756217%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '1)))
                                                          (_%$%target5605556214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9854998550%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5605756217%_)
                                                          (_%__match9883598836%_
                                                           _%$%e5588356889%_
                                                           _%$%hd5588456893%_
                                                           _%$%tl5588556896%_
                                                           _%$%e5588656899%_
                                                           _%$%hd5588756903%_
                                                           _%$%tl5588856906%_
                                                           _%$%e5588956909%_
                                                           _%$%hd5589056913%_
                                                           _%$%tl5589156916%_
                                                           _%$%e5605256204%_
                                                           _%$%hd5605356208%_
                                                           _%$%tl5605456211%_
                                                           _%__splice9854998550%_
                                                           _%$%target5605556214%_
                                                           _%$%tl5605756217%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g5587656085%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                  (if (gx#stx-pair? _%$%hd5589056913%_)
                                      (let ((_%$%e5605256204%_
                                             (gx#syntax-e _%$%hd5589056913%_)))
                                        (let ((_%$%tl5605456211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605256204%_)))
                                              (_%$%hd5605356208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605256204%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl5588856906%_)
                                              (let ((_%__splice9854998550%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5588856906%_
                                                      '0)))
                                                (let ((_%$%tl5605756217%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9854998550%_
                                                          '1)))
                                                      (_%$%target5605556214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9854998550%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5605756217%_)
                                                      (_%__match9883598836%_
                                                       _%$%e5588356889%_
                                                       _%$%hd5588456893%_
                                                       _%$%tl5588556896%_
                                                       _%$%e5588656899%_
                                                       _%$%hd5588756903%_
                                                       _%$%tl5588856906%_
                                                       _%$%e5588956909%_
                                                       _%$%hd5589056913%_
                                                       _%$%tl5589156916%_
                                                       _%$%e5605256204%_
                                                       _%$%hd5605356208%_
                                                       _%$%tl5605456211%_
                                                       _%__splice9854998550%_
                                                       _%$%target5605556214%_
                                                       _%$%tl5605756217%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5587656085%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))))))
                  (if (gx#stx-null? _%$%tl5589756936%_)
                      (if (gx#stx-pair/null? _%$%tl5588856906%_)
                          (let ((_%__splice9853798538%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5588856906%_
                                  '0)))
                            (let ((_%$%tl5597056617%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9853798538%_ '1)))
                                  (_%$%target5596856614%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9853798538%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5597056617%_)
                                  (_%__match9870398704%_
                                   _%$%e5588356889%_
                                   _%$%hd5588456893%_
                                   _%$%tl5588556896%_
                                   _%$%e5588656899%_
                                   _%$%hd5588756903%_
                                   _%$%tl5588856906%_
                                   _%$%e5588956909%_
                                   _%$%hd5589056913%_
                                   _%$%tl5589156916%_
                                   _%$%e5589256919%_
                                   _%$%hd5589356923%_
                                   _%$%tl5589456926%_
                                   _%$%e5589556929%_
                                   _%$%hd5589656933%_
                                   _%$%tl5589756936%_
                                   _%__splice9853798538%_
                                   _%$%target5596856614%_
                                   _%$%tl5597056617%_)
                                  (if (gx#stx-pair? _%$%hd5589056913%_)
                                      (let ((_%$%e5605256204%_
                                             (gx#syntax-e _%$%hd5589056913%_)))
                                        (let ((_%$%tl5605456211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5605256204%_)))
                                              (_%$%hd5605356208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5605256204%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))))
                          (if (gx#stx-pair? _%$%hd5589056913%_)
                              (let ((_%$%e5605256204%_
                                     (gx#syntax-e _%$%hd5589056913%_)))
                                (let ((_%$%tl5605456211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5605256204%_)))
                                      (_%$%hd5605356208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5605256204%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_))))
                      (if (gx#stx-pair? _%$%hd5589056913%_)
                          (let ((_%$%e5605256204%_
                                 (gx#syntax-e _%$%hd5589056913%_)))
                            (let ((_%$%tl5605456211%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5605256204%_)))
                                  (_%$%hd5605356208%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5605256204%_))))
                              (if (gx#stx-pair/null? _%$%tl5588856906%_)
                                  (let ((_%__splice9854998550%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5588856906%_
                                          '0)))
                                    (let ((_%$%tl5605756217%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '1)))
                                          (_%$%target5605556214%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9854998550%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5605756217%_)
                                          (_%__match9883598836%_
                                           _%$%e5588356889%_
                                           _%$%hd5588456893%_
                                           _%$%tl5588556896%_
                                           _%$%e5588656899%_
                                           _%$%hd5588756903%_
                                           _%$%tl5588856906%_
                                           _%$%e5588956909%_
                                           _%$%hd5589056913%_
                                           _%$%tl5589156916%_
                                           _%$%e5605256204%_
                                           _%$%hd5605356208%_
                                           _%$%tl5605456211%_
                                           _%__splice9854998550%_
                                           _%$%target5605556214%_
                                           _%$%tl5605756217%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5587656085%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g5587656085%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%$%hd5589056913%_)
                                                      (let ((_%$%e5605256204%_
                                                             (gx#syntax-e
                                                              _%$%hd5589056913%_)))
                                                        (let ((_%$%tl5605456211%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5605256204%_)))
                      (_%$%hd5605356208%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5605256204%_))))
                  (if (gx#stx-pair/null? _%$%tl5588856906%_)
                      (let ((_%__splice9854998550%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5588856906%_
                              '0)))
                        (let ((_%$%tl5605756217%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854998550%_ '1)))
                              (_%$%target5605556214%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9854998550%_ '0))))
                          (if (gx#stx-null? _%$%tl5605756217%_)
                              (_%__match9883598836%_
                               _%$%e5588356889%_
                               _%$%hd5588456893%_
                               _%$%tl5588556896%_
                               _%$%e5588656899%_
                               _%$%hd5588756903%_
                               _%$%tl5588856906%_
                               _%$%e5588956909%_
                               _%$%hd5589056913%_
                               _%$%tl5589156916%_
                               _%$%e5605256204%_
                               _%$%hd5605356208%_
                               _%$%tl5605456211%_
                               _%__splice9854998550%_
                               _%$%target5605556214%_
                               _%$%tl5605756217%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5587656085%_)))))
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%$%hd5589056913%_)
                                              (let ((_%$%e5605256204%_
                                                     (gx#syntax-e
                                                      _%$%hd5589056913%_)))
                                                (let ((_%$%tl5605456211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5605256204%_)))
                                                      (_%$%hd5605356208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5605256204%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5588856906%_)
                                                      (let ((_%__splice9854998550%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5588856906%_
                                                              '0)))
                                                        (let ((_%$%tl5605756217%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '1)))
                      (_%$%target5605556214%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9854998550%_ '0))))
                  (if (gx#stx-null? _%$%tl5605756217%_)
                      (_%__match9883598836%_
                       _%$%e5588356889%_
                       _%$%hd5588456893%_
                       _%$%tl5588556896%_
                       _%$%e5588656899%_
                       _%$%hd5588756903%_
                       _%$%tl5588856906%_
                       _%$%e5588956909%_
                       _%$%hd5589056913%_
                       _%$%tl5589156916%_
                       _%$%e5605256204%_
                       _%$%hd5605356208%_
                       _%$%tl5605456211%_
                       _%__splice9854998550%_
                       _%$%target5605556214%_
                       _%$%tl5605756217%_)
                      (let () (declare (not safe)) (_%$%g5587656085%_)))))
              (let () (declare (not safe)) (_%$%g5587656085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5587656085%_))))))
                                  (if (gx#stx-null? _%$%hd5588756903%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5588856906%_)
                                          (let ((_%__splice9855398554%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5588856906%_
                                                  '0)))
                                            (let ((_%$%tl5607356115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9855398554%_
                                                      '1)))
                                                  (_%$%target5607156112%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9855398554%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5607356115%_)
                                                  (_%__match9885798858%_
                                                   _%$%e5588356889%_
                                                   _%$%hd5588456893%_
                                                   _%$%tl5588556896%_
                                                   _%$%e5588656899%_
                                                   _%$%hd5588756903%_
                                                   _%$%tl5588856906%_
                                                   _%__splice9855398554%_
                                                   _%$%target5607156112%_
                                                   _%$%tl5607356115%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5587656085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5587656085%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5587656085%_))))))
                          (let () (declare (not safe)) (_%$%g5587656085%_)))))
                  (let () (declare (not safe)) (_%$%g5587656085%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx57045%_)
        (let* ((_%$%g5704957083%_
                (lambda (_%$%g5705057079%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5705057079%_)))
               (_%$%g5704857204%_
                (lambda (_%$%g5705057087%_)
                  (if (gx#stx-pair? _%$%g5705057087%_)
                      (let ((_%$%e5705457090%_
                             (gx#syntax-e _%$%g5705057087%_)))
                        (let ((_%$%hd5705557094%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5705457090%_)))
                              (_%$%tl5705657097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5705457090%_))))
                          (if (gx#stx-pair? _%$%tl5705657097%_)
                              (let ((_%$%e5705757100%_
                                     (gx#syntax-e _%$%tl5705657097%_)))
                                (let ((_%$%hd5705857104%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5705757100%_)))
                                      (_%$%tl5705957107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5705757100%_))))
                                  (if (gx#stx-pair? _%$%hd5705857104%_)
                                      (let ((_%$%e5706057110%_
                                             (gx#syntax-e _%$%hd5705857104%_)))
                                        (let ((_%$%hd5706157114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5706057110%_)))
                                              (_%$%tl5706257117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5706057110%_))))
                                          (if (gx#stx-pair? _%$%tl5706257117%_)
                                              (let ((_%$%e5706357120%_
                                                     (gx#syntax-e
                                                      _%$%tl5706257117%_)))
                                                (let ((_%$%hd5706457124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5706357120%_)))
                                                      (_%$%tl5706557127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5706357120%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd5706457124%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g105200_|
                                                           _%$%hd5706457124%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl5706557127%_)
                                                              (let ((_%$%e5706657130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl5706557127%_)))
                        (let ((_%$%hd5706757134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5706657130%_)))
                              (_%$%tl5706857137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5706657130%_))))
                          (if (gx#stx-null? _%$%tl5706857137%_)
                              (if (gx#stx-pair/null? _%$%tl5705957107%_)
                                  (let ((_g105201_
                                         (gx#syntax-split-splice
                                          _%$%tl5705957107%_
                                          '0)))
                                    (begin
                                      (let ((_g105202_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g105201_)
                                                   (##values-length _g105201_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g105202_ 2)))
                                            (error "Context expects 2 values"
                                                   _g105202_)))
                                      (let ((_%$%target5706957140%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g105201_ 0)))
                                            (_%$%tl5707157143%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g105201_ 1))))
                                        (if (gx#stx-null? _%$%tl5707157143%_)
                                            (letrec ((_%$%loop5707257146%_
                                                      (lambda (_%$%hd5707057150%_
                                                               _%$%body5707657153%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd5707057150%_)
                                                            (let ((_%$%e5707357155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd5707057150%_)))
                      (let ((_%$%lp-hd5707457159%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5707357155%_)))
                            (_%$%lp-tl5707557162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5707357155%_))))
                        (_%$%loop5707257146%_
                         _%$%lp-tl5707557162%_
                         (cons _%$%lp-hd5707457159%_ _%$%body5707657153%_))))
                    (let ((_%$%body5707757165%_
                           (reverse _%$%body5707657153%_)))
                      (if (gx#identifier? _%$%hd5706157114%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _%$%hd5706757134%_
                                            (cons _%$%hd5706157114%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons '()
                                                        (foldr (lambda (_%$%g5719557198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g5719657201%_)
                         (cons _%$%g5719557198%_ _%$%g5719657201%_))
                       '()
                       _%$%body5707757165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'contract-violation!)
                                                        (cons _%$%hd5706157114%_
                                                              (cons _%$%hd5706757134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd5706157114%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (_%$%g5704957083%_ _%$%g5705057087%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop5707257146%_
                                               _%$%target5706957140%_
                                               '()))
                                            (_%$%g5704957083%_
                                             _%$%g5705057087%_)))))
                                  (_%$%g5704957083%_ _%$%g5705057087%_))
                              (_%$%g5704957083%_ _%$%g5705057087%_))))
                      (_%$%g5704957083%_ _%$%g5705057087%_))
                  (_%$%g5704957083%_ _%$%g5705057087%_))
              (_%$%g5704957083%_ _%$%g5705057087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5704957083%_
                                               _%$%g5705057087%_))))
                                      (_%$%g5704957083%_ _%$%g5705057087%_))))
                              (_%$%g5704957083%_ _%$%g5705057087%_))))
                      (_%$%g5704957083%_ _%$%g5705057087%_)))))
          (_%$%g5704857204%_ _%$stx57045%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass57962%_ _%slot57964%_)
        (let ((_%$e57966%_
               (let ((__obj104996 _%klass57962%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj104996
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj104996 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj104996
                      'slot-types)))))
          (if _%$e57966%_ (agetq _%slot57964%_ _%$e57966%_) '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass57943%_ _%slot57945%_)
        (let ((_%$e57947%_
               (let ((__obj104997 _%klass57943%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj104997
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj104997 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj104997
                      'slot-defaults)))))
          (if _%$e57947%_
              (let ((_%$e57954%_ (agetq _%slot57945%_ _%$e57947%_)))
                (if _%$e57954%_ (gx#syntax-local-introduce _%$e57954%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass57924%_ _%slot57926%_)
        (let ((_%$e57928%_
               (let ((__obj104998 _%klass57924%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj104998
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj104998 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj104998
                      'slot-defaults)))))
          (if _%$e57928%_
              (let ((_%$e57935%_ (agetq _%slot57926%_ _%$e57928%_)))
                (if _%$e57935%_ (gx#syntax-local-introduce _%$e57935%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass57693%_ _%slot57695%_)
        (let ((_%$%contract5769657698%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass57693%_
                _%slot57695%_)))
          (if _%$%contract5769657698%_
              (let* ((_%contract57701%_ _%$%contract5769657698%_)
                     (_%__stx9886098861%_ _%contract57701%_)
                     (_%$%g5770657743%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9886098861%_))))
                (let ((_%__kont9886398864%_
                       (lambda (_%$%g5770857893%_ _%$%g5770957895%_)
                         (not (gx#free-identifier=?
                               _%$%g5770957895%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9886598866%_
                       (lambda (_%$%g5771657833%_
                                _%$%g5771757835%_
                                _%$%g5771857836%_)
                         (not (gx#free-identifier=?
                               _%$%g5771757835%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9886798868%_ (lambda (_%$%g5773157770%_) '#f)))
                  (let* ((_%__match9891398914%_
                          (lambda (_%$%e5771957793%_
                                   _%$%hd5772057797%_
                                   _%$%tl5772157800%_
                                   _%$%e5772257803%_
                                   _%$%hd5772357807%_
                                   _%$%tl5772457810%_
                                   _%$%e5772557813%_
                                   _%$%hd5772657817%_
                                   _%$%tl5772757820%_
                                   _%$%e5772857823%_
                                   _%$%hd5772957827%_
                                   _%$%tl5773057830%_)
                            (let ((_%$%g5771657833%_ _%$%hd5772957827%_)
                                  (_%$%g5771757835%_ _%$%hd5772657817%_)
                                  (_%$%g5771857836%_ _%$%hd5772357807%_))
                              (if (and (gx#identifier? _%$%g5771757835%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5771757835%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5771757835%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5771757835%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5771757835%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9886598866%_
                                   _%$%g5771657833%_
                                   _%$%g5771757835%_
                                   _%$%g5771857836%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5770657743%_))))))
                         (_%__match9888398884%_
                          (lambda (_%$%e5771057873%_
                                   _%$%hd5771157877%_
                                   _%$%tl5771257880%_
                                   _%$%e5771357883%_
                                   _%$%hd5771457887%_
                                   _%$%tl5771557890%_)
                            (let ((_%$%g5770857893%_ _%$%hd5771457887%_)
                                  (_%$%g5770957895%_ _%$%hd5771157877%_))
                              (if (and (gx#identifier? _%$%g5770957895%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5770957895%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5770957895%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5770957895%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5770957895%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9886398864%_
                                   _%$%g5770857893%_
                                   _%$%g5770957895%_)
                                  (if (gx#identifier? _%$%hd5771157877%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g105203_|
                                           _%$%hd5771157877%_)
                                          (_%__kont9886798868%_
                                           _%$%hd5771457887%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5770657743%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5770657743%_))))))))
                    (if (gx#stx-pair? _%__stx9886098861%_)
                        (let ((_%$%e5771057873%_
                               (gx#syntax-e _%__stx9886098861%_)))
                          (let ((_%$%tl5771257880%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5771057873%_)))
                                (_%$%hd5771157877%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5771057873%_))))
                            (if (gx#stx-pair? _%$%tl5771257880%_)
                                (let ((_%$%e5771357883%_
                                       (gx#syntax-e _%$%tl5771257880%_)))
                                  (let ((_%$%tl5771557890%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5771357883%_)))
                                        (_%$%hd5771457887%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5771357883%_))))
                                    (if (gx#stx-null? _%$%tl5771557890%_)
                                        (_%__match9888398884%_
                                         _%$%e5771057873%_
                                         _%$%hd5771157877%_
                                         _%$%tl5771257880%_
                                         _%$%e5771357883%_
                                         _%$%hd5771457887%_
                                         _%$%tl5771557890%_)
                                        (if (gx#identifier? _%$%hd5771157877%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g105203_|
                                                 _%$%hd5771157877%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5771557890%_)
                                                    (let ((_%$%e5772557813%_
                                                           (gx#syntax-e
                                                            _%$%tl5771557890%_)))
                                                      (let ((_%$%tl5772757820%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5772557813%_)))
                    (_%$%hd5772657817%_
                     (let () (declare (not safe)) (##car _%$%e5772557813%_))))
                (if (gx#stx-pair? _%$%tl5772757820%_)
                    (let ((_%$%e5772857823%_ (gx#syntax-e _%$%tl5772757820%_)))
                      (let ((_%$%tl5773057830%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5772857823%_)))
                            (_%$%hd5772957827%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5772857823%_))))
                        (if (gx#stx-null? _%$%tl5773057830%_)
                            (_%__match9891398914%_
                             _%$%e5771057873%_
                             _%$%hd5771157877%_
                             _%$%tl5771257880%_
                             _%$%e5771357883%_
                             _%$%hd5771457887%_
                             _%$%tl5771557890%_
                             _%$%e5772557813%_
                             _%$%hd5772657817%_
                             _%$%tl5772757820%_
                             _%$%e5772857823%_
                             _%$%hd5772957827%_
                             _%$%tl5773057830%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5770657743%_)))))
                    (let () (declare (not safe)) (_%$%g5770657743%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5770657743%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5770657743%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5770657743%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5770657743%_)))))
                        (let () (declare (not safe)) (_%$%g5770657743%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass57462%_ _%slot57464%_)
        (let ((_%$%contract5746557467%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass57462%_
                _%slot57464%_)))
          (if _%$%contract5746557467%_
              (let* ((_%contract57470%_ _%$%contract5746557467%_)
                     (_%__stx9893498935%_ _%contract57470%_)
                     (_%$%g5747557512%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9893498935%_))))
                (let ((_%__kont9893798938%_
                       (lambda (_%$%g5747757662%_ _%$%g5747857664%_)
                         (not (gx#free-identifier=?
                               _%$%g5747857664%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9893998940%_
                       (lambda (_%$%g5748557602%_
                                _%$%g5748657604%_
                                _%$%g5748757605%_)
                         '#t))
                      (_%__kont9894198942%_ (lambda (_%$%g5750057539%_) '#t)))
                  (let* ((_%__match9898798988%_
                          (lambda (_%$%e5748857562%_
                                   _%$%hd5748957566%_
                                   _%$%tl5749057569%_
                                   _%$%e5749157572%_
                                   _%$%hd5749257576%_
                                   _%$%tl5749357579%_
                                   _%$%e5749457582%_
                                   _%$%hd5749557586%_
                                   _%$%tl5749657589%_
                                   _%$%e5749757592%_
                                   _%$%hd5749857596%_
                                   _%$%tl5749957599%_)
                            (let ((_%$%g5748557602%_ _%$%hd5749857596%_)
                                  (_%$%g5748657604%_ _%$%hd5749557586%_)
                                  (_%$%g5748757605%_ _%$%hd5749257576%_))
                              (if (and (gx#identifier? _%$%g5748657604%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5748657604%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5748657604%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5748657604%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5748657604%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9893998940%_
                                   _%$%g5748557602%_
                                   _%$%g5748657604%_
                                   _%$%g5748757605%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5747557512%_))))))
                         (_%__match9895798958%_
                          (lambda (_%$%e5747957642%_
                                   _%$%hd5748057646%_
                                   _%$%tl5748157649%_
                                   _%$%e5748257652%_
                                   _%$%hd5748357656%_
                                   _%$%tl5748457659%_)
                            (let ((_%$%g5747757662%_ _%$%hd5748357656%_)
                                  (_%$%g5747857664%_ _%$%hd5748057646%_))
                              (if (and (gx#identifier? _%$%g5747857664%_)
                                       (or (gx#free-identifier=?
                                            _%$%g5747857664%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%$%g5747857664%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%$%g5747857664%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%$%g5747857664%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9893798938%_
                                   _%$%g5747757662%_
                                   _%$%g5747857664%_)
                                  (if (gx#identifier? _%$%hd5748057646%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g105204_|
                                           _%$%hd5748057646%_)
                                          (_%__kont9894198942%_
                                           _%$%hd5748357656%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5747557512%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5747557512%_))))))))
                    (if (gx#stx-pair? _%__stx9893498935%_)
                        (let ((_%$%e5747957642%_
                               (gx#syntax-e _%__stx9893498935%_)))
                          (let ((_%$%tl5748157649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5747957642%_)))
                                (_%$%hd5748057646%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5747957642%_))))
                            (if (gx#stx-pair? _%$%tl5748157649%_)
                                (let ((_%$%e5748257652%_
                                       (gx#syntax-e _%$%tl5748157649%_)))
                                  (let ((_%$%tl5748457659%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5748257652%_)))
                                        (_%$%hd5748357656%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5748257652%_))))
                                    (if (gx#stx-null? _%$%tl5748457659%_)
                                        (_%__match9895798958%_
                                         _%$%e5747957642%_
                                         _%$%hd5748057646%_
                                         _%$%tl5748157649%_
                                         _%$%e5748257652%_
                                         _%$%hd5748357656%_
                                         _%$%tl5748457659%_)
                                        (if (gx#identifier? _%$%hd5748057646%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g105204_|
                                                 _%$%hd5748057646%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl5748457659%_)
                                                    (let ((_%$%e5749457582%_
                                                           (gx#syntax-e
                                                            _%$%tl5748457659%_)))
                                                      (let ((_%$%tl5749657589%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5749457582%_)))
                    (_%$%hd5749557586%_
                     (let () (declare (not safe)) (##car _%$%e5749457582%_))))
                (if (gx#stx-pair? _%$%tl5749657589%_)
                    (let ((_%$%e5749757592%_ (gx#syntax-e _%$%tl5749657589%_)))
                      (let ((_%$%tl5749957599%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5749757592%_)))
                            (_%$%hd5749857596%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5749757592%_))))
                        (if (gx#stx-null? _%$%tl5749957599%_)
                            (_%__match9898798988%_
                             _%$%e5747957642%_
                             _%$%hd5748057646%_
                             _%$%tl5748157649%_
                             _%$%e5748257652%_
                             _%$%hd5748357656%_
                             _%$%tl5748457659%_
                             _%$%e5749457582%_
                             _%$%hd5749557586%_
                             _%$%tl5749657589%_
                             _%$%e5749757592%_
                             _%$%hd5749857596%_
                             _%$%tl5749957599%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5747557512%_)))))
                    (let () (declare (not safe)) (_%$%g5747557512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5747557512%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5747557512%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5747557512%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5747557512%_)))))
                        (let () (declare (not safe)) (_%$%g5747557512%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id57449%_)
        (if (gx#identifier? _%id57449%_)
            (let* ((_%str57452%_ (symbol->string (gx#stx-e _%id57449%_)))
                   (_%$%index5745457456%_ (string-index _%str57452%_ '#\.)))
              (if _%$%index5745457456%_
                  (let ((_%index57459%_ _%$%index5745457456%_))
                    (if (let () (declare (not safe)) (##fx> _%index57459%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str57452%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx57442%_ _%id57444%_)
        (let ((_%parts57446%_
               (string-split (symbol->string (gx#stx-e _%id57444%_)) '#\.)))
          (if (find string-empty? _%parts57446%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx57442%_
               _%id57444%_)
              (cons (gx#stx-identifier _%id57444%_ (car _%parts57446%_))
                    (map string->symbol (cdr _%parts57446%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx57328%_ _%klass-or-id57330%_ _%slot57331%_)
        (let* ((_%klass57333%_
                (if (gx#identifier? _%klass-or-id57330%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx57328%_
                       _%klass-or-id57330%_))
                    _%klass-or-id57330%_))
               (_%$e57338%_
                (agetq _%slot57331%_
                       (let ((__obj104999 _%klass57333%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj104999
                                'gerbil/core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj104999
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj104999
                              'unchecked-accessors))))))
          (if _%$e57338%_
              _%$e57338%_
              (let ((_%$e57346%_
                     (agetq _%slot57331%_
                            (let ((_%$e57342%_
                                   (let ((__obj105000 _%klass57333%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj105000
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj105000
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj105000
                                          'slot-offsets)))))
                              (if _%$e57342%_ _%$e57342%_ '())))))
                (if _%$e57346%_
                    (let* ((_%$%g5735357372%_
                            (lambda (_%$%g5735457368%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5735457368%_)))
                           (_%$%g5735257436%_
                            (lambda (_%$%g5735457376%_)
                              (if (gx#stx-pair? _%$%g5735457376%_)
                                  (let ((_%$%e5735857379%_
                                         (gx#syntax-e _%$%g5735457376%_)))
                                    (let ((_%$%hd5735957383%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5735857379%_)))
                                          (_%$%tl5736057386%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5735857379%_))))
                                      (if (gx#stx-pair? _%$%tl5736057386%_)
                                          (let ((_%$%e5736157389%_
                                                 (gx#syntax-e
                                                  _%$%tl5736057386%_)))
                                            (let ((_%$%hd5736257393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5736157389%_)))
                                                  (_%$%tl5736357396%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5736157389%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5736357396%_)
                                                  (let ((_%$%e5736457399%_
                                                         (gx#syntax-e
                                                          _%$%tl5736357396%_)))
                                                    (let ((_%$%hd5736557403%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5736457399%_)))
                                                          (_%$%tl5736657406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5736457399%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5736657406%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-ref)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons _%$%hd5736557403%_
                                                       (cons _%$%hd5735957383%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%$%hd5736257393%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx57328%_))
                  (_%$%g5735357372%_ _%$%g5735457376%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5735357372%_
                                                   _%$%g5735457376%_))))
                                          (_%$%g5735357372%_
                                           _%$%g5735457376%_))))
                                  (_%$%g5735357372%_ _%$%g5735457376%_)))))
                      (_%$%g5735257436%_
                       (list (let ((__obj105001 _%klass57333%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105001
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105001
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj105001
                                    'type-descriptor)))
                             _%slot57331%_
                             _%$e57346%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx57328%_
                     _%klass57333%_
                     _%slot57331%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx57209%_
               _%klass-or-id57211%_
               _%slot57212%_
               _%checked?57213%_)
        (let* ((_%klass57215%_
                (if (gx#identifier? _%klass-or-id57211%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx57209%_
                       _%klass-or-id57211%_))
                    _%klass-or-id57211%_))
               (_%mutators57218%_
                (if _%checked?57213%_
                    (let ((__obj105002 _%klass57215%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj105002
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj105002
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj105002
                           'mutators)))
                    (let ((__obj105003 _%klass57215%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj105003
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj105003
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj105003
                           'unchecked-mutators)))))
               (_%$e57223%_ (agetq _%slot57212%_ _%mutators57218%_)))
          (if _%$e57223%_
              _%$e57223%_
              (let ((_%$e57231%_
                     (agetq _%slot57212%_
                            (let ((_%$e57227%_
                                   (let ((__obj105004 _%klass57215%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj105004
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj105004
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj105004
                                          'slot-offsets)))))
                              (if _%$e57227%_ _%$e57227%_ '())))))
                (if _%$e57231%_
                    (let* ((_%$%g5723857257%_
                            (lambda (_%$%g5723957253%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5723957253%_)))
                           (_%$%g5723757322%_
                            (lambda (_%$%g5723957261%_)
                              (if (gx#stx-pair? _%$%g5723957261%_)
                                  (let ((_%$%e5724357264%_
                                         (gx#syntax-e _%$%g5723957261%_)))
                                    (let ((_%$%hd5724457268%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5724357264%_)))
                                          (_%$%tl5724557271%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5724357264%_))))
                                      (if (gx#stx-pair? _%$%tl5724557271%_)
                                          (let ((_%$%e5724657274%_
                                                 (gx#syntax-e
                                                  _%$%tl5724557271%_)))
                                            (let ((_%$%hd5724757278%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5724657274%_)))
                                                  (_%$%tl5724857281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5724657274%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5724857281%_)
                                                  (let ((_%$%e5724957284%_
                                                         (gx#syntax-e
                                                          _%$%tl5724857281%_)))
                                                    (let ((_%$%hd5725057288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5724957284%_)))
                                                          (_%$%tl5725157291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5724957284%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl5725157291%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons (gx#datum->syntax '#f '$val) '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-set!)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons _%$%hd5725057288%_
                                                             (cons _%$%hd5724457268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%$%hd5724757278%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx57209%_))
                  (_%$%g5723857257%_ _%$%g5723957261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5723857257%_
                                                   _%$%g5723957261%_))))
                                          (_%$%g5723857257%_
                                           _%$%g5723957261%_))))
                                  (_%$%g5723857257%_ _%$%g5723957261%_)))))
                      (_%$%g5723757322%_
                       (list (let ((__obj105005 _%klass57215%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105005
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105005
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj105005
                                    'type-descriptor)))
                             _%slot57212%_
                             _%$e57231%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx57209%_
                     _%klass57215%_
                     _%slot57212%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx57975%_)
        (letrec ((_%expand-body57978%_
                  (lambda (_%klass58881%_
                           _%var58883%_
                           _%Type58884%_
                           _%body58885%_
                           _%checked?58886%_)
                    (let* ((_%$%g5888858932%_
                            (lambda (_%$%g5888958928%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5888958928%_)))
                           (_%$%g5888759087%_
                            (lambda (_%$%g5888958936%_)
                              (if (gx#stx-pair? _%$%g5888958936%_)
                                  (let ((_%$%e5889758939%_
                                         (gx#syntax-e _%$%g5888958936%_)))
                                    (let ((_%$%hd5889858943%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5889758939%_)))
                                          (_%$%tl5889958946%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5889758939%_))))
                                      (if (gx#stx-pair? _%$%tl5889958946%_)
                                          (let ((_%$%e5890058949%_
                                                 (gx#syntax-e
                                                  _%$%tl5889958946%_)))
                                            (let ((_%$%hd5890158953%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5890058949%_)))
                                                  (_%$%tl5890258956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5890058949%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl5890258956%_)
                                                  (let ((_%$%e5890358959%_
                                                         (gx#syntax-e
                                                          _%$%tl5890258956%_)))
                                                    (let ((_%$%hd5890458963%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5890358959%_)))
                                                          (_%$%tl5890558966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5890358959%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5890558966%_)
                                                          (let ((_%$%e5890658969%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5890558966%_)))
                    (let ((_%$%hd5890758973%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5890658969%_)))
                          (_%$%tl5890858976%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5890658969%_))))
                      (if (gx#stx-pair? _%$%tl5890858976%_)
                          (let ((_%$%e5890958979%_
                                 (gx#syntax-e _%$%tl5890858976%_)))
                            (let ((_%$%hd5891058983%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5890958979%_)))
                                  (_%$%tl5891158986%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5890958979%_))))
                              (if (gx#stx-pair? _%$%tl5891158986%_)
                                  (let ((_%$%e5891258989%_
                                         (gx#syntax-e _%$%tl5891158986%_)))
                                    (let ((_%$%hd5891358993%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5891258989%_)))
                                          (_%$%tl5891458996%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5891258989%_))))
                                      (if (gx#stx-pair? _%$%tl5891458996%_)
                                          (let ((_%$%e5891558999%_
                                                 (gx#syntax-e
                                                  _%$%tl5891458996%_)))
                                            (let ((_%$%hd5891659003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5891558999%_)))
                                                  (_%$%tl5891759006%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5891558999%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd5891659003%_)
                                                  (let ((_g105205_
                                                         (gx#syntax-split-splice
                                                          _%$%hd5891659003%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g105206_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g105205_)
                           (##values-length _g105205_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g105206_ 2)))
                    (error "Context expects 2 values" _g105206_)))
              (let ((_%$%target5891859009%_
                     (let () (declare (not safe)) (##values-ref _g105205_ 0)))
                    (_%$%tl5892059012%_
                     (let () (declare (not safe)) (##values-ref _g105205_ 1))))
                (if (gx#stx-null? _%$%tl5892059012%_)
                    (letrec ((_%$%loop5892159015%_
                              (lambda (_%$%hd5891959019%_ _%$%body5892559022%_)
                                (if (gx#stx-pair? _%$%hd5891959019%_)
                                    (let ((_%$%e5892259024%_
                                           (gx#syntax-e _%$%hd5891959019%_)))
                                      (let ((_%$%lp-hd5892359028%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5892259024%_)))
                                            (_%$%lp-tl5892459031%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5892259024%_))))
                                        (_%$%loop5892159015%_
                                         _%$%lp-tl5892459031%_
                                         (cons _%$%lp-hd5892359028%_
                                               _%$%body5892559022%_))))
                                    (let ((_%$%body5892659034%_
                                           (reverse _%$%body5892559022%_)))
                                      (if (gx#stx-null? _%$%tl5891759006%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd5890458963%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd5890158953%_ '()))
                                      (cons _%$%hd5890458963%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd5889858943%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd5890458963%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd5890758973%_ '()))
                            (cons _%$%hd5891058983%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd5891358993%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g5907859081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g5907959084%_)
                   (cons _%$%g5907859081%_ _%$%g5907959084%_))
                 '()
                 _%$%body5892659034%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g5888858932%_
                                           _%$%g5888958936%_)))))))
                      (_%$%loop5892159015%_ _%$%target5891859009%_ '()))
                    (_%$%g5888858932%_ _%$%g5888958936%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5888858932%_
                                                   _%$%g5888958936%_))))
                                          (_%$%g5888858932%_
                                           _%$%g5888958936%_))))
                                  (_%$%g5888858932%_ _%$%g5888958936%_))))
                          (_%$%g5888858932%_ _%$%g5888958936%_))))
                  (_%$%g5888858932%_ _%$%g5888958936%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5888858932%_
                                                   _%$%g5888958936%_))))
                                          (_%$%g5888858932%_
                                           _%$%g5888958936%_))))
                                  (_%$%g5888858932%_ _%$%g5888958936%_)))))
                      (_%$%g5888759087%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj105006 _%klass58881%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105006
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105006
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj105006
                                    'type-descriptor)))
                             _%var58883%_
                             _%klass58881%_
                             _%checked?58886%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body58885%_)))))
                 (_%expand57980%_
                  (lambda (_%var58768%_
                           _%Type58770%_
                           _%body58771%_
                           _%checked?58772%_
                           _%checked-mutators?58773%_
                           _%maybe?58774%_)
                    (let* ((_%klass58776%_
                            (gx#syntax-local-value _%Type58770%_ false))
                           (_%expr-body58783%_
                            (_%expand-body57978%_
                             _%klass58776%_
                             _%var58768%_
                             _%Type58770%_
                             _%body58771%_
                             (let ((_%$e58779%_ _%checked?58772%_))
                               (if _%$e58779%_
                                   _%$e58779%_
                                   _%checked-mutators?58773%_)))))
                      (if _%checked?58772%_
                          (let* ((_%$%g5878858807%_
                                  (lambda (_%$%g5878958803%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g5878958803%_)))
                                 (_%$%g5878758869%_
                                  (lambda (_%$%g5878958811%_)
                                    (if (gx#stx-pair? _%$%g5878958811%_)
                                        (let ((_%$%e5879358814%_
                                               (gx#syntax-e
                                                _%$%g5878958811%_)))
                                          (let ((_%$%hd5879458818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5879358814%_)))
                                                (_%$%tl5879558821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5879358814%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl5879558821%_)
                                                (let ((_%$%e5879658824%_
                                                       (gx#syntax-e
                                                        _%$%tl5879558821%_)))
                                                  (let ((_%$%hd5879758828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5879658824%_)))
                                                        (_%$%tl5879858831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5879658824%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl5879858831%_)
                                                        (let ((_%$%e5879958834%_
                                                               (gx#syntax-e
                                                                _%$%tl5879858831%_)))
                                                          (let ((_%$%hd5880058838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5879958834%_)))
                        (_%$%tl5880158841%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5879958834%_))))
                    (if (gx#stx-null? _%$%tl5880158841%_)
                        (cons (gx#datum->syntax '#f 'with-contract)
                              (cons (cons _%$%hd5879758828%_
                                          (cons (gx#datum->syntax '#f ':~)
                                                (cons _%$%hd5879458818%_ '())))
                                    (cons _%$%hd5880058838%_ '())))
                        (_%$%g5878858807%_ _%$%g5878958811%_))))
                (_%$%g5878858807%_ _%$%g5878958811%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5878858807%_
                                                 _%$%g5878958811%_))))
                                        (_%$%g5878858807%_
                                         _%$%g5878958811%_)))))
                            (_%$%g5878758869%_
                             (list (let ((_%instance?58873%_
                                          (let ((__obj105007 _%klass58776%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj105007
                                                   'gerbil/core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj105007
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj105007
                                                 'predicate)))))
                                     (if _%maybe?58774%_
                                         (list '?
                                               (list 'or
                                                     'not
                                                     _%instance?58873%_))
                                         _%instance?58873%_))
                                   _%var58768%_
                                   _%expr-body58783%_)))
                          _%expr-body58783%_)))))
          (let* ((_%__stx9900899009%_ _%stx57975%_)
                 (_%$%g5798658129%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9900899009%_))))
            (let ((_%__kont9901199012%_
                   (lambda (_%$%g5798858696%_
                            _%$%g5798958698%_
                            _%$%g5799058699%_
                            _%$%g5799158700%_)
                     (let* ((_%$%g5872558733%_
                             (lambda (_%$%g5872658729%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5872658729%_)))
                            (_%$%g5872458760%_
                             (lambda (_%$%g5872658737%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%$%g5799158700%_
                                                 (cons _%$%g5799058699%_
                                                       (cons _%$%g5872658737%_
                                                             '())))
                                           (foldr (lambda (_%$%g5875158754%_
                                                           _%$%g5875258757%_)
                                                    (cons _%$%g5875158754%_
                                                          _%$%g5875258757%_))
                                                  '()
                                                  _%$%g5798858696%_))))))
                       (_%$%g5872458760%_
                        (let ((__obj105008
                               (gx#syntax-local-value _%$%g5798958698%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj105008
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj105008
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj105008
                               'identifier)))))))
                  (_%__kont9901599016%_
                   (lambda (_%$%g5801658576%_
                            _%$%g5801758578%_
                            _%$%g5801858579%_)
                     (_%expand57980%_
                      _%$%g5801858579%_
                      _%$%g5801758578%_
                      (foldr (lambda (_%$%g5860258605%_ _%$%g5860358608%_)
                               (cons _%$%g5860258605%_ _%$%g5860358608%_))
                             '()
                             _%$%g5801658576%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9901999020%_
                   (lambda (_%$%g5804358456%_
                            _%$%g5804458458%_
                            _%$%g5804558459%_)
                     (_%expand57980%_
                      _%$%g5804558459%_
                      _%$%g5804458458%_
                      (foldr (lambda (_%$%g5848258485%_ _%$%g5848358488%_)
                               (cons _%$%g5848258485%_ _%$%g5848358488%_))
                             '()
                             _%$%g5804358456%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9902399024%_
                   (lambda (_%$%g5807058336%_
                            _%$%g5807158338%_
                            _%$%g5807258339%_)
                     (_%expand57980%_
                      _%$%g5807258339%_
                      _%$%g5807158338%_
                      (foldr (lambda (_%$%g5836258365%_ _%$%g5836358368%_)
                               (cons _%$%g5836258365%_ _%$%g5836358368%_))
                             '()
                             _%$%g5807058336%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9902799028%_
                   (lambda (_%$%g5809758214%_
                            _%$%g5809858216%_
                            _%$%g5809958217%_)
                     (_%expand57980%_
                      _%$%g5809958217%_
                      _%$%g5809858216%_
                      (foldr (lambda (_%$%g5824258245%_ _%$%g5824358248%_)
                               (cons _%$%g5824258245%_ _%$%g5824358248%_))
                             '()
                             _%$%g5809758214%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9924799248%_
                      (lambda (_%$%e5810058136%_
                               _%$%hd5810158140%_
                               _%$%tl5810258143%_
                               _%$%e5810358146%_
                               _%$%hd5810458150%_
                               _%$%tl5810558153%_
                               _%$%e5810658156%_
                               _%$%hd5810758160%_
                               _%$%tl5810858163%_
                               _%$%e5810958166%_
                               _%$%hd5811058170%_
                               _%$%tl5811158173%_
                               _%$%e5811258176%_
                               _%$%hd5811358180%_
                               _%$%tl5811458183%_
                               _%__splice9902999030%_
                               _%$%target5811558186%_
                               _%$%tl5811758189%_)
                        (letrec ((_%$%loop5811858192%_
                                  (lambda (_%$%hd5811658196%_
                                           _%$%body5812258199%_)
                                    (if (gx#stx-pair? _%$%hd5811658196%_)
                                        (let ((_%$%e5811958201%_
                                               (gx#syntax-e
                                                _%$%hd5811658196%_)))
                                          (let ((_%$%lp-tl5812158208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5811958201%_)))
                                                (_%$%lp-hd5812058205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5811958201%_))))
                                            (_%$%loop5811858192%_
                                             _%$%lp-tl5812158208%_
                                             (cons _%$%lp-hd5812058205%_
                                                   _%$%body5812258199%_))))
                                        (let ((_%$%body5812358211%_
                                               (reverse _%$%body5812258199%_)))
                                          (let ((_%$%g5809758214%_
                                                 _%$%body5812358211%_)
                                                (_%$%g5809858216%_
                                                 _%$%hd5811358180%_)
                                                (_%$%g5809958217%_
                                                 _%$%hd5810758160%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5809858216%_))
                                                (_%__kont9902799028%_
                                                 _%$%g5809758214%_
                                                 _%$%g5809858216%_
                                                 _%$%g5809958217%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5798658129%_)))))))))
                          (_%$%loop5811858192%_ _%$%target5811558186%_ '()))))
                     (_%__match9920399204%_
                      (lambda (_%$%e5807358258%_
                               _%$%hd5807458262%_
                               _%$%tl5807558265%_
                               _%$%e5807658268%_
                               _%$%hd5807758272%_
                               _%$%tl5807858275%_
                               _%$%e5807958278%_
                               _%$%hd5808058282%_
                               _%$%tl5808158285%_
                               _%$%e5808258288%_
                               _%$%hd5808358292%_
                               _%$%tl5808458295%_
                               _%$%e5808558298%_
                               _%$%hd5808658302%_
                               _%$%tl5808758305%_
                               _%__splice9902599026%_
                               _%$%target5808858308%_
                               _%$%tl5809058311%_)
                        (letrec ((_%$%loop5809158314%_
                                  (lambda (_%$%hd5808958318%_
                                           _%$%body5809558321%_)
                                    (if (gx#stx-pair? _%$%hd5808958318%_)
                                        (let ((_%$%e5809258323%_
                                               (gx#syntax-e
                                                _%$%hd5808958318%_)))
                                          (let ((_%$%lp-tl5809458330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5809258323%_)))
                                                (_%$%lp-hd5809358327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5809258323%_))))
                                            (_%$%loop5809158314%_
                                             _%$%lp-tl5809458330%_
                                             (cons _%$%lp-hd5809358327%_
                                                   _%$%body5809558321%_))))
                                        (let ((_%$%body5809658333%_
                                               (reverse _%$%body5809558321%_)))
                                          (let ((_%$%g5807058336%_
                                                 _%$%body5809658333%_)
                                                (_%$%g5807158338%_
                                                 _%$%hd5808658302%_)
                                                (_%$%g5807258339%_
                                                 _%$%hd5808058282%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5807158338%_))
                                                (_%__kont9902399024%_
                                                 _%$%g5807058336%_
                                                 _%$%g5807158338%_
                                                 _%$%g5807258339%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5798658129%_)))))))))
                          (_%$%loop5809158314%_ _%$%target5808858308%_ '()))))
                     (_%__match9915999160%_
                      (lambda (_%$%e5804658378%_
                               _%$%hd5804758382%_
                               _%$%tl5804858385%_
                               _%$%e5804958388%_
                               _%$%hd5805058392%_
                               _%$%tl5805158395%_
                               _%$%e5805258398%_
                               _%$%hd5805358402%_
                               _%$%tl5805458405%_
                               _%$%e5805558408%_
                               _%$%hd5805658412%_
                               _%$%tl5805758415%_
                               _%$%e5805858418%_
                               _%$%hd5805958422%_
                               _%$%tl5806058425%_
                               _%__splice9902199022%_
                               _%$%target5806158428%_
                               _%$%tl5806358431%_)
                        (letrec ((_%$%loop5806458434%_
                                  (lambda (_%$%hd5806258438%_
                                           _%$%body5806858441%_)
                                    (if (gx#stx-pair? _%$%hd5806258438%_)
                                        (let ((_%$%e5806558443%_
                                               (gx#syntax-e
                                                _%$%hd5806258438%_)))
                                          (let ((_%$%lp-tl5806758450%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5806558443%_)))
                                                (_%$%lp-hd5806658447%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5806558443%_))))
                                            (_%$%loop5806458434%_
                                             _%$%lp-tl5806758450%_
                                             (cons _%$%lp-hd5806658447%_
                                                   _%$%body5806858441%_))))
                                        (let ((_%$%body5806958453%_
                                               (reverse _%$%body5806858441%_)))
                                          (let ((_%$%g5804358456%_
                                                 _%$%body5806958453%_)
                                                (_%$%g5804458458%_
                                                 _%$%hd5805958422%_)
                                                (_%$%g5804558459%_
                                                 _%$%hd5805358402%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5804458458%_))
                                                (_%__kont9901999020%_
                                                 _%$%g5804358456%_
                                                 _%$%g5804458458%_
                                                 _%$%g5804558459%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5798658129%_)))))))))
                          (_%$%loop5806458434%_ _%$%target5806158428%_ '()))))
                     (_%__match9911599116%_
                      (lambda (_%$%e5801958498%_
                               _%$%hd5802058502%_
                               _%$%tl5802158505%_
                               _%$%e5802258508%_
                               _%$%hd5802358512%_
                               _%$%tl5802458515%_
                               _%$%e5802558518%_
                               _%$%hd5802658522%_
                               _%$%tl5802758525%_
                               _%$%e5802858528%_
                               _%$%hd5802958532%_
                               _%$%tl5803058535%_
                               _%$%e5803158538%_
                               _%$%hd5803258542%_
                               _%$%tl5803358545%_
                               _%__splice9901799018%_
                               _%$%target5803458548%_
                               _%$%tl5803658551%_)
                        (letrec ((_%$%loop5803758554%_
                                  (lambda (_%$%hd5803558558%_
                                           _%$%body5804158561%_)
                                    (if (gx#stx-pair? _%$%hd5803558558%_)
                                        (let ((_%$%e5803858563%_
                                               (gx#syntax-e
                                                _%$%hd5803558558%_)))
                                          (let ((_%$%lp-tl5804058570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5803858563%_)))
                                                (_%$%lp-hd5803958567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5803858563%_))))
                                            (_%$%loop5803758554%_
                                             _%$%lp-tl5804058570%_
                                             (cons _%$%lp-hd5803958567%_
                                                   _%$%body5804158561%_))))
                                        (let ((_%$%body5804258573%_
                                               (reverse _%$%body5804158561%_)))
                                          (let ((_%$%g5801658576%_
                                                 _%$%body5804258573%_)
                                                (_%$%g5801758578%_
                                                 _%$%hd5803258542%_)
                                                (_%$%g5801858579%_
                                                 _%$%hd5802658522%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%$%g5801758578%_))
                                                (_%__kont9901599016%_
                                                 _%$%g5801658576%_
                                                 _%$%g5801758578%_
                                                 _%$%g5801858579%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5798658129%_)))))))))
                          (_%$%loop5803758554%_ _%$%target5803458548%_ '()))))
                     (_%__match9909599096%_
                      (lambda (_%$%e5801958498%_
                               _%$%hd5802058502%_
                               _%$%tl5802158505%_
                               _%$%e5802258508%_
                               _%$%hd5802358512%_
                               _%$%tl5802458515%_
                               _%$%e5802558518%_
                               _%$%hd5802658522%_
                               _%$%tl5802758525%_
                               _%$%e5802858528%_
                               _%$%hd5802958532%_
                               _%$%tl5803058535%_)
                        (if (gx#identifier? _%$%hd5802958532%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g105207_|
                                 _%$%hd5802958532%_)
                                (if (gx#stx-pair? _%$%tl5803058535%_)
                                    (let ((_%$%e5803158538%_
                                           (gx#syntax-e _%$%tl5803058535%_)))
                                      (let ((_%$%tl5803358545%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5803158538%_)))
                                            (_%$%hd5803258542%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5803158538%_))))
                                        (if (gx#stx-null? _%$%tl5803358545%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5802458515%_)
                                                (let ((_%__splice9901799018%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5802458515%_
                                                        '0)))
                                                  (let ((_%$%tl5803658551%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9901799018%_
                                                            '1)))
                                                        (_%$%target5803458548%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9901799018%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5803658551%_)
                                                        (_%__match9911599116%_
                                                         _%$%e5801958498%_
                                                         _%$%hd5802058502%_
                                                         _%$%tl5802158505%_
                                                         _%$%e5802258508%_
                                                         _%$%hd5802358512%_
                                                         _%$%tl5802458515%_
                                                         _%$%e5802558518%_
                                                         _%$%hd5802658522%_
                                                         _%$%tl5802758525%_
                                                         _%$%e5802858528%_
                                                         _%$%hd5802958532%_
                                                         _%$%tl5803058535%_
                                                         _%$%e5803158538%_
                                                         _%$%hd5803258542%_
                                                         _%$%tl5803358545%_
                                                         _%__splice9901799018%_
                                                         _%$%target5803458548%_
                                                         _%$%tl5803658551%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5798658129%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5798658129%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5798658129%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5798658129%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g105208_|
                                     _%$%hd5802958532%_)
                                    (if (gx#stx-pair? _%$%tl5803058535%_)
                                        (let ((_%$%e5805858418%_
                                               (gx#syntax-e
                                                _%$%tl5803058535%_)))
                                          (let ((_%$%tl5806058425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5805858418%_)))
                                                (_%$%hd5805958422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5805858418%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5806058425%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5802458515%_)
                                                    (let ((_%__splice9902199022%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5802458515%_
                                                            '0)))
                                                      (let ((_%$%tl5806358431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9902199022%_ '1)))
                    (_%$%target5806158428%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9902199022%_ '0))))
                (if (gx#stx-null? _%$%tl5806358431%_)
                    (_%__match9915999160%_
                     _%$%e5801958498%_
                     _%$%hd5802058502%_
                     _%$%tl5802158505%_
                     _%$%e5802258508%_
                     _%$%hd5802358512%_
                     _%$%tl5802458515%_
                     _%$%e5802558518%_
                     _%$%hd5802658522%_
                     _%$%tl5802758525%_
                     _%$%e5802858528%_
                     _%$%hd5802958532%_
                     _%$%tl5803058535%_
                     _%$%e5805858418%_
                     _%$%hd5805958422%_
                     _%$%tl5806058425%_
                     _%__splice9902199022%_
                     _%$%target5806158428%_
                     _%$%tl5806358431%_)
                    (let () (declare (not safe)) (_%$%g5798658129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5798658129%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5798658129%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5798658129%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g105209_|
                                         _%$%hd5802958532%_)
                                        (if (gx#stx-pair? _%$%tl5803058535%_)
                                            (let ((_%$%e5808558298%_
                                                   (gx#syntax-e
                                                    _%$%tl5803058535%_)))
                                              (let ((_%$%tl5808758305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5808558298%_)))
                                                    (_%$%hd5808658302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5808558298%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5808758305%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5802458515%_)
                                                        (let ((_%__splice9902599026%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5802458515%_
                                                                '0)))
                                                          (let ((_%$%tl5809058311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9902599026%_ '1)))
                        (_%$%target5808858308%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9902599026%_ '0))))
                    (if (gx#stx-null? _%$%tl5809058311%_)
                        (_%__match9920399204%_
                         _%$%e5801958498%_
                         _%$%hd5802058502%_
                         _%$%tl5802158505%_
                         _%$%e5802258508%_
                         _%$%hd5802358512%_
                         _%$%tl5802458515%_
                         _%$%e5802558518%_
                         _%$%hd5802658522%_
                         _%$%tl5802758525%_
                         _%$%e5802858528%_
                         _%$%hd5802958532%_
                         _%$%tl5803058535%_
                         _%$%e5808558298%_
                         _%$%hd5808658302%_
                         _%$%tl5808758305%_
                         _%__splice9902599026%_
                         _%$%target5808858308%_
                         _%$%tl5809058311%_)
                        (let () (declare (not safe)) (_%$%g5798658129%_)))))
                (let () (declare (not safe)) (_%$%g5798658129%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5798658129%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5798658129%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g105210_|
                                             _%$%hd5802958532%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5803058535%_)
                                                (let ((_%$%e5811258176%_
                                                       (gx#syntax-e
                                                        _%$%tl5803058535%_)))
                                                  (let ((_%$%tl5811458183%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5811258176%_)))
                                                        (_%$%hd5811358180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5811258176%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5811458183%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5802458515%_)
                                                            (let ((_%__splice9902999030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5802458515%_
                            '0)))
                      (let ((_%$%tl5811758189%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9902999030%_ '1)))
                            (_%$%target5811558186%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9902999030%_ '0))))
                        (if (gx#stx-null? _%$%tl5811758189%_)
                            (_%__match9924799248%_
                             _%$%e5801958498%_
                             _%$%hd5802058502%_
                             _%$%tl5802158505%_
                             _%$%e5802258508%_
                             _%$%hd5802358512%_
                             _%$%tl5802458515%_
                             _%$%e5802558518%_
                             _%$%hd5802658522%_
                             _%$%tl5802758525%_
                             _%$%e5802858528%_
                             _%$%hd5802958532%_
                             _%$%tl5803058535%_
                             _%$%e5811258176%_
                             _%$%hd5811358180%_
                             _%$%tl5811458183%_
                             _%__splice9902999030%_
                             _%$%target5811558186%_
                             _%$%tl5811758189%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5798658129%_)))))
                    (let () (declare (not safe)) (_%$%g5798658129%_)))
                (let () (declare (not safe)) (_%$%g5798658129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5798658129%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5798658129%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5798658129%_)))))
                     (_%__match9907199072%_
                      (lambda (_%$%e5799258618%_
                               _%$%hd5799358622%_
                               _%$%tl5799458625%_
                               _%$%e5799558628%_
                               _%$%hd5799658632%_
                               _%$%tl5799758635%_
                               _%$%e5799858638%_
                               _%$%hd5799958642%_
                               _%$%tl5800058645%_
                               _%$%e5800158648%_
                               _%$%hd5800258652%_
                               _%$%tl5800358655%_
                               _%$%e5800458658%_
                               _%$%hd5800558662%_
                               _%$%tl5800658665%_
                               _%__splice9901399014%_
                               _%$%target5800758668%_
                               _%$%tl5800958671%_)
                        (letrec ((_%$%loop5801058674%_
                                  (lambda (_%$%hd5800858678%_
                                           _%$%body5801458681%_)
                                    (if (gx#stx-pair? _%$%hd5800858678%_)
                                        (let ((_%$%e5801158683%_
                                               (gx#syntax-e
                                                _%$%hd5800858678%_)))
                                          (let ((_%$%lp-tl5801358690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5801158683%_)))
                                                (_%$%lp-hd5801258687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5801158683%_))))
                                            (_%$%loop5801058674%_
                                             _%$%lp-tl5801358690%_
                                             (cons _%$%lp-hd5801258687%_
                                                   _%$%body5801458681%_))))
                                        (let ((_%$%body5801558693%_
                                               (reverse _%$%body5801458681%_)))
                                          (let ((_%$%g5798858696%_
                                                 _%$%body5801558693%_)
                                                (_%$%g5798958698%_
                                                 _%$%hd5800558662%_)
                                                (_%$%g5799058699%_
                                                 _%$%hd5800258652%_)
                                                (_%$%g5799158700%_
                                                 _%$%hd5799958642%_))
                                            (if (let ((__tmp105211
                                                       (gx#syntax-local-value
                                                        _%$%g5798958698%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp105211))
                                                (_%__kont9901199012%_
                                                 _%$%g5798858696%_
                                                 _%$%g5798958698%_
                                                 _%$%g5799058699%_
                                                 _%$%g5799158700%_)
                                                (_%__match9909599096%_
                                                 _%$%e5799258618%_
                                                 _%$%hd5799358622%_
                                                 _%$%tl5799458625%_
                                                 _%$%e5799558628%_
                                                 _%$%hd5799658632%_
                                                 _%$%tl5799758635%_
                                                 _%$%e5799858638%_
                                                 _%$%hd5799958642%_
                                                 _%$%tl5800058645%_
                                                 _%$%e5800158648%_
                                                 _%$%hd5800258652%_
                                                 _%$%tl5800358655%_))))))))
                          (_%$%loop5801058674%_ _%$%target5800758668%_ '())))))
                (if (gx#stx-pair? _%__stx9900899009%_)
                    (let ((_%$%e5799258618%_
                           (gx#syntax-e _%__stx9900899009%_)))
                      (let ((_%$%tl5799458625%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5799258618%_)))
                            (_%$%hd5799358622%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5799258618%_))))
                        (if (gx#stx-pair? _%$%tl5799458625%_)
                            (let ((_%$%e5799558628%_
                                   (gx#syntax-e _%$%tl5799458625%_)))
                              (let ((_%$%tl5799758635%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5799558628%_)))
                                    (_%$%hd5799658632%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5799558628%_))))
                                (if (gx#stx-pair? _%$%hd5799658632%_)
                                    (let ((_%$%e5799858638%_
                                           (gx#syntax-e _%$%hd5799658632%_)))
                                      (let ((_%$%tl5800058645%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5799858638%_)))
                                            (_%$%hd5799958642%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5799858638%_))))
                                        (if (gx#stx-pair? _%$%tl5800058645%_)
                                            (let ((_%$%e5800158648%_
                                                   (gx#syntax-e
                                                    _%$%tl5800058645%_)))
                                              (let ((_%$%tl5800358655%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5800158648%_)))
                                                    (_%$%hd5800258652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5800158648%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5800358655%_)
                                                    (let ((_%$%e5800458658%_
                                                           (gx#syntax-e
                                                            _%$%tl5800358655%_)))
                                                      (let ((_%$%tl5800658665%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5800458658%_)))
                    (_%$%hd5800558662%_
                     (let () (declare (not safe)) (##car _%$%e5800458658%_))))
                (if (gx#stx-null? _%$%tl5800658665%_)
                    (if (gx#stx-pair/null? _%$%tl5799758635%_)
                        (let ((_%__splice9901399014%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5799758635%_
                                '0)))
                          (let ((_%$%tl5800958671%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9901399014%_ '1)))
                                (_%$%target5800758668%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9901399014%_ '0))))
                            (if (gx#stx-null? _%$%tl5800958671%_)
                                (_%__match9907199072%_
                                 _%$%e5799258618%_
                                 _%$%hd5799358622%_
                                 _%$%tl5799458625%_
                                 _%$%e5799558628%_
                                 _%$%hd5799658632%_
                                 _%$%tl5799758635%_
                                 _%$%e5799858638%_
                                 _%$%hd5799958642%_
                                 _%$%tl5800058645%_
                                 _%$%e5800158648%_
                                 _%$%hd5800258652%_
                                 _%$%tl5800358655%_
                                 _%$%e5800458658%_
                                 _%$%hd5800558662%_
                                 _%$%tl5800658665%_
                                 _%__splice9901399014%_
                                 _%$%target5800758668%_
                                 _%$%tl5800958671%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5798658129%_)))))
                        (let () (declare (not safe)) (_%$%g5798658129%_)))
                    (let () (declare (not safe)) (_%$%g5798658129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5798658129%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5798658129%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5798658129%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5798658129%_)))))
                    (let () (declare (not safe)) (_%$%g5798658129%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx59097%_)
        (letrec ((_%expand-body59100%_
                  (lambda (_%var60091%_
                           _%Interface60093%_
                           _%body60094%_
                           _%checked?60095%_)
                    (let* ((_%type60097%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx59097%_
                               _%Interface60093%_)))
                           (_%$%g6010060144%_
                            (lambda (_%$%g6010160140%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g6010160140%_)))
                           (_%$%g6009960300%_
                            (lambda (_%$%g6010160148%_)
                              (if (gx#stx-pair? _%$%g6010160148%_)
                                  (let ((_%$%e6010960151%_
                                         (gx#syntax-e _%$%g6010160148%_)))
                                    (let ((_%$%hd6011060155%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e6010960151%_)))
                                          (_%$%tl6011160158%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e6010960151%_))))
                                      (if (gx#stx-pair? _%$%tl6011160158%_)
                                          (let ((_%$%e6011260161%_
                                                 (gx#syntax-e
                                                  _%$%tl6011160158%_)))
                                            (let ((_%$%hd6011360165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e6011260161%_)))
                                                  (_%$%tl6011460168%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e6011260161%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl6011460168%_)
                                                  (let ((_%$%e6011560171%_
                                                         (gx#syntax-e
                                                          _%$%tl6011460168%_)))
                                                    (let ((_%$%hd6011660175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e6011560171%_)))
                                                          (_%$%tl6011760178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e6011560171%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl6011760178%_)
                                                          (let ((_%$%e6011860181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl6011760178%_)))
                    (let ((_%$%hd6011960185%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e6011860181%_)))
                          (_%$%tl6012060188%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e6011860181%_))))
                      (if (gx#stx-pair? _%$%tl6012060188%_)
                          (let ((_%$%e6012160191%_
                                 (gx#syntax-e _%$%tl6012060188%_)))
                            (let ((_%$%hd6012260195%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6012160191%_)))
                                  (_%$%tl6012360198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6012160191%_))))
                              (if (gx#stx-pair? _%$%tl6012360198%_)
                                  (let ((_%$%e6012460201%_
                                         (gx#syntax-e _%$%tl6012360198%_)))
                                    (let ((_%$%hd6012560205%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e6012460201%_)))
                                          (_%$%tl6012660208%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e6012460201%_))))
                                      (if (gx#stx-pair? _%$%tl6012660208%_)
                                          (let ((_%$%e6012760211%_
                                                 (gx#syntax-e
                                                  _%$%tl6012660208%_)))
                                            (let ((_%$%hd6012860215%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e6012760211%_)))
                                                  (_%$%tl6012960218%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e6012760211%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd6012860215%_)
                                                  (let ((_g105212_
                                                         (gx#syntax-split-splice
                                                          _%$%hd6012860215%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g105213_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g105212_)
                           (##values-length _g105212_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g105213_ 2)))
                    (error "Context expects 2 values" _g105213_)))
              (let ((_%$%target6013060221%_
                     (let () (declare (not safe)) (##values-ref _g105212_ 0)))
                    (_%$%tl6013260224%_
                     (let () (declare (not safe)) (##values-ref _g105212_ 1))))
                (if (gx#stx-null? _%$%tl6013260224%_)
                    (letrec ((_%$%loop6013360227%_
                              (lambda (_%$%hd6013160231%_ _%$%body6013760234%_)
                                (if (gx#stx-pair? _%$%hd6013160231%_)
                                    (let ((_%$%e6013460236%_
                                           (gx#syntax-e _%$%hd6013160231%_)))
                                      (let ((_%$%lp-hd6013560240%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6013460236%_)))
                                            (_%$%lp-tl6013660243%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6013460236%_))))
                                        (_%$%loop6013360227%_
                                         _%$%lp-tl6013660243%_
                                         (cons _%$%lp-hd6013560240%_
                                               _%$%body6013760234%_))))
                                    (let ((_%$%body6013860246%_
                                           (reverse _%$%body6013760234%_)))
                                      (if (gx#stx-null? _%$%tl6012960218%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%$%hd6011960185%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%$%hd6011660175%_ '()))
                                      (cons _%$%hd6011960185%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%$%hd6011060155%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%$%hd6011960185%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%$%hd6011360165%_ '()))
                            (cons _%$%hd6012260195%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%hd6012560205%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g6029160294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g6029260297%_)
                   (cons _%$%g6029160294%_ _%$%g6029260297%_))
                 '()
                 _%$%body6013860246%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g6010060144%_
                                           _%$%g6010160148%_)))))))
                      (_%$%loop6013360227%_ _%$%target6013060221%_ '()))
                    (_%$%g6010060144%_ _%$%g6010160148%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g6010060144%_
                                                   _%$%g6010160148%_))))
                                          (_%$%g6010060144%_
                                           _%$%g6010160148%_))))
                                  (_%$%g6010060144%_ _%$%g6010160148%_))))
                          (_%$%g6010060144%_ _%$%g6010160148%_))))
                  (_%$%g6010060144%_ _%$%g6010160148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g6010060144%_
                                                   _%$%g6010160148%_))))
                                          (_%$%g6010060144%_
                                           _%$%g6010160148%_))))
                                  (_%$%g6010060144%_ _%$%g6010160148%_)))))
                      (_%$%g6009960300%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type60097%_
                             (let ((__obj105009 _%type60097%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105009
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105009
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj105009
                                    'type-descriptor)))
                             _%var60091%_
                             _%checked?60095%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body60094%_)))))
                 (_%expand59102%_
                  (lambda (_%var59890%_
                           _%Interface59892%_
                           _%body59893%_
                           _%checked?59894%_
                           _%checked-methods?59895%_
                           _%maybe?59896%_)
                    (let* ((_%$%g5989859906%_
                            (lambda (_%$%g5989959902%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5989959902%_)))
                           (_%$%g5989760083%_
                            (lambda (_%$%g5989959910%_)
                              (if _%checked?59894%_
                                  (if _%maybe?59896%_
                                      (let* ((_%$%g5992559940%_
                                              (lambda (_%$%g5992659936%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5992659936%_)))
                                             (_%$%g5992459986%_
                                              (lambda (_%$%g5992659944%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5992659944%_)
                                                    (let ((_%$%e5992959947%_
                                                           (gx#syntax-e
                                                            _%$%g5992659944%_)))
                                                      (let ((_%$%hd5993059951%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5992959947%_)))
                    (_%$%tl5993159954%_
                     (let () (declare (not safe)) (##cdr _%$%e5992959947%_))))
                (if (gx#stx-pair? _%$%tl5993159954%_)
                    (let ((_%$%e5993259957%_ (gx#syntax-e _%$%tl5993159954%_)))
                      (let ((_%$%hd5993359961%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5993259957%_)))
                            (_%$%tl5993459964%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5993259957%_))))
                        (if (gx#stx-null? _%$%tl5993459964%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5993059951%_
                                              (cons (cons _%$%hd5993359961%_
                                                          (cons _%$%hd5993059951%_
                                                                '()))
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons _%$%hd5993059951%_
                                                          (cons _%$%g5989959910%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'nil-dereference!)
                                    (cons _%$%hd5993059951%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%$%g5992559940%_ _%$%g5992659944%_))))
                    (_%$%g5992559940%_ _%$%g5992659944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5992559940%_
                                                     _%$%g5992659944%_)))))
                                        (_%$%g5992459986%_
                                         (list _%var59890%_
                                               _%Interface59892%_)))
                                      (let* ((_%$%g5999060005%_
                                              (lambda (_%$%g5999160001%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5999160001%_)))
                                             (_%$%g5998960049%_
                                              (lambda (_%$%g5999160009%_)
                                                (if (gx#stx-pair?
                                                     _%$%g5999160009%_)
                                                    (let ((_%$%e5999460012%_
                                                           (gx#syntax-e
                                                            _%$%g5999160009%_)))
                                                      (let ((_%$%hd5999560016%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e5999460012%_)))
                    (_%$%tl5999660019%_
                     (let () (declare (not safe)) (##cdr _%$%e5999460012%_))))
                (if (gx#stx-pair? _%$%tl5999660019%_)
                    (let ((_%$%e5999760022%_ (gx#syntax-e _%$%tl5999660019%_)))
                      (let ((_%$%hd5999860026%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5999760022%_)))
                            (_%$%tl5999960029%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5999760022%_))))
                        (if (gx#stx-null? _%$%tl5999960029%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%$%hd5999560016%_
                                              (cons (cons _%$%hd5999860026%_
                                                          (cons _%$%hd5999560016%_
                                                                '()))
                                                    '()))
                                        (cons _%$%g5989959910%_ '())))
                            (_%$%g5999060005%_ _%$%g5999160009%_))))
                    (_%$%g5999060005%_ _%$%g5999160009%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5999060005%_
                                                     _%$%g5999160009%_)))))
                                        (_%$%g5998960049%_
                                         (list _%var59890%_
                                               _%Interface59892%_))))
                                  (if _%maybe?59896%_
                                      (let* ((_%$%g6005360061%_
                                              (lambda (_%$%g6005460057%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g6005460057%_)))
                                             (_%$%g6005260079%_
                                              (lambda (_%$%g6005460065%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons _%$%g6005460065%_
                                                            (cons _%$%g5989959910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'nil-dereference!)
                                      (cons _%$%g6005460065%_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g6005260079%_ _%var59890%_))
                                      _%$%g5989959910%_)))))
                      (_%$%g5989760083%_
                       (_%expand-body59100%_
                        _%var59890%_
                        _%Interface59892%_
                        _%body59893%_
                        (let ((_%$e60087%_ _%checked?59894%_))
                          (if _%$e60087%_
                              _%$e60087%_
                              _%checked-methods?59895%_))))))))
          (let* ((_%__stx9925099251%_ _%stx59097%_)
                 (_%$%g5910859251%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9925099251%_))))
            (let ((_%__kont9925399254%_
                   (lambda (_%$%g5911059818%_
                            _%$%g5911159820%_
                            _%$%g5911259821%_
                            _%$%g5911359822%_)
                     (let* ((_%$%g5984759855%_
                             (lambda (_%$%g5984859851%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g5984859851%_)))
                            (_%$%g5984659882%_
                             (lambda (_%$%g5984859859%_)
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%$%g5911359822%_
                                                 (cons _%$%g5911259821%_
                                                       (cons _%$%g5984859859%_
                                                             '())))
                                           (foldr (lambda (_%$%g5987359876%_
                                                           _%$%g5987459879%_)
                                                    (cons _%$%g5987359876%_
                                                          _%$%g5987459879%_))
                                                  '()
                                                  _%$%g5911059818%_))))))
                       (_%$%g5984659882%_
                        (let ((__obj105010
                               (gx#syntax-local-value _%$%g5911159820%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj105010
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj105010
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj105010
                               'identifier)))))))
                  (_%__kont9925799258%_
                   (lambda (_%$%g5913859698%_
                            _%$%g5913959700%_
                            _%$%g5914059701%_)
                     (_%expand59102%_
                      _%$%g5914059701%_
                      _%$%g5913959700%_
                      (foldr (lambda (_%$%g5972459727%_ _%$%g5972559730%_)
                               (cons _%$%g5972459727%_ _%$%g5972559730%_))
                             '()
                             _%$%g5913859698%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9926199262%_
                   (lambda (_%$%g5916559578%_
                            _%$%g5916659580%_
                            _%$%g5916759581%_)
                     (_%expand59102%_
                      _%$%g5916759581%_
                      _%$%g5916659580%_
                      (foldr (lambda (_%$%g5960459607%_ _%$%g5960559610%_)
                               (cons _%$%g5960459607%_ _%$%g5960559610%_))
                             '()
                             _%$%g5916559578%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9926599266%_
                   (lambda (_%$%g5919259458%_
                            _%$%g5919359460%_
                            _%$%g5919459461%_)
                     (_%expand59102%_
                      _%$%g5919459461%_
                      _%$%g5919359460%_
                      (foldr (lambda (_%$%g5948459487%_ _%$%g5948559490%_)
                               (cons _%$%g5948459487%_ _%$%g5948559490%_))
                             '()
                             _%$%g5919259458%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9926999270%_
                   (lambda (_%$%g5921959336%_
                            _%$%g5922059338%_
                            _%$%g5922159339%_)
                     (_%expand59102%_
                      _%$%g5922159339%_
                      _%$%g5922059338%_
                      (foldr (lambda (_%$%g5936459367%_ _%$%g5936559370%_)
                               (cons _%$%g5936459367%_ _%$%g5936559370%_))
                             '()
                             _%$%g5921959336%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9948999490%_
                      (lambda (_%$%e5922259258%_
                               _%$%hd5922359262%_
                               _%$%tl5922459265%_
                               _%$%e5922559268%_
                               _%$%hd5922659272%_
                               _%$%tl5922759275%_
                               _%$%e5922859278%_
                               _%$%hd5922959282%_
                               _%$%tl5923059285%_
                               _%$%e5923159288%_
                               _%$%hd5923259292%_
                               _%$%tl5923359295%_
                               _%$%e5923459298%_
                               _%$%hd5923559302%_
                               _%$%tl5923659305%_
                               _%__splice9927199272%_
                               _%$%target5923759308%_
                               _%$%tl5923959311%_)
                        (letrec ((_%$%loop5924059314%_
                                  (lambda (_%$%hd5923859318%_
                                           _%$%body5924459321%_)
                                    (if (gx#stx-pair? _%$%hd5923859318%_)
                                        (let ((_%$%e5924159323%_
                                               (gx#syntax-e
                                                _%$%hd5923859318%_)))
                                          (let ((_%$%lp-tl5924359330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5924159323%_)))
                                                (_%$%lp-hd5924259327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5924159323%_))))
                                            (_%$%loop5924059314%_
                                             _%$%lp-tl5924359330%_
                                             (cons _%$%lp-hd5924259327%_
                                                   _%$%body5924459321%_))))
                                        (let ((_%$%body5924559333%_
                                               (reverse _%$%body5924459321%_)))
                                          (let ((_%$%g5921959336%_
                                                 _%$%body5924559333%_)
                                                (_%$%g5922059338%_
                                                 _%$%hd5923559302%_)
                                                (_%$%g5922159339%_
                                                 _%$%hd5922959282%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5922159339%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5922059338%_)))
                                                (_%__kont9926999270%_
                                                 _%$%g5921959336%_
                                                 _%$%g5922059338%_
                                                 _%$%g5922159339%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5910859251%_)))))))))
                          (_%$%loop5924059314%_ _%$%target5923759308%_ '()))))
                     (_%__match9944599446%_
                      (lambda (_%$%e5919559380%_
                               _%$%hd5919659384%_
                               _%$%tl5919759387%_
                               _%$%e5919859390%_
                               _%$%hd5919959394%_
                               _%$%tl5920059397%_
                               _%$%e5920159400%_
                               _%$%hd5920259404%_
                               _%$%tl5920359407%_
                               _%$%e5920459410%_
                               _%$%hd5920559414%_
                               _%$%tl5920659417%_
                               _%$%e5920759420%_
                               _%$%hd5920859424%_
                               _%$%tl5920959427%_
                               _%__splice9926799268%_
                               _%$%target5921059430%_
                               _%$%tl5921259433%_)
                        (letrec ((_%$%loop5921359436%_
                                  (lambda (_%$%hd5921159440%_
                                           _%$%body5921759443%_)
                                    (if (gx#stx-pair? _%$%hd5921159440%_)
                                        (let ((_%$%e5921459445%_
                                               (gx#syntax-e
                                                _%$%hd5921159440%_)))
                                          (let ((_%$%lp-tl5921659452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5921459445%_)))
                                                (_%$%lp-hd5921559449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5921459445%_))))
                                            (_%$%loop5921359436%_
                                             _%$%lp-tl5921659452%_
                                             (cons _%$%lp-hd5921559449%_
                                                   _%$%body5921759443%_))))
                                        (let ((_%$%body5921859455%_
                                               (reverse _%$%body5921759443%_)))
                                          (let ((_%$%g5919259458%_
                                                 _%$%body5921859455%_)
                                                (_%$%g5919359460%_
                                                 _%$%hd5920859424%_)
                                                (_%$%g5919459461%_
                                                 _%$%hd5920259404%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5919459461%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5919359460%_)))
                                                (_%__kont9926599266%_
                                                 _%$%g5919259458%_
                                                 _%$%g5919359460%_
                                                 _%$%g5919459461%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5910859251%_)))))))))
                          (_%$%loop5921359436%_ _%$%target5921059430%_ '()))))
                     (_%__match9940199402%_
                      (lambda (_%$%e5916859500%_
                               _%$%hd5916959504%_
                               _%$%tl5917059507%_
                               _%$%e5917159510%_
                               _%$%hd5917259514%_
                               _%$%tl5917359517%_
                               _%$%e5917459520%_
                               _%$%hd5917559524%_
                               _%$%tl5917659527%_
                               _%$%e5917759530%_
                               _%$%hd5917859534%_
                               _%$%tl5917959537%_
                               _%$%e5918059540%_
                               _%$%hd5918159544%_
                               _%$%tl5918259547%_
                               _%__splice9926399264%_
                               _%$%target5918359550%_
                               _%$%tl5918559553%_)
                        (letrec ((_%$%loop5918659556%_
                                  (lambda (_%$%hd5918459560%_
                                           _%$%body5919059563%_)
                                    (if (gx#stx-pair? _%$%hd5918459560%_)
                                        (let ((_%$%e5918759565%_
                                               (gx#syntax-e
                                                _%$%hd5918459560%_)))
                                          (let ((_%$%lp-tl5918959572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5918759565%_)))
                                                (_%$%lp-hd5918859569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5918759565%_))))
                                            (_%$%loop5918659556%_
                                             _%$%lp-tl5918959572%_
                                             (cons _%$%lp-hd5918859569%_
                                                   _%$%body5919059563%_))))
                                        (let ((_%$%body5919159575%_
                                               (reverse _%$%body5919059563%_)))
                                          (let ((_%$%g5916559578%_
                                                 _%$%body5919159575%_)
                                                (_%$%g5916659580%_
                                                 _%$%hd5918159544%_)
                                                (_%$%g5916759581%_
                                                 _%$%hd5917559524%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5916759581%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5916659580%_)))
                                                (_%__kont9926199262%_
                                                 _%$%g5916559578%_
                                                 _%$%g5916659580%_
                                                 _%$%g5916759581%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5910859251%_)))))))))
                          (_%$%loop5918659556%_ _%$%target5918359550%_ '()))))
                     (_%__match9935799358%_
                      (lambda (_%$%e5914159620%_
                               _%$%hd5914259624%_
                               _%$%tl5914359627%_
                               _%$%e5914459630%_
                               _%$%hd5914559634%_
                               _%$%tl5914659637%_
                               _%$%e5914759640%_
                               _%$%hd5914859644%_
                               _%$%tl5914959647%_
                               _%$%e5915059650%_
                               _%$%hd5915159654%_
                               _%$%tl5915259657%_
                               _%$%e5915359660%_
                               _%$%hd5915459664%_
                               _%$%tl5915559667%_
                               _%__splice9925999260%_
                               _%$%target5915659670%_
                               _%$%tl5915859673%_)
                        (letrec ((_%$%loop5915959676%_
                                  (lambda (_%$%hd5915759680%_
                                           _%$%body5916359683%_)
                                    (if (gx#stx-pair? _%$%hd5915759680%_)
                                        (let ((_%$%e5916059685%_
                                               (gx#syntax-e
                                                _%$%hd5915759680%_)))
                                          (let ((_%$%lp-tl5916259692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5916059685%_)))
                                                (_%$%lp-hd5916159689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5916059685%_))))
                                            (_%$%loop5915959676%_
                                             _%$%lp-tl5916259692%_
                                             (cons _%$%lp-hd5916159689%_
                                                   _%$%body5916359683%_))))
                                        (let ((_%$%body5916459695%_
                                               (reverse _%$%body5916359683%_)))
                                          (let ((_%$%g5913859698%_
                                                 _%$%body5916459695%_)
                                                (_%$%g5913959700%_
                                                 _%$%hd5915459664%_)
                                                (_%$%g5914059701%_
                                                 _%$%hd5914859644%_))
                                            (if (and (gx#identifier?
                                                      _%$%g5914059701%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%$%g5913959700%_)))
                                                (_%__kont9925799258%_
                                                 _%$%g5913859698%_
                                                 _%$%g5913959700%_
                                                 _%$%g5914059701%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5910859251%_)))))))))
                          (_%$%loop5915959676%_ _%$%target5915659670%_ '()))))
                     (_%__match9933799338%_
                      (lambda (_%$%e5914159620%_
                               _%$%hd5914259624%_
                               _%$%tl5914359627%_
                               _%$%e5914459630%_
                               _%$%hd5914559634%_
                               _%$%tl5914659637%_
                               _%$%e5914759640%_
                               _%$%hd5914859644%_
                               _%$%tl5914959647%_
                               _%$%e5915059650%_
                               _%$%hd5915159654%_
                               _%$%tl5915259657%_)
                        (if (gx#identifier? _%$%hd5915159654%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g105214_|
                                 _%$%hd5915159654%_)
                                (if (gx#stx-pair? _%$%tl5915259657%_)
                                    (let ((_%$%e5915359660%_
                                           (gx#syntax-e _%$%tl5915259657%_)))
                                      (let ((_%$%tl5915559667%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5915359660%_)))
                                            (_%$%hd5915459664%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5915359660%_))))
                                        (if (gx#stx-null? _%$%tl5915559667%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl5914659637%_)
                                                (let ((_%__splice9925999260%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl5914659637%_
                                                        '0)))
                                                  (let ((_%$%tl5915859673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9925999260%_
                                                            '1)))
                                                        (_%$%target5915659670%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9925999260%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5915859673%_)
                                                        (_%__match9935799358%_
                                                         _%$%e5914159620%_
                                                         _%$%hd5914259624%_
                                                         _%$%tl5914359627%_
                                                         _%$%e5914459630%_
                                                         _%$%hd5914559634%_
                                                         _%$%tl5914659637%_
                                                         _%$%e5914759640%_
                                                         _%$%hd5914859644%_
                                                         _%$%tl5914959647%_
                                                         _%$%e5915059650%_
                                                         _%$%hd5915159654%_
                                                         _%$%tl5915259657%_
                                                         _%$%e5915359660%_
                                                         _%$%hd5915459664%_
                                                         _%$%tl5915559667%_
                                                         _%__splice9925999260%_
                                                         _%$%target5915659670%_
                                                         _%$%tl5915859673%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g5910859251%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5910859251%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5910859251%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5910859251%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g105215_|
                                     _%$%hd5915159654%_)
                                    (if (gx#stx-pair? _%$%tl5915259657%_)
                                        (let ((_%$%e5918059540%_
                                               (gx#syntax-e
                                                _%$%tl5915259657%_)))
                                          (let ((_%$%tl5918259547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5918059540%_)))
                                                (_%$%hd5918159544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5918059540%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl5918259547%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl5914659637%_)
                                                    (let ((_%__splice9926399264%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl5914659637%_
                                                            '0)))
                                                      (let ((_%$%tl5918559553%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9926399264%_ '1)))
                    (_%$%target5918359550%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9926399264%_ '0))))
                (if (gx#stx-null? _%$%tl5918559553%_)
                    (_%__match9940199402%_
                     _%$%e5914159620%_
                     _%$%hd5914259624%_
                     _%$%tl5914359627%_
                     _%$%e5914459630%_
                     _%$%hd5914559634%_
                     _%$%tl5914659637%_
                     _%$%e5914759640%_
                     _%$%hd5914859644%_
                     _%$%tl5914959647%_
                     _%$%e5915059650%_
                     _%$%hd5915159654%_
                     _%$%tl5915259657%_
                     _%$%e5918059540%_
                     _%$%hd5918159544%_
                     _%$%tl5918259547%_
                     _%__splice9926399264%_
                     _%$%target5918359550%_
                     _%$%tl5918559553%_)
                    (let () (declare (not safe)) (_%$%g5910859251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5910859251%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5910859251%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g5910859251%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g105216_|
                                         _%$%hd5915159654%_)
                                        (if (gx#stx-pair? _%$%tl5915259657%_)
                                            (let ((_%$%e5920759420%_
                                                   (gx#syntax-e
                                                    _%$%tl5915259657%_)))
                                              (let ((_%$%tl5920959427%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5920759420%_)))
                                                    (_%$%hd5920859424%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5920759420%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl5920959427%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl5914659637%_)
                                                        (let ((_%__splice9926799268%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl5914659637%_
                                                                '0)))
                                                          (let ((_%$%tl5921259433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9926799268%_ '1)))
                        (_%$%target5921059430%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9926799268%_ '0))))
                    (if (gx#stx-null? _%$%tl5921259433%_)
                        (_%__match9944599446%_
                         _%$%e5914159620%_
                         _%$%hd5914259624%_
                         _%$%tl5914359627%_
                         _%$%e5914459630%_
                         _%$%hd5914559634%_
                         _%$%tl5914659637%_
                         _%$%e5914759640%_
                         _%$%hd5914859644%_
                         _%$%tl5914959647%_
                         _%$%e5915059650%_
                         _%$%hd5915159654%_
                         _%$%tl5915259657%_
                         _%$%e5920759420%_
                         _%$%hd5920859424%_
                         _%$%tl5920959427%_
                         _%__splice9926799268%_
                         _%$%target5921059430%_
                         _%$%tl5921259433%_)
                        (let () (declare (not safe)) (_%$%g5910859251%_)))))
                (let () (declare (not safe)) (_%$%g5910859251%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5910859251%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5910859251%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g105217_|
                                             _%$%hd5915159654%_)
                                            (if (gx#stx-pair?
                                                 _%$%tl5915259657%_)
                                                (let ((_%$%e5923459298%_
                                                       (gx#syntax-e
                                                        _%$%tl5915259657%_)))
                                                  (let ((_%$%tl5923659305%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e5923459298%_)))
                                                        (_%$%hd5923559302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e5923459298%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl5923659305%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl5914659637%_)
                                                            (let ((_%__splice9927199272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl5914659637%_
                            '0)))
                      (let ((_%$%tl5923959311%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9927199272%_ '1)))
                            (_%$%target5923759308%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9927199272%_ '0))))
                        (if (gx#stx-null? _%$%tl5923959311%_)
                            (_%__match9948999490%_
                             _%$%e5914159620%_
                             _%$%hd5914259624%_
                             _%$%tl5914359627%_
                             _%$%e5914459630%_
                             _%$%hd5914559634%_
                             _%$%tl5914659637%_
                             _%$%e5914759640%_
                             _%$%hd5914859644%_
                             _%$%tl5914959647%_
                             _%$%e5915059650%_
                             _%$%hd5915159654%_
                             _%$%tl5915259657%_
                             _%$%e5923459298%_
                             _%$%hd5923559302%_
                             _%$%tl5923659305%_
                             _%__splice9927199272%_
                             _%$%target5923759308%_
                             _%$%tl5923959311%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5910859251%_)))))
                    (let () (declare (not safe)) (_%$%g5910859251%_)))
                (let () (declare (not safe)) (_%$%g5910859251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g5910859251%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5910859251%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5910859251%_)))))
                     (_%__match9931399314%_
                      (lambda (_%$%e5911459740%_
                               _%$%hd5911559744%_
                               _%$%tl5911659747%_
                               _%$%e5911759750%_
                               _%$%hd5911859754%_
                               _%$%tl5911959757%_
                               _%$%e5912059760%_
                               _%$%hd5912159764%_
                               _%$%tl5912259767%_
                               _%$%e5912359770%_
                               _%$%hd5912459774%_
                               _%$%tl5912559777%_
                               _%$%e5912659780%_
                               _%$%hd5912759784%_
                               _%$%tl5912859787%_
                               _%__splice9925599256%_
                               _%$%target5912959790%_
                               _%$%tl5913159793%_)
                        (letrec ((_%$%loop5913259796%_
                                  (lambda (_%$%hd5913059800%_
                                           _%$%body5913659803%_)
                                    (if (gx#stx-pair? _%$%hd5913059800%_)
                                        (let ((_%$%e5913359805%_
                                               (gx#syntax-e
                                                _%$%hd5913059800%_)))
                                          (let ((_%$%lp-tl5913559812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e5913359805%_)))
                                                (_%$%lp-hd5913459809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e5913359805%_))))
                                            (_%$%loop5913259796%_
                                             _%$%lp-tl5913559812%_
                                             (cons _%$%lp-hd5913459809%_
                                                   _%$%body5913659803%_))))
                                        (let ((_%$%body5913759815%_
                                               (reverse _%$%body5913659803%_)))
                                          (let ((_%$%g5911059818%_
                                                 _%$%body5913759815%_)
                                                (_%$%g5911159820%_
                                                 _%$%hd5912759784%_)
                                                (_%$%g5911259821%_
                                                 _%$%hd5912459774%_)
                                                (_%$%g5911359822%_
                                                 _%$%hd5912159764%_))
                                            (if (let ((__tmp105218
                                                       (gx#syntax-local-value
                                                        _%$%g5911159820%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp105218))
                                                (_%__kont9925399254%_
                                                 _%$%g5911059818%_
                                                 _%$%g5911159820%_
                                                 _%$%g5911259821%_
                                                 _%$%g5911359822%_)
                                                (_%__match9933799338%_
                                                 _%$%e5911459740%_
                                                 _%$%hd5911559744%_
                                                 _%$%tl5911659747%_
                                                 _%$%e5911759750%_
                                                 _%$%hd5911859754%_
                                                 _%$%tl5911959757%_
                                                 _%$%e5912059760%_
                                                 _%$%hd5912159764%_
                                                 _%$%tl5912259767%_
                                                 _%$%e5912359770%_
                                                 _%$%hd5912459774%_
                                                 _%$%tl5912559777%_))))))))
                          (_%$%loop5913259796%_ _%$%target5912959790%_ '())))))
                (if (gx#stx-pair? _%__stx9925099251%_)
                    (let ((_%$%e5911459740%_
                           (gx#syntax-e _%__stx9925099251%_)))
                      (let ((_%$%tl5911659747%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5911459740%_)))
                            (_%$%hd5911559744%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5911459740%_))))
                        (if (gx#stx-pair? _%$%tl5911659747%_)
                            (let ((_%$%e5911759750%_
                                   (gx#syntax-e _%$%tl5911659747%_)))
                              (let ((_%$%tl5911959757%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5911759750%_)))
                                    (_%$%hd5911859754%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5911759750%_))))
                                (if (gx#stx-pair? _%$%hd5911859754%_)
                                    (let ((_%$%e5912059760%_
                                           (gx#syntax-e _%$%hd5911859754%_)))
                                      (let ((_%$%tl5912259767%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5912059760%_)))
                                            (_%$%hd5912159764%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5912059760%_))))
                                        (if (gx#stx-pair? _%$%tl5912259767%_)
                                            (let ((_%$%e5912359770%_
                                                   (gx#syntax-e
                                                    _%$%tl5912259767%_)))
                                              (let ((_%$%tl5912559777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5912359770%_)))
                                                    (_%$%hd5912459774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5912359770%_))))
                                                (if (gx#stx-pair?
                                                     _%$%tl5912559777%_)
                                                    (let ((_%$%e5912659780%_
                                                           (gx#syntax-e
                                                            _%$%tl5912559777%_)))
                                                      (let ((_%$%tl5912859787%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e5912659780%_)))
                    (_%$%hd5912759784%_
                     (let () (declare (not safe)) (##car _%$%e5912659780%_))))
                (if (gx#stx-null? _%$%tl5912859787%_)
                    (if (gx#stx-pair/null? _%$%tl5911959757%_)
                        (let ((_%__splice9925599256%_
                               (gx#syntax-split-splice->vector
                                _%$%tl5911959757%_
                                '0)))
                          (let ((_%$%tl5913159793%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9925599256%_ '1)))
                                (_%$%target5912959790%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9925599256%_ '0))))
                            (if (gx#stx-null? _%$%tl5913159793%_)
                                (_%__match9931399314%_
                                 _%$%e5911459740%_
                                 _%$%hd5911559744%_
                                 _%$%tl5911659747%_
                                 _%$%e5911759750%_
                                 _%$%hd5911859754%_
                                 _%$%tl5911959757%_
                                 _%$%e5912059760%_
                                 _%$%hd5912159764%_
                                 _%$%tl5912259767%_
                                 _%$%e5912359770%_
                                 _%$%hd5912459774%_
                                 _%$%tl5912559777%_
                                 _%$%e5912659780%_
                                 _%$%hd5912759784%_
                                 _%$%tl5912859787%_
                                 _%__splice9925599256%_
                                 _%$%target5912959790%_
                                 _%$%tl5913159793%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5910859251%_)))))
                        (let () (declare (not safe)) (_%$%g5910859251%_)))
                    (let () (declare (not safe)) (_%$%g5910859251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5910859251%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5910859251%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g5910859251%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g5910859251%_)))))
                    (let () (declare (not safe)) (_%$%g5910859251%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx60310%_)
        (let* ((_%__stx9949299493%_ _%stx60310%_)
               (_%$%g6031560375%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9949299493%_))))
          (let ((_%__kont9949599496%_
                 (lambda (_%$%g6031760931%_ _%$%g6031860933%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%$%g6031860933%_ '()))
                               (foldr (lambda (_%$%g6094960952%_
                                               _%$%g6095060955%_)
                                        (cons _%$%g6094960952%_
                                              _%$%g6095060955%_))
                                      '()
                                      _%$%g6031760931%_)))))
                (_%__kont9949999500%_
                 (lambda (_%$%g6033460519%_ _%$%g6033560521%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%$%g6033560521%_)
                       (let* ((_%$%g6054160548%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx60310%_
                                _%$%g6033560521%_))
                              (_%$%E6054360554%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%$%g6054160548%_
                                        '([var . parts]))
                                 (void)))
                              (_%$%K6054460852%_
                               (lambda (_%parts60558%_ _%var60560%_)
                                 (let ((_%$e60562%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var60560%_))))
                                   (if _%$e60562%_
                                       (let _%loop60569%_ ((_%parts60572%_
                                                            _%parts60558%_)
                                                           (_%type60574%_
                                                            (##direct-structure-ref
                                                             _%$e60562%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object60575%_
                                                            _%var60560%_)
                                                           (_%checked-method?60576%_
                                                            (##direct-structure-ref
                                                             _%$e60562%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?60577%_
                                                            '#f))
                                         (let* ((_%$%parts6057860586%_
                                                 _%parts60572%_)
                                                (_%$%else6058060647%_
                                                 (lambda ()
                                                   (let* ((_%$%g6059860606%_
                                                           (lambda (_%$%g6059960602%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%$%g6059960602%_)))
                                                          (_%$%g6059760643%_
                                                           (lambda (_%$%g6059960610%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%%app)
                           (cons _%$%g6059960610%_
                                 (foldr (lambda (_%$%g6063460637%_
                                                 _%$%g6063560640%_)
                                          (cons _%$%g6063460637%_
                                                _%$%g6063560640%_))
                                        '()
                                        _%$%g6033460519%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g6059760643%_
                                                      _%object60575%_))))
                                                (_%$%K6058260826%_
                                                 (lambda (_%rest60651%_
                                                          _%part60653%_)
                                                   (if (and (not _%nil-check?60577%_)
                                                            (let ((__tmp105219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (symbol->string _%part60653%_)))
                      (declare (not safe))
                      (##string-prefix? '"?" __tmp105219)))
               (let ((_%str60657%_ (symbol->string _%part60653%_)))
                 (_%loop60569%_
                  (cons (let ((__tmp105220
                               (substring
                                _%str60657%_
                                '1
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%str60657%_)))))
                          (declare (not safe))
                          (##string->symbol __tmp105220))
                        _%rest60651%_)
                  _%type60574%_
                  _%object60575%_
                  _%checked-method?60576%_
                  '#t))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/mop~MOP-2#class-type-info::t
                      _%type60574%_))
                   (let* ((_%$%g6066260677%_
                           (lambda (_%$%g6066360673%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g6066360673%_)))
                          (_%$%g6066160746%_
                           (lambda (_%$%g6066360681%_)
                             (if (gx#stx-pair? _%$%g6066360681%_)
                                 (let ((_%$%e6066660684%_
                                        (gx#syntax-e _%$%g6066360681%_)))
                                   (let ((_%$%hd6066760688%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e6066660684%_)))
                                         (_%$%tl6066860691%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e6066660684%_))))
                                     (if (gx#stx-pair? _%$%tl6066860691%_)
                                         (let ((_%$%e6066960694%_
                                                (gx#syntax-e
                                                 _%$%tl6066860691%_)))
                                           (let ((_%$%hd6067060698%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e6066960694%_)))
                                                 (_%$%tl6067160701%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e6066960694%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl6067160701%_)
                                                 (if (null? _%rest60651%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%%app)
                                                           (cons (cons _%$%hd6067060698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%$%hd6066760688%_ '()))
                         (foldr (lambda (_%$%g6072560728%_ _%$%g6072660731%_)
                                  (cons _%$%g6072560728%_ _%$%g6072660731%_))
                                '()
                                _%$%g6033460519%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e60734%_
                                                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                             _%type60574%_
                                                             _%part60653%_)))
                                                       (if _%$e60734%_
                                                           (let ((_%slot-type60741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx60310%_
                             _%$e60734%_))))
                     (_%loop60569%_
                      _%rest60651%_
                      _%slot-type60741%_
                      (cons _%$%hd6067060698%_ (cons _%$%hd6066760688%_ '()))
                      (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                       _%type60574%_
                       _%part60653%_)
                      '#f))
                   (gx#raise-syntax-error
                    '#f
                    '"unresolved dotted reference value; unknown type for slot"
                    _%stx60310%_
                    _%$%g6033560521%_
                    _%part60653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g6066260677%_
                                                  _%$%g6066360681%_))))
                                         (_%$%g6066260677%_
                                          _%$%g6066360681%_))))
                                 (_%$%g6066260677%_ _%$%g6066360681%_)))))
                     (_%$%g6066160746%_
                      (list (if _%nil-check?60577%_
                                (cons 'check-nil! (cons _%object60575%_ '()))
                                _%object60575%_)
                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                             _%stx60310%_
                             _%type60574%_
                             _%part60653%_))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%type60574%_))
                       (if (null? _%rest60651%_)
                           (let* ((_%$%g6075260767%_
                                   (lambda (_%$%g6075360763%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g6075360763%_)))
                                  (_%$%g6075160820%_
                                   (lambda (_%$%g6075360771%_)
                                     (if (gx#stx-pair? _%$%g6075360771%_)
                                         (let ((_%$%e6075660774%_
                                                (gx#syntax-e
                                                 _%$%g6075360771%_)))
                                           (let ((_%$%hd6075760778%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e6075660774%_)))
                                                 (_%$%tl6075860781%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e6075660774%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl6075860781%_)
                                                 (let ((_%$%e6075960784%_
                                                        (gx#syntax-e
                                                         _%$%tl6075860781%_)))
                                                   (let ((_%$%hd6076060788%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e6075960784%_)))
                                                         (_%$%tl6076160791%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e6075960784%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl6076160791%_)
                                                         (cons _%$%hd6076060788%_
                                                               (cons _%$%hd6075760778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%$%g6081160814%_
                                             _%$%g6081260817%_)
                                      (cons _%$%g6081160814%_
                                            _%$%g6081260817%_))
                                    '()
                                    _%$%g6033460519%_)))
                 (_%$%g6075260767%_ _%$%g6075360771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g6075260767%_
                                                  _%$%g6075360771%_))))
                                         (_%$%g6075260767%_
                                          _%$%g6075360771%_)))))
                             (_%$%g6075160820%_
                              (list (if _%nil-check?60577%_
                                        (cons 'check-nil!
                                              (cons _%object60575%_ '()))
                                        _%object60575%_)
                                    (gx#stx-identifier
                                     _%$%g6033560521%_
                                     (if _%checked-method?60576%_ '"" '"&")
                                     (let ((__obj105011 _%type60574%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj105011
                                              'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj105011
                                              '2
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj105011
                                            'name)))
                                     '"-"
                                     _%part60653%_))))
                           (gx#raise-syntax-error
                            '#f
                            '"illegal dotted reference; interface has no slots"
                            _%stx60310%_
                            _%$%g6033560521%_
                            _%part60653%_))
                       (gx#raise-syntax-error
                        '#f
                        '"unexpected type"
                        _%stx60310%_
                        _%type60574%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%parts6057860586%_)
                                               (let ((_%$%hd6058360830%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%parts6057860586%_)))
                                                     (_%$%tl6058460833%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%parts6057860586%_))))
                                                 (let* ((_%part60836%_
                                                         _%$%hd6058360830%_)
                                                        (_%rest60839%_
                                                         _%$%tl6058460833%_))
                                                   (_%$%K6058260826%_
                                                    _%rest60839%_
                                                    _%part60836%_)))
                                               (_%$%else6058060647%_))))
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%$%g6033560521%_
                                                   (foldr (lambda (_%$%g6084360846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g6084460849%_)
                    (cons _%$%g6084360846%_ _%$%g6084460849%_))
                  '()
                  _%$%g6033460519%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%$%g6054160548%_)
                             (let ((_%$%hd6054560856%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%g6054160548%_)))
                                   (_%$%tl6054660859%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%g6054160548%_))))
                               (let* ((_%var60862%_ _%$%hd6054560856%_)
                                      (_%parts60865%_ _%$%tl6054660859%_))
                                 (_%$%K6054460852%_
                                  _%parts60865%_
                                  _%var60862%_)))
                             (_%$%E6054360554%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%$%g6033560521%_
                                   (foldr (lambda (_%$%g6086760870%_
                                                   _%$%g6086860873%_)
                                            (cons _%$%g6086760870%_
                                                  _%$%g6086860873%_))
                                          '()
                                          _%$%g6033460519%_))))))
                (_%__kont9950399504%_
                 (lambda (_%$%g6035760420%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%$%g6043560438%_ _%$%g6043660441%_)
                                  (cons _%$%g6043560438%_ _%$%g6043660441%_))
                                '()
                                _%$%g6035760420%_)))))
            (let* ((_%__match9957999580%_
                    (lambda (_%$%e6035860382%_
                             _%$%hd6035960386%_
                             _%$%tl6036060389%_
                             _%__splice9950599506%_
                             _%$%target6036160392%_
                             _%$%tl6036360395%_)
                      (letrec ((_%$%loop6036460398%_
                                (lambda (_%$%hd6036260402%_
                                         _%$%arg6036860405%_)
                                  (if (gx#stx-pair? _%$%hd6036260402%_)
                                      (let ((_%$%e6036560407%_
                                             (gx#syntax-e _%$%hd6036260402%_)))
                                        (let ((_%$%lp-tl6036760414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6036560407%_)))
                                              (_%$%lp-hd6036660411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6036560407%_))))
                                          (_%$%loop6036460398%_
                                           _%$%lp-tl6036760414%_
                                           (cons _%$%lp-hd6036660411%_
                                                 _%$%arg6036860405%_))))
                                      (let ((_%$%arg6036960417%_
                                             (reverse _%$%arg6036860405%_)))
                                        (_%__kont9950399504%_
                                         _%$%arg6036960417%_))))))
                        (_%$%loop6036460398%_ _%$%target6036160392%_ '()))))
                   (_%__match9956599566%_
                    (lambda (_%$%e6033660451%_
                             _%$%hd6033760455%_
                             _%$%tl6033860458%_
                             _%$%e6033960461%_
                             _%$%hd6034060465%_
                             _%$%tl6034160468%_
                             _%$%e6034260471%_
                             _%$%hd6034360475%_
                             _%$%tl6034460478%_
                             _%$%e6034560481%_
                             _%$%hd6034660485%_
                             _%$%tl6034760488%_
                             _%__splice9950199502%_
                             _%$%target6034860491%_
                             _%$%tl6035060494%_)
                      (letrec ((_%$%loop6035160497%_
                                (lambda (_%$%hd6034960501%_
                                         _%$%rand6035560504%_)
                                  (if (gx#stx-pair? _%$%hd6034960501%_)
                                      (let ((_%$%e6035260506%_
                                             (gx#syntax-e _%$%hd6034960501%_)))
                                        (let ((_%$%lp-tl6035460513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6035260506%_)))
                                              (_%$%lp-hd6035360510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6035260506%_))))
                                          (_%$%loop6035160497%_
                                           _%$%lp-tl6035460513%_
                                           (cons _%$%lp-hd6035360510%_
                                                 _%$%rand6035560504%_))))
                                      (let ((_%$%rand6035660516%_
                                             (reverse _%$%rand6035560504%_)))
                                        (_%__kont9949999500%_
                                         _%$%rand6035660516%_
                                         _%$%hd6034660485%_))))))
                        (_%$%loop6035160497%_ _%$%target6034860491%_ '()))))
                   (_%__match9953999540%_
                    (lambda (_%$%e6033660451%_
                             _%$%hd6033760455%_
                             _%$%tl6033860458%_
                             _%$%e6033960461%_
                             _%$%hd6034060465%_
                             _%$%tl6034160468%_)
                      (if (gx#stx-pair? _%$%hd6034060465%_)
                          (let ((_%$%e6034260471%_
                                 (gx#syntax-e _%$%hd6034060465%_)))
                            (let ((_%$%tl6034460478%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6034260471%_)))
                                  (_%$%hd6034360475%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6034260471%_))))
                              (if (gx#identifier? _%$%hd6034360475%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g105221_|
                                       _%$%hd6034360475%_)
                                      (if (gx#stx-pair? _%$%tl6034460478%_)
                                          (let ((_%$%e6034560481%_
                                                 (gx#syntax-e
                                                  _%$%tl6034460478%_)))
                                            (let ((_%$%tl6034760488%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e6034560481%_)))
                                                  (_%$%hd6034660485%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e6034560481%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl6034760488%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl6034160468%_)
                                                      (let ((_%__splice9950199502%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl6034160468%_
                                                              '0)))
                                                        (let ((_%$%tl6035060494%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9950199502%_ '1)))
                      (_%$%target6034860491%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9950199502%_ '0))))
                  (if (gx#stx-null? _%$%tl6035060494%_)
                      (_%__match9956599566%_
                       _%$%e6033660451%_
                       _%$%hd6033760455%_
                       _%$%tl6033860458%_
                       _%$%e6033960461%_
                       _%$%hd6034060465%_
                       _%$%tl6034160468%_
                       _%$%e6034260471%_
                       _%$%hd6034360475%_
                       _%$%tl6034460478%_
                       _%$%e6034560481%_
                       _%$%hd6034660485%_
                       _%$%tl6034760488%_
                       _%__splice9950199502%_
                       _%$%target6034860491%_
                       _%$%tl6035060494%_)
                      (if (gx#stx-pair/null? _%$%tl6033860458%_)
                          (let ((_%__splice9950599506%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl6033860458%_
                                  '0)))
                            (let ((_%$%tl6036360395%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9950599506%_ '1)))
                                  (_%$%target6036160392%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9950599506%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl6036360395%_)
                                  (_%__match9957999580%_
                                   _%$%e6033660451%_
                                   _%$%hd6033760455%_
                                   _%$%tl6033860458%_
                                   _%__splice9950599506%_
                                   _%$%target6036160392%_
                                   _%$%tl6036360395%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g6031560375%_)))))
                          (let () (declare (not safe)) (_%$%g6031560375%_))))))
              (if (gx#stx-pair/null? _%$%tl6033860458%_)
                  (let ((_%__splice9950599506%_
                         (gx#syntax-split-splice->vector
                          _%$%tl6033860458%_
                          '0)))
                    (let ((_%$%tl6036360395%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9950599506%_ '1)))
                          (_%$%target6036160392%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9950599506%_ '0))))
                      (if (gx#stx-null? _%$%tl6036360395%_)
                          (_%__match9957999580%_
                           _%$%e6033660451%_
                           _%$%hd6033760455%_
                           _%$%tl6033860458%_
                           _%__splice9950599506%_
                           _%$%target6036160392%_
                           _%$%tl6036360395%_)
                          (let () (declare (not safe)) (_%$%g6031560375%_)))))
                  (let () (declare (not safe)) (_%$%g6031560375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl6033860458%_)
                                                      (let ((_%__splice9950599506%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl6033860458%_
                                                              '0)))
                                                        (let ((_%$%tl6036360395%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9950599506%_ '1)))
                      (_%$%target6036160392%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9950599506%_ '0))))
                  (if (gx#stx-null? _%$%tl6036360395%_)
                      (_%__match9957999580%_
                       _%$%e6033660451%_
                       _%$%hd6033760455%_
                       _%$%tl6033860458%_
                       _%__splice9950599506%_
                       _%$%target6036160392%_
                       _%$%tl6036360395%_)
                      (let () (declare (not safe)) (_%$%g6031560375%_)))))
              (let () (declare (not safe)) (_%$%g6031560375%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl6033860458%_)
                                              (let ((_%__splice9950599506%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl6033860458%_
                                                      '0)))
                                                (let ((_%$%tl6036360395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9950599506%_
                                                          '1)))
                                                      (_%$%target6036160392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9950599506%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl6036360395%_)
                                                      (_%__match9957999580%_
                                                       _%$%e6033660451%_
                                                       _%$%hd6033760455%_
                                                       _%$%tl6033860458%_
                                                       _%__splice9950599506%_
                                                       _%$%target6036160392%_
                                                       _%$%tl6036360395%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g6031560375%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g6031560375%_))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl6033860458%_)
                                          (let ((_%__splice9950599506%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl6033860458%_
                                                  '0)))
                                            (let ((_%$%tl6036360395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9950599506%_
                                                      '1)))
                                                  (_%$%target6036160392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9950599506%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl6036360395%_)
                                                  (_%__match9957999580%_
                                                   _%$%e6033660451%_
                                                   _%$%hd6033760455%_
                                                   _%$%tl6033860458%_
                                                   _%__splice9950599506%_
                                                   _%$%target6036160392%_
                                                   _%$%tl6036360395%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g6031560375%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g6031560375%_))))
                                  (if (gx#stx-pair/null? _%$%tl6033860458%_)
                                      (let ((_%__splice9950599506%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl6033860458%_
                                              '0)))
                                        (let ((_%$%tl6036360395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9950599506%_
                                                  '1)))
                                              (_%$%target6036160392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9950599506%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl6036360395%_)
                                              (_%__match9957999580%_
                                               _%$%e6033660451%_
                                               _%$%hd6033760455%_
                                               _%$%tl6033860458%_
                                               _%__splice9950599506%_
                                               _%$%target6036160392%_
                                               _%$%tl6036360395%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g6031560375%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g6031560375%_))))))
                          (if (gx#stx-pair/null? _%$%tl6033860458%_)
                              (let ((_%__splice9950599506%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl6033860458%_
                                      '0)))
                                (let ((_%$%tl6036360395%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9950599506%_
                                          '1)))
                                      (_%$%target6036160392%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9950599506%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl6036360395%_)
                                      (_%__match9957999580%_
                                       _%$%e6033660451%_
                                       _%$%hd6033760455%_
                                       _%$%tl6033860458%_
                                       _%__splice9950599506%_
                                       _%$%target6036160392%_
                                       _%$%tl6036360395%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g6031560375%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g6031560375%_))))))
                   (_%__match9952799528%_
                    (lambda (_%$%e6031960883%_
                             _%$%hd6032060887%_
                             _%$%tl6032160890%_
                             _%$%e6032260893%_
                             _%$%hd6032360897%_
                             _%$%tl6032460900%_
                             _%__splice9949799498%_
                             _%$%target6032560903%_
                             _%$%tl6032760906%_)
                      (letrec ((_%$%loop6032860909%_
                                (lambda (_%$%hd6032660913%_
                                         _%$%rand6033260916%_)
                                  (if (gx#stx-pair? _%$%hd6032660913%_)
                                      (let ((_%$%e6032960918%_
                                             (gx#syntax-e _%$%hd6032660913%_)))
                                        (let ((_%$%lp-tl6033160925%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6032960918%_)))
                                              (_%$%lp-hd6033060922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6032960918%_))))
                                          (_%$%loop6032860909%_
                                           _%$%lp-tl6033160925%_
                                           (cons _%$%lp-hd6033060922%_
                                                 _%$%rand6033260916%_))))
                                      (let ((_%$%rand6033360928%_
                                             (reverse _%$%rand6033260916%_)))
                                        (let ((_%$%g6031760931%_
                                               _%$%rand6033360928%_)
                                              (_%$%g6031860933%_
                                               _%$%hd6032360897%_))
                                          (if (gx#identifier?
                                               _%$%g6031860933%_)
                                              (_%__kont9949599496%_
                                               _%$%g6031760931%_
                                               _%$%g6031860933%_)
                                              (_%__match9953999540%_
                                               _%$%e6031960883%_
                                               _%$%hd6032060887%_
                                               _%$%tl6032160890%_
                                               _%$%e6032260893%_
                                               _%$%hd6032360897%_
                                               _%$%tl6032460900%_))))))))
                        (_%$%loop6032860909%_ _%$%target6032560903%_ '())))))
              (if (gx#stx-pair? _%__stx9949299493%_)
                  (let ((_%$%e6031960883%_ (gx#syntax-e _%__stx9949299493%_)))
                    (let ((_%$%tl6032160890%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e6031960883%_)))
                          (_%$%hd6032060887%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e6031960883%_))))
                      (if (gx#stx-pair? _%$%tl6032160890%_)
                          (let ((_%$%e6032260893%_
                                 (gx#syntax-e _%$%tl6032160890%_)))
                            (let ((_%$%tl6032460900%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6032260893%_)))
                                  (_%$%hd6032360897%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6032260893%_))))
                              (if (gx#stx-pair/null? _%$%tl6032460900%_)
                                  (let ((_%__splice9949799498%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl6032460900%_
                                          '0)))
                                    (let ((_%$%tl6032760906%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9949799498%_
                                              '1)))
                                          (_%$%target6032560903%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9949799498%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl6032760906%_)
                                          (_%__match9952799528%_
                                           _%$%e6031960883%_
                                           _%$%hd6032060887%_
                                           _%$%tl6032160890%_
                                           _%$%e6032260893%_
                                           _%$%hd6032360897%_
                                           _%$%tl6032460900%_
                                           _%__splice9949799498%_
                                           _%$%target6032560903%_
                                           _%$%tl6032760906%_)
                                          (if (gx#stx-pair? _%$%hd6032360897%_)
                                              (let ((_%$%e6034260471%_
                                                     (gx#syntax-e
                                                      _%$%hd6032360897%_)))
                                                (let ((_%$%tl6034460478%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e6034260471%_)))
                                                      (_%$%hd6034360475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e6034260471%_))))
                                                  (if (gx#identifier?
                                                       _%$%hd6034360475%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g105221_|
                                                           _%$%hd6034360475%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl6034460478%_)
                                                              (let ((_%$%e6034560481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl6034460478%_)))
                        (let ((_%$%tl6034760488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e6034560481%_)))
                              (_%$%hd6034660485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e6034560481%_))))
                          (if (gx#stx-pair/null? _%$%tl6032160890%_)
                              (let ((_%__splice9950599506%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl6032160890%_
                                      '0)))
                                (let ((_%$%tl6036360395%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9950599506%_
                                          '1)))
                                      (_%$%target6036160392%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9950599506%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl6036360395%_)
                                      (_%__match9957999580%_
                                       _%$%e6031960883%_
                                       _%$%hd6032060887%_
                                       _%$%tl6032160890%_
                                       _%__splice9950599506%_
                                       _%$%target6036160392%_
                                       _%$%tl6036360395%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g6031560375%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g6031560375%_)))))
                      (if (gx#stx-pair/null? _%$%tl6032160890%_)
                          (let ((_%__splice9950599506%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl6032160890%_
                                  '0)))
                            (let ((_%$%tl6036360395%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9950599506%_ '1)))
                                  (_%$%target6036160392%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9950599506%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl6036360395%_)
                                  (_%__match9957999580%_
                                   _%$%e6031960883%_
                                   _%$%hd6032060887%_
                                   _%$%tl6032160890%_
                                   _%__splice9950599506%_
                                   _%$%target6036160392%_
                                   _%$%tl6036360395%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g6031560375%_)))))
                          (let () (declare (not safe)) (_%$%g6031560375%_))))
                  (if (gx#stx-pair/null? _%$%tl6032160890%_)
                      (let ((_%__splice9950599506%_
                             (gx#syntax-split-splice->vector
                              _%$%tl6032160890%_
                              '0)))
                        (let ((_%$%tl6036360395%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9950599506%_ '1)))
                              (_%$%target6036160392%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9950599506%_ '0))))
                          (if (gx#stx-null? _%$%tl6036360395%_)
                              (_%__match9957999580%_
                               _%$%e6031960883%_
                               _%$%hd6032060887%_
                               _%$%tl6032160890%_
                               _%__splice9950599506%_
                               _%$%target6036160392%_
                               _%$%tl6036360395%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g6031560375%_)))))
                      (let () (declare (not safe)) (_%$%g6031560375%_))))
              (if (gx#stx-pair/null? _%$%tl6032160890%_)
                  (let ((_%__splice9950599506%_
                         (gx#syntax-split-splice->vector
                          _%$%tl6032160890%_
                          '0)))
                    (let ((_%$%tl6036360395%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9950599506%_ '1)))
                          (_%$%target6036160392%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9950599506%_ '0))))
                      (if (gx#stx-null? _%$%tl6036360395%_)
                          (_%__match9957999580%_
                           _%$%e6031960883%_
                           _%$%hd6032060887%_
                           _%$%tl6032160890%_
                           _%__splice9950599506%_
                           _%$%target6036160392%_
                           _%$%tl6036360395%_)
                          (let () (declare (not safe)) (_%$%g6031560375%_)))))
                  (let () (declare (not safe)) (_%$%g6031560375%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl6032160890%_)
                                                  (let ((_%__splice9950599506%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl6032160890%_
                                                          '0)))
                                                    (let ((_%$%tl6036360395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9950599506%_
                                                              '1)))
                                                          (_%$%target6036160392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9950599506%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl6036360395%_)
                                                          (_%__match9957999580%_
                                                           _%$%e6031960883%_
                                                           _%$%hd6032060887%_
                                                           _%$%tl6032160890%_
                                                           _%__splice9950599506%_
                                                           _%$%target6036160392%_
                                                           _%$%tl6036360395%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g6031560375%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g6031560375%_)))))))
                                  (if (gx#stx-pair? _%$%hd6032360897%_)
                                      (let ((_%$%e6034260471%_
                                             (gx#syntax-e _%$%hd6032360897%_)))
                                        (let ((_%$%tl6034460478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6034260471%_)))
                                              (_%$%hd6034360475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6034260471%_))))
                                          (if (gx#identifier?
                                               _%$%hd6034360475%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g105221_|
                                                   _%$%hd6034360475%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl6034460478%_)
                                                      (let ((_%$%e6034560481%_
                                                             (gx#syntax-e
                                                              _%$%tl6034460478%_)))
                                                        (let ((_%$%tl6034760488%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e6034560481%_)))
                      (_%$%hd6034660485%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e6034560481%_))))
                  (if (gx#stx-pair/null? _%$%tl6032160890%_)
                      (let ((_%__splice9950599506%_
                             (gx#syntax-split-splice->vector
                              _%$%tl6032160890%_
                              '0)))
                        (let ((_%$%tl6036360395%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9950599506%_ '1)))
                              (_%$%target6036160392%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9950599506%_ '0))))
                          (if (gx#stx-null? _%$%tl6036360395%_)
                              (_%__match9957999580%_
                               _%$%e6031960883%_
                               _%$%hd6032060887%_
                               _%$%tl6032160890%_
                               _%__splice9950599506%_
                               _%$%target6036160392%_
                               _%$%tl6036360395%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g6031560375%_)))))
                      (let () (declare (not safe)) (_%$%g6031560375%_)))))
              (if (gx#stx-pair/null? _%$%tl6032160890%_)
                  (let ((_%__splice9950599506%_
                         (gx#syntax-split-splice->vector
                          _%$%tl6032160890%_
                          '0)))
                    (let ((_%$%tl6036360395%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9950599506%_ '1)))
                          (_%$%target6036160392%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9950599506%_ '0))))
                      (if (gx#stx-null? _%$%tl6036360395%_)
                          (_%__match9957999580%_
                           _%$%e6031960883%_
                           _%$%hd6032060887%_
                           _%$%tl6032160890%_
                           _%__splice9950599506%_
                           _%$%target6036160392%_
                           _%$%tl6036360395%_)
                          (let () (declare (not safe)) (_%$%g6031560375%_)))))
                  (let () (declare (not safe)) (_%$%g6031560375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl6032160890%_)
                                                      (let ((_%__splice9950599506%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl6032160890%_
                                                              '0)))
                                                        (let ((_%$%tl6036360395%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9950599506%_ '1)))
                      (_%$%target6036160392%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9950599506%_ '0))))
                  (if (gx#stx-null? _%$%tl6036360395%_)
                      (_%__match9957999580%_
                       _%$%e6031960883%_
                       _%$%hd6032060887%_
                       _%$%tl6032160890%_
                       _%__splice9950599506%_
                       _%$%target6036160392%_
                       _%$%tl6036360395%_)
                      (let () (declare (not safe)) (_%$%g6031560375%_)))))
              (let () (declare (not safe)) (_%$%g6031560375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%$%tl6032160890%_)
                                                  (let ((_%__splice9950599506%_
                                                         (gx#syntax-split-splice->vector
                                                          _%$%tl6032160890%_
                                                          '0)))
                                                    (let ((_%$%tl6036360395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9950599506%_
                                                              '1)))
                                                          (_%$%target6036160392%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9950599506%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%$%tl6036360395%_)
                                                          (_%__match9957999580%_
                                                           _%$%e6031960883%_
                                                           _%$%hd6032060887%_
                                                           _%$%tl6032160890%_
                                                           _%__splice9950599506%_
                                                           _%$%target6036160392%_
                                                           _%$%tl6036360395%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g6031560375%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g6031560375%_))))))
                                      (if (gx#stx-pair/null?
                                           _%$%tl6032160890%_)
                                          (let ((_%__splice9950599506%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl6032160890%_
                                                  '0)))
                                            (let ((_%$%tl6036360395%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9950599506%_
                                                      '1)))
                                                  (_%$%target6036160392%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9950599506%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl6036360395%_)
                                                  (_%__match9957999580%_
                                                   _%$%e6031960883%_
                                                   _%$%hd6032060887%_
                                                   _%$%tl6032160890%_
                                                   _%__splice9950599506%_
                                                   _%$%target6036160392%_
                                                   _%$%tl6036360395%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g6031560375%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g6031560375%_)))))))
                          (if (gx#stx-pair/null? _%$%tl6032160890%_)
                              (let ((_%__splice9950599506%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl6032160890%_
                                      '0)))
                                (let ((_%$%tl6036360395%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9950599506%_
                                          '1)))
                                      (_%$%target6036160392%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9950599506%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl6036360395%_)
                                      (_%__match9957999580%_
                                       _%$%e6031960883%_
                                       _%$%hd6032060887%_
                                       _%$%tl6032160890%_
                                       _%__splice9950599506%_
                                       _%$%target6036160392%_
                                       _%$%tl6036360395%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g6031560375%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g6031560375%_))))))
                  (let () (declare (not safe)) (_%$%g6031560375%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx60965%_)
        (let* ((_%__stx9958299583%_ _%stx60965%_)
               (_%$%g6096960990%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9958299583%_))))
          (let ((_%__kont9958599586%_
                 (lambda (_%$%g6097161058%_)
                   (let* ((_%$%g6107061077%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx60965%_
                            _%$%g6097161058%_))
                          (_%$%E6107261083%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g6107061077%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K6107361299%_
                           (lambda (_%parts61087%_ _%var61089%_)
                             (let ((_%$e61091%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var61089%_))))
                               (if _%$e61091%_
                                   (let _%loop61098%_ ((_%parts61101%_
                                                        _%parts61087%_)
                                                       (_%type61103%_
                                                        (##direct-structure-ref
                                                         _%$e61091%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object61104%_
                                                        _%var61089%_)
                                                       (_%nil-check?61105%_
                                                        '#f))
                                     (let* ((_%$%parts6110661114%_
                                             _%parts61101%_)
                                            (_%$%else6110861126%_
                                             (lambda () _%object61104%_))
                                            (_%$%K6111061281%_
                                             (lambda (_%rest61130%_
                                                      _%part61132%_)
                                               (if (and (not _%nil-check?61105%_)
                                                        (let ((__tmp105222
                                                               (symbol->string
                                                                _%part61132%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp105222)))
                                                   (let ((_%str61136%_
                                                          (symbol->string
                                                           _%part61132%_)))
                                                     (_%loop61098%_
                                                      (cons (let ((__tmp105223
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str61136%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str61136%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp105223))
                    _%rest61130%_)
              _%type61103%_
              _%object61104%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type61103%_))
                                                       (let* ((_%$%g6114161156%_
                                                               (lambda (_%$%g6114261152%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g6114261152%_)))
                      (_%$%g6114061273%_
                       (lambda (_%$%g6114261160%_)
                         (if (gx#stx-pair? _%$%g6114261160%_)
                             (let ((_%$%e6114561163%_
                                    (gx#syntax-e _%$%g6114261160%_)))
                               (let ((_%$%hd6114661167%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e6114561163%_)))
                                     (_%$%tl6114761170%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e6114561163%_))))
                                 (if (gx#stx-pair? _%$%tl6114761170%_)
                                     (let ((_%$%e6114861173%_
                                            (gx#syntax-e _%$%tl6114761170%_)))
                                       (let ((_%$%hd6114961177%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e6114861173%_)))
                                             (_%$%tl6115061180%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e6114861173%_))))
                                         (if (gx#stx-null? _%$%tl6115061180%_)
                                             (if (null? _%rest61130%_)
                                                 (let ((_%$e61215%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type61103%_
                                                         _%part61132%_)))
                                                   (if _%$e61215%_
                                                       (let* ((_%$%g6122261230%_
                                                               (lambda (_%$%g6122361226%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g6122361226%_)))
                      (_%$%g6122161253%_
                       (lambda (_%$%g6122361234%_)
                         (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%$%g6122361234%_ '()))
                                     (cons (cons _%$%hd6114961177%_
                                                 (cons _%$%hd6114661167%_ '()))
                                           '()))))))
                 (_%$%g6122161253%_
                  (let ()
                    (declare (not safe))
                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                     _%stx60965%_
                     _%$e61215%_))))
               (if _%nil-check?61105%_
                   (cons _%$%hd6114961177%_
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%$%hd6114661167%_ '()))
                               '()))
                   (cons _%$%hd6114961177%_ (cons _%$%hd6114661167%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e61261%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type61103%_
                                                         _%part61132%_)))
                                                   (if _%$e61261%_
                                                       (let ((_%type61268%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type|
                         _%stx60965%_
                         _%$e61261%_))))
                 (if _%nil-check?61105%_
                     (_%loop61098%_
                      _%rest61130%_
                      _%type61268%_
                      (cons _%$%hd6114961177%_
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%$%hd6114661167%_ '()))
                                  '()))
                      '#f)
                     (_%loop61098%_
                      _%rest61130%_
                      _%type61268%_
                      (cons _%$%hd6114961177%_ (cons _%$%hd6114661167%_ '()))
                      '#f)))
               (gx#raise-syntax-error
                '#f
                '"unresolved dotted reference; unknown type for slot"
                _%stx60965%_
                _%$%g6097161058%_
                _%part61132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g6114161156%_
                                              _%$%g6114261160%_))))
                                     (_%$%g6114161156%_ _%$%g6114261160%_))))
                             (_%$%g6114161156%_ _%$%g6114261160%_)))))
                 (_%$%g6114061273%_
                  (list (if _%nil-check?61105%_
                            (list 'check-nil! _%object61104%_)
                            _%object61104%_)
                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                         _%stx60965%_
                         _%type61103%_
                         _%part61132%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type61103%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots"
                    _%stx60965%_
                    _%$%g6097161058%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx60965%_
                    _%type61103%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts6110661114%_)
                                           (let ((_%$%hd6111161285%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts6110661114%_)))
                                                 (_%$%tl6111261288%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts6110661114%_))))
                                             (let* ((_%part61291%_
                                                     _%$%hd6111161285%_)
                                                    (_%rest61294%_
                                                     _%$%tl6111261288%_))
                                               (_%$%K6111061281%_
                                                _%rest61294%_
                                                _%part61291%_)))
                                           (_%$%else6110861126%_))))
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%$%g6097161058%_ '())))))))
                     (if (pair? _%$%g6107061077%_)
                         (let ((_%$%hd6107461303%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g6107061077%_)))
                               (_%$%tl6107561306%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g6107061077%_))))
                           (let* ((_%var61309%_ _%$%hd6107461303%_)
                                  (_%parts61312%_ _%$%tl6107561306%_))
                             (_%$%K6107361299%_ _%parts61312%_ _%var61309%_)))
                         (_%$%E6107261083%_)))))
                (_%__kont9958799588%_
                 (lambda (_%$%g6097861017%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%$%g6097861017%_ '())))))
            (let ((_%__match9960399604%_
                   (lambda (_%$%e6097261038%_
                            _%$%hd6097361042%_
                            _%$%tl6097461045%_
                            _%$%e6097561048%_
                            _%$%hd6097661052%_
                            _%$%tl6097761055%_)
                     (let ((_%$%g6097161058%_ _%$%hd6097661052%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g6097161058%_)
                           (_%__kont9958599586%_ _%$%g6097161058%_)
                           (_%__kont9958799588%_ _%$%hd6097661052%_))))))
              (if (gx#stx-pair? _%__stx9958299583%_)
                  (let ((_%$%e6097261038%_ (gx#syntax-e _%__stx9958299583%_)))
                    (let ((_%$%tl6097461045%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e6097261038%_)))
                          (_%$%hd6097361042%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e6097261038%_))))
                      (if (gx#stx-pair? _%$%tl6097461045%_)
                          (let ((_%$%e6097561048%_
                                 (gx#syntax-e _%$%tl6097461045%_)))
                            (let ((_%$%tl6097761055%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6097561048%_)))
                                  (_%$%hd6097661052%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6097561048%_))))
                              (if (gx#stx-null? _%$%tl6097761055%_)
                                  (_%__match9960399604%_
                                   _%$%e6097261038%_
                                   _%$%hd6097361042%_
                                   _%$%tl6097461045%_
                                   _%$%e6097561048%_
                                   _%$%hd6097661052%_
                                   _%$%tl6097761055%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g6096960990%_)))))
                          (let () (declare (not safe)) (_%$%g6096960990%_)))))
                  (let () (declare (not safe)) (_%$%g6096960990%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx61319%_)
        (let* ((_%__stx9962099621%_ _%stx61319%_)
               (_%$%g6132361352%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9962099621%_))))
          (let ((_%__kont9962399624%_
                 (lambda (_%$%g6132561444%_ _%$%g6132661446%_)
                   (let* ((_%$%g6146061467%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx61319%_
                            _%$%g6132661446%_))
                          (_%$%E6146261473%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%$%g6146061467%_
                                    '([var . parts]))
                             (void)))
                          (_%$%K6146361703%_
                           (lambda (_%parts61477%_ _%var61479%_)
                             (let ((_%$e61481%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var61479%_))))
                               (if _%$e61481%_
                                   (let _%loop61488%_ ((_%parts61491%_
                                                        _%parts61477%_)
                                                       (_%type61493%_
                                                        (##direct-structure-ref
                                                         _%$e61481%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object61494%_
                                                        _%var61479%_)
                                                       (_%checked-mutator?61495%_
                                                        (##direct-structure-ref
                                                         _%$e61481%_
                                                         '3
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%nil-check?61496%_
                                                        '#f))
                                     (let* ((_%$%parts6149761504%_
                                             _%parts61491%_)
                                            (_%$%E6149961510%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%parts6149761504%_
                                                      '([part . rest]))
                                               (void)))
                                            (_%$%K6150061685%_
                                             (lambda (_%rest61514%_
                                                      _%part61516%_)
                                               (if (and (not _%nil-check?61496%_)
                                                        (let ((__tmp105224
                                                               (symbol->string
                                                                _%part61516%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp105224)))
                                                   (let ((_%str61520%_
                                                          (symbol->string
                                                           _%part61516%_)))
                                                     (_%loop61488%_
                                                      (cons (let ((__tmp105225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str61520%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str61520%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp105225))
                    _%rest61514%_)
              _%type61493%_
              _%object61494%_
              _%checked-mutator?61495%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type61493%_))
                                                       (if (null? _%rest61514%_)
                                                           (let* ((_%$%g6152761542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g6152861538%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g6152861538%_)))
                          (_%$%g6152661599%_
                           (lambda (_%$%g6152861546%_)
                             (if (gx#stx-pair? _%$%g6152861546%_)
                                 (let ((_%$%e6153161549%_
                                        (gx#syntax-e _%$%g6152861546%_)))
                                   (let ((_%$%hd6153261553%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e6153161549%_)))
                                         (_%$%tl6153361556%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e6153161549%_))))
                                     (if (gx#stx-pair? _%$%tl6153361556%_)
                                         (let ((_%$%e6153461559%_
                                                (gx#syntax-e
                                                 _%$%tl6153361556%_)))
                                           (let ((_%$%hd6153561563%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e6153461559%_)))
                                                 (_%$%tl6153661566%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e6153461559%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl6153661566%_)
                                                 (if _%nil-check?61496%_
                                                     (cons _%$%hd6153561563%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%$%hd6153261553%_ '()))
                         (cons _%$%g6132561444%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%hd6153561563%_
                                                           (cons _%$%hd6153261553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g6132561444%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g6152761542%_
                                                  _%$%g6152861546%_))))
                                         (_%$%g6152761542%_
                                          _%$%g6152861546%_))))
                                 (_%$%g6152761542%_ _%$%g6152861546%_)))))
                     (_%$%g6152661599%_
                      (list _%object61494%_
                            (|gerbil/core/contract~Using[1]#get-slot-mutator|
                             _%stx61319%_
                             _%type61493%_
                             _%part61516%_
                             (if _%checked-mutator?61495%_
                                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                  _%type61493%_
                                  _%part61516%_)
                                 '#f)))))
                   (let ((_%$e61603%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type61493%_
                           _%part61516%_)))
                     (if _%$e61603%_
                         (let* ((_%next-type61610%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                    _%stx61319%_
                                    _%$e61603%_)))
                                (_%$%g6161361628%_
                                 (lambda (_%$%g6161461624%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g6161461624%_)))
                                (_%$%g6161261675%_
                                 (lambda (_%$%g6161461632%_)
                                   (if (gx#stx-pair? _%$%g6161461632%_)
                                       (let ((_%$%e6161761635%_
                                              (gx#syntax-e _%$%g6161461632%_)))
                                         (let ((_%$%hd6161861639%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e6161761635%_)))
                                               (_%$%tl6161961642%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e6161761635%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl6161961642%_)
                                               (let ((_%$%e6162061645%_
                                                      (gx#syntax-e
                                                       _%$%tl6161961642%_)))
                                                 (let ((_%$%hd6162161649%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e6162061645%_)))
                                                       (_%$%tl6162261652%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e6162061645%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl6162261652%_)
                                                       (_%loop61488%_
                                                        _%rest61514%_
                                                        _%next-type61610%_
                                                        (cons _%$%hd6162161649%_
                                                              (cons _%$%hd6161861639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                 _%type61493%_
                 _%part61516%_)
                '#f)
               (_%$%g6161361628%_ _%$%g6161461632%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g6161361628%_
                                                _%$%g6161461632%_))))
                                       (_%$%g6161361628%_
                                        _%$%g6161461632%_)))))
                           (_%$%g6161261675%_
                            (list (if _%nil-check?61496%_
                                      (list 'check-nil! _%object61494%_)
                                      _%object61494%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx61319%_
                                   _%type61493%_
                                   _%part61516%_))))
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted setter; unknown type for slot"
                          _%stx61319%_
                          _%$%g6132661446%_
                          _%part61516%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type61493%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted setter; interface has no slots"
                    _%stx61319%_
                    _%$%g6132661446%_)
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx61319%_
                    _%type61493%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%$%parts6149761504%_)
                                           (let ((_%$%hd6150161689%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%parts6149761504%_)))
                                                 (_%$%tl6150261692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%parts6149761504%_))))
                                             (let* ((_%part61695%_
                                                     _%$%hd6150161689%_)
                                                    (_%rest61698%_
                                                     _%$%tl6150261692%_))
                                               (_%$%K6150061685%_
                                                _%rest61698%_
                                                _%part61695%_)))
                                           (_%$%E6149961510%_))))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx61319%_)))))))
                     (if (pair? _%$%g6146061467%_)
                         (let ((_%$%hd6146461707%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%g6146061467%_)))
                               (_%$%tl6146561710%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%g6146061467%_))))
                           (let* ((_%var61713%_ _%$%hd6146461707%_)
                                  (_%parts61716%_ _%$%tl6146561710%_))
                             (_%$%K6146361703%_ _%parts61716%_ _%var61713%_)))
                         (_%$%E6146261473%_)))))
                (_%__kont9962599626%_
                 (lambda (_%$%g6133661389%_ _%$%g6133761391%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx61319%_)))))
            (let ((_%__match9964799648%_
                   (lambda (_%$%e6132761414%_
                            _%$%hd6132861418%_
                            _%$%tl6132961421%_
                            _%$%e6133061424%_
                            _%$%hd6133161428%_
                            _%$%tl6133261431%_
                            _%$%e6133361434%_
                            _%$%hd6133461438%_
                            _%$%tl6133561441%_)
                     (let ((_%$%g6132561444%_ _%$%hd6133461438%_)
                           (_%$%g6132661446%_ _%$%hd6133161428%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%$%g6132661446%_)
                           (_%__kont9962399624%_
                            _%$%g6132561444%_
                            _%$%g6132661446%_)
                           (_%__kont9962599626%_
                            _%$%hd6133461438%_
                            _%$%hd6133161428%_))))))
              (if (gx#stx-pair? _%__stx9962099621%_)
                  (let ((_%$%e6132761414%_ (gx#syntax-e _%__stx9962099621%_)))
                    (let ((_%$%tl6132961421%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e6132761414%_)))
                          (_%$%hd6132861418%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e6132761414%_))))
                      (if (gx#stx-pair? _%$%tl6132961421%_)
                          (let ((_%$%e6133061424%_
                                 (gx#syntax-e _%$%tl6132961421%_)))
                            (let ((_%$%tl6133261431%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e6133061424%_)))
                                  (_%$%hd6133161428%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e6133061424%_))))
                              (if (gx#stx-pair? _%$%tl6133261431%_)
                                  (let ((_%$%e6133361434%_
                                         (gx#syntax-e _%$%tl6133261431%_)))
                                    (let ((_%$%tl6133561441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e6133361434%_)))
                                          (_%$%hd6133461438%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e6133361434%_))))
                                      (if (gx#stx-null? _%$%tl6133561441%_)
                                          (_%__match9964799648%_
                                           _%$%e6132761414%_
                                           _%$%hd6132861418%_
                                           _%$%tl6132961421%_
                                           _%$%e6133061424%_
                                           _%$%hd6133161428%_
                                           _%$%tl6133261431%_
                                           _%$%e6133361434%_
                                           _%$%hd6133461438%_
                                           _%$%tl6133561441%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g6132361352%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g6132361352%_)))))
                          (let () (declare (not safe)) (_%$%g6132361352%_)))))
                  (let () (declare (not safe)) (_%$%g6132361352%_))))))))))
