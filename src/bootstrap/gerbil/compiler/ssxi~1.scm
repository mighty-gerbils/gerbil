(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201135_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201149_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201151_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201153_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201155_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201168_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201170_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201172_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201174_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx194691%_)
        (let* ((_%g194695194713%_
                (lambda (_%g194696194709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194696194709%_))))
               (_%g194694194768%_
                (lambda (_%g194696194717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194696194717%_))
                      (let ((_%e194701194720%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194696194717%_))))
                        (let ((_%hd194700194724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194701194720%_)))
                              (_%tl194699194727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194701194720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194699194727%_))
                              (let ((_%e194704194730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194699194727%_))))
                                (let ((_%hd194703194734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194704194730%_)))
                                      (_%tl194702194737%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194704194730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194702194737%_))
                                      (let ((_%e194707194740%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194702194737%_))))
                                        (let ((_%hd194706194744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194707194740%_)))
                                              (_%tl194705194747%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194707194740%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194705194747%_))
                                              ((lambda (_%L194750%_
                                                        _%L194752%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194752%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L194752%_ '()))
                         (cons _%L194750%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194695194713%_
                                                      _%g194696194717%_)))
                                               _%hd194706194744%_
                                               _%hd194703194734%_)
                                              (_%g194695194713%_
                                               _%g194696194717%_))))
                                      (_%g194695194713%_ _%g194696194717%_))))
                              (_%g194695194713%_ _%g194696194717%_))))
                      (_%g194695194713%_ _%g194696194717%_)))))
          (_%g194694194768%_ _%$stx194691%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx194772%_)
        (let* ((_%g194776194794%_
                (lambda (_%g194777194790%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194777194790%_))))
               (_%g194775194849%_
                (lambda (_%g194777194798%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194777194798%_))
                      (let ((_%e194782194801%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194777194798%_))))
                        (let ((_%hd194781194805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194782194801%_)))
                              (_%tl194780194808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194782194801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194780194808%_))
                              (let ((_%e194785194811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194780194808%_))))
                                (let ((_%hd194784194815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194785194811%_)))
                                      (_%tl194783194818%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194785194811%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194783194818%_))
                                      (let ((_%e194788194821%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194783194818%_))))
                                        (let ((_%hd194787194825%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194788194821%_)))
                                              (_%tl194786194828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194788194821%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194786194828%_))
                                              ((lambda (_%L194831%_
                                                        _%L194833%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194833%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L194833%_ '()))
                         (cons _%L194831%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194776194794%_
                                                      _%g194777194798%_)))
                                               _%hd194787194825%_
                                               _%hd194784194815%_)
                                              (_%g194776194794%_
                                               _%g194777194798%_))))
                                      (_%g194776194794%_ _%g194777194798%_))))
                              (_%g194776194794%_ _%g194777194798%_))))
                      (_%g194776194794%_ _%g194777194798%_)))))
          (_%g194775194849%_ _%$stx194772%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx194853%_)
        (let* ((_%g194857194886%_
                (lambda (_%g194858194882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194858194882%_))))
               (_%g194856194986%_
                (lambda (_%g194858194890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194858194890%_))
                      (let ((_%e194863194893%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194858194890%_))))
                        (let ((_%hd194862194897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194863194893%_)))
                              (_%tl194861194900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194863194893%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194861194900%_))
                              (let ((_g201113_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194861194900%_
                                        '0))))
                                (begin
                                  (let ((_g201114_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201113_)
                                               (##vector-length _g201113_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201114_ 2)))
                                        (error "Context expects 2 values"
                                               _g201114_)))
                                  (let ((_%target194864194903%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201113_ 0)))
                                        (_%tl194866194906%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201113_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194866194906%_))
                                        (letrec ((_%loop194867194909%_
                                                  (lambda (_%hd194865194913%_
                                                           _%type194871194916%_
                                                           _%symbol194872194918%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194865194913%_))
                                                        (let ((_%e194868194921%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd194865194913%_))))
                  (let ((_%lp-hd194869194925%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194868194921%_)))
                        (_%lp-tl194870194928%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194868194921%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194869194925%_))
                        (let ((_%e194877194931%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd194869194925%_))))
                          (let ((_%hd194876194935%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194877194931%_)))
                                (_%tl194875194938%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194877194931%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194875194938%_))
                                (let ((_%e194880194941%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl194875194938%_))))
                                  (let ((_%hd194879194945%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194880194941%_)))
                                        (_%tl194878194948%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194880194941%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194878194948%_))
                                        (_%loop194867194909%_
                                         _%lp-tl194870194928%_
                                         (cons _%hd194879194945%_
                                               _%type194871194916%_)
                                         (cons _%hd194876194935%_
                                               _%symbol194872194918%_))
                                        (_%g194857194886%_
                                         _%g194858194890%_))))
                                (_%g194857194886%_ _%g194858194890%_))))
                        (_%g194857194886%_ _%g194858194890%_))))
                (let ((_%type194873194951%_ (reverse _%type194871194916%_))
                      (_%symbol194874194954%_
                       (reverse _%symbol194872194918%_)))
                  ((lambda (_%L194957%_ _%L194959%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L194957%_
                                _%L194959%_))
                             (let ((__tmp201115
                                    (lambda (_%g194974194978%_
                                             _%g194975194981%_
                                             _%g194976194983%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g194975194981%_
                                                        (cons _%g194974194978%_
                                                              '())))
                                            _%g194976194983%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201115
                                '()
                                _%L194957%_
                                _%L194959%_)))))
                   _%type194873194951%_
                   _%symbol194874194954%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194867194909%_
                                           _%target194864194903%_
                                           '()
                                           '()))
                                        (_%g194857194886%_
                                         _%g194858194890%_)))))
                              (_%g194857194886%_ _%g194858194890%_))))
                      (_%g194857194886%_ _%g194858194890%_)))))
          (_%g194856194986%_ _%$stx194853%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx194991%_)
        (let* ((_%__stx200424200425%_ _%$stx194991%_)
               (_%g194996195038%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200424200425%_)))))
          (let ((_%__kont200427200428%_
                 (lambda (_%L195166%_ _%L195168%_ _%L195169%_ _%L195170%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195170%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195169%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195168%_ '()))
                                           (cons _%L195166%_ '())))))))
                (_%__kont200429200430%_
                 (lambda (_%L195085%_ _%L195087%_ _%L195088%_ _%L195089%_)
                   (cons _%L195089%_
                         (cons _%L195088%_
                               (cons _%L195087%_
                                     (cons _%L195085%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match200463200464%_
                   (lambda (_%e195004195116%_
                            _%hd195003195120%_
                            _%tl195002195123%_
                            _%e195007195126%_
                            _%hd195006195130%_
                            _%tl195005195133%_
                            _%e195010195136%_
                            _%hd195009195140%_
                            _%tl195008195143%_
                            _%e195013195146%_
                            _%hd195012195150%_
                            _%tl195011195153%_
                            _%e195016195156%_
                            _%hd195015195160%_
                            _%tl195014195163%_)
                     (let ((_%L195166%_ _%hd195015195160%_)
                           (_%L195168%_ _%hd195012195150%_)
                           (_%L195169%_ _%hd195009195140%_)
                           (_%L195170%_ _%hd195006195130%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195170%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195169%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195168%_)))
                           (_%__kont200427200428%_
                            _%L195166%_
                            _%L195168%_
                            _%L195169%_
                            _%L195170%_)
                           (let ()
                             (declare (not safe))
                             (_%g194996195038%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200424200425%_))
                  (let ((_%e195004195116%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200424200425%_))))
                    (let ((_%tl195002195123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195004195116%_)))
                          (_%hd195003195120%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195004195116%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195002195123%_))
                          (let ((_%e195007195126%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195002195123%_))))
                            (let ((_%tl195005195133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195007195126%_)))
                                  (_%hd195006195130%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195007195126%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195005195133%_))
                                  (let ((_%e195010195136%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195005195133%_))))
                                    (let ((_%tl195008195143%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195010195136%_)))
                                          (_%hd195009195140%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195010195136%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195008195143%_))
                                          (let ((_%e195013195146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195008195143%_))))
                                            (let ((_%tl195011195153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195013195146%_)))
                                                  (_%hd195012195150%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195013195146%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195011195153%_))
                                                  (let ((_%e195016195156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195011195153%_))))
                                                    (let ((_%tl195014195163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195016195156%_)))
                                                          (_%hd195015195160%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195016195156%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195014195163%_))
                                                          (_%__match200463200464%_
                                                           _%e195004195116%_
                                                           _%hd195003195120%_
                                                           _%tl195002195123%_
                                                           _%e195007195126%_
                                                           _%hd195006195130%_
                                                           _%tl195005195133%_
                                                           _%e195010195136%_
                                                           _%hd195009195140%_
                                                           _%tl195008195143%_
                                                           _%e195013195146%_
                                                           _%hd195012195150%_
                                                           _%tl195011195153%_
                                                           _%e195016195156%_
                                                           _%hd195015195160%_
                                                           _%tl195014195163%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g194996195038%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195011195153%_))
                                                      (_%__kont200429200430%_
                                                       _%hd195012195150%_
                                                       _%hd195009195140%_
                                                       _%hd195006195130%_
                                                       _%hd195003195120%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g194996195038%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g194996195038%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g194996195038%_)))))
                          (let () (declare (not safe)) (_%g194996195038%_)))))
                  (let () (declare (not safe)) (_%g194996195038%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195195%_)
        (let* ((_%g195199195234%_
                (lambda (_%g195200195230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195200195230%_))))
               (_%g195198195353%_
                (lambda (_%g195200195238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195200195238%_))
                      (let ((_%e195206195241%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195200195238%_))))
                        (let ((_%hd195205195245%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195206195241%_)))
                              (_%tl195204195248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195206195241%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195204195248%_))
                              (let ((_g201116_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195204195248%_
                                        '0))))
                                (begin
                                  (let ((_g201117_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201116_)
                                               (##vector-length _g201116_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201117_ 2)))
                                        (error "Context expects 2 values"
                                               _g201117_)))
                                  (let ((_%target195207195251%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201116_ 0)))
                                        (_%tl195209195254%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201116_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195209195254%_))
                                        (letrec ((_%loop195210195257%_
                                                  (lambda (_%hd195208195261%_
                                                           _%symbol195214195264%_
                                                           _%method195215195266%_
                                                           _%type-t195216195268%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195208195261%_))
                                                        (let ((_%e195211195271%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195208195261%_))))
                  (let ((_%lp-hd195212195275%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195211195271%_)))
                        (_%lp-tl195213195278%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195211195271%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195212195275%_))
                        (let ((_%e195222195281%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195212195275%_))))
                          (let ((_%hd195221195285%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195222195281%_)))
                                (_%tl195220195288%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195222195281%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195220195288%_))
                                (let ((_%e195225195291%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195220195288%_))))
                                  (let ((_%hd195224195295%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195225195291%_)))
                                        (_%tl195223195298%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195225195291%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195223195298%_))
                                        (let ((_%e195228195301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195223195298%_))))
                                          (let ((_%hd195227195305%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195228195301%_)))
                                                (_%tl195226195308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195228195301%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195226195308%_))
                                                (_%loop195210195257%_
                                                 _%lp-tl195213195278%_
                                                 (cons _%hd195227195305%_
                                                       _%symbol195214195264%_)
                                                 (cons _%hd195224195295%_
                                                       _%method195215195266%_)
                                                 (cons _%hd195221195285%_
                                                       _%type-t195216195268%_))
                                                (_%g195199195234%_
                                                 _%g195200195238%_))))
                                        (_%g195199195234%_
                                         _%g195200195238%_))))
                                (_%g195199195234%_ _%g195200195238%_))))
                        (_%g195199195234%_ _%g195200195238%_))))
                (let ((_%symbol195217195311%_ (reverse _%symbol195214195264%_))
                      (_%method195218195314%_ (reverse _%method195215195266%_))
                      (_%type-t195219195316%_
                       (reverse _%type-t195216195268%_)))
                  ((lambda (_%L195319%_ _%L195321%_ _%L195322%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195319%_
                                _%L195321%_
                                _%L195322%_))
                             (let ((__tmp201118
                                    (lambda (_%g195338195343%_
                                             _%g195339195346%_
                                             _%g195340195348%_
                                             _%g195341195350%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g195340195348%_
                                                        (cons _%g195339195346%_
                                                              (cons _%g195338195343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g195341195350%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201118
                                '()
                                _%L195319%_
                                _%L195321%_
                                _%L195322%_)))))
                   _%symbol195217195311%_
                   _%method195218195314%_
                   _%type-t195219195316%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195210195257%_
                                           _%target195207195251%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195199195234%_
                                         _%g195200195238%_)))))
                              (_%g195199195234%_ _%g195200195238%_))))
                      (_%g195199195234%_ _%g195200195238%_)))))
          (_%g195198195353%_ _%$stx195195%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx195358%_)
        (let* ((_%g195362195395%_
                (lambda (_%g195363195391%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195363195391%_))))
               (_%g195361195509%_
                (lambda (_%g195363195399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195363195399%_))
                      (let ((_%e195369195402%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195363195399%_))))
                        (let ((_%hd195368195406%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195369195402%_)))
                              (_%tl195367195409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195369195402%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195367195409%_))
                              (let ((_%e195372195412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195367195409%_))))
                                (let ((_%hd195371195416%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195372195412%_)))
                                      (_%tl195370195419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195372195412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195370195419%_))
                                      (let ((_g201119_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195370195419%_
                                                '0))))
                                        (begin
                                          (let ((_g201120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201119_)
                                                       (##vector-length
                                                        _g201119_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201120_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201120_)))
                                          (let ((_%target195373195422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201119_ 0)))
                                                (_%tl195375195425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201119_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195375195425%_))
                                                (letrec ((_%loop195376195428%_
                                                          (lambda (_%hd195374195432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol195380195435%_
                           _%method195381195437%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195374195432%_))
                        (let ((_%e195377195440%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd195374195432%_))))
                          (let ((_%lp-hd195378195444%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195377195440%_)))
                                (_%lp-tl195379195447%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195377195440%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195378195444%_))
                                (let ((_%e195386195450%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd195378195444%_))))
                                  (let ((_%hd195385195454%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195386195450%_)))
                                        (_%tl195384195457%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195386195450%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195384195457%_))
                                        (let ((_%e195389195460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195384195457%_))))
                                          (let ((_%hd195388195464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195389195460%_)))
                                                (_%tl195387195467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195389195460%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195387195467%_))
                                                (_%loop195376195428%_
                                                 _%lp-tl195379195447%_
                                                 (cons _%hd195388195464%_
                                                       _%symbol195380195435%_)
                                                 (cons _%hd195385195454%_
                                                       _%method195381195437%_))
                                                (_%g195362195395%_
                                                 _%g195363195399%_))))
                                        (_%g195362195395%_
                                         _%g195363195399%_))))
                                (_%g195362195395%_ _%g195363195399%_))))
                        (let ((_%symbol195382195470%_
                               (reverse _%symbol195380195435%_))
                              (_%method195383195473%_
                               (reverse _%method195381195437%_)))
                          ((lambda (_%L195476%_ _%L195478%_ _%L195479%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L195476%_
                                        _%L195478%_))
                                     (let ((__tmp201121
                                            (lambda (_%g195497195501%_
                                                     _%g195498195504%_
                                                     _%g195499195506%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L195479%_
                                                                (cons _%g195498195504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g195497195501%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g195499195506%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201121
                                        '()
                                        _%L195476%_
                                        _%L195478%_)))))
                           _%symbol195382195470%_
                           _%method195383195473%_
                           _%hd195371195416%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195376195428%_
                                                   _%target195373195422%_
                                                   '()
                                                   '()))
                                                (_%g195362195395%_
                                                 _%g195363195399%_)))))
                                      (_%g195362195395%_ _%g195363195399%_))))
                              (_%g195362195395%_ _%g195363195399%_))))
                      (_%g195362195395%_ _%g195363195399%_)))))
          (_%g195361195509%_ _%$stx195358%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx195514%_)
        (let* ((_%g195518195532%_
                (lambda (_%g195519195528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195519195528%_))))
               (_%g195517195573%_
                (lambda (_%g195519195536%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195519195536%_))
                      (let ((_%e195523195539%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195519195536%_))))
                        (let ((_%hd195522195543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195523195539%_)))
                              (_%tl195521195546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195523195539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195521195546%_))
                              (let ((_%e195526195549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195521195546%_))))
                                (let ((_%hd195525195553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195526195549%_)))
                                      (_%tl195524195556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195526195549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195524195556%_))
                                      ((lambda (_%L195559%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L195559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195525195553%_)
                                      (_%g195518195532%_ _%g195519195536%_))))
                              (_%g195518195532%_ _%g195519195536%_))))
                      (_%g195518195532%_ _%g195519195536%_)))))
          (_%g195517195573%_ _%$stx195514%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx195577%_)
        (let* ((_%g195581195635%_
                (lambda (_%g195582195631%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195582195631%_))))
               (_%g195580195816%_
                (lambda (_%g195582195639%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195582195639%_))
                      (let ((_%e195596195642%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195582195639%_))))
                        (let ((_%hd195595195646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195596195642%_)))
                              (_%tl195594195649%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195596195642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195594195649%_))
                              (let ((_%e195599195652%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195594195649%_))))
                                (let ((_%hd195598195656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195599195652%_)))
                                      (_%tl195597195659%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195599195652%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195597195659%_))
                                      (let ((_%e195602195662%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195597195659%_))))
                                        (let ((_%hd195601195666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195602195662%_)))
                                              (_%tl195600195669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195602195662%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195600195669%_))
                                              (let ((_%e195605195672%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195600195669%_))))
                                                (let ((_%hd195604195676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195605195672%_)))
                                                      (_%tl195603195679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195605195672%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195603195679%_))
                                                      (let ((_%e195608195682%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195603195679%_))))
                (let ((_%hd195607195686%_
                       (let () (declare (not safe)) (##car _%e195608195682%_)))
                      (_%tl195606195689%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195608195682%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195606195689%_))
                      (let ((_%e195611195692%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195606195689%_))))
                        (let ((_%hd195610195696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195611195692%_)))
                              (_%tl195609195699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195611195692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195609195699%_))
                              (let ((_%e195614195702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195609195699%_))))
                                (let ((_%hd195613195706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195614195702%_)))
                                      (_%tl195612195709%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195614195702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195612195709%_))
                                      (let ((_%e195617195712%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195612195709%_))))
                                        (let ((_%hd195616195716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195617195712%_)))
                                              (_%tl195615195719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195617195712%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195615195719%_))
                                              (let ((_%e195620195722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195615195719%_))))
                                                (let ((_%hd195619195726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195620195722%_)))
                                                      (_%tl195618195729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195620195722%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195618195729%_))
                                                      (let ((_%e195623195732%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195618195729%_))))
                (let ((_%hd195622195736%_
                       (let () (declare (not safe)) (##car _%e195623195732%_)))
                      (_%tl195621195739%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195623195732%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195621195739%_))
                      (let ((_%e195626195742%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195621195739%_))))
                        (let ((_%hd195625195746%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195626195742%_)))
                              (_%tl195624195749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195626195742%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195624195749%_))
                              (let ((_%e195629195752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195624195749%_))))
                                (let ((_%hd195628195756%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195629195752%_)))
                                      (_%tl195627195759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195629195752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195627195759%_))
                                      ((lambda (_%L195762%_
                                                _%L195764%_
                                                _%L195765%_
                                                _%L195766%_
                                                _%L195767%_
                                                _%L195768%_
                                                _%L195769%_
                                                _%L195770%_
                                                _%L195771%_
                                                _%L195772%_
                                                _%L195773%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L195773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L195772%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195771%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195770%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195769%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195768%_ '()))
                                           (cons _%L195767%_
                                                 (cons _%L195766%_
                                                       (cons _%L195765%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L195764%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L195762%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195628195756%_
                                       _%hd195625195746%_
                                       _%hd195622195736%_
                                       _%hd195619195726%_
                                       _%hd195616195716%_
                                       _%hd195613195706%_
                                       _%hd195610195696%_
                                       _%hd195607195686%_
                                       _%hd195604195676%_
                                       _%hd195601195666%_
                                       _%hd195598195656%_)
                                      (_%g195581195635%_ _%g195582195639%_))))
                              (_%g195581195635%_ _%g195582195639%_))))
                      (_%g195581195635%_ _%g195582195639%_))))
              (_%g195581195635%_ _%g195582195639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195581195635%_
                                               _%g195582195639%_))))
                                      (_%g195581195635%_ _%g195582195639%_))))
                              (_%g195581195635%_ _%g195582195639%_))))
                      (_%g195581195635%_ _%g195582195639%_))))
              (_%g195581195635%_ _%g195582195639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195581195635%_
                                               _%g195582195639%_))))
                                      (_%g195581195635%_ _%g195582195639%_))))
                              (_%g195581195635%_ _%g195582195639%_))))
                      (_%g195581195635%_ _%g195582195639%_)))))
          (_%g195580195816%_ _%$stx195577%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx195820%_)
        (let* ((_%g195824195838%_
                (lambda (_%g195825195834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195825195834%_))))
               (_%g195823195879%_
                (lambda (_%g195825195842%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195825195842%_))
                      (let ((_%e195829195845%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195825195842%_))))
                        (let ((_%hd195828195849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195829195845%_)))
                              (_%tl195827195852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195829195845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195827195852%_))
                              (let ((_%e195832195855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195827195852%_))))
                                (let ((_%hd195831195859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195832195855%_)))
                                      (_%tl195830195862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195832195855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195830195862%_))
                                      ((lambda (_%L195865%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L195865%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195831195859%_)
                                      (_%g195824195838%_ _%g195825195842%_))))
                              (_%g195824195838%_ _%g195825195842%_))))
                      (_%g195824195838%_ _%g195825195842%_)))))
          (_%g195823195879%_ _%$stx195820%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx195883%_)
        (let* ((_%g195887195901%_
                (lambda (_%g195888195897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195888195897%_))))
               (_%g195886195942%_
                (lambda (_%g195888195905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195888195905%_))
                      (let ((_%e195892195908%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195888195905%_))))
                        (let ((_%hd195891195912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195892195908%_)))
                              (_%tl195890195915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195892195908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195890195915%_))
                              (let ((_%e195895195918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195890195915%_))))
                                (let ((_%hd195894195922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195895195918%_)))
                                      (_%tl195893195925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195895195918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195893195925%_))
                                      ((lambda (_%L195928%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L195928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195894195922%_)
                                      (_%g195887195901%_ _%g195888195905%_))))
                              (_%g195887195901%_ _%g195888195905%_))))
                      (_%g195887195901%_ _%g195888195905%_)))))
          (_%g195886195942%_ _%$stx195883%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx195946%_)
        (let* ((_%g195950195972%_
                (lambda (_%g195951195968%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195951195968%_))))
               (_%g195949196041%_
                (lambda (_%g195951195976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195951195976%_))
                      (let ((_%e195957195979%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195951195976%_))))
                        (let ((_%hd195956195983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195957195979%_)))
                              (_%tl195955195986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195957195979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195955195986%_))
                              (let ((_%e195960195989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195955195986%_))))
                                (let ((_%hd195959195993%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195960195989%_)))
                                      (_%tl195958195996%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195960195989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195958195996%_))
                                      (let ((_%e195963195999%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195958195996%_))))
                                        (let ((_%hd195962196003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195963195999%_)))
                                              (_%tl195961196006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195963195999%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195961196006%_))
                                              (let ((_%e195966196009%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195961196006%_))))
                                                (let ((_%hd195965196013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195966196009%_)))
                                                      (_%tl195964196016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195966196009%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195964196016%_))
                                                      ((lambda (_%L196019%_
                                                                _%L196021%_
                                                                _%L196022%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196022%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196021%_ '()))
                                   (cons _%L196019%_ '())))))
               _%hd195965196013%_
               _%hd195962196003%_
               _%hd195959195993%_)
              (_%g195950195972%_ _%g195951195976%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195950195972%_
                                               _%g195951195976%_))))
                                      (_%g195950195972%_ _%g195951195976%_))))
                              (_%g195950195972%_ _%g195951195976%_))))
                      (_%g195950195972%_ _%g195951195976%_)))))
          (_%g195949196041%_ _%$stx195946%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196045%_)
        (let* ((_%g196049196071%_
                (lambda (_%g196050196067%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196050196067%_))))
               (_%g196048196140%_
                (lambda (_%g196050196075%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196050196075%_))
                      (let ((_%e196056196078%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196050196075%_))))
                        (let ((_%hd196055196082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196056196078%_)))
                              (_%tl196054196085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196056196078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196054196085%_))
                              (let ((_%e196059196088%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196054196085%_))))
                                (let ((_%hd196058196092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196059196088%_)))
                                      (_%tl196057196095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196059196088%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196057196095%_))
                                      (let ((_%e196062196098%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196057196095%_))))
                                        (let ((_%hd196061196102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196062196098%_)))
                                              (_%tl196060196105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196062196098%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196060196105%_))
                                              (let ((_%e196065196108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196060196105%_))))
                                                (let ((_%hd196064196112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196065196108%_)))
                                                      (_%tl196063196115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196065196108%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196063196115%_))
                                                      ((lambda (_%L196118%_
                                                                _%L196120%_
                                                                _%L196121%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196121%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196120%_ '()))
                                   (cons _%L196118%_ '())))))
               _%hd196064196112%_
               _%hd196061196102%_
               _%hd196058196092%_)
              (_%g196049196071%_ _%g196050196075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196049196071%_
                                               _%g196050196075%_))))
                                      (_%g196049196071%_ _%g196050196075%_))))
                              (_%g196049196071%_ _%g196050196075%_))))
                      (_%g196049196071%_ _%g196050196075%_)))))
          (_%g196048196140%_ _%$stx196045%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196144%_)
        (let* ((_%g196148196162%_
                (lambda (_%g196149196158%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196149196158%_))))
               (_%g196147196203%_
                (lambda (_%g196149196166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196149196166%_))
                      (let ((_%e196153196169%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196149196166%_))))
                        (let ((_%hd196152196173%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196153196169%_)))
                              (_%tl196151196176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196153196169%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196151196176%_))
                              (let ((_%e196156196179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196151196176%_))))
                                (let ((_%hd196155196183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196156196179%_)))
                                      (_%tl196154196186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196156196179%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196154196186%_))
                                      ((lambda (_%L196189%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L196189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196155196183%_)
                                      (_%g196148196162%_ _%g196149196166%_))))
                              (_%g196148196162%_ _%g196149196166%_))))
                      (_%g196148196162%_ _%g196149196166%_)))))
          (_%g196147196203%_ _%$stx196144%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196207%_)
        (let* ((_%g196211196229%_
                (lambda (_%g196212196225%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196212196225%_))))
               (_%g196210196284%_
                (lambda (_%g196212196233%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196212196233%_))
                      (let ((_%e196217196236%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196212196233%_))))
                        (let ((_%hd196216196240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196217196236%_)))
                              (_%tl196215196243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196217196236%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196215196243%_))
                              (let ((_%e196220196246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196215196243%_))))
                                (let ((_%hd196219196250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196220196246%_)))
                                      (_%tl196218196253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196220196246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196218196253%_))
                                      (let ((_%e196223196256%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196218196253%_))))
                                        (let ((_%hd196222196260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196223196256%_)))
                                              (_%tl196221196263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196223196256%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196221196263%_))
                                              ((lambda (_%L196266%_
                                                        _%L196268%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196268%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196266%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196222196260%_
                                               _%hd196219196250%_)
                                              (_%g196211196229%_
                                               _%g196212196233%_))))
                                      (_%g196211196229%_ _%g196212196233%_))))
                              (_%g196211196229%_ _%g196212196233%_))))
                      (_%g196211196229%_ _%g196212196233%_)))))
          (_%g196210196284%_ _%$stx196207%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx196288%_)
        (let* ((_%__stx200492200493%_ _%$stx196288%_)
               (_%g196295196356%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200492200493%_)))))
          (let ((_%__kont200495200496%_
                 (lambda (_%L196594%_ _%L196596%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196596%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196594%_ '()))
                                     '())))))
                (_%__kont200497200498%_
                 (lambda (_%L196533%_ _%L196535%_ _%L196536%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196536%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196535%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196533%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont200499200500%_
                 (lambda (_%L196457%_ _%L196459%_)
                   (cons _%L196459%_ (cons _%L196457%_ (cons '#f '())))))
                (_%__kont200501200502%_
                 (lambda (_%L196407%_ _%L196409%_ _%L196410%_)
                   (cons _%L196410%_
                         (cons _%L196409%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L196407%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200492200493%_))
                (let ((_%e196301196564%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200492200493%_))))
                  (let ((_%tl196299196571%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196301196564%_)))
                        (_%hd196300196568%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196301196564%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196299196571%_))
                        (let ((_%e196304196574%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl196299196571%_))))
                          (let ((_%tl196302196581%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196304196574%_)))
                                (_%hd196303196578%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196304196574%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196302196581%_))
                                (let ((_%e196307196584%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196302196581%_))))
                                  (let ((_%tl196305196591%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196307196584%_)))
                                        (_%hd196306196588%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196307196584%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196305196591%_))
                                        (_%__kont200495200496%_
                                         _%hd196306196588%_
                                         _%hd196303196578%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196305196591%_))
                                            (let ((_%e196322196509%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl196305196591%_))))
                                              (let ((_%tl196320196516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196322196509%_)))
                                                    (_%hd196321196513%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196322196509%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd196321196513%_))
                                                    (let ((_%e196323196519%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd196321196513%_))))
                                                      (if (equal? _%e196323196519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196320196516%_))
                      (let ((_%e196326196523%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196320196516%_))))
                        (let ((_%tl196324196530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196326196523%_)))
                              (_%hd196325196527%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196326196523%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196324196530%_))
                              (_%__kont200497200498%_
                               _%hd196325196527%_
                               _%hd196306196588%_
                               _%hd196303196578%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd196306196588%_))
                                  (let ((_%e196347196393%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196306196588%_))))
                                    (declare (not safe))
                                    (_%g196295196356%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196295196356%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd196306196588%_))
                          (let ((_%e196347196393%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196306196588%_))))
                            (if (equal? _%e196347196393%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196320196516%_))
                                    (_%__kont200501200502%_
                                     _%hd196321196513%_
                                     _%hd196303196578%_
                                     _%hd196300196568%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196295196356%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g196295196356%_))))
                          (let () (declare (not safe)) (_%g196295196356%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd196306196588%_))
                      (let ((_%e196347196393%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196306196588%_))))
                        (if (equal? _%e196347196393%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196320196516%_))
                                (_%__kont200501200502%_
                                 _%hd196321196513%_
                                 _%hd196303196578%_
                                 _%hd196300196568%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196295196356%_)))
                            (let () (declare (not safe)) (_%g196295196356%_))))
                      (let () (declare (not safe)) (_%g196295196356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd196306196588%_))
                                                        (let ((_%e196347196393%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196306196588%_))))
                  (if (equal? _%e196347196393%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196320196516%_))
                          (_%__kont200501200502%_
                           _%hd196321196513%_
                           _%hd196303196578%_
                           _%hd196300196568%_)
                          (let () (declare (not safe)) (_%g196295196356%_)))
                      (let () (declare (not safe)) (_%g196295196356%_))))
                (let () (declare (not safe)) (_%g196295196356%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd196306196588%_))
                                                (let ((_%e196347196393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd196306196588%_))))
                                                  (declare (not safe))
                                                  (_%g196295196356%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196295196356%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196302196581%_))
                                    (_%__kont200499200500%_
                                     _%hd196303196578%_
                                     _%hd196300196568%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196295196356%_))))))
                        (let () (declare (not safe)) (_%g196295196356%_)))))
                (let () (declare (not safe)) (_%g196295196356%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx196615%_)
        (let* ((_%g196619196648%_
                (lambda (_%g196620196644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196620196644%_))))
               (_%g196618196757%_
                (lambda (_%g196620196652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196620196652%_))
                      (let ((_%e196624196655%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196620196652%_))))
                        (let ((_%hd196623196659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196624196655%_)))
                              (_%tl196622196662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196624196655%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196622196662%_))
                              (let ((_g201122_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196622196662%_
                                        '0))))
                                (begin
                                  (let ((_g201123_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201122_)
                                               (##vector-length _g201122_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201123_ 2)))
                                        (error "Context expects 2 values"
                                               _g201123_)))
                                  (let ((_%target196625196665%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201122_ 0)))
                                        (_%tl196627196668%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201122_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196627196668%_))
                                        (letrec ((_%loop196628196671%_
                                                  (lambda (_%hd196626196675%_
                                                           _%clause196632196678%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196626196675%_))
                                                        (let ((_%e196629196681%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196626196675%_))))
                  (let ((_%lp-hd196630196685%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196629196681%_)))
                        (_%lp-tl196631196688%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196629196681%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd196630196685%_))
                        (let ((_g201124_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd196630196685%_
                                  '0))))
                          (begin
                            (let ((_g201125_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201124_)
                                         (##vector-length _g201124_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201125_ 2)))
                                  (error "Context expects 2 values"
                                         _g201125_)))
                            (let ((_%target196634196691%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201124_ 0)))
                                  (_%tl196636196694%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201124_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196636196694%_))
                                  (letrec ((_%loop196637196697%_
                                            (lambda (_%hd196635196701%_
                                                     _%clause196641196704%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196635196701%_))
                                                  (let ((_%e196638196707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd196635196701%_))))
                                                    (let ((_%lp-hd196639196711%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196638196707%_)))
                                                          (_%lp-tl196640196714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196638196707%_))))
                                                      (_%loop196637196697%_
                                                       _%lp-tl196640196714%_
                                                       (cons _%lp-hd196639196711%_
                                                             _%clause196641196704%_))))
                                                  (let ((_%clause196642196717%_
                                                         (reverse _%clause196641196704%_)))
                                                    (_%loop196628196671%_
                                                     _%lp-tl196631196688%_
                                                     (cons _%clause196642196717%_
                                                           _%clause196632196678%_)))))))
                                    (_%loop196637196697%_
                                     _%target196634196691%_
                                     '()))
                                  (_%g196619196648%_ _%g196620196652%_)))))
                        (_%g196619196648%_ _%g196620196652%_))))
                (let ((_%clause196633196721%_
                       (reverse _%clause196632196678%_)))
                  ((lambda (_%L196725%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201126
                                              (lambda (_%g196740196745%_
                                                       _%g196741196748%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g196742196751%_ _%g196743196754%_)
                             (cons _%g196742196751%_ _%g196743196754%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201127 '() _%g196740196745%_)))
              _%g196741196748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201126
                                          '()
                                          _%L196725%_)))
                                 '())))
                   _%clause196633196721%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196628196671%_
                                           _%target196625196665%_
                                           '()))
                                        (_%g196619196648%_
                                         _%g196620196652%_)))))
                              (_%g196619196648%_ _%g196620196652%_))))
                      (_%g196619196648%_ _%g196620196652%_)))))
          (_%g196618196757%_ _%$stx196615%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx196763%_)
        (let* ((_%g196767196785%_
                (lambda (_%g196768196781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196768196781%_))))
               (_%g196766196840%_
                (lambda (_%g196768196789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196768196789%_))
                      (let ((_%e196773196792%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196768196789%_))))
                        (let ((_%hd196772196796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196773196792%_)))
                              (_%tl196771196799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196773196792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196771196799%_))
                              (let ((_%e196776196802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196771196799%_))))
                                (let ((_%hd196775196806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196776196802%_)))
                                      (_%tl196774196809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196776196802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196774196809%_))
                                      (let ((_%e196779196812%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196774196809%_))))
                                        (let ((_%hd196778196816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196779196812%_)))
                                              (_%tl196777196819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196779196812%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196777196819%_))
                                              ((lambda (_%L196822%_
                                                        _%L196824%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196824%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196822%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196778196816%_
                                               _%hd196775196806%_)
                                              (_%g196767196785%_
                                               _%g196768196789%_))))
                                      (_%g196767196785%_ _%g196768196789%_))))
                              (_%g196767196785%_ _%g196768196789%_))))
                      (_%g196767196785%_ _%g196768196789%_)))))
          (_%g196766196840%_ _%$stx196763%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx196844%_)
        (let* ((_%g196848196866%_
                (lambda (_%g196849196862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196849196862%_))))
               (_%g196847196921%_
                (lambda (_%g196849196870%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196849196870%_))
                      (let ((_%e196854196873%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196849196870%_))))
                        (let ((_%hd196853196877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196854196873%_)))
                              (_%tl196852196880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196854196873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196852196880%_))
                              (let ((_%e196857196883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196852196880%_))))
                                (let ((_%hd196856196887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196857196883%_)))
                                      (_%tl196855196890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196857196883%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196855196890%_))
                                      (let ((_%e196860196893%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196855196890%_))))
                                        (let ((_%hd196859196897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196860196893%_)))
                                              (_%tl196858196900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196860196893%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196858196900%_))
                                              ((lambda (_%L196903%_
                                                        _%L196905%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196905%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196903%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196859196897%_
                                               _%hd196856196887%_)
                                              (_%g196848196866%_
                                               _%g196849196870%_))))
                                      (_%g196848196866%_ _%g196849196870%_))))
                              (_%g196848196866%_ _%g196849196870%_))))
                      (_%g196848196866%_ _%g196849196870%_)))))
          (_%g196847196921%_ _%$stx196844%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx196925%_)
        (let* ((_%g196929196958%_
                (lambda (_%g196930196954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196930196954%_))))
               (_%g196928197058%_
                (lambda (_%g196930196962%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196930196962%_))
                      (let ((_%e196935196965%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196930196962%_))))
                        (let ((_%hd196934196969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196935196965%_)))
                              (_%tl196933196972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196935196965%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196933196972%_))
                              (let ((_g201128_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196933196972%_
                                        '0))))
                                (begin
                                  (let ((_g201129_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201128_)
                                               (##vector-length _g201128_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201129_ 2)))
                                        (error "Context expects 2 values"
                                               _g201129_)))
                                  (let ((_%target196936196975%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201128_ 0)))
                                        (_%tl196938196978%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201128_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196938196978%_))
                                        (letrec ((_%loop196939196981%_
                                                  (lambda (_%hd196937196985%_
                                                           _%rule196943196988%_
                                                           _%proc196944196990%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196937196985%_))
                                                        (let ((_%e196940196993%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196937196985%_))))
                  (let ((_%lp-hd196941196997%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196940196993%_)))
                        (_%lp-tl196942197000%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196940196993%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196941196997%_))
                        (let ((_%e196949197003%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196941196997%_))))
                          (let ((_%hd196948197007%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196949197003%_)))
                                (_%tl196947197010%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196949197003%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196947197010%_))
                                (let ((_%e196952197013%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196947197010%_))))
                                  (let ((_%hd196951197017%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196952197013%_)))
                                        (_%tl196950197020%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196952197013%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196950197020%_))
                                        (_%loop196939196981%_
                                         _%lp-tl196942197000%_
                                         (cons _%hd196951197017%_
                                               _%rule196943196988%_)
                                         (cons _%hd196948197007%_
                                               _%proc196944196990%_))
                                        (_%g196929196958%_
                                         _%g196930196962%_))))
                                (_%g196929196958%_ _%g196930196962%_))))
                        (_%g196929196958%_ _%g196930196962%_))))
                (let ((_%rule196945197023%_ (reverse _%rule196943196988%_))
                      (_%proc196946197026%_ (reverse _%proc196944196990%_)))
                  ((lambda (_%L197029%_ _%L197031%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197029%_
                                _%L197031%_))
                             (let ((__tmp201130
                                    (lambda (_%g197046197050%_
                                             _%g197047197053%_
                                             _%g197048197055%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197047197053%_
                                                        (cons _%g197046197050%_
                                                              '())))
                                            _%g197048197055%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201130
                                '()
                                _%L197029%_
                                _%L197031%_)))))
                   _%rule196945197023%_
                   _%proc196946197026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196939196981%_
                                           _%target196936196975%_
                                           '()
                                           '()))
                                        (_%g196929196958%_
                                         _%g196930196962%_)))))
                              (_%g196929196958%_ _%g196930196962%_))))
                      (_%g196929196958%_ _%g196930196962%_)))))
          (_%g196928197058%_ _%$stx196925%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197063%_)
        (let* ((_%g197067197085%_
                (lambda (_%g197068197081%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197068197081%_))))
               (_%g197066197140%_
                (lambda (_%g197068197089%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197068197089%_))
                      (let ((_%e197073197092%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197068197089%_))))
                        (let ((_%hd197072197096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197073197092%_)))
                              (_%tl197071197099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197073197092%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197071197099%_))
                              (let ((_%e197076197102%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197071197099%_))))
                                (let ((_%hd197075197106%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197076197102%_)))
                                      (_%tl197074197109%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197076197102%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197074197109%_))
                                      (let ((_%e197079197112%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197074197109%_))))
                                        (let ((_%hd197078197116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197079197112%_)))
                                              (_%tl197077197119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197079197112%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197077197119%_))
                                              ((lambda (_%L197122%_
                                                        _%L197124%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L197124%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L197122%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197124%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197078197116%_
                                               _%hd197075197106%_)
                                              (_%g197067197085%_
                                               _%g197068197089%_))))
                                      (_%g197067197085%_ _%g197068197089%_))))
                              (_%g197067197085%_ _%g197068197089%_))))
                      (_%g197067197085%_ _%g197068197089%_)))))
          (_%g197066197140%_ _%$stx197063%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197144%_)
        (let* ((_%__stx200610200611%_ _%$stx197144%_)
               (_%g197149197174%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200610200611%_)))))
          (let ((_%__kont200613200614%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200615200616%_
                 (lambda (_%L197221%_ _%L197223%_ _%L197224%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197224%_ (cons _%L197223%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197221%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200610200611%_))
                (let ((_%e197153197250%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200610200611%_))))
                  (let ((_%tl197151197257%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197153197250%_)))
                        (_%hd197152197254%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197153197250%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197151197257%_))
                        (_%__kont200613200614%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197151197257%_))
                            (let ((_%e197162197191%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197151197257%_))))
                              (let ((_%tl197160197198%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197162197191%_)))
                                    (_%hd197161197195%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197162197191%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197161197195%_))
                                    (let ((_%e197165197201%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197161197195%_))))
                                      (let ((_%tl197163197208%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197165197201%_)))
                                            (_%hd197164197205%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197165197201%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197163197208%_))
                                            (let ((_%e197168197211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197163197208%_))))
                                              (let ((_%tl197166197218%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197168197211%_)))
                                                    (_%hd197167197215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197168197211%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197166197218%_))
                                                    (_%__kont200615200616%_
                                                     _%tl197160197198%_
                                                     _%hd197167197215%_
                                                     _%hd197164197205%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197149197174%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197149197174%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197149197174%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197149197174%_))))))
                (let () (declare (not safe)) (_%g197149197174%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197268%_)
        (let* ((_%__stx200654200655%_ _%$stx197268%_)
               (_%g197273197304%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200654200655%_)))))
          (let ((_%__kont200657200658%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200659200660%_
                 (lambda (_%L197371%_ _%L197373%_ _%L197374%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L197374%_
                                           (let ((__tmp201131
                                                  (lambda (_%g197394197397%_
                                                           _%g197395197400%_)
                                                    (cons _%g197394197397%_
                                                          _%g197395197400%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201131
                                              '()
                                              _%L197373%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L197371%_)
                                     '()))))))
            (let ((_%__match200697200698%_
                   (lambda (_%e197283197311%_
                            _%hd197282197315%_
                            _%tl197281197318%_
                            _%e197286197321%_
                            _%hd197285197325%_
                            _%tl197284197328%_
                            _%e197289197331%_
                            _%hd197288197335%_
                            _%tl197287197338%_
                            _%__splice200661200662%_
                            _%target197290197341%_
                            _%tl197292197344%_)
                     (letrec ((_%loop197293197347%_
                               (lambda (_%hd197291197351%_ _%sig197297197354%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197291197351%_))
                                     (let ((_%e197294197357%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd197291197351%_))))
                                       (let ((_%lp-tl197296197364%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197294197357%_)))
                                             (_%lp-hd197295197361%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197294197357%_))))
                                         (_%loop197293197347%_
                                          _%lp-tl197296197364%_
                                          (cons _%lp-hd197295197361%_
                                                _%sig197297197354%_))))
                                     (let ((_%sig197298197367%_
                                            (reverse _%sig197297197354%_)))
                                       (_%__kont200659200660%_
                                        _%tl197284197328%_
                                        _%sig197298197367%_
                                        _%hd197288197335%_))))))
                       (_%loop197293197347%_ _%target197290197341%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200654200655%_))
                  (let ((_%e197277197410%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200654200655%_))))
                    (let ((_%tl197275197417%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197277197410%_)))
                          (_%hd197276197414%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197277197410%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197275197417%_))
                          (_%__kont200657200658%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197275197417%_))
                              (let ((_%e197286197321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197275197417%_))))
                                (let ((_%tl197284197328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197286197321%_)))
                                      (_%hd197285197325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197286197321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197285197325%_))
                                      (let ((_%e197289197331%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197285197325%_))))
                                        (let ((_%tl197287197338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197289197331%_)))
                                              (_%hd197288197335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197289197331%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197287197338%_))
                                              (let ((_%__splice200661200662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197287197338%_
                                                        '0))))
                                                (let ((_%tl197292197344%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200661200662%_
                                                          '1)))
                                                      (_%target197290197341%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200661200662%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197292197344%_))
                                                      (_%__match200697200698%_
                                                       _%e197277197410%_
                                                       _%hd197276197414%_
                                                       _%tl197275197417%_
                                                       _%e197286197321%_
                                                       _%hd197285197325%_
                                                       _%tl197284197328%_
                                                       _%e197289197331%_
                                                       _%hd197288197335%_
                                                       _%tl197287197338%_
                                                       _%__splice200661200662%_
                                                       _%target197290197341%_
                                                       _%tl197292197344%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197273197304%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197273197304%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197273197304%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197273197304%_))))))
                  (let () (declare (not safe)) (_%g197273197304%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx197429%_)
        (let* ((_%__stx200700200701%_ _%$stx197429%_)
               (_%g197434197481%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200700200701%_)))))
          (let ((_%__kont200703200704%_
                 (lambda (_%L197643%_ _%L197645%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L197645%_
                               (let ((__tmp201132
                                      (lambda (_%g197665197668%_
                                               _%g197666197671%_)
                                        (cons _%g197665197668%_
                                              _%g197666197671%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201132 '() _%L197643%_))))))
                (_%__kont200707200708%_
                 (lambda (_%L197538%_ _%L197540%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L197540%_
                               (let ((__tmp201133
                                      (lambda (_%g197557197560%_
                                               _%g197558197563%_)
                                        (cons _%g197557197560%_
                                              _%g197558197563%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201133 '() _%L197538%_)))))))
            (let* ((_%__match200767200768%_
                    (lambda (_%e197463197488%_
                             _%hd197462197492%_
                             _%tl197461197495%_
                             _%e197466197498%_
                             _%hd197465197502%_
                             _%tl197464197505%_
                             _%__splice200709200710%_
                             _%target197467197508%_
                             _%tl197469197511%_)
                      (letrec ((_%loop197470197514%_
                                (lambda (_%hd197468197518%_
                                         _%sig197474197521%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197468197518%_))
                                      (let ((_%e197471197524%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197468197518%_))))
                                        (let ((_%lp-tl197473197531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197471197524%_)))
                                              (_%lp-hd197472197528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197471197524%_))))
                                          (_%loop197470197514%_
                                           _%lp-tl197473197531%_
                                           (cons _%lp-hd197472197528%_
                                                 _%sig197474197521%_))))
                                      (let ((_%sig197475197534%_
                                             (reverse _%sig197474197521%_)))
                                        (_%__kont200707200708%_
                                         _%sig197475197534%_
                                         _%hd197465197502%_))))))
                        (_%loop197470197514%_ _%target197467197508%_ '()))))
                   (_%__match200759200760%_
                    (lambda (_%e197463197488%_
                             _%hd197462197492%_
                             _%tl197461197495%_
                             _%e197466197498%_
                             _%hd197465197502%_
                             _%tl197464197505%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl197464197505%_))
                          (let ((_%__splice200709200710%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl197464197505%_
                                    '0))))
                            (let ((_%tl197469197511%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200709200710%_
                                      '1)))
                                  (_%target197467197508%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200709200710%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197469197511%_))
                                  (_%__match200767200768%_
                                   _%e197463197488%_
                                   _%hd197462197492%_
                                   _%tl197461197495%_
                                   _%e197466197498%_
                                   _%hd197465197502%_
                                   _%tl197464197505%_
                                   _%__splice200709200710%_
                                   _%target197467197508%_
                                   _%tl197469197511%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g197434197481%_)))))
                          (let () (declare (not safe)) (_%g197434197481%_)))))
                   (_%__match200747200748%_
                    (lambda (_%e197440197573%_
                             _%hd197439197577%_
                             _%tl197438197580%_
                             _%e197443197583%_
                             _%hd197442197587%_
                             _%tl197441197590%_
                             _%e197446197593%_
                             _%hd197445197597%_
                             _%tl197444197600%_
                             _%e197449197603%_
                             _%hd197448197607%_
                             _%tl197447197610%_
                             _%__splice200705200706%_
                             _%target197450197613%_
                             _%tl197452197616%_)
                      (letrec ((_%loop197453197619%_
                                (lambda (_%hd197451197623%_
                                         _%sig197457197626%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197451197623%_))
                                      (let ((_%e197454197629%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197451197623%_))))
                                        (let ((_%lp-tl197456197636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197454197629%_)))
                                              (_%lp-hd197455197633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197454197629%_))))
                                          (_%loop197453197619%_
                                           _%lp-tl197456197636%_
                                           (cons _%lp-hd197455197633%_
                                                 _%sig197457197626%_))))
                                      (let ((_%sig197458197639%_
                                             (reverse _%sig197457197626%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197444197600%_))
                                            (_%__kont200703200704%_
                                             _%sig197458197639%_
                                             _%hd197442197587%_)
                                            (_%__match200759200760%_
                                             _%e197440197573%_
                                             _%hd197439197577%_
                                             _%tl197438197580%_
                                             _%e197443197583%_
                                             _%hd197442197587%_
                                             _%tl197441197590%_)))))))
                        (_%loop197453197619%_ _%target197450197613%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200700200701%_))
                  (let ((_%e197440197573%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200700200701%_))))
                    (let ((_%tl197438197580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197440197573%_)))
                          (_%hd197439197577%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197440197573%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197438197580%_))
                          (let ((_%e197443197583%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197438197580%_))))
                            (let ((_%tl197441197590%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197443197583%_)))
                                  (_%hd197442197587%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197443197583%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197441197590%_))
                                  (let ((_%e197446197593%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197441197590%_))))
                                    (let ((_%tl197444197600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197446197593%_)))
                                          (_%hd197445197597%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197446197593%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd197445197597%_))
                                          (let ((_%e197449197603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd197445197597%_))))
                                            (let ((_%tl197447197610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197449197603%_)))
                                                  (_%hd197448197607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197449197603%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd197448197607%_))
                                                  (if (let ((__tmp201134
                                                             |gxc[1]#_g201135_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201134
                                                         _%hd197448197607%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl197447197610%_))
                                                          (let ((_%__splice200705200706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197447197610%_ '0))))
                    (let ((_%tl197452197616%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200705200706%_ '1)))
                          (_%target197450197613%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200705200706%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197452197616%_))
                          (_%__match200747200748%_
                           _%e197440197573%_
                           _%hd197439197577%_
                           _%tl197438197580%_
                           _%e197443197583%_
                           _%hd197442197587%_
                           _%tl197441197590%_
                           _%e197446197593%_
                           _%hd197445197597%_
                           _%tl197444197600%_
                           _%e197449197603%_
                           _%hd197448197607%_
                           _%tl197447197610%_
                           _%__splice200705200706%_
                           _%target197450197613%_
                           _%tl197452197616%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197441197590%_))
                              (let ((_%__splice200709200710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197441197590%_
                                        '0))))
                                (let ((_%tl197469197511%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200709200710%_
                                          '1)))
                                      (_%target197467197508%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200709200710%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197469197511%_))
                                      (_%__match200767200768%_
                                       _%e197440197573%_
                                       _%hd197439197577%_
                                       _%tl197438197580%_
                                       _%e197443197583%_
                                       _%hd197442197587%_
                                       _%tl197441197590%_
                                       _%__splice200709200710%_
                                       _%target197467197508%_
                                       _%tl197469197511%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197434197481%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197434197481%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197441197590%_))
                      (let ((_%__splice200709200710%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197441197590%_
                                '0))))
                        (let ((_%tl197469197511%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200709200710%_ '1)))
                              (_%target197467197508%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200709200710%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197469197511%_))
                              (_%__match200767200768%_
                               _%e197440197573%_
                               _%hd197439197577%_
                               _%tl197438197580%_
                               _%e197443197583%_
                               _%hd197442197587%_
                               _%tl197441197590%_
                               _%__splice200709200710%_
                               _%target197467197508%_
                               _%tl197469197511%_)
                              (let ()
                                (declare (not safe))
                                (_%g197434197481%_)))))
                      (let () (declare (not safe)) (_%g197434197481%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl197441197590%_))
                  (let ((_%__splice200709200710%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197441197590%_ '0))))
                    (let ((_%tl197469197511%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200709200710%_ '1)))
                          (_%target197467197508%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200709200710%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197469197511%_))
                          (_%__match200767200768%_
                           _%e197440197573%_
                           _%hd197439197577%_
                           _%tl197438197580%_
                           _%e197443197583%_
                           _%hd197442197587%_
                           _%tl197441197590%_
                           _%__splice200709200710%_
                           _%target197467197508%_
                           _%tl197469197511%_)
                          (let () (declare (not safe)) (_%g197434197481%_)))))
                  (let () (declare (not safe)) (_%g197434197481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197441197590%_))
                                                      (let ((_%__splice200709200710%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197441197590%_ '0))))
                (let ((_%tl197469197511%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200709200710%_ '1)))
                      (_%target197467197508%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200709200710%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197469197511%_))
                      (_%__match200767200768%_
                       _%e197440197573%_
                       _%hd197439197577%_
                       _%tl197438197580%_
                       _%e197443197583%_
                       _%hd197442197587%_
                       _%tl197441197590%_
                       _%__splice200709200710%_
                       _%target197467197508%_
                       _%tl197469197511%_)
                      (let () (declare (not safe)) (_%g197434197481%_)))))
              (let () (declare (not safe)) (_%g197434197481%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197441197590%_))
                                              (let ((_%__splice200709200710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197441197590%_
                                                        '0))))
                                                (let ((_%tl197469197511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200709200710%_
                                                          '1)))
                                                      (_%target197467197508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200709200710%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197469197511%_))
                                                      (_%__match200767200768%_
                                                       _%e197440197573%_
                                                       _%hd197439197577%_
                                                       _%tl197438197580%_
                                                       _%e197443197583%_
                                                       _%hd197442197587%_
                                                       _%tl197441197590%_
                                                       _%__splice200709200710%_
                                                       _%target197467197508%_
                                                       _%tl197469197511%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197434197481%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197434197481%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197441197590%_))
                                      (let ((_%__splice200709200710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197441197590%_
                                                '0))))
                                        (let ((_%tl197469197511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200709200710%_
                                                  '1)))
                                              (_%target197467197508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200709200710%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197469197511%_))
                                              (_%__match200767200768%_
                                               _%e197440197573%_
                                               _%hd197439197577%_
                                               _%tl197438197580%_
                                               _%e197443197583%_
                                               _%hd197442197587%_
                                               _%tl197441197590%_
                                               _%__splice200709200710%_
                                               _%target197467197508%_
                                               _%tl197469197511%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197434197481%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197434197481%_))))))
                          (let () (declare (not safe)) (_%g197434197481%_)))))
                  (let () (declare (not safe)) (_%g197434197481%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx198759%_ _%id198761%_)
        (let ((_%proc198765%_
               (let ((__tmp201136
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198761%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201136))))
          (if (let () (declare (not safe)) (procedure? _%proc198765%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx198759%_
                 _%id198761%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx198750%_ _%id198752%_)
        (let ((_%klass198756%_
               (let ((__tmp201137
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198752%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201137))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass198756%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx198750%_
                 _%id198752%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198000%_ _%proc198002%_ _%sig198003%_)
        (letrec ((_%signature-arity198005%_
                  (lambda (_%args198682%_)
                    (let _%loop198685%_ ((_%rest198688%_ _%args198682%_)
                                         (_%count198690%_ '0))
                      (let* ((_%rest198691198702%_ _%rest198688%_)
                             (_%E198695198708%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest198691198702%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K198698198739%_
                               (lambda (_%rest198736%_)
                                 (let ((__tmp201138
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count198690%_ '1))))
                                   (declare (not safe))
                                   (_%loop198685%_
                                    _%rest198736%_
                                    __tmp201138))))
                              (_%K198697198728%_ (lambda () _%count198690%_))
                              (_%K198696198716%_
                               (lambda () (cons _%count198690%_ '()))))
                          (let ((_%try-match198693198732%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest198691198702%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198697198728%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198696198716%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest198691198702%_))
                                (let* ((_%tl198700198743%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest198691198702%_)))
                                       (_%rest198747%_ _%tl198700198743%_))
                                  (declare (not safe))
                                  (_%K198698198739%_ _%rest198747%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match198693198732%_)))))))))
                 (_%make-signature198007%_
                  (lambda (_%args198564%_
                           _%return198566%_
                           _%effect198567%_
                           _%unchecked198568%_)
                    (let ((__tmp201139
                           (lambda (_%g198569198571%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx198000%_
                                _%g198569198571%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201139 _%args198564%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx198000%_ _%return198566%_))
                    (if _%unchecked198568%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx198000%_
                           _%unchecked198568%_))
                        '#!void)
                    (let ((_%arity198575%_
                           (let ((__tmp201140
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args198564%_))))
                             (declare (not safe))
                             (_%signature-arity198005%_ __tmp201140))))
                      (if _%effect198567%_
                          (let ((_%effect198578%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect198567%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect198578%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect198578%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198000%_
                                   _%proc198002%_
                                   _%effect198578%_))))
                          '#!void)
                      (cons _%arity198575%_
                            (cons (let* ((_%g198581198604%_
                                          (lambda (_%g198582198600%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g198582198600%_))))
                                         (_%g198580198678%_
                                          (lambda (_%g198582198608%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g198582198608%_))
                                                (let ((_%e198589198611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g198582198608%_))))
                                                  (let ((_%hd198588198615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198589198611%_)))
                                                        (_%tl198587198618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198589198611%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198587198618%_))
                                                        (let ((_%e198592198621%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198587198618%_))))
                  (let ((_%hd198591198625%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198592198621%_)))
                        (_%tl198590198628%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198592198621%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198590198628%_))
                        (let ((_%e198595198631%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198590198628%_))))
                          (let ((_%hd198594198635%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198595198631%_)))
                                (_%tl198593198638%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198595198631%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198593198638%_))
                                (let ((_%e198598198641%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198593198638%_))))
                                  (let ((_%hd198597198645%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198598198641%_)))
                                        (_%tl198596198648%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198598198641%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198596198648%_))
                                        ((lambda (_%L198651%_
                                                  _%L198653%_
                                                  _%L198654%_
                                                  _%L198655%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!signature))
                                                   (cons 'arguments:
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'quote))
                             (cons _%L198655%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198654%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L198653%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L198651%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd198597198645%_
                                         _%hd198594198635%_
                                         _%hd198591198625%_
                                         _%hd198588198615%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g198581198604%_
                                           _%g198582198608%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198581198604%_ _%g198582198608%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g198581198604%_ _%g198582198608%_)))))
                (let ()
                  (declare (not safe))
                  (_%g198581198604%_ _%g198582198608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198581198604%_
                                                   _%g198582198608%_)))))
                                         (__tmp201141
                                          (list _%args198564%_
                                                _%return198566%_
                                                _%effect198567%_
                                                _%unchecked198568%_)))
                                    (declare (not safe))
                                    (_%g198580198678%_ __tmp201141))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx198000%_ _%proc198002%_))
          (let* ((_%__stx200778200779%_ _%sig198003%_)
                 (_%g198014198117%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200778200779%_)))))
            (let ((_%__kont200781200782%_
                   (lambda (_%L198545%_ _%L198547%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198007%_
                        _%L198547%_
                        _%L198545%_
                        '#f
                        '#f))))
                  (_%__kont200783200784%_
                   (lambda (_%L198496%_ _%L198498%_ _%L198499%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198007%_
                        _%L198499%_
                        _%L198498%_
                        _%L198496%_
                        '#f))))
                  (_%__kont200785200786%_
                   (lambda (_%L198420%_ _%L198422%_ _%L198423%_)
                     (let ((__tmp201142
                            (let ((__tmp201143
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198002%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201143))))
                       (declare (not safe))
                       (_%make-signature198007%_
                        _%L198423%_
                        _%L198422%_
                        _%L198420%_
                        __tmp201142))))
                  (_%__kont200787200788%_
                   (lambda (_%L198326%_ _%L198328%_ _%L198329%_ _%L198330%_)
                     (let ((__tmp201144
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198326%_))))
                       (declare (not safe))
                       (_%make-signature198007%_
                        _%L198330%_
                        _%L198329%_
                        '#f
                        __tmp201144))))
                  (_%__kont200789200790%_
                   (lambda (_%L198233%_ _%L198235%_)
                     (let ((__tmp201145
                            (let ((__tmp201146
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198002%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201146))))
                       (declare (not safe))
                       (_%make-signature198007%_
                        _%L198235%_
                        _%L198233%_
                        '#f
                        __tmp201145))))
                  (_%__kont200791200792%_
                   (lambda (_%L198168%_ _%L198170%_ _%L198171%_)
                     (let ((__tmp201147
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198168%_))))
                       (declare (not safe))
                       (_%make-signature198007%_
                        _%L198171%_
                        _%L198170%_
                        '#f
                        __tmp201147)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200778200779%_))
                  (let ((_%e198020198525%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200778200779%_))))
                    (let ((_%tl198018198532%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198020198525%_)))
                          (_%hd198019198529%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198020198525%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198018198532%_))
                          (let ((_%e198023198535%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198018198532%_))))
                            (let ((_%tl198021198542%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198023198535%_)))
                                  (_%hd198022198539%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198023198535%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198021198542%_))
                                  (_%__kont200781200782%_
                                   _%hd198022198539%_
                                   _%hd198019198529%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198021198542%_))
                                      (let ((_%e198035198472%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198021198542%_))))
                                        (let ((_%tl198033198479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198035198472%_)))
                                              (_%hd198034198476%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198035198472%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198034198476%_))
                                              (let ((_%e198036198482%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198034198476%_))))
                                                (if (equal? _%e198036198482%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198033198479%_))
                                                        (let ((_%e198039198486%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198033198479%_))))
                  (let ((_%tl198037198493%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198039198486%_)))
                        (_%hd198038198490%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198039198486%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198037198493%_))
                        (_%__kont200783200784%_
                         _%hd198038198490%_
                         _%hd198022198539%_
                         _%hd198019198529%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198037198493%_))
                            (let ((_%e198058198406%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198037198493%_))))
                              (let ((_%tl198056198413%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198058198406%_)))
                                    (_%hd198057198410%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198058198406%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198057198410%_))
                                    (let ((_%e198059198416%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198057198410%_))))
                                      (if (equal? _%e198059198416%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198056198413%_))
                                              (_%__kont200785200786%_
                                               _%hd198038198490%_
                                               _%hd198022198539%_
                                               _%hd198019198529%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198056198413%_))
                                                  (let ((_%e198083198316%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198056198413%_))))
                                                    (let ((_%tl198081198323%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198083198316%_)))
                                                          (_%hd198082198320%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198083198316%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198081198323%_))
                                                          (_%__kont200787200788%_
                                                           _%hd198082198320%_
                                                           _%hd198038198490%_
                                                           _%hd198022198539%_
                                                           _%hd198019198529%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198014198117%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198014198117%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198014198117%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198014198117%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198014198117%_))))))
                (let () (declare (not safe)) (_%g198014198117%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198036198482%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198033198479%_))
                                                            (_%__kont200789200790%_
                                                             _%hd198022198539%_
                                                             _%hd198019198529%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198033198479%_))
                        (let ((_%e198111198158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198033198479%_))))
                          (let ((_%tl198109198165%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198111198158%_)))
                                (_%hd198110198162%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198111198158%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198109198165%_))
                                (_%__kont200791200792%_
                                 _%hd198110198162%_
                                 _%hd198022198539%_
                                 _%hd198019198529%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198014198117%_)))))
                        (let () (declare (not safe)) (_%g198014198117%_))))
                (let () (declare (not safe)) (_%g198014198117%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198014198117%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198014198117%_))))))
                          (let () (declare (not safe)) (_%g198014198117%_)))))
                  (let () (declare (not safe)) (_%g198014198117%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig197680%_)
        (let* ((_%g197683197749%_
                (lambda (_%g197684197745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197684197745%_))))
               (_%g197682197996%_
                (lambda (_%g197684197753%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197684197753%_))
                      (let ((_%e197691197756%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197684197753%_))))
                        (let ((_%hd197690197760%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197691197756%_)))
                              (_%tl197689197763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197691197756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197689197763%_))
                              (let ((_%e197694197766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197689197763%_))))
                                (let ((_%hd197693197770%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197694197766%_)))
                                      (_%tl197692197773%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197694197766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd197693197770%_))
                                      (let ((_%e197695197776%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197693197770%_))))
                                        (if (equal? _%e197695197776%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197692197773%_))
                                                (let ((_%e197698197780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl197692197773%_))))
                                                  (let ((_%hd197697197784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197698197780%_)))
                                                        (_%tl197696197787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197698197780%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197697197784%_))
                                                        (let ((_%e197701197790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197697197784%_))))
                  (let ((_%hd197700197794%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197701197790%_)))
                        (_%tl197699197797%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197701197790%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd197700197794%_))
                        (if (let ((__tmp201148 |gxc[1]#_g201149_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201148
                               _%hd197700197794%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197699197797%_))
                                (let ((_%e197704197800%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197699197797%_))))
                                  (let ((_%hd197703197804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197704197800%_)))
                                        (_%tl197702197807%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197704197800%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197702197807%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197696197787%_))
                                            (let ((_%e197707197810%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197696197787%_))))
                                              (let ((_%hd197706197814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197707197810%_)))
                                                    (_%tl197705197817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197707197810%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197706197814%_))
                                                    (let ((_%e197708197820%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197706197814%_))))
                                                      (if (equal? _%e197708197820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197705197817%_))
                      (let ((_%e197711197824%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197705197817%_))))
                        (let ((_%hd197710197828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197711197824%_)))
                              (_%tl197709197831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197711197824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197710197828%_))
                              (let ((_%e197714197834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd197710197828%_))))
                                (let ((_%hd197713197838%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197714197834%_)))
                                      (_%tl197712197841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197714197834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197713197838%_))
                                      (if (let ((__tmp201150
                                                 |gxc[1]#_g201151_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201150
                                             _%hd197713197838%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197712197841%_))
                                              (let ((_%e197717197844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197712197841%_))))
                                                (let ((_%hd197716197848%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197717197844%_)))
                                                      (_%tl197715197851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197717197844%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197715197851%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197709197831%_))
                                                          (let ((_%e197720197854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl197709197831%_))))
                    (let ((_%hd197719197858%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197720197854%_)))
                          (_%tl197718197861%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197720197854%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197719197858%_))
                          (let ((_%e197721197864%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197719197858%_))))
                            (if (equal? _%e197721197864%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197718197861%_))
                                    (let ((_%e197724197868%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl197718197861%_))))
                                      (let ((_%hd197723197872%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197724197868%_)))
                                            (_%tl197722197875%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197724197868%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd197723197872%_))
                                            (let ((_%e197727197878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd197723197872%_))))
                                              (let ((_%hd197726197882%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197727197878%_)))
                                                    (_%tl197725197885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197727197878%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd197726197882%_))
                                                    (if (let ((__tmp201152
                                                               |gxc[1]#_g201153_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201152
                                                           _%hd197726197882%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197725197885%_))
                                                            (let ((_%e197730197888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl197725197885%_))))
                      (let ((_%hd197729197892%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197730197888%_)))
                            (_%tl197728197895%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197730197888%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197728197895%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197722197875%_))
                                (let ((_%e197733197898%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197722197875%_))))
                                  (let ((_%hd197732197902%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197733197898%_)))
                                        (_%tl197731197905%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197733197898%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd197732197902%_))
                                        (let ((_%e197734197908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197732197902%_))))
                                          (if (equal? _%e197734197908%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197731197905%_))
                                                  (let ((_%e197737197912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197731197905%_))))
                                                    (let ((_%hd197736197916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197737197912%_)))
                                                          (_%tl197735197919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197737197912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197736197916%_))
                                                          (let ((_%e197740197922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd197736197916%_))))
                    (let ((_%hd197739197926%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197740197922%_)))
                          (_%tl197738197929%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197740197922%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197739197926%_))
                          (if (let ((__tmp201154 |gxc[1]#_g201155_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201154
                                 _%hd197739197926%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197738197929%_))
                                  (let ((_%e197743197932%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197738197929%_))))
                                    (let ((_%hd197742197936%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197743197932%_)))
                                          (_%tl197741197939%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197743197932%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197741197939%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197735197919%_))
                                              ((lambda (_%L197942%_
                                                        _%L197944%_
                                                        _%L197945%_
                                                        _%L197946%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L197942%_))
                                                     (cons _%L197942%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197945%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd197742197936%_
                                               _%hd197729197892%_
                                               _%hd197716197848%_
                                               _%hd197703197804%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197683197749%_
                                                 _%g197684197753%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197683197749%_
                                             _%g197684197753%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197683197749%_ _%g197684197753%_)))
                              (let ()
                                (declare (not safe))
                                (_%g197683197749%_ _%g197684197753%_)))
                          (let ()
                            (declare (not safe))
                            (_%g197683197749%_ _%g197684197753%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197683197749%_ _%g197684197753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197683197749%_
                                                     _%g197684197753%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197683197749%_
                                                 _%g197684197753%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197683197749%_
                                           _%g197684197753%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197683197749%_ _%g197684197753%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197683197749%_ _%g197684197753%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g197683197749%_ _%g197684197753%_)))
                (let ()
                  (declare (not safe))
                  (_%g197683197749%_ _%g197684197753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197683197749%_
                                                       _%g197684197753%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197683197749%_
                                               _%g197684197753%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197683197749%_ _%g197684197753%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197683197749%_ _%g197684197753%_))))
                          (let ()
                            (declare (not safe))
                            (_%g197683197749%_ _%g197684197753%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197683197749%_ _%g197684197753%_)))
              (let ()
                (declare (not safe))
                (_%g197683197749%_ _%g197684197753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g197683197749%_
                                                 _%g197684197753%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197683197749%_
                                             _%g197684197753%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197683197749%_
                                         _%g197684197753%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197683197749%_ _%g197684197753%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197683197749%_ _%g197684197753%_)))
                  (let ()
                    (declare (not safe))
                    (_%g197683197749%_ _%g197684197753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197683197749%_
                                                       _%g197684197753%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197683197749%_
                                               _%g197684197753%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197683197749%_
                                           _%g197684197753%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197683197749%_ _%g197684197753%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197683197749%_ _%g197684197753%_)))
                        (let ()
                          (declare (not safe))
                          (_%g197683197749%_ _%g197684197753%_)))))
                (let ()
                  (declare (not safe))
                  (_%g197683197749%_ _%g197684197753%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197683197749%_
                                                   _%g197684197753%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197683197749%_
                                               _%g197684197753%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197683197749%_
                                         _%g197684197753%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197683197749%_ _%g197684197753%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197683197749%_ _%g197684197753%_))))))
          (declare (not safe))
          (_%g197682197996%_ _%sig197680%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx198768%_)
        (let* ((_%g198771198789%_
                (lambda (_%g198772198785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198772198785%_))))
               (_%g198770198844%_
                (lambda (_%g198772198793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198772198793%_))
                      (let ((_%e198777198796%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198772198793%_))))
                        (let ((_%hd198776198800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198777198796%_)))
                              (_%tl198775198803%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198777198796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198775198803%_))
                              (let ((_%e198780198806%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198775198803%_))))
                                (let ((_%hd198779198810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198780198806%_)))
                                      (_%tl198778198813%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198780198806%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198778198813%_))
                                      (let ((_%e198783198816%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198778198813%_))))
                                        (let ((_%hd198782198820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198783198816%_)))
                                              (_%tl198781198823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198783198816%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198781198823%_))
                                              ((lambda (_%L198826%_
                                                        _%L198828%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198828%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198826%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx198768%_
                                                          _%L198828%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx198768%_
                                                          _%L198826%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L198828%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L198826%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g198771198789%_
                                                      _%g198772198793%_)))
                                               _%hd198782198820%_
                                               _%hd198779198810%_)
                                              (_%g198771198789%_
                                               _%g198772198793%_))))
                                      (_%g198771198789%_ _%g198772198793%_))))
                              (_%g198771198789%_ _%g198772198793%_))))
                      (_%g198771198789%_ _%g198772198793%_)))))
          (_%g198770198844%_ _%stx198768%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx198848%_)
        (let* ((_%g198851198875%_
                (lambda (_%g198852198871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198852198871%_))))
               (_%g198850199158%_
                (lambda (_%g198852198879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198852198879%_))
                      (let ((_%e198857198882%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198852198879%_))))
                        (let ((_%hd198856198886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198857198882%_)))
                              (_%tl198855198889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198857198882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198855198889%_))
                              (let ((_%e198860198892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198855198889%_))))
                                (let ((_%hd198859198896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198860198892%_)))
                                      (_%tl198858198899%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198860198892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198858198899%_))
                                      (let ((_g201156_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198858198899%_
                                                '0))))
                                        (begin
                                          (let ((_g201157_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201156_)
                                                       (##vector-length
                                                        _g201156_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201157_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201157_)))
                                          (let ((_%target198861198902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201156_ 0)))
                                                (_%tl198863198905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201156_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198863198905%_))
                                                (letrec ((_%loop198864198908%_
                                                          (lambda (_%hd198862198912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature198868198915%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198862198912%_))
                        (let ((_%e198865198918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd198862198912%_))))
                          (let ((_%lp-hd198866198922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198865198918%_)))
                                (_%lp-tl198867198925%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198865198918%_))))
                            (_%loop198864198908%_
                             _%lp-tl198867198925%_
                             (cons _%lp-hd198866198922%_
                                   _%signature198868198915%_))))
                        (let ((_%signature198869198928%_
                               (reverse _%signature198868198915%_)))
                          ((lambda (_%L198932%_ _%L198934%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L198934%_))
                                 (let* ((_%g198952198967%_
                                         (lambda (_%g198953198963%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198953198963%_))))
                                        (_%g198951199146%_
                                         (lambda (_%g198953198971%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198953198971%_))
                                               (let ((_%e198958198974%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g198953198971%_))))
                                                 (let ((_%hd198957198978%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198958198974%_)))
                                                       (_%tl198956198981%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198958198974%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198956198981%_))
                                                       (let ((_%e198961198984%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl198956198981%_))))
                 (let ((_%hd198960198988%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198961198984%_)))
                       (_%tl198959198991%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198961198984%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198959198991%_))
                       ((lambda (_%L198994%_ _%L198996%_)
                          (let ()
                            (let* ((_%g199012199020%_
                                    (lambda (_%g199013199016%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199013199016%_))))
                                   (_%g199011199142%_
                                    (lambda (_%g199013199024%_)
                                      ((lambda (_%L199027%_)
                                         (let ()
                                           (let* ((_%unchecked199040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L198994%_)))
                                                  (_%g199043199051%_
                                                   (lambda (_%g199044199047%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g199044199047%_))))
                                                  (_%g199042199074%_
                                                   (lambda (_%g199044199055%_)
                                                     ((lambda (_%L199058%_)
                                                        (let ()
                                                          (let ()
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin))
                          (cons _%L199027%_ (cons _%L199058%_ '()))))))
              _%g199044199055%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g199042199074%_
                                              (if _%unchecked199040%_
                                                  (let* ((_%g199078199093%_
                                                          (lambda (_%g199079199089%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g199079199089%_))))
                                                         (_%g199077199138%_
                                                          (lambda (_%g199079199097%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g199079199097%_))
                        (let ((_%e199084199100%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g199079199097%_))))
                          (let ((_%hd199083199104%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199084199100%_)))
                                (_%tl199082199107%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199084199100%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199082199107%_))
                                (let ((_%e199087199110%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199082199107%_))))
                                  (let ((_%hd199086199114%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199087199110%_)))
                                        (_%tl199085199117%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199087199110%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199085199117%_))
                                        ((lambda (_%L199120%_ _%L199122%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L199122%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198996%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L199120%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199086199114%_
                                         _%hd199083199104%_)
                                        (_%g199078199093%_
                                         _%g199079199097%_))))
                                (_%g199078199093%_ _%g199079199097%_))))
                        (_%g199078199093%_ _%g199079199097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199077199138%_
                                                     _%unchecked199040%_))
                                                  '(begin))))))
                                       _%g199013199024%_))))
                              (_%g199011199142%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L198934%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198996%_ '()))
                     (cons '#f (cons 'signature: (cons _%L198994%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd198960198988%_
                        _%hd198957198978%_)
                       (_%g198952198967%_ _%g198953198971%_))))
               (_%g198952198967%_ _%g198953198971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198952198967%_
                                                _%g198953198971%_)))))
                                   (_%g198951199146%_
                                    (let ((__tmp201158
                                           (let ((__tmp201159
                                                  (lambda (_%g199149199152%_
                                                           _%g199150199155%_)
                                                    (cons _%g199149199152%_
                                                          _%g199150199155%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201159
                                              '()
                                              _%L198932%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx198848%_
                                       _%L198934%_
                                       __tmp201158))))
                                 (_%g198851198875%_ _%g198852198879%_)))
                           _%signature198869198928%_
                           _%hd198859198896%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop198864198908%_
                                                   _%target198861198902%_
                                                   '()))
                                                (_%g198851198875%_
                                                 _%g198852198879%_)))))
                                      (_%g198851198875%_ _%g198852198879%_))))
                              (_%g198851198875%_ _%g198852198879%_))))
                      (_%g198851198875%_ _%g198852198879%_)))))
          (_%g198850199158%_ _%stx198848%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199163%_)
        (let* ((_%g199166199190%_
                (lambda (_%g199167199186%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199167199186%_))))
               (_%g199165200004%_
                (lambda (_%g199167199194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199167199194%_))
                      (let ((_%e199172199197%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199167199194%_))))
                        (let ((_%hd199171199201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199172199197%_)))
                              (_%tl199170199204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199172199197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199170199204%_))
                              (let ((_%e199175199207%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199170199204%_))))
                                (let ((_%hd199174199211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199175199207%_)))
                                      (_%tl199173199214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199175199207%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199173199214%_))
                                      (let ((_g201160_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199173199214%_
                                                '0))))
                                        (begin
                                          (let ((_g201161_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201160_)
                                                       (##vector-length
                                                        _g201160_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201161_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201161_)))
                                          (let ((_%target199176199217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201160_ 0)))
                                                (_%tl199178199220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201160_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199178199220%_))
                                                (letrec ((_%loop199179199223%_
                                                          (lambda (_%hd199177199227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199183199230%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199177199227%_))
                        (let ((_%e199180199233%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199177199227%_))))
                          (let ((_%lp-hd199181199237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199180199233%_)))
                                (_%lp-tl199182199240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199180199233%_))))
                            (_%loop199179199223%_
                             _%lp-tl199182199240%_
                             (cons _%lp-hd199181199237%_
                                   _%case-signature199183199230%_))))
                        (let ((_%case-signature199184199243%_
                               (reverse _%case-signature199183199230%_)))
                          ((lambda (_%L199247%_ _%L199249%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199249%_))
                                 (let* ((_%signatures199280%_
                                         (map (lambda (_%g199266199268%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx199163%_
                                                   _%L199249%_
                                                   _%g199266199268%_)))
                                              (let ((__tmp201162
                                                     (lambda (_%g199271199274%_
                                                              _%g199272199277%_)
                                                       (cons _%g199271199274%_
                                                             _%g199272199277%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201162
                                                 '()
                                                 _%L199247%_))))
                                        (_%g199283199309%_
                                         (lambda (_%g199284199305%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199284199305%_))))
                                        (_%g199282200000%_
                                         (lambda (_%g199284199313%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g199284199313%_))
                                               (let ((_g201163_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g199284199313%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201164_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201163_)
                        (##vector-length _g201163_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201164_ 2)))
                 (error "Context expects 2 values" _g201164_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target199287199316%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201163_
                                                             0)))
                                                         (_%tl199289199319%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201163_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199289199319%_))
                                                         (letrec ((_%loop199290199322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd199288199326%_
                                    _%sig199294199329%_
                                    _%arity199295199331%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd199288199326%_))
                                 (let ((_%e199291199334%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd199288199326%_))))
                                   (let ((_%lp-hd199292199338%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199291199334%_)))
                                         (_%lp-tl199293199341%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199291199334%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd199292199338%_))
                                         (let ((_%e199300199344%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd199292199338%_))))
                                           (let ((_%hd199299199348%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199300199344%_)))
                                                 (_%tl199298199351%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199300199344%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199298199351%_))
                                                 (let ((_%e199303199354%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199298199351%_))))
                                                   (let ((_%hd199302199358%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199303199354%_)))
                                                         (_%tl199301199361%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199303199354%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199301199361%_))
                                                         (_%loop199290199322%_
                                                          _%lp-tl199293199341%_
                                                          (cons _%hd199302199358%_
                                                                _%sig199294199329%_)
                                                          (cons _%hd199299199348%_
                                                                _%arity199295199331%_))
                                                         (_%g199283199309%_
                                                          _%g199284199313%_))))
                                                 (_%g199283199309%_
                                                  _%g199284199313%_))))
                                         (_%g199283199309%_
                                          _%g199284199313%_))))
                                 (let ((_%sig199296199364%_
                                        (reverse _%sig199294199329%_))
                                       (_%arity199297199367%_
                                        (reverse _%arity199295199331%_)))
                                   ((lambda (_%L199370%_ _%L199372%_)
                                      (let ()
                                        (let* ((_%g199389199397%_
                                                (lambda (_%g199390199393%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g199390199393%_))))
                                               (_%g199388199985%_
                                                (lambda (_%g199390199401%_)
                                                  ((lambda (_%L199404%_)
                                                     (let ()
                                                       (let* ((_%g199417199425%_
                                                               (lambda (_%g199418199421%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g199418199421%_))))
                      (_%g199416199447%_
                       (lambda (_%g199418199429%_)
                         ((lambda (_%L199432%_)
                            (let ()
                              (let ()
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'begin))
                                      (cons _%L199404%_
                                            (cons _%L199432%_ '()))))))
                          _%g199418199429%_))))
                 (_%g199416199447%_
                  (let ((_g201165_
                         (let _%loop199451%_ ((_%rest199454%_
                                               _%signatures199280%_)
                                              (_%unchecked-proc199456%_ '#f)
                                              (_%unchecked-clauses199457%_
                                               '()))
                           (let* ((_%rest199458199466%_ _%rest199454%_)
                                  (_%else199460199478%_
                                   (lambda ()
                                     (values _%unchecked-proc199456%_
                                             (reverse!
                                              _%unchecked-clauses199457%_))))
                                  (_%K199462199850%_
                                   (lambda (_%rest199482%_ _%hd199484%_)
                                     (let* ((_%g199486199559%_
                                             (lambda (_%g199487199555%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199487199555%_))))
                                            (_%g199485199846%_
                                             (lambda (_%g199487199563%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199487199563%_))
                                                   (let ((_%e199495199566%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g199487199563%_))))
                                                     (let ((_%hd199494199570%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199495199566%_)))
                                                           (_%tl199493199573%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199495199566%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199493199573%_))
                                                           (let ((_%e199498199576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl199493199573%_))))
                     (let ((_%hd199497199580%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199498199576%_)))
                           (_%tl199496199583%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199498199576%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199497199580%_))
                           (let ((_%e199501199586%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd199497199580%_))))
                             (let ((_%hd199500199590%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199501199586%_)))
                                   (_%tl199499199593%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199501199586%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199499199593%_))
                                   (let ((_%e199504199596%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl199499199593%_))))
                                     (let ((_%hd199503199600%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199504199596%_)))
                                           (_%tl199502199603%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199504199596%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd199503199600%_))
                                           (let ((_%e199505199606%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd199503199600%_))))
                                             (if (equal? _%e199505199606%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199502199603%_))
                                                     (let ((_%e199508199610%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl199502199603%_))))
                                                       (let ((_%hd199507199614%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e199508199610%_)))
                     (_%tl199506199617%_
                      (let () (declare (not safe)) (##cdr _%e199508199610%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd199507199614%_))
                     (let ((_%e199511199620%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd199507199614%_))))
                       (let ((_%hd199510199624%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199511199620%_)))
                             (_%tl199509199627%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199511199620%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd199510199624%_))
                             (if (let ((__tmp201167 |gxc[1]#_g201168_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp201167
                                    _%hd199510199624%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199509199627%_))
                                     (let ((_%e199514199630%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199509199627%_))))
                                       (let ((_%hd199513199634%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199514199630%_)))
                                             (_%tl199512199637%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199514199630%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl199512199637%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199506199617%_))
                                                 (let ((_%e199517199640%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199506199617%_))))
                                                   (let ((_%hd199516199644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199517199640%_)))
                                                         (_%tl199515199647%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199517199640%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd199516199644%_))
                                                         (let ((_%e199518199650%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd199516199644%_))))
                   (if (equal? _%e199518199650%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199515199647%_))
                           (let ((_%e199521199654%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl199515199647%_))))
                             (let ((_%hd199520199658%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199521199654%_)))
                                   (_%tl199519199661%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199521199654%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199520199658%_))
                                   (let ((_%e199524199664%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd199520199658%_))))
                                     (let ((_%hd199523199668%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199524199664%_)))
                                           (_%tl199522199671%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199524199664%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199523199668%_))
                                           (if (let ((__tmp201169
                                                      |gxc[1]#_g201170_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp201169
                                                  _%hd199523199668%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199522199671%_))
                                                   (let ((_%e199527199674%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl199522199671%_))))
                                                     (let ((_%hd199526199678%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199527199674%_)))
                                                           (_%tl199525199681%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199527199674%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199525199681%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199519199661%_))
                       (let ((_%e199530199684%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl199519199661%_))))
                         (let ((_%hd199529199688%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199530199684%_)))
                               (_%tl199528199691%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199530199684%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd199529199688%_))
                               (let ((_%e199531199694%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199529199688%_))))
                                 (if (equal? _%e199531199694%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl199528199691%_))
                                         (let ((_%e199534199698%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl199528199691%_))))
                                           (let ((_%hd199533199702%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199534199698%_)))
                                                 (_%tl199532199705%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199534199698%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd199533199702%_))
                                                 (let ((_%e199537199708%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd199533199702%_))))
                                                   (let ((_%hd199536199712%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199537199708%_)))
                                                         (_%tl199535199715%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199537199708%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd199536199712%_))
                                                         (if (let ((__tmp201171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g201172_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp201171 _%hd199536199712%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199535199715%_))
                         (let ((_%e199540199718%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl199535199715%_))))
                           (let ((_%hd199539199722%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199540199718%_)))
                                 (_%tl199538199725%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199540199718%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199538199725%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199532199705%_))
                                     (let ((_%e199543199728%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199532199705%_))))
                                       (let ((_%hd199542199732%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199543199728%_)))
                                             (_%tl199541199735%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199543199728%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd199542199732%_))
                                             (let ((_%e199544199738%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd199542199732%_))))
                                               (if (equal? _%e199544199738%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199541199735%_))
                                                       (let ((_%e199547199742%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199541199735%_))))
                 (let ((_%hd199546199746%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199547199742%_)))
                       (_%tl199545199749%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199547199742%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd199546199746%_))
                       (let ((_%e199550199752%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd199546199746%_))))
                         (let ((_%hd199549199756%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199550199752%_)))
                               (_%tl199548199759%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199550199752%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd199549199756%_))
                               (if (let ((__tmp201173 |gxc[1]#_g201174_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp201173
                                      _%hd199549199756%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl199548199759%_))
                                       (let ((_%e199553199762%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl199548199759%_))))
                                         (let ((_%hd199552199766%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199553199762%_)))
                                               (_%tl199551199769%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199553199762%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199551199769%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199545199749%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199496199583%_))
                                                       ((lambda (_%L199772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L199774%_
                         _%L199775%_
                         _%L199776%_
                         _%L199777%_)
                  (let ((_%clause199838%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199777%_ '()))
                                     (cons '#f
                                           (cons 'signature:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L199775%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked199840%_
                         (let () (declare (not safe)) (gx#stx-e _%L199772%_))))
                    (_%loop199451%_
                     _%rest199482%_
                     (let ((_%$e199842%_ _%unchecked199840%_))
                       (if _%$e199842%_ _%$e199842%_ _%unchecked-proc199456%_))
                     (cons _%clause199838%_ _%unchecked-clauses199457%_))))
                _%hd199552199766%_
                _%hd199539199722%_
                _%hd199526199678%_
                _%hd199513199634%_
                _%hd199494199570%_)
               (_%g199486199559%_ _%g199487199563%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199486199559%_
                                                    _%g199487199563%_))
                                               (_%g199486199559%_
                                                _%g199487199563%_))))
                                       (_%g199486199559%_ _%g199487199563%_))
                                   (_%g199486199559%_ _%g199487199563%_))
                               (_%g199486199559%_ _%g199487199563%_))))
                       (_%g199486199559%_ _%g199487199563%_))))
               (_%g199486199559%_ _%g199487199563%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199486199559%_
                                                    _%g199487199563%_)))
                                             (_%g199486199559%_
                                              _%g199487199563%_))))
                                     (_%g199486199559%_ _%g199487199563%_))
                                 (_%g199486199559%_ _%g199487199563%_))))
                         (_%g199486199559%_ _%g199487199563%_))
                     (_%g199486199559%_ _%g199487199563%_))
                 (_%g199486199559%_ _%g199487199563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199486199559%_
                                                  _%g199487199563%_))))
                                         (_%g199486199559%_ _%g199487199563%_))
                                     (_%g199486199559%_ _%g199487199563%_)))
                               (_%g199486199559%_ _%g199487199563%_))))
                       (_%g199486199559%_ _%g199487199563%_))
                   (_%g199486199559%_ _%g199487199563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199486199559%_
                                                    _%g199487199563%_))
                                               (_%g199486199559%_
                                                _%g199487199563%_))
                                           (_%g199486199559%_
                                            _%g199487199563%_))))
                                   (_%g199486199559%_ _%g199487199563%_))))
                           (_%g199486199559%_ _%g199487199563%_))
                       (_%g199486199559%_ _%g199487199563%_)))
                 (_%g199486199559%_ _%g199487199563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199486199559%_
                                                  _%g199487199563%_))
                                             (_%g199486199559%_
                                              _%g199487199563%_))))
                                     (_%g199486199559%_ _%g199487199563%_))
                                 (_%g199486199559%_ _%g199487199563%_))
                             (_%g199486199559%_ _%g199487199563%_))))
                     (_%g199486199559%_ _%g199487199563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199486199559%_
                                                      _%g199487199563%_))
                                                 (_%g199486199559%_
                                                  _%g199487199563%_)))
                                           (_%g199486199559%_
                                            _%g199487199563%_))))
                                   (_%g199486199559%_ _%g199487199563%_))))
                           (_%g199486199559%_ _%g199487199563%_))))
                   (_%g199486199559%_ _%g199487199563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199486199559%_
                                                    _%g199487199563%_)))))
                                       (_%g199485199846%_ _%hd199484%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest199458199466%_))
                                 (let ((_%hd199463199854%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199458199466%_)))
                                       (_%tl199464199857%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199458199466%_))))
                                   (let* ((_%hd199860%_ _%hd199463199854%_)
                                          (_%rest199863%_ _%tl199464199857%_))
                                     (_%K199462199850%_
                                      _%rest199863%_
                                      _%hd199860%_)))
                                 (_%else199460199478%_))))))
                    (begin
                      (let ((_g201166_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201165_)
                                   (##vector-length _g201165_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201166_ 2)))
                            (error "Context expects 2 values" _g201166_)))
                      (let ((_%unchecked-proc199866%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201165_ 0)))
                            (_%unchecked-clauses199868%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201165_ 1))))
                        (if _%unchecked-proc199866%_
                            (let* ((_%g199870199894%_
                                    (lambda (_%g199871199890%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199871199890%_))))
                                   (_%g199869199981%_
                                    (lambda (_%g199871199898%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g199871199898%_))
                                          (let ((_%e199876199901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g199871199898%_))))
                                            (let ((_%hd199875199905%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199876199901%_)))
                                                  (_%tl199874199908%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199876199901%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199874199908%_))
                                                  (let ((_%e199879199911%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199874199908%_))))
                                                    (let ((_%hd199878199915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199879199911%_)))
                                                          (_%tl199877199918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199879199911%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd199878199915%_))
                                                          (let ((_g201175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd199878199915%_ '0))))
                    (begin
                      (let ((_g201176_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201175_)
                                   (##vector-length _g201175_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201176_ 2)))
                            (error "Context expects 2 values" _g201176_)))
                      (let ((_%target199880199921%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201175_ 0)))
                            (_%tl199882199924%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201175_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199882199924%_))
                            (letrec ((_%loop199883199927%_
                                      (lambda (_%hd199881199931%_
                                               _%clause199887199934%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199881199931%_))
                                            (let ((_%e199884199937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199881199931%_))))
                                              (let ((_%lp-hd199885199941%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199884199937%_)))
                                                    (_%lp-tl199886199944%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199884199937%_))))
                                                (_%loop199883199927%_
                                                 _%lp-tl199886199944%_
                                                 (cons _%lp-hd199885199941%_
                                                       _%clause199887199934%_))))
                                            (let ((_%clause199888199947%_
                                                   (reverse _%clause199887199934%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199877199918%_))
                                                  ((lambda (_%L199951%_
                                                            _%L199953%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199953%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-case-lambda))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      '@list))
                                                   (let ((__tmp201177
                                                          (lambda (_%g199972199975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g199973199978%_)
                    (cons _%g199972199975%_ _%g199973199978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp201177
                                                      '()
                                                      _%L199951%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause199888199947%_
                                                   _%hd199875199905%_)
                                                  (_%g199870199894%_
                                                   _%g199871199898%_)))))))
                              (_%loop199883199927%_
                               _%target199880199921%_
                               '()))
                            (_%g199870199894%_ _%g199871199898%_)))))
                  (_%g199870199894%_ _%g199871199898%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g199870199894%_
                                                   _%g199871199898%_))))
                                          (_%g199870199894%_
                                           _%g199871199898%_)))))
                              (_%g199869199981%_
                               (list _%unchecked-proc199866%_
                                     _%unchecked-clauses199868%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g199390199401%_))))
                                          (_%g199388199985%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L199249%_
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0
                              '#f
                              'make-!primitive-case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (begin
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-check-splice-targets
                                            _%L199370%_
                                            _%L199372%_))
                                         (let ((__tmp201178
                                                (lambda (_%g199988199992%_
                                                         _%g199989199995%_
                                                         _%g199990199997%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g199989199995%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g199988199992%_ '())))))
                _%g199990199997%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp201178
                                            '()
                                            _%L199370%_
                                            _%L199372%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig199296199364%_
                                    _%arity199297199367%_))))))
                   (_%loop199290199322%_ _%target199287199316%_ '() '()))
                 (_%g199283199309%_ _%g199284199313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199283199309%_
                                                _%g199284199313%_)))))
                                   (_%g199282200000%_ _%signatures199280%_))
                                 (_%g199166199190%_ _%g199167199194%_)))
                           _%case-signature199184199243%_
                           _%hd199174199211%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199179199223%_
                                                   _%target199176199217%_
                                                   '()))
                                                (_%g199166199190%_
                                                 _%g199167199194%_)))))
                                      (_%g199166199190%_ _%g199167199194%_))))
                              (_%g199166199190%_ _%g199167199194%_))))
                      (_%g199166199190%_ _%g199167199194%_)))))
          (_%g199165200004%_ _%stx199163%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200012%_)
        (let* ((_%__stx200994200995%_ _%$stx200012%_)
               (_%g200018200078%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200994200995%_)))))
          (let ((_%__kont200997200998%_
                 (lambda (_%L200300%_ _%L200302%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200302%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L200302%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200300%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont200999201000%_
                 (lambda (_%L200225%_ _%L200227%_ _%L200228%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200228%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L200228%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200227%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200225%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201001201002%_
                 (lambda (_%L200139%_ _%L200141%_ _%L200142%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200142%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L200142%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200141%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200139%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200994200995%_))
                (let ((_%e200024200256%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200994200995%_))))
                  (let ((_%tl200022200263%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200024200256%_)))
                        (_%hd200023200260%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200024200256%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200022200263%_))
                        (let ((_%e200027200266%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200022200263%_))))
                          (let ((_%tl200025200273%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200027200266%_)))
                                (_%hd200026200270%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200027200266%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200026200270%_))
                                (let ((_%e200028200276%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200026200270%_))))
                                  (if (equal? _%e200028200276%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200025200273%_))
                                          (let ((_%e200031200280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200025200273%_))))
                                            (let ((_%tl200029200287%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200031200280%_)))
                                                  (_%hd200030200284%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200031200280%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200029200287%_))
                                                  (let ((_%e200034200290%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200029200287%_))))
                                                    (let ((_%tl200032200297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200034200290%_)))
                                                          (_%hd200033200294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200034200290%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200032200297%_))
                                                          (_%__kont200997200998%_
                                                           _%hd200033200294%_
                                                           _%hd200030200284%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200018200078%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200018200078%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200018200078%_)))
                                      (if (equal? _%e200028200276%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200025200273%_))
                                              (let ((_%e200047200195%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200025200273%_))))
                                                (let ((_%tl200045200202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200047200195%_)))
                                                      (_%hd200046200199%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200047200195%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200045200202%_))
                                                      (let ((_%e200050200205%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200045200202%_))))
                (let ((_%tl200048200212%_
                       (let () (declare (not safe)) (##cdr _%e200050200205%_)))
                      (_%hd200049200209%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200050200205%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200048200212%_))
                      (let ((_%e200053200215%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200048200212%_))))
                        (let ((_%tl200051200222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200053200215%_)))
                              (_%hd200052200219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200053200215%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200051200222%_))
                              (_%__kont200999201000%_
                               _%hd200052200219%_
                               _%hd200049200209%_
                               _%hd200046200199%_)
                              (let ()
                                (declare (not safe))
                                (_%g200018200078%_)))))
                      (let () (declare (not safe)) (_%g200018200078%_)))))
              (let () (declare (not safe)) (_%g200018200078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200018200078%_)))
                                          (if (equal? _%e200028200276%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200025200273%_))
                                                  (let ((_%e200066200109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200025200273%_))))
                                                    (let ((_%tl200064200116%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200066200109%_)))
                                                          (_%hd200065200113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200066200109%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200064200116%_))
                                                          (let ((_%e200069200119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200064200116%_))))
                    (let ((_%tl200067200126%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200069200119%_)))
                          (_%hd200068200123%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200069200119%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200067200126%_))
                          (let ((_%e200072200129%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200067200126%_))))
                            (let ((_%tl200070200136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200072200129%_)))
                                  (_%hd200071200133%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200072200129%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200070200136%_))
                                  (_%__kont201001201002%_
                                   _%hd200071200133%_
                                   _%hd200068200123%_
                                   _%hd200065200113%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200018200078%_)))))
                          (let () (declare (not safe)) (_%g200018200078%_)))))
                  (let () (declare (not safe)) (_%g200018200078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200018200078%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200018200078%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200018200078%_)))))
                        (let () (declare (not safe)) (_%g200018200078%_)))))
                (let () (declare (not safe)) (_%g200018200078%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx200324%_)
        (let* ((_%g200328200348%_
                (lambda (_%g200329200344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200329200344%_))))
               (_%g200327200419%_
                (lambda (_%g200329200352%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200329200352%_))
                      (let ((_%e200333200355%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200329200352%_))))
                        (let ((_%hd200332200359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200333200355%_)))
                              (_%tl200331200362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200333200355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200331200362%_))
                              (let ((_g201179_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200331200362%_
                                        '0))))
                                (begin
                                  (let ((_g201180_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201179_)
                                               (##vector-length _g201179_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201180_ 2)))
                                        (error "Context expects 2 values"
                                               _g201180_)))
                                  (let ((_%target200334200365%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201179_ 0)))
                                        (_%tl200336200368%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201179_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200336200368%_))
                                        (letrec ((_%loop200337200371%_
                                                  (lambda (_%hd200335200375%_
                                                           _%decl200341200378%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200335200375%_))
                                                        (let ((_%e200338200381%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200335200375%_))))
                  (let ((_%lp-hd200339200385%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200338200381%_)))
                        (_%lp-tl200340200388%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200338200381%_))))
                    (_%loop200337200371%_
                     _%lp-tl200340200388%_
                     (cons _%lp-hd200339200385%_ _%decl200341200378%_))))
                (let ((_%decl200342200391%_ (reverse _%decl200341200378%_)))
                  ((lambda (_%L200395%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201181
                                  (lambda (_%g200410200413%_ _%g200411200416%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g200410200413%_)
                                          _%g200411200416%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201181 '() _%L200395%_))))
                   _%decl200342200391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200337200371%_
                                           _%target200334200365%_
                                           '()))
                                        (_%g200328200348%_
                                         _%g200329200352%_)))))
                              (_%g200328200348%_ _%g200329200352%_))))
                      (_%g200328200348%_ _%g200329200352%_)))))
          (_%g200327200419%_ _%$stx200324%_))))))
