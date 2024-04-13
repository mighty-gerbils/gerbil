(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g207313_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207320_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207322_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207324_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207326_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207328_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207340_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207342_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207344_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207346_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207348_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx200731%_)
        (let* ((_%g200735200753%_
                (lambda (_%g200736200749%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200736200749%_))))
               (_%g200734200808%_
                (lambda (_%g200736200757%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200736200757%_))
                      (let ((_%e200739200760%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200736200757%_))))
                        (let ((_%hd200740200764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200739200760%_)))
                              (_%tl200741200767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200739200760%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200741200767%_))
                              (let ((_%e200742200770%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200741200767%_))))
                                (let ((_%hd200743200774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200742200770%_)))
                                      (_%tl200744200777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200742200770%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200744200777%_))
                                      (let ((_%e200745200780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200744200777%_))))
                                        (let ((_%hd200746200784%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200745200780%_)))
                                              (_%tl200747200787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200745200780%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200747200787%_))
                                              ((lambda (_%L200790%_
                                                        _%L200792%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L200792%_))
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
                               (cons _%L200792%_ '()))
                         (cons _%L200790%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200735200753%_
                                                      _%g200736200757%_)))
                                               _%hd200746200784%_
                                               _%hd200743200774%_)
                                              (_%g200735200753%_
                                               _%g200736200757%_))))
                                      (_%g200735200753%_ _%g200736200757%_))))
                              (_%g200735200753%_ _%g200736200757%_))))
                      (_%g200735200753%_ _%g200736200757%_)))))
          (_%g200734200808%_ _%$stx200731%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx200812%_)
        (let* ((_%g200816200834%_
                (lambda (_%g200817200830%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200817200830%_))))
               (_%g200815200889%_
                (lambda (_%g200817200838%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200817200838%_))
                      (let ((_%e200820200841%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200817200838%_))))
                        (let ((_%hd200821200845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200820200841%_)))
                              (_%tl200822200848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200820200841%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200822200848%_))
                              (let ((_%e200823200851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200822200848%_))))
                                (let ((_%hd200824200855%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200823200851%_)))
                                      (_%tl200825200858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200823200851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200825200858%_))
                                      (let ((_%e200826200861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200825200858%_))))
                                        (let ((_%hd200827200865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200826200861%_)))
                                              (_%tl200828200868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200826200861%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200828200868%_))
                                              ((lambda (_%L200871%_
                                                        _%L200873%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L200873%_))
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
                               (cons _%L200873%_ '()))
                         (cons _%L200871%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200816200834%_
                                                      _%g200817200838%_)))
                                               _%hd200827200865%_
                                               _%hd200824200855%_)
                                              (_%g200816200834%_
                                               _%g200817200838%_))))
                                      (_%g200816200834%_ _%g200817200838%_))))
                              (_%g200816200834%_ _%g200817200838%_))))
                      (_%g200816200834%_ _%g200817200838%_)))))
          (_%g200815200889%_ _%$stx200812%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx200893%_)
        (let* ((_%g200897200926%_
                (lambda (_%g200898200922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200898200922%_))))
               (_%g200896201026%_
                (lambda (_%g200898200930%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200898200930%_))
                      (let ((_%e200901200933%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200898200930%_))))
                        (let ((_%hd200902200937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200901200933%_)))
                              (_%tl200903200940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200901200933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200903200940%_))
                              (let ((_g207291_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200903200940%_
                                        '0))))
                                (begin
                                  (let ((_g207292_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207291_)
                                               (##vector-length _g207291_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207292_ 2)))
                                        (error "Context expects 2 values"
                                               _g207292_)))
                                  (let ((_%target200904200943%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207291_ 0)))
                                        (_%tl200906200946%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207291_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200906200946%_))
                                        (letrec ((_%loop200907200949%_
                                                  (lambda (_%hd200905200953%_
                                                           _%type200911200956%_
                                                           _%symbol200912200958%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200905200953%_))
                                                        (let ((_%e200908200961%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200905200953%_))))
                  (let ((_%lp-hd200909200965%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200908200961%_)))
                        (_%lp-tl200910200968%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200908200961%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd200909200965%_))
                        (let ((_%e200915200971%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd200909200965%_))))
                          (let ((_%hd200916200975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200915200971%_)))
                                (_%tl200917200978%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200915200971%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200917200978%_))
                                (let ((_%e200918200981%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200917200978%_))))
                                  (let ((_%hd200919200985%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200918200981%_)))
                                        (_%tl200920200988%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200918200981%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200920200988%_))
                                        (_%loop200907200949%_
                                         _%lp-tl200910200968%_
                                         (cons _%hd200919200985%_
                                               _%type200911200956%_)
                                         (cons _%hd200916200975%_
                                               _%symbol200912200958%_))
                                        (_%g200897200926%_
                                         _%g200898200930%_))))
                                (_%g200897200926%_ _%g200898200930%_))))
                        (_%g200897200926%_ _%g200898200930%_))))
                (let ((_%type200913200991%_ (reverse _%type200911200956%_))
                      (_%symbol200914200994%_
                       (reverse _%symbol200912200958%_)))
                  ((lambda (_%L200997%_ _%L200999%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L200997%_
                                _%L200999%_))
                             (let ((__tmp207293
                                    (lambda (_%g201014201018%_
                                             _%g201015201021%_
                                             _%g201016201023%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g201015201021%_
                                                        (cons _%g201014201018%_
                                                              '())))
                                            _%g201016201023%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207293
                                '()
                                _%L200997%_
                                _%L200999%_)))))
                   _%type200913200991%_
                   _%symbol200914200994%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200907200949%_
                                           _%target200904200943%_
                                           '()
                                           '()))
                                        (_%g200897200926%_
                                         _%g200898200930%_)))))
                              (_%g200897200926%_ _%g200898200930%_))))
                      (_%g200897200926%_ _%g200898200930%_)))))
          (_%g200896201026%_ _%$stx200893%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx201031%_)
        (let* ((_%__stx206602206603%_ _%$stx201031%_)
               (_%g201036201078%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206602206603%_)))))
          (let ((_%__kont206605206606%_
                 (lambda (_%L201206%_ _%L201208%_ _%L201209%_ _%L201210%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201210%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201209%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201208%_ '()))
                                           (cons _%L201206%_ '())))))))
                (_%__kont206607206608%_
                 (lambda (_%L201125%_ _%L201127%_ _%L201128%_ _%L201129%_)
                   (cons _%L201129%_
                         (cons _%L201128%_
                               (cons _%L201127%_
                                     (cons _%L201125%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match206641206642%_
                   (lambda (_%e201042201156%_
                            _%hd201043201160%_
                            _%tl201044201163%_
                            _%e201045201166%_
                            _%hd201046201170%_
                            _%tl201047201173%_
                            _%e201048201176%_
                            _%hd201049201180%_
                            _%tl201050201183%_
                            _%e201051201186%_
                            _%hd201052201190%_
                            _%tl201053201193%_
                            _%e201054201196%_
                            _%hd201055201200%_
                            _%tl201056201203%_)
                     (let ((_%L201206%_ _%hd201055201200%_)
                           (_%L201208%_ _%hd201052201190%_)
                           (_%L201209%_ _%hd201049201180%_)
                           (_%L201210%_ _%hd201046201170%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201210%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201209%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201208%_)))
                           (_%__kont206605206606%_
                            _%L201206%_
                            _%L201208%_
                            _%L201209%_
                            _%L201210%_)
                           (let ()
                             (declare (not safe))
                             (_%g201036201078%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206602206603%_))
                  (let ((_%e201042201156%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206602206603%_))))
                    (let ((_%tl201044201163%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201042201156%_)))
                          (_%hd201043201160%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201042201156%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201044201163%_))
                          (let ((_%e201045201166%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201044201163%_))))
                            (let ((_%tl201047201173%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201045201166%_)))
                                  (_%hd201046201170%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201045201166%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201047201173%_))
                                  (let ((_%e201048201176%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl201047201173%_))))
                                    (let ((_%tl201050201183%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201048201176%_)))
                                          (_%hd201049201180%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201048201176%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201050201183%_))
                                          (let ((_%e201051201186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201050201183%_))))
                                            (let ((_%tl201053201193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201051201186%_)))
                                                  (_%hd201052201190%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201051201186%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201053201193%_))
                                                  (let ((_%e201054201196%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201053201193%_))))
                                                    (let ((_%tl201056201203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201054201196%_)))
                                                          (_%hd201055201200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201054201196%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201056201203%_))
                                                          (_%__match206641206642%_
                                                           _%e201042201156%_
                                                           _%hd201043201160%_
                                                           _%tl201044201163%_
                                                           _%e201045201166%_
                                                           _%hd201046201170%_
                                                           _%tl201047201173%_
                                                           _%e201048201176%_
                                                           _%hd201049201180%_
                                                           _%tl201050201183%_
                                                           _%e201051201186%_
                                                           _%hd201052201190%_
                                                           _%tl201053201193%_
                                                           _%e201054201196%_
                                                           _%hd201055201200%_
                                                           _%tl201056201203%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201036201078%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201053201193%_))
                                                      (_%__kont206607206608%_
                                                       _%hd201052201190%_
                                                       _%hd201049201180%_
                                                       _%hd201046201170%_
                                                       _%hd201043201160%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201036201078%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201036201078%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201036201078%_)))))
                          (let () (declare (not safe)) (_%g201036201078%_)))))
                  (let () (declare (not safe)) (_%g201036201078%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx201235%_)
        (let* ((_%g201239201274%_
                (lambda (_%g201240201270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201240201270%_))))
               (_%g201238201393%_
                (lambda (_%g201240201278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201240201278%_))
                      (let ((_%e201244201281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201240201278%_))))
                        (let ((_%hd201245201285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201244201281%_)))
                              (_%tl201246201288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201244201281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201246201288%_))
                              (let ((_g207294_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201246201288%_
                                        '0))))
                                (begin
                                  (let ((_g207295_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207294_)
                                               (##vector-length _g207294_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207295_ 2)))
                                        (error "Context expects 2 values"
                                               _g207295_)))
                                  (let ((_%target201247201291%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207294_ 0)))
                                        (_%tl201249201294%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207294_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201249201294%_))
                                        (letrec ((_%loop201250201297%_
                                                  (lambda (_%hd201248201301%_
                                                           _%symbol201254201304%_
                                                           _%method201255201306%_
                                                           _%type-t201256201308%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201248201301%_))
                                                        (let ((_%e201251201311%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201248201301%_))))
                  (let ((_%lp-hd201252201315%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201251201311%_)))
                        (_%lp-tl201253201318%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201251201311%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201252201315%_))
                        (let ((_%e201260201321%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201252201315%_))))
                          (let ((_%hd201261201325%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201260201321%_)))
                                (_%tl201262201328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201260201321%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201262201328%_))
                                (let ((_%e201263201331%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201262201328%_))))
                                  (let ((_%hd201264201335%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201263201331%_)))
                                        (_%tl201265201338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201263201331%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201265201338%_))
                                        (let ((_%e201266201341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201265201338%_))))
                                          (let ((_%hd201267201345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201266201341%_)))
                                                (_%tl201268201348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201266201341%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201268201348%_))
                                                (_%loop201250201297%_
                                                 _%lp-tl201253201318%_
                                                 (cons _%hd201267201345%_
                                                       _%symbol201254201304%_)
                                                 (cons _%hd201264201335%_
                                                       _%method201255201306%_)
                                                 (cons _%hd201261201325%_
                                                       _%type-t201256201308%_))
                                                (_%g201239201274%_
                                                 _%g201240201278%_))))
                                        (_%g201239201274%_
                                         _%g201240201278%_))))
                                (_%g201239201274%_ _%g201240201278%_))))
                        (_%g201239201274%_ _%g201240201278%_))))
                (let ((_%symbol201257201351%_ (reverse _%symbol201254201304%_))
                      (_%method201258201354%_ (reverse _%method201255201306%_))
                      (_%type-t201259201356%_
                       (reverse _%type-t201256201308%_)))
                  ((lambda (_%L201359%_ _%L201361%_ _%L201362%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201359%_
                                _%L201361%_
                                _%L201362%_))
                             (let ((__tmp207296
                                    (lambda (_%g201378201383%_
                                             _%g201379201386%_
                                             _%g201380201388%_
                                             _%g201381201390%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g201380201388%_
                                                        (cons _%g201379201386%_
                                                              (cons _%g201378201383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g201381201390%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp207296
                                '()
                                _%L201359%_
                                _%L201361%_
                                _%L201362%_)))))
                   _%symbol201257201351%_
                   _%method201258201354%_
                   _%type-t201259201356%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201250201297%_
                                           _%target201247201291%_
                                           '()
                                           '()
                                           '()))
                                        (_%g201239201274%_
                                         _%g201240201278%_)))))
                              (_%g201239201274%_ _%g201240201278%_))))
                      (_%g201239201274%_ _%g201240201278%_)))))
          (_%g201238201393%_ _%$stx201235%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx201398%_)
        (let* ((_%g201402201435%_
                (lambda (_%g201403201431%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201403201431%_))))
               (_%g201401201549%_
                (lambda (_%g201403201439%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201403201439%_))
                      (let ((_%e201407201442%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201403201439%_))))
                        (let ((_%hd201408201446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201407201442%_)))
                              (_%tl201409201449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201407201442%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201409201449%_))
                              (let ((_%e201410201452%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201409201449%_))))
                                (let ((_%hd201411201456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201410201452%_)))
                                      (_%tl201412201459%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201410201452%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201412201459%_))
                                      (let ((_g207297_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201412201459%_
                                                '0))))
                                        (begin
                                          (let ((_g207298_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207297_)
                                                       (##vector-length
                                                        _g207297_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207298_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207298_)))
                                          (let ((_%target201413201462%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207297_ 0)))
                                                (_%tl201415201465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207297_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201415201465%_))
                                                (letrec ((_%loop201416201468%_
                                                          (lambda (_%hd201414201472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol201420201475%_
                           _%method201421201477%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201414201472%_))
                        (let ((_%e201417201480%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201414201472%_))))
                          (let ((_%lp-hd201418201484%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201417201480%_)))
                                (_%lp-tl201419201487%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201417201480%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd201418201484%_))
                                (let ((_%e201424201490%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd201418201484%_))))
                                  (let ((_%hd201425201494%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201424201490%_)))
                                        (_%tl201426201497%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201424201490%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201426201497%_))
                                        (let ((_%e201427201500%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201426201497%_))))
                                          (let ((_%hd201428201504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201427201500%_)))
                                                (_%tl201429201507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201427201500%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201429201507%_))
                                                (_%loop201416201468%_
                                                 _%lp-tl201419201487%_
                                                 (cons _%hd201428201504%_
                                                       _%symbol201420201475%_)
                                                 (cons _%hd201425201494%_
                                                       _%method201421201477%_))
                                                (_%g201402201435%_
                                                 _%g201403201439%_))))
                                        (_%g201402201435%_
                                         _%g201403201439%_))))
                                (_%g201402201435%_ _%g201403201439%_))))
                        (let ((_%symbol201422201510%_
                               (reverse _%symbol201420201475%_))
                              (_%method201423201513%_
                               (reverse _%method201421201477%_)))
                          ((lambda (_%L201516%_ _%L201518%_ _%L201519%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L201516%_
                                        _%L201518%_))
                                     (let ((__tmp207299
                                            (lambda (_%g201537201541%_
                                                     _%g201538201544%_
                                                     _%g201539201546%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L201519%_
                                                                (cons _%g201538201544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g201537201541%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g201539201546%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp207299
                                        '()
                                        _%L201516%_
                                        _%L201518%_)))))
                           _%symbol201422201510%_
                           _%method201423201513%_
                           _%hd201411201456%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201416201468%_
                                                   _%target201413201462%_
                                                   '()
                                                   '()))
                                                (_%g201402201435%_
                                                 _%g201403201439%_)))))
                                      (_%g201402201435%_ _%g201403201439%_))))
                              (_%g201402201435%_ _%g201403201439%_))))
                      (_%g201402201435%_ _%g201403201439%_)))))
          (_%g201401201549%_ _%$stx201398%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx201554%_)
        (let* ((_%g201558201572%_
                (lambda (_%g201559201568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201559201568%_))))
               (_%g201557201613%_
                (lambda (_%g201559201576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201559201576%_))
                      (let ((_%e201561201579%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201559201576%_))))
                        (let ((_%hd201562201583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201561201579%_)))
                              (_%tl201563201586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201561201579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201563201586%_))
                              (let ((_%e201564201589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201563201586%_))))
                                (let ((_%hd201565201593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201564201589%_)))
                                      (_%tl201566201596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201564201589%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201566201596%_))
                                      ((lambda (_%L201599%_)
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
                                                           (cons _%L201599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201565201593%_)
                                      (_%g201558201572%_ _%g201559201576%_))))
                              (_%g201558201572%_ _%g201559201576%_))))
                      (_%g201558201572%_ _%g201559201576%_)))))
          (_%g201557201613%_ _%$stx201554%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx201617%_)
        (let* ((_%g201621201675%_
                (lambda (_%g201622201671%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201622201671%_))))
               (_%g201620201856%_
                (lambda (_%g201622201679%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201622201679%_))
                      (let ((_%e201634201682%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201622201679%_))))
                        (let ((_%hd201635201686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201634201682%_)))
                              (_%tl201636201689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201634201682%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201636201689%_))
                              (let ((_%e201637201692%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201636201689%_))))
                                (let ((_%hd201638201696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201637201692%_)))
                                      (_%tl201639201699%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201637201692%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201639201699%_))
                                      (let ((_%e201640201702%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201639201699%_))))
                                        (let ((_%hd201641201706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201640201702%_)))
                                              (_%tl201642201709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201640201702%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201642201709%_))
                                              (let ((_%e201643201712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201642201709%_))))
                                                (let ((_%hd201644201716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201643201712%_)))
                                                      (_%tl201645201719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201643201712%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201645201719%_))
                                                      (let ((_%e201646201722%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201645201719%_))))
                (let ((_%hd201647201726%_
                       (let () (declare (not safe)) (##car _%e201646201722%_)))
                      (_%tl201648201729%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201646201722%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201648201729%_))
                      (let ((_%e201649201732%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201648201729%_))))
                        (let ((_%hd201650201736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201649201732%_)))
                              (_%tl201651201739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201649201732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201651201739%_))
                              (let ((_%e201652201742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201651201739%_))))
                                (let ((_%hd201653201746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201652201742%_)))
                                      (_%tl201654201749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201652201742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201654201749%_))
                                      (let ((_%e201655201752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201654201749%_))))
                                        (let ((_%hd201656201756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201655201752%_)))
                                              (_%tl201657201759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201655201752%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201657201759%_))
                                              (let ((_%e201658201762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201657201759%_))))
                                                (let ((_%hd201659201766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201658201762%_)))
                                                      (_%tl201660201769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201658201762%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201660201769%_))
                                                      (let ((_%e201661201772%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201660201769%_))))
                (let ((_%hd201662201776%_
                       (let () (declare (not safe)) (##car _%e201661201772%_)))
                      (_%tl201663201779%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201661201772%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201663201779%_))
                      (let ((_%e201664201782%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201663201779%_))))
                        (let ((_%hd201665201786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201664201782%_)))
                              (_%tl201666201789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201664201782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201666201789%_))
                              (let ((_%e201667201792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201666201789%_))))
                                (let ((_%hd201668201796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201667201792%_)))
                                      (_%tl201669201799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201667201792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201669201799%_))
                                      ((lambda (_%L201802%_
                                                _%L201804%_
                                                _%L201805%_
                                                _%L201806%_
                                                _%L201807%_
                                                _%L201808%_
                                                _%L201809%_
                                                _%L201810%_
                                                _%L201811%_
                                                _%L201812%_
                                                _%L201813%_)
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
                                                           (cons _%L201813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L201812%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L201811%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201810%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201809%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201808%_ '()))
                                           (cons _%L201807%_
                                                 (cons _%L201806%_
                                                       (cons _%L201805%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201804%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L201802%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd201668201796%_
                                       _%hd201665201786%_
                                       _%hd201662201776%_
                                       _%hd201659201766%_
                                       _%hd201656201756%_
                                       _%hd201653201746%_
                                       _%hd201650201736%_
                                       _%hd201647201726%_
                                       _%hd201644201716%_
                                       _%hd201641201706%_
                                       _%hd201638201696%_)
                                      (_%g201621201675%_ _%g201622201679%_))))
                              (_%g201621201675%_ _%g201622201679%_))))
                      (_%g201621201675%_ _%g201622201679%_))))
              (_%g201621201675%_ _%g201622201679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201621201675%_
                                               _%g201622201679%_))))
                                      (_%g201621201675%_ _%g201622201679%_))))
                              (_%g201621201675%_ _%g201622201679%_))))
                      (_%g201621201675%_ _%g201622201679%_))))
              (_%g201621201675%_ _%g201622201679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201621201675%_
                                               _%g201622201679%_))))
                                      (_%g201621201675%_ _%g201622201679%_))))
                              (_%g201621201675%_ _%g201622201679%_))))
                      (_%g201621201675%_ _%g201622201679%_)))))
          (_%g201620201856%_ _%$stx201617%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx201860%_)
        (let* ((_%g201864201878%_
                (lambda (_%g201865201874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201865201874%_))))
               (_%g201863201919%_
                (lambda (_%g201865201882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201865201882%_))
                      (let ((_%e201867201885%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201865201882%_))))
                        (let ((_%hd201868201889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201867201885%_)))
                              (_%tl201869201892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201867201885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201869201892%_))
                              (let ((_%e201870201895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201869201892%_))))
                                (let ((_%hd201871201899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201870201895%_)))
                                      (_%tl201872201902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201870201895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201872201902%_))
                                      ((lambda (_%L201905%_)
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
                                                           (cons _%L201905%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201871201899%_)
                                      (_%g201864201878%_ _%g201865201882%_))))
                              (_%g201864201878%_ _%g201865201882%_))))
                      (_%g201864201878%_ _%g201865201882%_)))))
          (_%g201863201919%_ _%$stx201860%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx201923%_)
        (let* ((_%g201927201941%_
                (lambda (_%g201928201937%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201928201937%_))))
               (_%g201926201982%_
                (lambda (_%g201928201945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201928201945%_))
                      (let ((_%e201930201948%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201928201945%_))))
                        (let ((_%hd201931201952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201930201948%_)))
                              (_%tl201932201955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201930201948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201932201955%_))
                              (let ((_%e201933201958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201932201955%_))))
                                (let ((_%hd201934201962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201933201958%_)))
                                      (_%tl201935201965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201933201958%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201935201965%_))
                                      ((lambda (_%L201968%_)
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
                                                           (cons _%L201968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201934201962%_)
                                      (_%g201927201941%_ _%g201928201945%_))))
                              (_%g201927201941%_ _%g201928201945%_))))
                      (_%g201927201941%_ _%g201928201945%_)))))
          (_%g201926201982%_ _%$stx201923%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx201986%_)
        (let* ((_%g201990202012%_
                (lambda (_%g201991202008%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201991202008%_))))
               (_%g201989202081%_
                (lambda (_%g201991202016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201991202016%_))
                      (let ((_%e201995202019%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201991202016%_))))
                        (let ((_%hd201996202023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201995202019%_)))
                              (_%tl201997202026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201995202019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201997202026%_))
                              (let ((_%e201998202029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201997202026%_))))
                                (let ((_%hd201999202033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201998202029%_)))
                                      (_%tl202000202036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201998202029%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202000202036%_))
                                      (let ((_%e202001202039%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202000202036%_))))
                                        (let ((_%hd202002202043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202001202039%_)))
                                              (_%tl202003202046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202001202039%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202003202046%_))
                                              (let ((_%e202004202049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202003202046%_))))
                                                (let ((_%hd202005202053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202004202049%_)))
                                                      (_%tl202006202056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202004202049%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202006202056%_))
                                                      ((lambda (_%L202059%_
                                                                _%L202061%_
                                                                _%L202062%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202062%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202061%_ '()))
                                   (cons _%L202059%_ '())))))
               _%hd202005202053%_
               _%hd202002202043%_
               _%hd201999202033%_)
              (_%g201990202012%_ _%g201991202016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201990202012%_
                                               _%g201991202016%_))))
                                      (_%g201990202012%_ _%g201991202016%_))))
                              (_%g201990202012%_ _%g201991202016%_))))
                      (_%g201990202012%_ _%g201991202016%_)))))
          (_%g201989202081%_ _%$stx201986%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx202085%_)
        (let* ((_%g202089202111%_
                (lambda (_%g202090202107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202090202107%_))))
               (_%g202088202180%_
                (lambda (_%g202090202115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202090202115%_))
                      (let ((_%e202094202118%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202090202115%_))))
                        (let ((_%hd202095202122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202094202118%_)))
                              (_%tl202096202125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202094202118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202096202125%_))
                              (let ((_%e202097202128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202096202125%_))))
                                (let ((_%hd202098202132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202097202128%_)))
                                      (_%tl202099202135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202097202128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202099202135%_))
                                      (let ((_%e202100202138%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202099202135%_))))
                                        (let ((_%hd202101202142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202100202138%_)))
                                              (_%tl202102202145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202100202138%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202102202145%_))
                                              (let ((_%e202103202148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202102202145%_))))
                                                (let ((_%hd202104202152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202103202148%_)))
                                                      (_%tl202105202155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202103202148%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202105202155%_))
                                                      ((lambda (_%L202158%_
                                                                _%L202160%_
                                                                _%L202161%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202161%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202160%_ '()))
                                   (cons _%L202158%_ '())))))
               _%hd202104202152%_
               _%hd202101202142%_
               _%hd202098202132%_)
              (_%g202089202111%_ _%g202090202115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202089202111%_
                                               _%g202090202115%_))))
                                      (_%g202089202111%_ _%g202090202115%_))))
                              (_%g202089202111%_ _%g202090202115%_))))
                      (_%g202089202111%_ _%g202090202115%_)))))
          (_%g202088202180%_ _%$stx202085%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx202184%_)
        (let* ((_%g202188202202%_
                (lambda (_%g202189202198%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202189202198%_))))
               (_%g202187202243%_
                (lambda (_%g202189202206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202189202206%_))
                      (let ((_%e202191202209%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202189202206%_))))
                        (let ((_%hd202192202213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202191202209%_)))
                              (_%tl202193202216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202191202209%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202193202216%_))
                              (let ((_%e202194202219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202193202216%_))))
                                (let ((_%hd202195202223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202194202219%_)))
                                      (_%tl202196202226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202194202219%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202196202226%_))
                                      ((lambda (_%L202229%_)
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
                                                           (cons _%L202229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202195202223%_)
                                      (_%g202188202202%_ _%g202189202206%_))))
                              (_%g202188202202%_ _%g202189202206%_))))
                      (_%g202188202202%_ _%g202189202206%_)))))
          (_%g202187202243%_ _%$stx202184%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx202247%_)
        (let* ((_%g202251202269%_
                (lambda (_%g202252202265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202252202265%_))))
               (_%g202250202324%_
                (lambda (_%g202252202273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202252202273%_))
                      (let ((_%e202255202276%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202252202273%_))))
                        (let ((_%hd202256202280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202255202276%_)))
                              (_%tl202257202283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202255202276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202257202283%_))
                              (let ((_%e202258202286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202257202283%_))))
                                (let ((_%hd202259202290%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202258202286%_)))
                                      (_%tl202260202293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202258202286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202260202293%_))
                                      (let ((_%e202261202296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202260202293%_))))
                                        (let ((_%hd202262202300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202261202296%_)))
                                              (_%tl202263202303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202261202296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202263202303%_))
                                              ((lambda (_%L202306%_
                                                        _%L202308%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202308%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202306%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202262202300%_
                                               _%hd202259202290%_)
                                              (_%g202251202269%_
                                               _%g202252202273%_))))
                                      (_%g202251202269%_ _%g202252202273%_))))
                              (_%g202251202269%_ _%g202252202273%_))))
                      (_%g202251202269%_ _%g202252202273%_)))))
          (_%g202250202324%_ _%$stx202247%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx202328%_)
        (let* ((_%__stx206670206671%_ _%$stx202328%_)
               (_%g202335202396%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206670206671%_)))))
          (let ((_%__kont206673206674%_
                 (lambda (_%L202634%_ _%L202636%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202636%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202634%_ '()))
                                     '())))))
                (_%__kont206675206676%_
                 (lambda (_%L202573%_ _%L202575%_ _%L202576%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202576%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202575%_ '()))
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
                                 (cons _%L202573%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont206677206678%_
                 (lambda (_%L202497%_ _%L202499%_)
                   (cons _%L202499%_ (cons _%L202497%_ (cons '#f '())))))
                (_%__kont206679206680%_
                 (lambda (_%L202447%_ _%L202449%_ _%L202450%_)
                   (cons _%L202450%_
                         (cons _%L202449%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L202447%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206670206671%_))
                (let ((_%e202339202604%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206670206671%_))))
                  (let ((_%tl202341202611%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202339202604%_)))
                        (_%hd202340202608%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202339202604%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202341202611%_))
                        (let ((_%e202342202614%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202341202611%_))))
                          (let ((_%tl202344202621%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202342202614%_)))
                                (_%hd202343202618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202342202614%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202344202621%_))
                                (let ((_%e202345202624%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202344202621%_))))
                                  (let ((_%tl202347202631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202345202624%_)))
                                        (_%hd202346202628%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202345202624%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202347202631%_))
                                        (_%__kont206673206674%_
                                         _%hd202346202628%_
                                         _%hd202343202618%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202347202631%_))
                                            (let ((_%e202360202549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202347202631%_))))
                                              (let ((_%tl202362202556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202360202549%_)))
                                                    (_%hd202361202553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202360202549%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202361202553%_))
                                                    (let ((_%e202363202559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202361202553%_))))
                                                      (if (equal? _%e202363202559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202362202556%_))
                      (let ((_%e202364202563%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202362202556%_))))
                        (let ((_%tl202366202570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202364202563%_)))
                              (_%hd202365202567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202364202563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202366202570%_))
                              (_%__kont206675206676%_
                               _%hd202365202567%_
                               _%hd202346202628%_
                               _%hd202343202618%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd202346202628%_))
                                  (let ((_%e202387202433%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202346202628%_))))
                                    (declare (not safe))
                                    (_%g202335202396%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202335202396%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd202346202628%_))
                          (let ((_%e202387202433%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202346202628%_))))
                            (if (equal? _%e202387202433%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202362202556%_))
                                    (_%__kont206679206680%_
                                     _%hd202361202553%_
                                     _%hd202343202618%_
                                     _%hd202340202608%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202335202396%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202335202396%_))))
                          (let () (declare (not safe)) (_%g202335202396%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd202346202628%_))
                      (let ((_%e202387202433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd202346202628%_))))
                        (if (equal? _%e202387202433%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202362202556%_))
                                (_%__kont206679206680%_
                                 _%hd202361202553%_
                                 _%hd202343202618%_
                                 _%hd202340202608%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g202335202396%_)))
                            (let () (declare (not safe)) (_%g202335202396%_))))
                      (let () (declare (not safe)) (_%g202335202396%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd202346202628%_))
                                                        (let ((_%e202387202433%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202346202628%_))))
                  (if (equal? _%e202387202433%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202362202556%_))
                          (_%__kont206679206680%_
                           _%hd202361202553%_
                           _%hd202343202618%_
                           _%hd202340202608%_)
                          (let () (declare (not safe)) (_%g202335202396%_)))
                      (let () (declare (not safe)) (_%g202335202396%_))))
                (let () (declare (not safe)) (_%g202335202396%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd202346202628%_))
                                                (let ((_%e202387202433%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202346202628%_))))
                                                  (declare (not safe))
                                                  (_%g202335202396%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202335202396%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202344202621%_))
                                    (_%__kont206677206678%_
                                     _%hd202343202618%_
                                     _%hd202340202608%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202335202396%_))))))
                        (let () (declare (not safe)) (_%g202335202396%_)))))
                (let () (declare (not safe)) (_%g202335202396%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx202655%_)
        (let* ((_%g202659202688%_
                (lambda (_%g202660202684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202660202684%_))))
               (_%g202658202797%_
                (lambda (_%g202660202692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202660202692%_))
                      (let ((_%e202662202695%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202660202692%_))))
                        (let ((_%hd202663202699%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202662202695%_)))
                              (_%tl202664202702%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202662202695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202664202702%_))
                              (let ((_g207300_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202664202702%_
                                        '0))))
                                (begin
                                  (let ((_g207301_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207300_)
                                               (##vector-length _g207300_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207301_ 2)))
                                        (error "Context expects 2 values"
                                               _g207301_)))
                                  (let ((_%target202665202705%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207300_ 0)))
                                        (_%tl202667202708%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207300_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202667202708%_))
                                        (letrec ((_%loop202668202711%_
                                                  (lambda (_%hd202666202715%_
                                                           _%clause202672202718%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202666202715%_))
                                                        (let ((_%e202669202721%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202666202715%_))))
                  (let ((_%lp-hd202670202725%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202669202721%_)))
                        (_%lp-tl202671202728%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202669202721%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd202670202725%_))
                        (let ((_g207302_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd202670202725%_
                                  '0))))
                          (begin
                            (let ((_g207303_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g207302_)
                                         (##vector-length _g207302_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g207303_ 2)))
                                  (error "Context expects 2 values"
                                         _g207303_)))
                            (let ((_%target202674202731%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207302_ 0)))
                                  (_%tl202676202734%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207302_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202676202734%_))
                                  (letrec ((_%loop202677202737%_
                                            (lambda (_%hd202675202741%_
                                                     _%clause202681202744%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202675202741%_))
                                                  (let ((_%e202678202747%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd202675202741%_))))
                                                    (let ((_%lp-hd202679202751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202678202747%_)))
                                                          (_%lp-tl202680202754%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202678202747%_))))
                                                      (_%loop202677202737%_
                                                       _%lp-tl202680202754%_
                                                       (cons _%lp-hd202679202751%_
                                                             _%clause202681202744%_))))
                                                  (let ((_%clause202682202757%_
                                                         (reverse _%clause202681202744%_)))
                                                    (_%loop202668202711%_
                                                     _%lp-tl202671202728%_
                                                     (cons _%clause202682202757%_
                                                           _%clause202672202718%_)))))))
                                    (_%loop202677202737%_
                                     _%target202674202731%_
                                     '()))
                                  (_%g202659202688%_ _%g202660202692%_)))))
                        (_%g202659202688%_ _%g202660202692%_))))
                (let ((_%clause202673202761%_
                       (reverse _%clause202672202718%_)))
                  ((lambda (_%L202765%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp207304
                                              (lambda (_%g202780202785%_
                                                       _%g202781202788%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp207305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g202782202791%_ _%g202783202794%_)
                             (cons _%g202782202791%_ _%g202783202794%_))))
                      (declare (not safe))
                      (__foldr1 __tmp207305 '() _%g202780202785%_)))
              _%g202781202788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp207304
                                          '()
                                          _%L202765%_)))
                                 '())))
                   _%clause202673202761%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202668202711%_
                                           _%target202665202705%_
                                           '()))
                                        (_%g202659202688%_
                                         _%g202660202692%_)))))
                              (_%g202659202688%_ _%g202660202692%_))))
                      (_%g202659202688%_ _%g202660202692%_)))))
          (_%g202658202797%_ _%$stx202655%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx202803%_)
        (let* ((_%g202807202825%_
                (lambda (_%g202808202821%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202808202821%_))))
               (_%g202806202880%_
                (lambda (_%g202808202829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202808202829%_))
                      (let ((_%e202811202832%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202808202829%_))))
                        (let ((_%hd202812202836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202811202832%_)))
                              (_%tl202813202839%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202811202832%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202813202839%_))
                              (let ((_%e202814202842%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202813202839%_))))
                                (let ((_%hd202815202846%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202814202842%_)))
                                      (_%tl202816202849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202814202842%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202816202849%_))
                                      (let ((_%e202817202852%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202816202849%_))))
                                        (let ((_%hd202818202856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202817202852%_)))
                                              (_%tl202819202859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202817202852%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202819202859%_))
                                              ((lambda (_%L202862%_
                                                        _%L202864%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202864%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202862%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202818202856%_
                                               _%hd202815202846%_)
                                              (_%g202807202825%_
                                               _%g202808202829%_))))
                                      (_%g202807202825%_ _%g202808202829%_))))
                              (_%g202807202825%_ _%g202808202829%_))))
                      (_%g202807202825%_ _%g202808202829%_)))))
          (_%g202806202880%_ _%$stx202803%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx202884%_)
        (let* ((_%g202888202906%_
                (lambda (_%g202889202902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202889202902%_))))
               (_%g202887202961%_
                (lambda (_%g202889202910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202889202910%_))
                      (let ((_%e202892202913%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202889202910%_))))
                        (let ((_%hd202893202917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202892202913%_)))
                              (_%tl202894202920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202892202913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202894202920%_))
                              (let ((_%e202895202923%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202894202920%_))))
                                (let ((_%hd202896202927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202895202923%_)))
                                      (_%tl202897202930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202895202923%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202897202930%_))
                                      (let ((_%e202898202933%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202897202930%_))))
                                        (let ((_%hd202899202937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202898202933%_)))
                                              (_%tl202900202940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202898202933%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202900202940%_))
                                              ((lambda (_%L202943%_
                                                        _%L202945%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202945%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202943%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202899202937%_
                                               _%hd202896202927%_)
                                              (_%g202888202906%_
                                               _%g202889202910%_))))
                                      (_%g202888202906%_ _%g202889202910%_))))
                              (_%g202888202906%_ _%g202889202910%_))))
                      (_%g202888202906%_ _%g202889202910%_)))))
          (_%g202887202961%_ _%$stx202884%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx202965%_)
        (let* ((_%g202969202998%_
                (lambda (_%g202970202994%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202970202994%_))))
               (_%g202968203098%_
                (lambda (_%g202970203002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202970203002%_))
                      (let ((_%e202973203005%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202970203002%_))))
                        (let ((_%hd202974203009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202973203005%_)))
                              (_%tl202975203012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202973203005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202975203012%_))
                              (let ((_g207306_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202975203012%_
                                        '0))))
                                (begin
                                  (let ((_g207307_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207306_)
                                               (##vector-length _g207306_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207307_ 2)))
                                        (error "Context expects 2 values"
                                               _g207307_)))
                                  (let ((_%target202976203015%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207306_ 0)))
                                        (_%tl202978203018%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207306_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202978203018%_))
                                        (letrec ((_%loop202979203021%_
                                                  (lambda (_%hd202977203025%_
                                                           _%rule202983203028%_
                                                           _%proc202984203030%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202977203025%_))
                                                        (let ((_%e202980203033%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202977203025%_))))
                  (let ((_%lp-hd202981203037%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202980203033%_)))
                        (_%lp-tl202982203040%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202980203033%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202981203037%_))
                        (let ((_%e202987203043%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202981203037%_))))
                          (let ((_%hd202988203047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202987203043%_)))
                                (_%tl202989203050%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202987203043%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202989203050%_))
                                (let ((_%e202990203053%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202989203050%_))))
                                  (let ((_%hd202991203057%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202990203053%_)))
                                        (_%tl202992203060%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202990203053%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202992203060%_))
                                        (_%loop202979203021%_
                                         _%lp-tl202982203040%_
                                         (cons _%hd202991203057%_
                                               _%rule202983203028%_)
                                         (cons _%hd202988203047%_
                                               _%proc202984203030%_))
                                        (_%g202969202998%_
                                         _%g202970203002%_))))
                                (_%g202969202998%_ _%g202970203002%_))))
                        (_%g202969202998%_ _%g202970203002%_))))
                (let ((_%rule202985203063%_ (reverse _%rule202983203028%_))
                      (_%proc202986203066%_ (reverse _%proc202984203030%_)))
                  ((lambda (_%L203069%_ _%L203071%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203069%_
                                _%L203071%_))
                             (let ((__tmp207308
                                    (lambda (_%g203086203090%_
                                             _%g203087203093%_
                                             _%g203088203095%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g203087203093%_
                                                        (cons _%g203086203090%_
                                                              '())))
                                            _%g203088203095%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207308
                                '()
                                _%L203069%_
                                _%L203071%_)))))
                   _%rule202985203063%_
                   _%proc202986203066%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202979203021%_
                                           _%target202976203015%_
                                           '()
                                           '()))
                                        (_%g202969202998%_
                                         _%g202970203002%_)))))
                              (_%g202969202998%_ _%g202970203002%_))))
                      (_%g202969202998%_ _%g202970203002%_)))))
          (_%g202968203098%_ _%$stx202965%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx203103%_)
        (let* ((_%g203107203125%_
                (lambda (_%g203108203121%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203108203121%_))))
               (_%g203106203180%_
                (lambda (_%g203108203129%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203108203129%_))
                      (let ((_%e203111203132%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203108203129%_))))
                        (let ((_%hd203112203136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203111203132%_)))
                              (_%tl203113203139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203111203132%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203113203139%_))
                              (let ((_%e203114203142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203113203139%_))))
                                (let ((_%hd203115203146%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203114203142%_)))
                                      (_%tl203116203149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203114203142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203116203149%_))
                                      (let ((_%e203117203152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203116203149%_))))
                                        (let ((_%hd203118203156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203117203152%_)))
                                              (_%tl203119203159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203117203152%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203119203159%_))
                                              ((lambda (_%L203162%_
                                                        _%L203164%_)
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
                                                   (cons _%L203164%_ '()))
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
                 (cons _%L203162%_ '())))
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
                                   (cons _%L203164%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203118203156%_
                                               _%hd203115203146%_)
                                              (_%g203107203125%_
                                               _%g203108203129%_))))
                                      (_%g203107203125%_ _%g203108203129%_))))
                              (_%g203107203125%_ _%g203108203129%_))))
                      (_%g203107203125%_ _%g203108203129%_)))))
          (_%g203106203180%_ _%$stx203103%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx203184%_)
        (let* ((_%__stx206788206789%_ _%$stx203184%_)
               (_%g203189203214%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206788206789%_)))))
          (let ((_%__kont206791206792%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont206793206794%_
                 (lambda (_%L203261%_ _%L203263%_ _%L203264%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L203264%_ (cons _%L203263%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L203261%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206788206789%_))
                (let ((_%e203191203290%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206788206789%_))))
                  (let ((_%tl203193203297%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203191203290%_)))
                        (_%hd203192203294%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203191203290%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl203193203297%_))
                        (_%__kont206791206792%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203193203297%_))
                            (let ((_%e203200203231%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl203193203297%_))))
                              (let ((_%tl203202203238%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203200203231%_)))
                                    (_%hd203201203235%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203200203231%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd203201203235%_))
                                    (let ((_%e203203203241%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd203201203235%_))))
                                      (let ((_%tl203205203248%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203203203241%_)))
                                            (_%hd203204203245%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203203203241%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203205203248%_))
                                            (let ((_%e203206203251%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203205203248%_))))
                                              (let ((_%tl203208203258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203206203251%_)))
                                                    (_%hd203207203255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203206203251%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203208203258%_))
                                                    (_%__kont206793206794%_
                                                     _%tl203202203238%_
                                                     _%hd203207203255%_
                                                     _%hd203204203245%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203189203214%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203189203214%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203189203214%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203189203214%_))))))
                (let () (declare (not safe)) (_%g203189203214%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx203308%_)
        (let* ((_%__stx206832206833%_ _%$stx203308%_)
               (_%g203313203344%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206832206833%_)))))
          (let ((_%__kont206835206836%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont206837206838%_
                 (lambda (_%L203411%_ _%L203413%_ _%L203414%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L203414%_
                                           (let ((__tmp207309
                                                  (lambda (_%g203434203437%_
                                                           _%g203435203440%_)
                                                    (cons _%g203434203437%_
                                                          _%g203435203440%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp207309
                                              '()
                                              _%L203413%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L203411%_)
                                     '()))))))
            (let ((_%__match206875206876%_
                   (lambda (_%e203321203351%_
                            _%hd203322203355%_
                            _%tl203323203358%_
                            _%e203324203361%_
                            _%hd203325203365%_
                            _%tl203326203368%_
                            _%e203327203371%_
                            _%hd203328203375%_
                            _%tl203329203378%_
                            _%__splice206839206840%_
                            _%target203330203381%_
                            _%tl203332203384%_)
                     (letrec ((_%loop203333203387%_
                               (lambda (_%hd203331203391%_ _%sig203337203394%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203331203391%_))
                                     (let ((_%e203334203397%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd203331203391%_))))
                                       (let ((_%lp-tl203336203404%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203334203397%_)))
                                             (_%lp-hd203335203401%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203334203397%_))))
                                         (_%loop203333203387%_
                                          _%lp-tl203336203404%_
                                          (cons _%lp-hd203335203401%_
                                                _%sig203337203394%_))))
                                     (let ((_%sig203338203407%_
                                            (reverse _%sig203337203394%_)))
                                       (_%__kont206837206838%_
                                        _%tl203326203368%_
                                        _%sig203338203407%_
                                        _%hd203328203375%_))))))
                       (_%loop203333203387%_ _%target203330203381%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206832206833%_))
                  (let ((_%e203315203450%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206832206833%_))))
                    (let ((_%tl203317203457%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203315203450%_)))
                          (_%hd203316203454%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203315203450%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203317203457%_))
                          (_%__kont206835206836%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203317203457%_))
                              (let ((_%e203324203361%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203317203457%_))))
                                (let ((_%tl203326203368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203324203361%_)))
                                      (_%hd203325203365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203324203361%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203325203365%_))
                                      (let ((_%e203327203371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203325203365%_))))
                                        (let ((_%tl203329203378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203327203371%_)))
                                              (_%hd203328203375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203327203371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203329203378%_))
                                              (let ((_%__splice206839206840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203329203378%_
                                                        '0))))
                                                (let ((_%tl203332203384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206839206840%_
                                                          '1)))
                                                      (_%target203330203381%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206839206840%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203332203384%_))
                                                      (_%__match206875206876%_
                                                       _%e203315203450%_
                                                       _%hd203316203454%_
                                                       _%tl203317203457%_
                                                       _%e203324203361%_
                                                       _%hd203325203365%_
                                                       _%tl203326203368%_
                                                       _%e203327203371%_
                                                       _%hd203328203375%_
                                                       _%tl203329203378%_
                                                       _%__splice206839206840%_
                                                       _%target203330203381%_
                                                       _%tl203332203384%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203313203344%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203313203344%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203313203344%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203313203344%_))))))
                  (let () (declare (not safe)) (_%g203313203344%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx203469%_)
        (let* ((_%__stx206878206879%_ _%$stx203469%_)
               (_%g203474203521%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206878206879%_)))))
          (let ((_%__kont206881206882%_
                 (lambda (_%L203683%_ _%L203685%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L203685%_
                               (let ((__tmp207310
                                      (lambda (_%g203705203708%_
                                               _%g203706203711%_)
                                        (cons _%g203705203708%_
                                              _%g203706203711%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207310 '() _%L203683%_))))))
                (_%__kont206885206886%_
                 (lambda (_%L203578%_ _%L203580%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L203580%_
                               (let ((__tmp207311
                                      (lambda (_%g203597203600%_
                                               _%g203598203603%_)
                                        (cons _%g203597203600%_
                                              _%g203598203603%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207311 '() _%L203578%_)))))))
            (let* ((_%__match206945206946%_
                    (lambda (_%e203501203528%_
                             _%hd203502203532%_
                             _%tl203503203535%_
                             _%e203504203538%_
                             _%hd203505203542%_
                             _%tl203506203545%_
                             _%__splice206887206888%_
                             _%target203507203548%_
                             _%tl203509203551%_)
                      (letrec ((_%loop203510203554%_
                                (lambda (_%hd203508203558%_
                                         _%sig203514203561%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203508203558%_))
                                      (let ((_%e203511203564%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203508203558%_))))
                                        (let ((_%lp-tl203513203571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203511203564%_)))
                                              (_%lp-hd203512203568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203511203564%_))))
                                          (_%loop203510203554%_
                                           _%lp-tl203513203571%_
                                           (cons _%lp-hd203512203568%_
                                                 _%sig203514203561%_))))
                                      (let ((_%sig203515203574%_
                                             (reverse _%sig203514203561%_)))
                                        (_%__kont206885206886%_
                                         _%sig203515203574%_
                                         _%hd203505203542%_))))))
                        (_%loop203510203554%_ _%target203507203548%_ '()))))
                   (_%__match206937206938%_
                    (lambda (_%e203501203528%_
                             _%hd203502203532%_
                             _%tl203503203535%_
                             _%e203504203538%_
                             _%hd203505203542%_
                             _%tl203506203545%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl203506203545%_))
                          (let ((_%__splice206887206888%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl203506203545%_
                                    '0))))
                            (let ((_%tl203509203551%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice206887206888%_
                                      '1)))
                                  (_%target203507203548%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice206887206888%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203509203551%_))
                                  (_%__match206945206946%_
                                   _%e203501203528%_
                                   _%hd203502203532%_
                                   _%tl203503203535%_
                                   _%e203504203538%_
                                   _%hd203505203542%_
                                   _%tl203506203545%_
                                   _%__splice206887206888%_
                                   _%target203507203548%_
                                   _%tl203509203551%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g203474203521%_)))))
                          (let () (declare (not safe)) (_%g203474203521%_)))))
                   (_%__match206925206926%_
                    (lambda (_%e203478203613%_
                             _%hd203479203617%_
                             _%tl203480203620%_
                             _%e203481203623%_
                             _%hd203482203627%_
                             _%tl203483203630%_
                             _%e203484203633%_
                             _%hd203485203637%_
                             _%tl203486203640%_
                             _%e203487203643%_
                             _%hd203488203647%_
                             _%tl203489203650%_
                             _%__splice206883206884%_
                             _%target203490203653%_
                             _%tl203492203656%_)
                      (letrec ((_%loop203493203659%_
                                (lambda (_%hd203491203663%_
                                         _%sig203497203666%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203491203663%_))
                                      (let ((_%e203494203669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203491203663%_))))
                                        (let ((_%lp-tl203496203676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203494203669%_)))
                                              (_%lp-hd203495203673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203494203669%_))))
                                          (_%loop203493203659%_
                                           _%lp-tl203496203676%_
                                           (cons _%lp-hd203495203673%_
                                                 _%sig203497203666%_))))
                                      (let ((_%sig203498203679%_
                                             (reverse _%sig203497203666%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203486203640%_))
                                            (_%__kont206881206882%_
                                             _%sig203498203679%_
                                             _%hd203482203627%_)
                                            (_%__match206937206938%_
                                             _%e203478203613%_
                                             _%hd203479203617%_
                                             _%tl203480203620%_
                                             _%e203481203623%_
                                             _%hd203482203627%_
                                             _%tl203483203630%_)))))))
                        (_%loop203493203659%_ _%target203490203653%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206878206879%_))
                  (let ((_%e203478203613%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206878206879%_))))
                    (let ((_%tl203480203620%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203478203613%_)))
                          (_%hd203479203617%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203478203613%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203480203620%_))
                          (let ((_%e203481203623%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203480203620%_))))
                            (let ((_%tl203483203630%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203481203623%_)))
                                  (_%hd203482203627%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203481203623%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203483203630%_))
                                  (let ((_%e203484203633%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203483203630%_))))
                                    (let ((_%tl203486203640%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203484203633%_)))
                                          (_%hd203485203637%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203484203633%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd203485203637%_))
                                          (let ((_%e203487203643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd203485203637%_))))
                                            (let ((_%tl203489203650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203487203643%_)))
                                                  (_%hd203488203647%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203487203643%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd203488203647%_))
                                                  (if (let ((__tmp207312
                                                             |gxc[1]#_g207313_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp207312
                                                         _%hd203488203647%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl203489203650%_))
                                                          (let ((_%__splice206883206884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203489203650%_ '0))))
                    (let ((_%tl203492203656%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206883206884%_ '1)))
                          (_%target203490203653%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206883206884%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203492203656%_))
                          (_%__match206925206926%_
                           _%e203478203613%_
                           _%hd203479203617%_
                           _%tl203480203620%_
                           _%e203481203623%_
                           _%hd203482203627%_
                           _%tl203483203630%_
                           _%e203484203633%_
                           _%hd203485203637%_
                           _%tl203486203640%_
                           _%e203487203643%_
                           _%hd203488203647%_
                           _%tl203489203650%_
                           _%__splice206883206884%_
                           _%target203490203653%_
                           _%tl203492203656%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203483203630%_))
                              (let ((_%__splice206887206888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203483203630%_
                                        '0))))
                                (let ((_%tl203509203551%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice206887206888%_
                                          '1)))
                                      (_%target203507203548%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice206887206888%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203509203551%_))
                                      (_%__match206945206946%_
                                       _%e203478203613%_
                                       _%hd203479203617%_
                                       _%tl203480203620%_
                                       _%e203481203623%_
                                       _%hd203482203627%_
                                       _%tl203483203630%_
                                       _%__splice206887206888%_
                                       _%target203507203548%_
                                       _%tl203509203551%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g203474203521%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203474203521%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl203483203630%_))
                      (let ((_%__splice206887206888%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl203483203630%_
                                '0))))
                        (let ((_%tl203509203551%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206887206888%_ '1)))
                              (_%target203507203548%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206887206888%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203509203551%_))
                              (_%__match206945206946%_
                               _%e203478203613%_
                               _%hd203479203617%_
                               _%tl203480203620%_
                               _%e203481203623%_
                               _%hd203482203627%_
                               _%tl203483203630%_
                               _%__splice206887206888%_
                               _%target203507203548%_
                               _%tl203509203551%_)
                              (let ()
                                (declare (not safe))
                                (_%g203474203521%_)))))
                      (let () (declare (not safe)) (_%g203474203521%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl203483203630%_))
                  (let ((_%__splice206887206888%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203483203630%_ '0))))
                    (let ((_%tl203509203551%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206887206888%_ '1)))
                          (_%target203507203548%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206887206888%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203509203551%_))
                          (_%__match206945206946%_
                           _%e203478203613%_
                           _%hd203479203617%_
                           _%tl203480203620%_
                           _%e203481203623%_
                           _%hd203482203627%_
                           _%tl203483203630%_
                           _%__splice206887206888%_
                           _%target203507203548%_
                           _%tl203509203551%_)
                          (let () (declare (not safe)) (_%g203474203521%_)))))
                  (let () (declare (not safe)) (_%g203474203521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203483203630%_))
                                                      (let ((_%__splice206887206888%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl203483203630%_ '0))))
                (let ((_%tl203509203551%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206887206888%_ '1)))
                      (_%target203507203548%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206887206888%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203509203551%_))
                      (_%__match206945206946%_
                       _%e203478203613%_
                       _%hd203479203617%_
                       _%tl203480203620%_
                       _%e203481203623%_
                       _%hd203482203627%_
                       _%tl203483203630%_
                       _%__splice206887206888%_
                       _%target203507203548%_
                       _%tl203509203551%_)
                      (let () (declare (not safe)) (_%g203474203521%_)))))
              (let () (declare (not safe)) (_%g203474203521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203483203630%_))
                                              (let ((_%__splice206887206888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203483203630%_
                                                        '0))))
                                                (let ((_%tl203509203551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206887206888%_
                                                          '1)))
                                                      (_%target203507203548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206887206888%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203509203551%_))
                                                      (_%__match206945206946%_
                                                       _%e203478203613%_
                                                       _%hd203479203617%_
                                                       _%tl203480203620%_
                                                       _%e203481203623%_
                                                       _%hd203482203627%_
                                                       _%tl203483203630%_
                                                       _%__splice206887206888%_
                                                       _%target203507203548%_
                                                       _%tl203509203551%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203474203521%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203474203521%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203483203630%_))
                                      (let ((_%__splice206887206888%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203483203630%_
                                                '0))))
                                        (let ((_%tl203509203551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206887206888%_
                                                  '1)))
                                              (_%target203507203548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206887206888%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203509203551%_))
                                              (_%__match206945206946%_
                                               _%e203478203613%_
                                               _%hd203479203617%_
                                               _%tl203480203620%_
                                               _%e203481203623%_
                                               _%hd203482203627%_
                                               _%tl203483203630%_
                                               _%__splice206887206888%_
                                               _%target203507203548%_
                                               _%tl203509203551%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g203474203521%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203474203521%_))))))
                          (let () (declare (not safe)) (_%g203474203521%_)))))
                  (let () (declare (not safe)) (_%g203474203521%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx204868%_ _%id204870%_)
        (let ((_%proc204874%_
               (let ((__tmp207314
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id204870%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207314))))
          (if (procedure? _%proc204874%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx204868%_
                 _%id204870%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx204859%_ _%id204861%_)
        (let ((_%klass204865%_
               (let ((__tmp207315
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id204861%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207315))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass204865%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx204859%_
                 _%id204861%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx204109%_ _%proc204111%_ _%sig204112%_)
        (letrec ((_%signature-arity204114%_
                  (lambda (_%args204791%_)
                    (let _%loop204794%_ ((_%rest204797%_ _%args204791%_)
                                         (_%count204799%_ '0))
                      (let* ((_%rest204800204811%_ _%rest204797%_)
                             (_%E204804204817%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest204800204811%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K204807204848%_
                               (lambda (_%rest204845%_)
                                 (_%loop204794%_
                                  _%rest204845%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count204799%_ '1)))))
                              (_%K204806204837%_ (lambda () _%count204799%_))
                              (_%K204805204825%_
                               (lambda () (cons _%count204799%_ '()))))
                          (let ((_%try-match204802204841%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest204800204811%_))
                                       (_%K204806204837%_)
                                       (_%K204805204825%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest204800204811%_))
                                (let* ((_%tl204809204852%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest204800204811%_)))
                                       (_%rest204856%_ _%tl204809204852%_))
                                  (_%K204807204848%_ _%rest204856%_))
                                (_%try-match204802204841%_))))))))
                 (_%make-signature204116%_
                  (lambda (_%args204673%_
                           _%return204675%_
                           _%effect204676%_
                           _%unchecked204677%_)
                    (let ((__tmp207316
                           (lambda (_%g204678204680%_)
                             (|gxc[1]#verify-class!|
                              _%ctx204109%_
                              _%g204678204680%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp207316 _%args204673%_))
                    (|gxc[1]#verify-class!| _%ctx204109%_ _%return204675%_)
                    (if _%unchecked204677%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx204109%_
                         _%unchecked204677%_)
                        '#!void)
                    (let ((_%arity204684%_
                           (_%signature-arity204114%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args204673%_)))))
                      (if _%effect204676%_
                          (let ((_%effect204687%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect204676%_))))
                            (if (and (list? _%effect204687%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect204687%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx204109%_
                                   _%proc204111%_
                                   _%effect204687%_))))
                          '#!void)
                      (cons _%arity204684%_
                            (cons (let* ((_%g204690204713%_
                                          (lambda (_%g204691204709%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g204691204709%_))))
                                         (_%g204689204787%_
                                          (lambda (_%g204691204717%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g204691204717%_))
                                                (let ((_%e204696204720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g204691204717%_))))
                                                  (let ((_%hd204697204724%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204696204720%_)))
                                                        (_%tl204698204727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204696204720%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204698204727%_))
                                                        (let ((_%e204699204730%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204698204727%_))))
                  (let ((_%hd204700204734%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204699204730%_)))
                        (_%tl204701204737%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204699204730%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204701204737%_))
                        (let ((_%e204702204740%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204701204737%_))))
                          (let ((_%hd204703204744%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204702204740%_)))
                                (_%tl204704204747%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204702204740%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204704204747%_))
                                (let ((_%e204705204750%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204704204747%_))))
                                  (let ((_%hd204706204754%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204705204750%_)))
                                        (_%tl204707204757%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204705204750%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204707204757%_))
                                        ((lambda (_%L204760%_
                                                  _%L204762%_
                                                  _%L204763%_
                                                  _%L204764%_)
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
                           (cons _%L204764%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204763%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L204762%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L204760%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd204706204754%_
                                         _%hd204703204744%_
                                         _%hd204700204734%_
                                         _%hd204697204724%_)
                                        (_%g204690204713%_
                                         _%g204691204717%_))))
                                (_%g204690204713%_ _%g204691204717%_))))
                        (_%g204690204713%_ _%g204691204717%_))))
                (_%g204690204713%_ _%g204691204717%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204690204713%_
                                                 _%g204691204717%_)))))
                                    (_%g204689204787%_
                                     (list _%args204673%_
                                           _%return204675%_
                                           _%effect204676%_
                                           _%unchecked204677%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx204109%_ _%proc204111%_)
          (let* ((_%__stx206956206957%_ _%sig204112%_)
                 (_%g204123204226%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx206956206957%_)))))
            (let ((_%__kont206959206960%_
                   (lambda (_%L204654%_ _%L204656%_)
                     (_%make-signature204116%_
                      _%L204656%_
                      _%L204654%_
                      '#f
                      '#f)))
                  (_%__kont206961206962%_
                   (lambda (_%L204605%_ _%L204607%_ _%L204608%_)
                     (_%make-signature204116%_
                      _%L204608%_
                      _%L204607%_
                      _%L204605%_
                      '#f)))
                  (_%__kont206963206964%_
                   (lambda (_%L204529%_ _%L204531%_ _%L204532%_)
                     (_%make-signature204116%_
                      _%L204532%_
                      _%L204531%_
                      _%L204529%_
                      (let ((__tmp207317
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204111%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207317)))))
                  (_%__kont206965206966%_
                   (lambda (_%L204435%_ _%L204437%_ _%L204438%_ _%L204439%_)
                     (_%make-signature204116%_
                      _%L204439%_
                      _%L204438%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204435%_)))))
                  (_%__kont206967206968%_
                   (lambda (_%L204342%_ _%L204344%_)
                     (_%make-signature204116%_
                      _%L204344%_
                      _%L204342%_
                      '#f
                      (let ((__tmp207318
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204111%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207318)))))
                  (_%__kont206969206970%_
                   (lambda (_%L204277%_ _%L204279%_ _%L204280%_)
                     (_%make-signature204116%_
                      _%L204280%_
                      _%L204279%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204277%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206956206957%_))
                  (let ((_%e204127204634%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206956206957%_))))
                    (let ((_%tl204129204641%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204127204634%_)))
                          (_%hd204128204638%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204127204634%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204129204641%_))
                          (let ((_%e204130204644%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204129204641%_))))
                            (let ((_%tl204132204651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204130204644%_)))
                                  (_%hd204131204648%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204130204644%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204132204651%_))
                                  (_%__kont206959206960%_
                                   _%hd204131204648%_
                                   _%hd204128204638%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204132204651%_))
                                      (let ((_%e204142204581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204132204651%_))))
                                        (let ((_%tl204144204588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204142204581%_)))
                                              (_%hd204143204585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204142204581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd204143204585%_))
                                              (let ((_%e204145204591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204143204585%_))))
                                                (if (equal? _%e204145204591%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204144204588%_))
                                                        (let ((_%e204146204595%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204144204588%_))))
                  (let ((_%tl204148204602%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204146204595%_)))
                        (_%hd204147204599%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204146204595%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204148204602%_))
                        (_%__kont206961206962%_
                         _%hd204147204599%_
                         _%hd204131204648%_
                         _%hd204128204638%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204148204602%_))
                            (let ((_%e204165204515%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204148204602%_))))
                              (let ((_%tl204167204522%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204165204515%_)))
                                    (_%hd204166204519%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204165204515%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd204166204519%_))
                                    (let ((_%e204168204525%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd204166204519%_))))
                                      (if (equal? _%e204168204525%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204167204522%_))
                                              (_%__kont206963206964%_
                                               _%hd204147204599%_
                                               _%hd204131204648%_
                                               _%hd204128204638%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204167204522%_))
                                                  (let ((_%e204190204425%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204167204522%_))))
                                                    (let ((_%tl204192204432%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204190204425%_)))
                                                          (_%hd204191204429%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204190204425%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204192204432%_))
                                                          (_%__kont206965206966%_
                                                           _%hd204191204429%_
                                                           _%hd204147204599%_
                                                           _%hd204131204648%_
                                                           _%hd204128204638%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204123204226%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204123204226%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204123204226%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204123204226%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g204123204226%_))))))
                (let () (declare (not safe)) (_%g204123204226%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e204145204591%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204144204588%_))
                                                            (_%__kont206967206968%_
                                                             _%hd204131204648%_
                                                             _%hd204128204638%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204144204588%_))
                        (let ((_%e204218204267%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204144204588%_))))
                          (let ((_%tl204220204274%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204218204267%_)))
                                (_%hd204219204271%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204218204267%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204220204274%_))
                                (_%__kont206969206970%_
                                 _%hd204219204271%_
                                 _%hd204131204648%_
                                 _%hd204128204638%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204123204226%_)))))
                        (let () (declare (not safe)) (_%g204123204226%_))))
                (let () (declare (not safe)) (_%g204123204226%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204123204226%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204123204226%_))))))
                          (let () (declare (not safe)) (_%g204123204226%_)))))
                  (let () (declare (not safe)) (_%g204123204226%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig203720%_)
        (let* ((_%g203723203803%_
                (lambda (_%g203724203799%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203724203799%_))))
               (_%g203722204105%_
                (lambda (_%g203724203807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203724203807%_))
                      (let ((_%e203730203810%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203724203807%_))))
                        (let ((_%hd203731203814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203730203810%_)))
                              (_%tl203732203817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203730203810%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203732203817%_))
                              (let ((_%e203733203820%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203732203817%_))))
                                (let ((_%hd203734203824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203733203820%_)))
                                      (_%tl203735203827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203733203820%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd203734203824%_))
                                      (let ((_%e203736203830%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203734203824%_))))
                                        (if (equal? _%e203736203830%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl203735203827%_))
                                                (let ((_%e203737203834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl203735203827%_))))
                                                  (let ((_%hd203738203838%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203737203834%_)))
                                                        (_%tl203739203841%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203737203834%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203738203838%_))
                                                        (let ((_%e203740203844%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203738203838%_))))
                  (let ((_%hd203741203848%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203740203844%_)))
                        (_%tl203742203851%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203740203844%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd203741203848%_))
                        (if (let ((__tmp207319 |gxc[1]#_g207320_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp207319
                               _%hd203741203848%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203742203851%_))
                                (let ((_%e203743203854%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203742203851%_))))
                                  (let ((_%hd203744203858%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203743203854%_)))
                                        (_%tl203745203861%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203743203854%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203745203861%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203739203841%_))
                                            (let ((_%e203746203864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203739203841%_))))
                                              (let ((_%hd203747203868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203746203864%_)))
                                                    (_%tl203748203871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203746203864%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd203747203868%_))
                                                    (let ((_%e203749203874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd203747203868%_))))
                                                      (if (equal? _%e203749203874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203748203871%_))
                      (let ((_%e203750203878%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203748203871%_))))
                        (let ((_%hd203751203882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203750203878%_)))
                              (_%tl203752203885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203750203878%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd203751203882%_))
                              (let ((_%e203753203888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd203751203882%_))))
                                (let ((_%hd203754203892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203753203888%_)))
                                      (_%tl203755203895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203753203888%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd203754203892%_))
                                      (if (let ((__tmp207321
                                                 |gxc[1]#_g207322_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp207321
                                             _%hd203754203892%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203755203895%_))
                                              (let ((_%e203756203898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203755203895%_))))
                                                (let ((_%hd203757203902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203756203898%_)))
                                                      (_%tl203758203905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203756203898%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203758203905%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203752203885%_))
                                                          (let ((_%e203759203908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl203752203885%_))))
                    (let ((_%hd203760203912%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203759203908%_)))
                          (_%tl203761203915%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203759203908%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd203760203912%_))
                          (let ((_%e203762203918%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd203760203912%_))))
                            (if (equal? _%e203762203918%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203761203915%_))
                                    (let ((_%e203763203922%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl203761203915%_))))
                                      (let ((_%hd203764203926%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203763203922%_)))
                                            (_%tl203765203929%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203763203922%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd203764203926%_))
                                            (let ((_%e203766203932%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd203764203926%_))))
                                              (let ((_%hd203767203936%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203766203932%_)))
                                                    (_%tl203768203939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203766203932%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd203767203936%_))
                                                    (if (let ((__tmp207323
                                                               |gxc[1]#_g207324_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp207323
                                                           _%hd203767203936%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203768203939%_))
                                                            (let ((_%e203769203942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl203768203939%_))))
                      (let ((_%hd203770203946%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203769203942%_)))
                            (_%tl203771203949%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203769203942%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203771203949%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203765203929%_))
                                (let ((_%e203772203952%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203765203929%_))))
                                  (let ((_%hd203773203956%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203772203952%_)))
                                        (_%tl203774203959%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203772203952%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd203773203956%_))
                                        (let ((_%e203775203962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd203773203956%_))))
                                          (if (equal? _%e203775203962%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203774203959%_))
                                                  (let ((_%e203776203966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203774203959%_))))
                                                    (let ((_%hd203777203970%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203776203966%_)))
                                                          (_%tl203778203973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203776203966%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd203777203970%_))
                                                          (let ((_%e203779203976%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd203777203970%_))))
                    (let ((_%hd203780203980%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203779203976%_)))
                          (_%tl203781203983%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203779203976%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd203780203980%_))
                          (if (let ((__tmp207325 |gxc[1]#_g207326_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp207325
                                 _%hd203780203980%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203781203983%_))
                                  (let ((_%e203782203986%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203781203983%_))))
                                    (let ((_%hd203783203990%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203782203986%_)))
                                          (_%tl203784203993%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203782203986%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203784203993%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203778203973%_))
                                              (let ((_%e203785203996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203778203973%_))))
                                                (let ((_%hd203786204000%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203785203996%_)))
                                                      (_%tl203787204003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203785203996%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd203786204000%_))
                                                      (let ((_%e203788204006%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd203786204000%_))))
                (if (equal? _%e203788204006%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203787204003%_))
                        (let ((_%e203789204010%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203787204003%_))))
                          (let ((_%hd203790204014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203789204010%_)))
                                (_%tl203791204017%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203789204010%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd203790204014%_))
                                (let ((_%e203792204020%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd203790204014%_))))
                                  (let ((_%hd203793204024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203792204020%_)))
                                        (_%tl203794204027%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203792204020%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd203793204024%_))
                                        (if (let ((__tmp207327
                                                   |gxc[1]#_g207328_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp207327
                                               _%hd203793204024%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl203794204027%_))
                                                (let ((_%e203795204030%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl203794204027%_))))
                                                  (let ((_%hd203796204034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203795204030%_)))
                                                        (_%tl203797204037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203795204030%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl203797204037%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl203791204017%_))
                                                            ((lambda (_%L204040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L204042%_
                              _%L204043%_
                              _%L204044%_
                              _%L204045%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L204042%_))
                           (cons _%L204042%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L204044%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204040%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd203796204034%_
                     _%hd203783203990%_
                     _%hd203770203946%_
                     _%hd203757203902%_
                     _%hd203744203858%_)
                    (_%g203723203803%_ _%g203724203807%_))
                (_%g203723203803%_ _%g203724203807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g203723203803%_
                                                 _%g203724203807%_))
                                            (_%g203723203803%_
                                             _%g203724203807%_))
                                        (_%g203723203803%_
                                         _%g203724203807%_))))
                                (_%g203723203803%_ _%g203724203807%_))))
                        (_%g203723203803%_ _%g203724203807%_))
                    (_%g203723203803%_ _%g203724203807%_)))
              (_%g203723203803%_ _%g203724203807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203723203803%_
                                               _%g203724203807%_))
                                          (_%g203723203803%_
                                           _%g203724203807%_))))
                                  (_%g203723203803%_ _%g203724203807%_))
                              (_%g203723203803%_ _%g203724203807%_))
                          (_%g203723203803%_ _%g203724203807%_))))
                  (_%g203723203803%_ _%g203724203807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g203723203803%_
                                                   _%g203724203807%_))
                                              (_%g203723203803%_
                                               _%g203724203807%_)))
                                        (_%g203723203803%_
                                         _%g203724203807%_))))
                                (_%g203723203803%_ _%g203724203807%_))
                            (_%g203723203803%_ _%g203724203807%_))))
                    (_%g203723203803%_ _%g203724203807%_))
                (_%g203723203803%_ _%g203724203807%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g203723203803%_
                                                     _%g203724203807%_))))
                                            (_%g203723203803%_
                                             _%g203724203807%_))))
                                    (_%g203723203803%_ _%g203724203807%_))
                                (_%g203723203803%_ _%g203724203807%_)))
                          (_%g203723203803%_ _%g203724203807%_))))
                  (_%g203723203803%_ _%g203724203807%_))
              (_%g203723203803%_ _%g203724203807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203723203803%_
                                               _%g203724203807%_))
                                          (_%g203723203803%_
                                           _%g203724203807%_))
                                      (_%g203723203803%_ _%g203724203807%_))))
                              (_%g203723203803%_ _%g203724203807%_))))
                      (_%g203723203803%_ _%g203724203807%_))
                  (_%g203723203803%_ _%g203724203807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g203723203803%_
                                                     _%g203724203807%_))))
                                            (_%g203723203803%_
                                             _%g203724203807%_))
                                        (_%g203723203803%_
                                         _%g203724203807%_))))
                                (_%g203723203803%_ _%g203724203807%_))
                            (_%g203723203803%_ _%g203724203807%_))
                        (_%g203723203803%_ _%g203724203807%_))))
                (_%g203723203803%_ _%g203724203807%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g203723203803%_
                                                 _%g203724203807%_))
                                            (_%g203723203803%_
                                             _%g203724203807%_)))
                                      (_%g203723203803%_ _%g203724203807%_))))
                              (_%g203723203803%_ _%g203724203807%_))))
                      (_%g203723203803%_ _%g203724203807%_)))))
          (_%g203722204105%_ _%sig203720%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx204877%_)
        (let* ((_%g204880204898%_
                (lambda (_%g204881204894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204881204894%_))))
               (_%g204879204953%_
                (lambda (_%g204881204902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204881204902%_))
                      (let ((_%e204884204905%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204881204902%_))))
                        (let ((_%hd204885204909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204884204905%_)))
                              (_%tl204886204912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204884204905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204886204912%_))
                              (let ((_%e204887204915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204886204912%_))))
                                (let ((_%hd204888204919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204887204915%_)))
                                      (_%tl204889204922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204887204915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204889204922%_))
                                      (let ((_%e204890204925%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204889204922%_))))
                                        (let ((_%hd204891204929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204890204925%_)))
                                              (_%tl204892204932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204890204925%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204892204932%_))
                                              ((lambda (_%L204935%_
                                                        _%L204937%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L204937%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L204935%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx204877%_
                                                        _%L204937%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx204877%_
                                                        _%L204935%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L204937%_
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
                                                   (cons _%L204935%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204880204898%_
                                                      _%g204881204902%_)))
                                               _%hd204891204929%_
                                               _%hd204888204919%_)
                                              (_%g204880204898%_
                                               _%g204881204902%_))))
                                      (_%g204880204898%_ _%g204881204902%_))))
                              (_%g204880204898%_ _%g204881204902%_))))
                      (_%g204880204898%_ _%g204881204902%_)))))
          (_%g204879204953%_ _%stx204877%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx204957%_)
        (let* ((_%g204960204984%_
                (lambda (_%g204961204980%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204961204980%_))))
               (_%g204959205267%_
                (lambda (_%g204961204988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204961204988%_))
                      (let ((_%e204964204991%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204961204988%_))))
                        (let ((_%hd204965204995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204964204991%_)))
                              (_%tl204966204998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204964204991%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204966204998%_))
                              (let ((_%e204967205001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204966204998%_))))
                                (let ((_%hd204968205005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204967205001%_)))
                                      (_%tl204969205008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204967205001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204969205008%_))
                                      (let ((_g207329_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204969205008%_
                                                '0))))
                                        (begin
                                          (let ((_g207330_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207329_)
                                                       (##vector-length
                                                        _g207329_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207330_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207330_)))
                                          (let ((_%target204970205011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207329_ 0)))
                                                (_%tl204972205014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207329_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204972205014%_))
                                                (letrec ((_%loop204973205017%_
                                                          (lambda (_%hd204971205021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature204977205024%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204971205021%_))
                        (let ((_%e204974205027%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204971205021%_))))
                          (let ((_%lp-hd204975205031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204974205027%_)))
                                (_%lp-tl204976205034%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204974205027%_))))
                            (_%loop204973205017%_
                             _%lp-tl204976205034%_
                             (cons _%lp-hd204975205031%_
                                   _%signature204977205024%_))))
                        (let ((_%signature204978205037%_
                               (reverse _%signature204977205024%_)))
                          ((lambda (_%L205041%_ _%L205043%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205043%_))
                                 (let* ((_%g205061205076%_
                                         (lambda (_%g205062205072%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205062205072%_))))
                                        (_%g205060205255%_
                                         (lambda (_%g205062205080%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205062205080%_))
                                               (let ((_%e205065205083%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205062205080%_))))
                                                 (let ((_%hd205066205087%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205065205083%_)))
                                                       (_%tl205067205090%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205065205083%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205067205090%_))
                                                       (let ((_%e205068205093%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205067205090%_))))
                 (let ((_%hd205069205097%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205068205093%_)))
                       (_%tl205070205100%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205068205093%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl205070205100%_))
                       ((lambda (_%L205103%_ _%L205105%_)
                          (let* ((_%g205121205129%_
                                  (lambda (_%g205122205125%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g205122205125%_))))
                                 (_%g205120205251%_
                                  (lambda (_%g205122205133%_)
                                    ((lambda (_%L205136%_)
                                       (let* ((_%unchecked205149%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L205103%_))
                                              (_%g205152205160%_
                                               (lambda (_%g205153205156%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g205153205156%_))))
                                              (_%g205151205183%_
                                               (lambda (_%g205153205164%_)
                                                 ((lambda (_%L205167%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L205136%_
                                                                (cons _%L205167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g205153205164%_))))
                                         (_%g205151205183%_
                                          (if _%unchecked205149%_
                                              (let* ((_%g205187205202%_
                                                      (lambda (_%g205188205198%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g205188205198%_))))
                                                     (_%g205186205247%_
                                                      (lambda (_%g205188205206%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g205188205206%_))
                                                            (let ((_%e205191205209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g205188205206%_))))
                      (let ((_%hd205192205213%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205191205209%_)))
                            (_%tl205193205216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205191205209%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205193205216%_))
                            (let ((_%e205194205219%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205193205216%_))))
                              (let ((_%hd205195205223%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205194205219%_)))
                                    (_%tl205196205226%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205194205219%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205196205226%_))
                                    ((lambda (_%L205229%_ _%L205231%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L205231%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205105%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L205229%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd205195205223%_
                                     _%hd205192205213%_)
                                    (_%g205187205202%_ _%g205188205206%_))))
                            (_%g205187205202%_ _%g205188205206%_))))
                    (_%g205187205202%_ _%g205188205206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205186205247%_
                                                 _%unchecked205149%_))
                                              '(begin)))))
                                     _%g205122205133%_))))
                            (_%g205120205251%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L205043%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L205105%_ '()))
                   (cons '#f (cons 'signature: (cons _%L205103%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd205069205097%_
                        _%hd205066205087%_)
                       (_%g205061205076%_ _%g205062205080%_))))
               (_%g205061205076%_ _%g205062205080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205061205076%_
                                                _%g205062205080%_)))))
                                   (_%g205060205255%_
                                    (|gxc[1]#parse-signature|
                                     _%stx204957%_
                                     _%L205043%_
                                     (let ((__tmp207331
                                            (lambda (_%g205258205261%_
                                                     _%g205259205264%_)
                                              (cons _%g205258205261%_
                                                    _%g205259205264%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp207331
                                        '()
                                        _%L205041%_)))))
                                 (_%g204960204984%_ _%g204961204988%_)))
                           _%signature204978205037%_
                           _%hd204968205005%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204973205017%_
                                                   _%target204970205011%_
                                                   '()))
                                                (_%g204960204984%_
                                                 _%g204961204988%_)))))
                                      (_%g204960204984%_ _%g204961204988%_))))
                              (_%g204960204984%_ _%g204961204988%_))))
                      (_%g204960204984%_ _%g204961204988%_)))))
          (_%g204959205267%_ _%stx204957%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx205272%_)
        (let* ((_%g205275205299%_
                (lambda (_%g205276205295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205276205295%_))))
               (_%g205274206182%_
                (lambda (_%g205276205303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205276205303%_))
                      (let ((_%e205279205306%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205276205303%_))))
                        (let ((_%hd205280205310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205279205306%_)))
                              (_%tl205281205313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205279205306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205281205313%_))
                              (let ((_%e205282205316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205281205313%_))))
                                (let ((_%hd205283205320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205282205316%_)))
                                      (_%tl205284205323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205282205316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205284205323%_))
                                      (let ((_g207332_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205284205323%_
                                                '0))))
                                        (begin
                                          (let ((_g207333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207332_)
                                                       (##vector-length
                                                        _g207332_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207333_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207333_)))
                                          (let ((_%target205285205326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207332_ 0)))
                                                (_%tl205287205329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207332_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205287205329%_))
                                                (letrec ((_%loop205288205332%_
                                                          (lambda (_%hd205286205336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature205292205339%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205286205336%_))
                        (let ((_%e205289205342%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205286205336%_))))
                          (let ((_%lp-hd205290205346%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205289205342%_)))
                                (_%lp-tl205291205349%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205289205342%_))))
                            (_%loop205288205332%_
                             _%lp-tl205291205349%_
                             (cons _%lp-hd205290205346%_
                                   _%case-signature205292205339%_))))
                        (let ((_%case-signature205293205352%_
                               (reverse _%case-signature205292205339%_)))
                          ((lambda (_%L205356%_ _%L205358%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205358%_))
                                 (let* ((_%signatures205389%_
                                         (map (lambda (_%g205375205377%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx205272%_
                                                 _%L205358%_
                                                 _%g205375205377%_))
                                              (let ((__tmp207334
                                                     (lambda (_%g205380205383%_
                                                              _%g205381205386%_)
                                                       (cons _%g205380205383%_
                                                             _%g205381205386%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp207334
                                                 '()
                                                 _%L205356%_))))
                                        (_%g205392205418%_
                                         (lambda (_%g205393205414%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205393205414%_))))
                                        (_%g205391206178%_
                                         (lambda (_%g205393205422%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g205393205422%_))
                                               (let ((_g207335_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g205393205422%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g207336_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g207335_)
                        (##vector-length _g207335_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g207336_ 2)))
                 (error "Context expects 2 values" _g207336_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target205396205425%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207335_
                                                             0)))
                                                         (_%tl205398205428%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207335_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205398205428%_))
                                                         (letrec ((_%loop205399205431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd205397205435%_
                                    _%sig205403205438%_
                                    _%arity205404205440%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205397205435%_))
                                 (let ((_%e205400205443%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205397205435%_))))
                                   (let ((_%lp-hd205401205447%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205400205443%_)))
                                         (_%lp-tl205402205450%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205400205443%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd205401205447%_))
                                         (let ((_%e205407205453%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd205401205447%_))))
                                           (let ((_%hd205408205457%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205407205453%_)))
                                                 (_%tl205409205460%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205407205453%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205409205460%_))
                                                 (let ((_%e205410205463%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205409205460%_))))
                                                   (let ((_%hd205411205467%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205410205463%_)))
                                                         (_%tl205412205470%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205410205463%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205412205470%_))
                                                         (_%loop205399205431%_
                                                          _%lp-tl205402205450%_
                                                          (cons _%hd205411205467%_
                                                                _%sig205403205438%_)
                                                          (cons _%hd205408205457%_
                                                                _%arity205404205440%_))
                                                         (_%g205392205418%_
                                                          _%g205393205422%_))))
                                                 (_%g205392205418%_
                                                  _%g205393205422%_))))
                                         (_%g205392205418%_
                                          _%g205393205422%_))))
                                 (let ((_%sig205405205473%_
                                        (reverse _%sig205403205438%_))
                                       (_%arity205406205476%_
                                        (reverse _%arity205404205440%_)))
                                   ((lambda (_%L205479%_ _%L205481%_)
                                      (let* ((_%g205498205506%_
                                              (lambda (_%g205499205502%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g205499205502%_))))
                                             (_%g205497206163%_
                                              (lambda (_%g205499205510%_)
                                                ((lambda (_%L205513%_)
                                                   (let* ((_%g205526205534%_
                                                           (lambda (_%g205527205530%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g205527205530%_))))
                  (_%g205525205556%_
                   (lambda (_%g205527205538%_)
                     ((lambda (_%L205541%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L205513%_ (cons _%L205541%_ '()))))
                      _%g205527205538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205525205556%_
                                                      (let ((_g207337_
                                                             (let _%loop205560%_ ((_%rest205563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures205389%_)
                                          (_%unchecked-proc205565%_ '#f)
                                          (_%unchecked-clauses205566%_ '()))
                       (let* ((_%rest205567205575%_ _%rest205563%_)
                              (_%else205569205587%_
                               (lambda ()
                                 (values _%unchecked-proc205565%_
                                         (reverse!
                                          _%unchecked-clauses205566%_))))
                              (_%K205571206028%_
                               (lambda (_%rest205591%_ _%hd205593%_)
                                 (let* ((_%g205595205682%_
                                         (lambda (_%g205596205678%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205596205678%_))))
                                        (_%g205594206024%_
                                         (lambda (_%g205596205686%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205596205686%_))
                                               (let ((_%e205603205689%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205596205686%_))))
                                                 (let ((_%hd205604205693%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205603205689%_)))
                                                       (_%tl205605205696%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205603205689%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205605205696%_))
                                                       (let ((_%e205606205699%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205605205696%_))))
                 (let ((_%hd205607205703%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205606205699%_)))
                       (_%tl205608205706%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205606205699%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd205607205703%_))
                       (let ((_%e205609205709%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd205607205703%_))))
                         (let ((_%hd205610205713%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205609205709%_)))
                               (_%tl205611205716%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205609205709%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl205611205716%_))
                               (let ((_%e205612205719%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl205611205716%_))))
                                 (let ((_%hd205613205723%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205612205719%_)))
                                       (_%tl205614205726%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205612205719%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd205613205723%_))
                                       (let ((_%e205615205729%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd205613205723%_))))
                                         (if (equal? _%e205615205729%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205614205726%_))
                                                 (let ((_%e205616205733%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205614205726%_))))
                                                   (let ((_%hd205617205737%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205616205733%_)))
                                                         (_%tl205618205740%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205616205733%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd205617205737%_))
                                                         (let ((_%e205619205743%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd205617205737%_))))
                   (let ((_%hd205620205747%_
                          (let ()
                            (declare (not safe))
                            (##car _%e205619205743%_)))
                         (_%tl205621205750%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e205619205743%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd205620205747%_))
                         (if (let ((__tmp207339 |gxc[1]#_g207340_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp207339
                                _%hd205620205747%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205621205750%_))
                                 (let ((_%e205622205753%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205621205750%_))))
                                   (let ((_%hd205623205757%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205622205753%_)))
                                         (_%tl205624205760%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205622205753%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl205624205760%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl205618205740%_))
                                             (let ((_%e205625205763%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl205618205740%_))))
                                               (let ((_%hd205626205767%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205625205763%_)))
                                                     (_%tl205627205770%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205625205763%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd205626205767%_))
                                                     (let ((_%e205628205773%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd205626205767%_))))
                                                       (if (equal? _%e205628205773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl205627205770%_))
                       (let ((_%e205629205777%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl205627205770%_))))
                         (let ((_%hd205630205781%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205629205777%_)))
                               (_%tl205631205784%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205629205777%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd205630205781%_))
                               (let ((_%e205632205787%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd205630205781%_))))
                                 (let ((_%hd205633205791%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205632205787%_)))
                                       (_%tl205634205794%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205632205787%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd205633205791%_))
                                       (if (let ((__tmp207341
                                                  |gxc[1]#_g207342_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp207341
                                              _%hd205633205791%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205634205794%_))
                                               (let ((_%e205635205797%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205634205794%_))))
                                                 (let ((_%hd205636205801%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205635205797%_)))
                                                       (_%tl205637205804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205635205797%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl205637205804%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl205631205784%_))
                                                           (let ((_%e205638205807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl205631205784%_))))
                     (let ((_%hd205639205811%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205638205807%_)))
                           (_%tl205640205814%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205638205807%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd205639205811%_))
                           (let ((_%e205641205817%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd205639205811%_))))
                             (if (equal? _%e205641205817%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl205640205814%_))
                                     (let ((_%e205642205821%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl205640205814%_))))
                                       (let ((_%hd205643205825%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205642205821%_)))
                                             (_%tl205644205828%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205642205821%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd205643205825%_))
                                             (let ((_%e205645205831%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd205643205825%_))))
                                               (let ((_%hd205646205835%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205645205831%_)))
                                                     (_%tl205647205838%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205645205831%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd205646205835%_))
                                                     (if (let ((__tmp207343
                                                                |gxc[1]#_g207344_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp207343
                                                            _%hd205646205835%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl205647205838%_))
                     (let ((_%e205648205841%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl205647205838%_))))
                       (let ((_%hd205649205845%_
                              (let ()
                                (declare (not safe))
                                (##car _%e205648205841%_)))
                             (_%tl205650205848%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e205648205841%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl205650205848%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205644205828%_))
                                 (let ((_%e205651205851%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205644205828%_))))
                                   (let ((_%hd205652205855%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205651205851%_)))
                                         (_%tl205653205858%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205651205851%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd205652205855%_))
                                         (let ((_%e205654205861%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd205652205855%_))))
                                           (if (equal? _%e205654205861%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl205653205858%_))
                                                   (let ((_%e205655205865%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl205653205858%_))))
                                                     (let ((_%hd205656205869%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e205655205865%_)))
                                                           (_%tl205657205872%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e205655205865%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd205656205869%_))
                                                           (let ((_%e205658205875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd205656205869%_))))
                     (let ((_%hd205659205879%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205658205875%_)))
                           (_%tl205660205882%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205658205875%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd205659205879%_))
                           (if (let ((__tmp207345 |gxc[1]#_g207346_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp207345
                                  _%hd205659205879%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl205660205882%_))
                                   (let ((_%e205661205885%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl205660205882%_))))
                                     (let ((_%hd205662205889%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e205661205885%_)))
                                           (_%tl205663205892%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e205661205885%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl205663205892%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205657205872%_))
                                               (let ((_%e205664205895%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205657205872%_))))
                                                 (let ((_%hd205665205899%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205664205895%_)))
                                                       (_%tl205666205902%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205664205895%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd205665205899%_))
                                                       (let ((_%e205667205905%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd205665205899%_))))
                 (if (equal? _%e205667205905%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl205666205902%_))
                         (let ((_%e205668205909%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl205666205902%_))))
                           (let ((_%hd205669205913%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e205668205909%_)))
                                 (_%tl205670205916%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e205668205909%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205669205913%_))
                                 (let ((_%e205671205919%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205669205913%_))))
                                   (let ((_%hd205672205923%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205671205919%_)))
                                         (_%tl205673205926%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205671205919%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd205672205923%_))
                                         (if (let ((__tmp207347
                                                    |gxc[1]#_g207348_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp207347
                                                _%hd205672205923%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205673205926%_))
                                                 (let ((_%e205674205929%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205673205926%_))))
                                                   (let ((_%hd205675205933%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205674205929%_)))
                                                         (_%tl205676205936%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205674205929%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205676205936%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl205670205916%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl205608205706%_))
                         ((lambda (_%L205939%_
                                   _%L205941%_
                                   _%L205942%_
                                   _%L205943%_
                                   _%L205944%_
                                   _%L205945%_)
                            (let ((_%clause206016%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L205945%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
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
                                                 (cons _%L205943%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205939%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked206018%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L205941%_))))
                              (_%loop205560%_
                               _%rest205591%_
                               (let ((_%$e206020%_ _%unchecked206018%_))
                                 (if _%$e206020%_
                                     _%$e206020%_
                                     _%unchecked-proc205565%_))
                               (cons _%clause206016%_
                                     _%unchecked-clauses205566%_))))
                          _%hd205675205933%_
                          _%hd205662205889%_
                          _%hd205649205845%_
                          _%hd205636205801%_
                          _%hd205623205757%_
                          _%hd205604205693%_)
                         (_%g205595205682%_ _%g205596205686%_))
                     (_%g205595205682%_ _%g205596205686%_))
                 (_%g205595205682%_ _%g205596205686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205595205682%_
                                                  _%g205596205686%_))
                                             (_%g205595205682%_
                                              _%g205596205686%_))
                                         (_%g205595205682%_
                                          _%g205596205686%_))))
                                 (_%g205595205682%_ _%g205596205686%_))))
                         (_%g205595205682%_ _%g205596205686%_))
                     (_%g205595205682%_ _%g205596205686%_)))
               (_%g205595205682%_ _%g205596205686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205595205682%_
                                                _%g205596205686%_))
                                           (_%g205595205682%_
                                            _%g205596205686%_))))
                                   (_%g205595205682%_ _%g205596205686%_))
                               (_%g205595205682%_ _%g205596205686%_))
                           (_%g205595205682%_ _%g205596205686%_))))
                   (_%g205595205682%_ _%g205596205686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g205595205682%_
                                                    _%g205596205686%_))
                                               (_%g205595205682%_
                                                _%g205596205686%_)))
                                         (_%g205595205682%_
                                          _%g205596205686%_))))
                                 (_%g205595205682%_ _%g205596205686%_))
                             (_%g205595205682%_ _%g205596205686%_))))
                     (_%g205595205682%_ _%g205596205686%_))
                 (_%g205595205682%_ _%g205596205686%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205595205682%_
                                                      _%g205596205686%_))))
                                             (_%g205595205682%_
                                              _%g205596205686%_))))
                                     (_%g205595205682%_ _%g205596205686%_))
                                 (_%g205595205682%_ _%g205596205686%_)))
                           (_%g205595205682%_ _%g205596205686%_))))
                   (_%g205595205682%_ _%g205596205686%_))
               (_%g205595205682%_ _%g205596205686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205595205682%_
                                                _%g205596205686%_))
                                           (_%g205595205682%_
                                            _%g205596205686%_))
                                       (_%g205595205682%_ _%g205596205686%_))))
                               (_%g205595205682%_ _%g205596205686%_))))
                       (_%g205595205682%_ _%g205596205686%_))
                   (_%g205595205682%_ _%g205596205686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205595205682%_
                                                      _%g205596205686%_))))
                                             (_%g205595205682%_
                                              _%g205596205686%_))
                                         (_%g205595205682%_
                                          _%g205596205686%_))))
                                 (_%g205595205682%_ _%g205596205686%_))
                             (_%g205595205682%_ _%g205596205686%_))
                         (_%g205595205682%_ _%g205596205686%_))))
                 (_%g205595205682%_ _%g205596205686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205595205682%_
                                                  _%g205596205686%_))
                                             (_%g205595205682%_
                                              _%g205596205686%_)))
                                       (_%g205595205682%_ _%g205596205686%_))))
                               (_%g205595205682%_ _%g205596205686%_))))
                       (_%g205595205682%_ _%g205596205686%_))))
               (_%g205595205682%_ _%g205596205686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205595205682%_
                                                _%g205596205686%_)))))
                                   (_%g205594206024%_ _%hd205593%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest205567205575%_))
                             (let ((_%hd205572206032%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest205567205575%_)))
                                   (_%tl205573206035%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest205567205575%_))))
                               (let* ((_%hd206038%_ _%hd205572206032%_)
                                      (_%rest206041%_ _%tl205573206035%_))
                                 (_%K205571206028%_
                                  _%rest206041%_
                                  _%hd206038%_)))
                             (_%else205569205587%_))))))
                (begin
                  (let ((_g207338_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207337_)
                               (##vector-length _g207337_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207338_ 2)))
                        (error "Context expects 2 values" _g207338_)))
                  (let ((_%unchecked-proc206044%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207337_ 0)))
                        (_%unchecked-clauses206046%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207337_ 1))))
                    (if _%unchecked-proc206044%_
                        (let* ((_%g206048206072%_
                                (lambda (_%g206049206068%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g206049206068%_))))
                               (_%g206047206159%_
                                (lambda (_%g206049206076%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g206049206076%_))
                                      (let ((_%e206052206079%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g206049206076%_))))
                                        (let ((_%hd206053206083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206052206079%_)))
                                              (_%tl206054206086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206052206079%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206054206086%_))
                                              (let ((_%e206055206089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206054206086%_))))
                                                (let ((_%hd206056206093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206055206089%_)))
                                                      (_%tl206057206096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206055206089%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd206056206093%_))
                                                      (let ((_g207349_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd206056206093%_ '0))))
                (begin
                  (let ((_g207350_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207349_)
                               (##vector-length _g207349_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207350_ 2)))
                        (error "Context expects 2 values" _g207350_)))
                  (let ((_%target206058206099%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207349_ 0)))
                        (_%tl206060206102%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207349_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206060206102%_))
                        (letrec ((_%loop206061206105%_
                                  (lambda (_%hd206059206109%_
                                           _%clause206065206112%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd206059206109%_))
                                        (let ((_%e206062206115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd206059206109%_))))
                                          (let ((_%lp-hd206063206119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e206062206115%_)))
                                                (_%lp-tl206064206122%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e206062206115%_))))
                                            (_%loop206061206105%_
                                             _%lp-tl206064206122%_
                                             (cons _%lp-hd206063206119%_
                                                   _%clause206065206112%_))))
                                        (let ((_%clause206066206125%_
                                               (reverse _%clause206065206112%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206057206096%_))
                                              ((lambda (_%L206129%_
                                                        _%L206131%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L206131%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp207351
                                                    (lambda (_%g206150206153%_
                                                             _%g206151206156%_)
                                                      (cons _%g206150206153%_
                                                            _%g206151206156%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp207351
                                                '()
                                                _%L206129%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause206066206125%_
                                               _%hd206053206083%_)
                                              (_%g206048206072%_
                                               _%g206049206076%_)))))))
                          (_%loop206061206105%_ _%target206058206099%_ '()))
                        (_%g206048206072%_ _%g206049206076%_)))))
              (_%g206048206072%_ _%g206049206076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206048206072%_
                                               _%g206049206076%_))))
                                      (_%g206048206072%_ _%g206049206076%_)))))
                          (_%g206047206159%_
                           (list _%unchecked-proc206044%_
                                 _%unchecked-clauses206046%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g205499205510%_))))
                                        (_%g205497206163%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L205358%_
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
                                          _%L205479%_
                                          _%L205481%_))
                                       (let ((__tmp207352
                                              (lambda (_%g206166206170%_
                                                       _%g206167206173%_
                                                       _%g206168206175%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g206167206173%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g206166206170%_ '())))))
              _%g206168206175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp207352
                                          '()
                                          _%L205479%_
                                          _%L205481%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig205405205473%_
                                    _%arity205406205476%_))))))
                   (_%loop205399205431%_ _%target205396205425%_ '() '()))
                 (_%g205392205418%_ _%g205393205422%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205392205418%_
                                                _%g205393205422%_)))))
                                   (_%g205391206178%_ _%signatures205389%_))
                                 (_%g205275205299%_ _%g205276205303%_)))
                           _%case-signature205293205352%_
                           _%hd205283205320%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205288205332%_
                                                   _%target205285205326%_
                                                   '()))
                                                (_%g205275205299%_
                                                 _%g205276205303%_)))))
                                      (_%g205275205299%_ _%g205276205303%_))))
                              (_%g205275205299%_ _%g205276205303%_))))
                      (_%g205275205299%_ _%g205276205303%_)))))
          (_%g205274206182%_ _%stx205272%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx206190%_)
        (let* ((_%__stx207172207173%_ _%$stx206190%_)
               (_%g206196206256%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207172207173%_)))))
          (let ((_%__kont207175207176%_
                 (lambda (_%L206478%_ _%L206480%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206480%_ '()))
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
                                                       (cons _%L206480%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206478%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207177207178%_
                 (lambda (_%L206403%_ _%L206405%_ _%L206406%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206406%_ '()))
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
                                                       (cons _%L206406%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206405%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206403%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207179207180%_
                 (lambda (_%L206317%_ _%L206319%_ _%L206320%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206320%_ '()))
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
                                                       (cons _%L206320%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206319%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206317%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207172207173%_))
                (let ((_%e206200206434%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207172207173%_))))
                  (let ((_%tl206202206441%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206200206434%_)))
                        (_%hd206201206438%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206200206434%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206202206441%_))
                        (let ((_%e206203206444%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206202206441%_))))
                          (let ((_%tl206205206451%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206203206444%_)))
                                (_%hd206204206448%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206203206444%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd206204206448%_))
                                (let ((_%e206206206454%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd206204206448%_))))
                                  (if (equal? _%e206206206454%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl206205206451%_))
                                          (let ((_%e206207206458%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl206205206451%_))))
                                            (let ((_%tl206209206465%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206207206458%_)))
                                                  (_%hd206208206462%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206207206458%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206209206465%_))
                                                  (let ((_%e206210206468%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206209206465%_))))
                                                    (let ((_%tl206212206475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206210206468%_)))
                                                          (_%hd206211206472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206210206468%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206212206475%_))
                                                          (_%__kont207175207176%_
                                                           _%hd206211206472%_
                                                           _%hd206208206462%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206196206256%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206196206256%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206196206256%_)))
                                      (if (equal? _%e206206206454%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206205206451%_))
                                              (let ((_%e206223206373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206205206451%_))))
                                                (let ((_%tl206225206380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206223206373%_)))
                                                      (_%hd206224206377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206223206373%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206225206380%_))
                                                      (let ((_%e206226206383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl206225206380%_))))
                (let ((_%tl206228206390%_
                       (let () (declare (not safe)) (##cdr _%e206226206383%_)))
                      (_%hd206227206387%_
                       (let ()
                         (declare (not safe))
                         (##car _%e206226206383%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206228206390%_))
                      (let ((_%e206229206393%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206228206390%_))))
                        (let ((_%tl206231206400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206229206393%_)))
                              (_%hd206230206397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206229206393%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206231206400%_))
                              (_%__kont207177207178%_
                               _%hd206230206397%_
                               _%hd206227206387%_
                               _%hd206224206377%_)
                              (let ()
                                (declare (not safe))
                                (_%g206196206256%_)))))
                      (let () (declare (not safe)) (_%g206196206256%_)))))
              (let () (declare (not safe)) (_%g206196206256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206196206256%_)))
                                          (if (equal? _%e206206206454%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206205206451%_))
                                                  (let ((_%e206242206287%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206205206451%_))))
                                                    (let ((_%tl206244206294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206242206287%_)))
                                                          (_%hd206243206291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206242206287%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206244206294%_))
                                                          (let ((_%e206245206297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206244206294%_))))
                    (let ((_%tl206247206304%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206245206297%_)))
                          (_%hd206246206301%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206245206297%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206247206304%_))
                          (let ((_%e206248206307%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206247206304%_))))
                            (let ((_%tl206250206314%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206248206307%_)))
                                  (_%hd206249206311%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206248206307%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206250206314%_))
                                  (_%__kont207179207180%_
                                   _%hd206249206311%_
                                   _%hd206246206301%_
                                   _%hd206243206291%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206196206256%_)))))
                          (let () (declare (not safe)) (_%g206196206256%_)))))
                  (let () (declare (not safe)) (_%g206196206256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206196206256%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206196206256%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g206196206256%_)))))
                        (let () (declare (not safe)) (_%g206196206256%_)))))
                (let () (declare (not safe)) (_%g206196206256%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx206502%_)
        (let* ((_%g206506206526%_
                (lambda (_%g206507206522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206507206522%_))))
               (_%g206505206597%_
                (lambda (_%g206507206530%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206507206530%_))
                      (let ((_%e206509206533%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206507206530%_))))
                        (let ((_%hd206510206537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206509206533%_)))
                              (_%tl206511206540%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206509206533%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206511206540%_))
                              (let ((_g207353_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206511206540%_
                                        '0))))
                                (begin
                                  (let ((_g207354_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207353_)
                                               (##vector-length _g207353_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207354_ 2)))
                                        (error "Context expects 2 values"
                                               _g207354_)))
                                  (let ((_%target206512206543%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207353_ 0)))
                                        (_%tl206514206546%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207353_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206514206546%_))
                                        (letrec ((_%loop206515206549%_
                                                  (lambda (_%hd206513206553%_
                                                           _%decl206519206556%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206513206553%_))
                                                        (let ((_%e206516206559%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206513206553%_))))
                  (let ((_%lp-hd206517206563%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206516206559%_)))
                        (_%lp-tl206518206566%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206516206559%_))))
                    (_%loop206515206549%_
                     _%lp-tl206518206566%_
                     (cons _%lp-hd206517206563%_ _%decl206519206556%_))))
                (let ((_%decl206520206569%_ (reverse _%decl206519206556%_)))
                  ((lambda (_%L206573%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp207355
                                  (lambda (_%g206588206591%_ _%g206589206594%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g206588206591%_)
                                          _%g206589206594%_))))
                             (declare (not safe))
                             (__foldr1 __tmp207355 '() _%L206573%_))))
                   _%decl206520206569%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206515206549%_
                                           _%target206512206543%_
                                           '()))
                                        (_%g206506206526%_
                                         _%g206507206530%_)))))
                              (_%g206506206526%_ _%g206507206530%_))))
                      (_%g206506206526%_ _%g206507206530%_)))))
          (_%g206505206597%_ _%$stx206502%_))))))
