(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g206947_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206954_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206956_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206958_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206960_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206962_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206974_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206976_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206978_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206980_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g206982_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx200365%_)
        (let* ((_%g200369200387%_
                (lambda (_%g200370200383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200370200383%_))))
               (_%g200368200442%_
                (lambda (_%g200370200391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200370200391%_))
                      (let ((_%e200373200394%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200370200391%_))))
                        (let ((_%hd200374200398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200373200394%_)))
                              (_%tl200375200401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200373200394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200375200401%_))
                              (let ((_%e200376200404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200375200401%_))))
                                (let ((_%hd200377200408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200376200404%_)))
                                      (_%tl200378200411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200376200404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200378200411%_))
                                      (let ((_%e200379200414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200378200411%_))))
                                        (let ((_%hd200380200418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200379200414%_)))
                                              (_%tl200381200421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200379200414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200381200421%_))
                                              ((lambda (_%L200424%_
                                                        _%L200426%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L200426%_))
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
                               (cons _%L200426%_ '()))
                         (cons _%L200424%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200369200387%_
                                                      _%g200370200391%_)))
                                               _%hd200380200418%_
                                               _%hd200377200408%_)
                                              (_%g200369200387%_
                                               _%g200370200391%_))))
                                      (_%g200369200387%_ _%g200370200391%_))))
                              (_%g200369200387%_ _%g200370200391%_))))
                      (_%g200369200387%_ _%g200370200391%_)))))
          (_%g200368200442%_ _%$stx200365%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx200446%_)
        (let* ((_%g200450200468%_
                (lambda (_%g200451200464%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200451200464%_))))
               (_%g200449200523%_
                (lambda (_%g200451200472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200451200472%_))
                      (let ((_%e200454200475%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200451200472%_))))
                        (let ((_%hd200455200479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200454200475%_)))
                              (_%tl200456200482%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200454200475%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200456200482%_))
                              (let ((_%e200457200485%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200456200482%_))))
                                (let ((_%hd200458200489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200457200485%_)))
                                      (_%tl200459200492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200457200485%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200459200492%_))
                                      (let ((_%e200460200495%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200459200492%_))))
                                        (let ((_%hd200461200499%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200460200495%_)))
                                              (_%tl200462200502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200460200495%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200462200502%_))
                                              ((lambda (_%L200505%_
                                                        _%L200507%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L200507%_))
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
                               (cons _%L200507%_ '()))
                         (cons _%L200505%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200450200468%_
                                                      _%g200451200472%_)))
                                               _%hd200461200499%_
                                               _%hd200458200489%_)
                                              (_%g200450200468%_
                                               _%g200451200472%_))))
                                      (_%g200450200468%_ _%g200451200472%_))))
                              (_%g200450200468%_ _%g200451200472%_))))
                      (_%g200450200468%_ _%g200451200472%_)))))
          (_%g200449200523%_ _%$stx200446%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx200527%_)
        (let* ((_%g200531200560%_
                (lambda (_%g200532200556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200532200556%_))))
               (_%g200530200660%_
                (lambda (_%g200532200564%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200532200564%_))
                      (let ((_%e200535200567%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200532200564%_))))
                        (let ((_%hd200536200571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200535200567%_)))
                              (_%tl200537200574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200535200567%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200537200574%_))
                              (let ((_g206925_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200537200574%_
                                        '0))))
                                (begin
                                  (let ((_g206926_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206925_)
                                               (##vector-length _g206925_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206926_ 2)))
                                        (error "Context expects 2 values"
                                               _g206926_)))
                                  (let ((_%target200538200577%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206925_ 0)))
                                        (_%tl200540200580%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206925_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200540200580%_))
                                        (letrec ((_%loop200541200583%_
                                                  (lambda (_%hd200539200587%_
                                                           _%type200545200590%_
                                                           _%symbol200546200592%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200539200587%_))
                                                        (let ((_%e200542200595%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200539200587%_))))
                  (let ((_%lp-hd200543200599%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200542200595%_)))
                        (_%lp-tl200544200602%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200542200595%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd200543200599%_))
                        (let ((_%e200549200605%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd200543200599%_))))
                          (let ((_%hd200550200609%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200549200605%_)))
                                (_%tl200551200612%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200549200605%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200551200612%_))
                                (let ((_%e200552200615%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200551200612%_))))
                                  (let ((_%hd200553200619%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200552200615%_)))
                                        (_%tl200554200622%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200552200615%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200554200622%_))
                                        (_%loop200541200583%_
                                         _%lp-tl200544200602%_
                                         (cons _%hd200553200619%_
                                               _%type200545200590%_)
                                         (cons _%hd200550200609%_
                                               _%symbol200546200592%_))
                                        (_%g200531200560%_
                                         _%g200532200564%_))))
                                (_%g200531200560%_ _%g200532200564%_))))
                        (_%g200531200560%_ _%g200532200564%_))))
                (let ((_%type200547200625%_ (reverse _%type200545200590%_))
                      (_%symbol200548200628%_
                       (reverse _%symbol200546200592%_)))
                  ((lambda (_%L200631%_ _%L200633%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L200631%_
                                _%L200633%_))
                             (let ((__tmp206927
                                    (lambda (_%g200648200652%_
                                             _%g200649200655%_
                                             _%g200650200657%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g200649200655%_
                                                        (cons _%g200648200652%_
                                                              '())))
                                            _%g200650200657%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp206927
                                '()
                                _%L200631%_
                                _%L200633%_)))))
                   _%type200547200625%_
                   _%symbol200548200628%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200541200583%_
                                           _%target200538200577%_
                                           '()
                                           '()))
                                        (_%g200531200560%_
                                         _%g200532200564%_)))))
                              (_%g200531200560%_ _%g200532200564%_))))
                      (_%g200531200560%_ _%g200532200564%_)))))
          (_%g200530200660%_ _%$stx200527%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx200665%_)
        (let* ((_%__stx206236206237%_ _%$stx200665%_)
               (_%g200670200712%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206236206237%_)))))
          (let ((_%__kont206239206240%_
                 (lambda (_%L200840%_ _%L200842%_ _%L200843%_ _%L200844%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200844%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L200843%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L200842%_ '()))
                                           (cons _%L200840%_ '())))))))
                (_%__kont206241206242%_
                 (lambda (_%L200759%_ _%L200761%_ _%L200762%_ _%L200763%_)
                   (cons _%L200763%_
                         (cons _%L200762%_
                               (cons _%L200761%_
                                     (cons _%L200759%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match206275206276%_
                   (lambda (_%e200676200790%_
                            _%hd200677200794%_
                            _%tl200678200797%_
                            _%e200679200800%_
                            _%hd200680200804%_
                            _%tl200681200807%_
                            _%e200682200810%_
                            _%hd200683200814%_
                            _%tl200684200817%_
                            _%e200685200820%_
                            _%hd200686200824%_
                            _%tl200687200827%_
                            _%e200688200830%_
                            _%hd200689200834%_
                            _%tl200690200837%_)
                     (let ((_%L200840%_ _%hd200689200834%_)
                           (_%L200842%_ _%hd200686200824%_)
                           (_%L200843%_ _%hd200683200814%_)
                           (_%L200844%_ _%hd200680200804%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200844%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200843%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L200842%_)))
                           (_%__kont206239206240%_
                            _%L200840%_
                            _%L200842%_
                            _%L200843%_
                            _%L200844%_)
                           (let ()
                             (declare (not safe))
                             (_%g200670200712%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206236206237%_))
                  (let ((_%e200676200790%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206236206237%_))))
                    (let ((_%tl200678200797%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200676200790%_)))
                          (_%hd200677200794%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200676200790%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200678200797%_))
                          (let ((_%e200679200800%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200678200797%_))))
                            (let ((_%tl200681200807%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200679200800%_)))
                                  (_%hd200680200804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200679200800%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200681200807%_))
                                  (let ((_%e200682200810%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl200681200807%_))))
                                    (let ((_%tl200684200817%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200682200810%_)))
                                          (_%hd200683200814%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200682200810%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200684200817%_))
                                          (let ((_%e200685200820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200684200817%_))))
                                            (let ((_%tl200687200827%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200685200820%_)))
                                                  (_%hd200686200824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200685200820%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200687200827%_))
                                                  (let ((_%e200688200830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200687200827%_))))
                                                    (let ((_%tl200690200837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200688200830%_)))
                                                          (_%hd200689200834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200688200830%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200690200837%_))
                                                          (_%__match206275206276%_
                                                           _%e200676200790%_
                                                           _%hd200677200794%_
                                                           _%tl200678200797%_
                                                           _%e200679200800%_
                                                           _%hd200680200804%_
                                                           _%tl200681200807%_
                                                           _%e200682200810%_
                                                           _%hd200683200814%_
                                                           _%tl200684200817%_
                                                           _%e200685200820%_
                                                           _%hd200686200824%_
                                                           _%tl200687200827%_
                                                           _%e200688200830%_
                                                           _%hd200689200834%_
                                                           _%tl200690200837%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200670200712%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200687200827%_))
                                                      (_%__kont206241206242%_
                                                       _%hd200686200824%_
                                                       _%hd200683200814%_
                                                       _%hd200680200804%_
                                                       _%hd200677200794%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200670200712%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200670200712%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g200670200712%_)))))
                          (let () (declare (not safe)) (_%g200670200712%_)))))
                  (let () (declare (not safe)) (_%g200670200712%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx200869%_)
        (let* ((_%g200873200908%_
                (lambda (_%g200874200904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200874200904%_))))
               (_%g200872201027%_
                (lambda (_%g200874200912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200874200912%_))
                      (let ((_%e200878200915%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200874200912%_))))
                        (let ((_%hd200879200919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200878200915%_)))
                              (_%tl200880200922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200878200915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200880200922%_))
                              (let ((_g206928_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200880200922%_
                                        '0))))
                                (begin
                                  (let ((_g206929_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206928_)
                                               (##vector-length _g206928_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206929_ 2)))
                                        (error "Context expects 2 values"
                                               _g206929_)))
                                  (let ((_%target200881200925%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206928_ 0)))
                                        (_%tl200883200928%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206928_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200883200928%_))
                                        (letrec ((_%loop200884200931%_
                                                  (lambda (_%hd200882200935%_
                                                           _%symbol200888200938%_
                                                           _%method200889200940%_
                                                           _%type-t200890200942%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200882200935%_))
                                                        (let ((_%e200885200945%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200882200935%_))))
                  (let ((_%lp-hd200886200949%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200885200945%_)))
                        (_%lp-tl200887200952%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200885200945%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd200886200949%_))
                        (let ((_%e200894200955%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd200886200949%_))))
                          (let ((_%hd200895200959%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200894200955%_)))
                                (_%tl200896200962%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200894200955%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200896200962%_))
                                (let ((_%e200897200965%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200896200962%_))))
                                  (let ((_%hd200898200969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200897200965%_)))
                                        (_%tl200899200972%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200897200965%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl200899200972%_))
                                        (let ((_%e200900200975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl200899200972%_))))
                                          (let ((_%hd200901200979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200900200975%_)))
                                                (_%tl200902200982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200900200975%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200902200982%_))
                                                (_%loop200884200931%_
                                                 _%lp-tl200887200952%_
                                                 (cons _%hd200901200979%_
                                                       _%symbol200888200938%_)
                                                 (cons _%hd200898200969%_
                                                       _%method200889200940%_)
                                                 (cons _%hd200895200959%_
                                                       _%type-t200890200942%_))
                                                (_%g200873200908%_
                                                 _%g200874200912%_))))
                                        (_%g200873200908%_
                                         _%g200874200912%_))))
                                (_%g200873200908%_ _%g200874200912%_))))
                        (_%g200873200908%_ _%g200874200912%_))))
                (let ((_%symbol200891200985%_ (reverse _%symbol200888200938%_))
                      (_%method200892200988%_ (reverse _%method200889200940%_))
                      (_%type-t200893200990%_
                       (reverse _%type-t200890200942%_)))
                  ((lambda (_%L200993%_ _%L200995%_ _%L200996%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L200993%_
                                _%L200995%_
                                _%L200996%_))
                             (let ((__tmp206930
                                    (lambda (_%g201012201017%_
                                             _%g201013201020%_
                                             _%g201014201022%_
                                             _%g201015201024%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g201014201022%_
                                                        (cons _%g201013201020%_
                                                              (cons _%g201012201017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g201015201024%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp206930
                                '()
                                _%L200993%_
                                _%L200995%_
                                _%L200996%_)))))
                   _%symbol200891200985%_
                   _%method200892200988%_
                   _%type-t200893200990%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200884200931%_
                                           _%target200881200925%_
                                           '()
                                           '()
                                           '()))
                                        (_%g200873200908%_
                                         _%g200874200912%_)))))
                              (_%g200873200908%_ _%g200874200912%_))))
                      (_%g200873200908%_ _%g200874200912%_)))))
          (_%g200872201027%_ _%$stx200869%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx201032%_)
        (let* ((_%g201036201069%_
                (lambda (_%g201037201065%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201037201065%_))))
               (_%g201035201183%_
                (lambda (_%g201037201073%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201037201073%_))
                      (let ((_%e201041201076%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201037201073%_))))
                        (let ((_%hd201042201080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201041201076%_)))
                              (_%tl201043201083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201041201076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201043201083%_))
                              (let ((_%e201044201086%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201043201083%_))))
                                (let ((_%hd201045201090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201044201086%_)))
                                      (_%tl201046201093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201044201086%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201046201093%_))
                                      (let ((_g206931_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201046201093%_
                                                '0))))
                                        (begin
                                          (let ((_g206932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206931_)
                                                       (##vector-length
                                                        _g206931_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206932_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206932_)))
                                          (let ((_%target201047201096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206931_ 0)))
                                                (_%tl201049201099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206931_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201049201099%_))
                                                (letrec ((_%loop201050201102%_
                                                          (lambda (_%hd201048201106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol201054201109%_
                           _%method201055201111%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201048201106%_))
                        (let ((_%e201051201114%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201048201106%_))))
                          (let ((_%lp-hd201052201118%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201051201114%_)))
                                (_%lp-tl201053201121%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201051201114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd201052201118%_))
                                (let ((_%e201058201124%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd201052201118%_))))
                                  (let ((_%hd201059201128%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201058201124%_)))
                                        (_%tl201060201131%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201058201124%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201060201131%_))
                                        (let ((_%e201061201134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201060201131%_))))
                                          (let ((_%hd201062201138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201061201134%_)))
                                                (_%tl201063201141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201061201134%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201063201141%_))
                                                (_%loop201050201102%_
                                                 _%lp-tl201053201121%_
                                                 (cons _%hd201062201138%_
                                                       _%symbol201054201109%_)
                                                 (cons _%hd201059201128%_
                                                       _%method201055201111%_))
                                                (_%g201036201069%_
                                                 _%g201037201073%_))))
                                        (_%g201036201069%_
                                         _%g201037201073%_))))
                                (_%g201036201069%_ _%g201037201073%_))))
                        (let ((_%symbol201056201144%_
                               (reverse _%symbol201054201109%_))
                              (_%method201057201147%_
                               (reverse _%method201055201111%_)))
                          ((lambda (_%L201150%_ _%L201152%_ _%L201153%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L201150%_
                                        _%L201152%_))
                                     (let ((__tmp206933
                                            (lambda (_%g201171201175%_
                                                     _%g201172201178%_
                                                     _%g201173201180%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L201153%_
                                                                (cons _%g201172201178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g201171201175%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g201173201180%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp206933
                                        '()
                                        _%L201150%_
                                        _%L201152%_)))))
                           _%symbol201056201144%_
                           _%method201057201147%_
                           _%hd201045201090%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201050201102%_
                                                   _%target201047201096%_
                                                   '()
                                                   '()))
                                                (_%g201036201069%_
                                                 _%g201037201073%_)))))
                                      (_%g201036201069%_ _%g201037201073%_))))
                              (_%g201036201069%_ _%g201037201073%_))))
                      (_%g201036201069%_ _%g201037201073%_)))))
          (_%g201035201183%_ _%$stx201032%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx201188%_)
        (let* ((_%g201192201206%_
                (lambda (_%g201193201202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201193201202%_))))
               (_%g201191201247%_
                (lambda (_%g201193201210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201193201210%_))
                      (let ((_%e201195201213%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201193201210%_))))
                        (let ((_%hd201196201217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201195201213%_)))
                              (_%tl201197201220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201195201213%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201197201220%_))
                              (let ((_%e201198201223%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201197201220%_))))
                                (let ((_%hd201199201227%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201198201223%_)))
                                      (_%tl201200201230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201198201223%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201200201230%_))
                                      ((lambda (_%L201233%_)
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
                                                           (cons _%L201233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201199201227%_)
                                      (_%g201192201206%_ _%g201193201210%_))))
                              (_%g201192201206%_ _%g201193201210%_))))
                      (_%g201192201206%_ _%g201193201210%_)))))
          (_%g201191201247%_ _%$stx201188%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx201251%_)
        (let* ((_%g201255201309%_
                (lambda (_%g201256201305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201256201305%_))))
               (_%g201254201490%_
                (lambda (_%g201256201313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201256201313%_))
                      (let ((_%e201268201316%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201256201313%_))))
                        (let ((_%hd201269201320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201268201316%_)))
                              (_%tl201270201323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201268201316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201270201323%_))
                              (let ((_%e201271201326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201270201323%_))))
                                (let ((_%hd201272201330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201271201326%_)))
                                      (_%tl201273201333%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201271201326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201273201333%_))
                                      (let ((_%e201274201336%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201273201333%_))))
                                        (let ((_%hd201275201340%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201274201336%_)))
                                              (_%tl201276201343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201274201336%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201276201343%_))
                                              (let ((_%e201277201346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201276201343%_))))
                                                (let ((_%hd201278201350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201277201346%_)))
                                                      (_%tl201279201353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201277201346%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201279201353%_))
                                                      (let ((_%e201280201356%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201279201353%_))))
                (let ((_%hd201281201360%_
                       (let () (declare (not safe)) (##car _%e201280201356%_)))
                      (_%tl201282201363%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201280201356%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201282201363%_))
                      (let ((_%e201283201366%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201282201363%_))))
                        (let ((_%hd201284201370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201283201366%_)))
                              (_%tl201285201373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201283201366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201285201373%_))
                              (let ((_%e201286201376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201285201373%_))))
                                (let ((_%hd201287201380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201286201376%_)))
                                      (_%tl201288201383%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201286201376%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201288201383%_))
                                      (let ((_%e201289201386%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201288201383%_))))
                                        (let ((_%hd201290201390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201289201386%_)))
                                              (_%tl201291201393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201289201386%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201291201393%_))
                                              (let ((_%e201292201396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201291201393%_))))
                                                (let ((_%hd201293201400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201292201396%_)))
                                                      (_%tl201294201403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201292201396%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201294201403%_))
                                                      (let ((_%e201295201406%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201294201403%_))))
                (let ((_%hd201296201410%_
                       (let () (declare (not safe)) (##car _%e201295201406%_)))
                      (_%tl201297201413%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201295201406%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201297201413%_))
                      (let ((_%e201298201416%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201297201413%_))))
                        (let ((_%hd201299201420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201298201416%_)))
                              (_%tl201300201423%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201298201416%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201300201423%_))
                              (let ((_%e201301201426%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201300201423%_))))
                                (let ((_%hd201302201430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201301201426%_)))
                                      (_%tl201303201433%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201301201426%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201303201433%_))
                                      ((lambda (_%L201436%_
                                                _%L201438%_
                                                _%L201439%_
                                                _%L201440%_
                                                _%L201441%_
                                                _%L201442%_
                                                _%L201443%_
                                                _%L201444%_
                                                _%L201445%_
                                                _%L201446%_
                                                _%L201447%_)
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
                                                           (cons _%L201447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L201446%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L201445%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201444%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201443%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201442%_ '()))
                                           (cons _%L201441%_
                                                 (cons _%L201440%_
                                                       (cons _%L201439%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201438%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L201436%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd201302201430%_
                                       _%hd201299201420%_
                                       _%hd201296201410%_
                                       _%hd201293201400%_
                                       _%hd201290201390%_
                                       _%hd201287201380%_
                                       _%hd201284201370%_
                                       _%hd201281201360%_
                                       _%hd201278201350%_
                                       _%hd201275201340%_
                                       _%hd201272201330%_)
                                      (_%g201255201309%_ _%g201256201313%_))))
                              (_%g201255201309%_ _%g201256201313%_))))
                      (_%g201255201309%_ _%g201256201313%_))))
              (_%g201255201309%_ _%g201256201313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201255201309%_
                                               _%g201256201313%_))))
                                      (_%g201255201309%_ _%g201256201313%_))))
                              (_%g201255201309%_ _%g201256201313%_))))
                      (_%g201255201309%_ _%g201256201313%_))))
              (_%g201255201309%_ _%g201256201313%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201255201309%_
                                               _%g201256201313%_))))
                                      (_%g201255201309%_ _%g201256201313%_))))
                              (_%g201255201309%_ _%g201256201313%_))))
                      (_%g201255201309%_ _%g201256201313%_)))))
          (_%g201254201490%_ _%$stx201251%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx201494%_)
        (let* ((_%g201498201512%_
                (lambda (_%g201499201508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201499201508%_))))
               (_%g201497201553%_
                (lambda (_%g201499201516%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201499201516%_))
                      (let ((_%e201501201519%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201499201516%_))))
                        (let ((_%hd201502201523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201501201519%_)))
                              (_%tl201503201526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201501201519%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201503201526%_))
                              (let ((_%e201504201529%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201503201526%_))))
                                (let ((_%hd201505201533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201504201529%_)))
                                      (_%tl201506201536%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201504201529%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201506201536%_))
                                      ((lambda (_%L201539%_)
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
                                                           (cons _%L201539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201505201533%_)
                                      (_%g201498201512%_ _%g201499201516%_))))
                              (_%g201498201512%_ _%g201499201516%_))))
                      (_%g201498201512%_ _%g201499201516%_)))))
          (_%g201497201553%_ _%$stx201494%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx201557%_)
        (let* ((_%g201561201575%_
                (lambda (_%g201562201571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201562201571%_))))
               (_%g201560201616%_
                (lambda (_%g201562201579%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201562201579%_))
                      (let ((_%e201564201582%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201562201579%_))))
                        (let ((_%hd201565201586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201564201582%_)))
                              (_%tl201566201589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201564201582%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201566201589%_))
                              (let ((_%e201567201592%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201566201589%_))))
                                (let ((_%hd201568201596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201567201592%_)))
                                      (_%tl201569201599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201567201592%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201569201599%_))
                                      ((lambda (_%L201602%_)
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
                                                           (cons _%L201602%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201568201596%_)
                                      (_%g201561201575%_ _%g201562201579%_))))
                              (_%g201561201575%_ _%g201562201579%_))))
                      (_%g201561201575%_ _%g201562201579%_)))))
          (_%g201560201616%_ _%$stx201557%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx201620%_)
        (let* ((_%g201624201646%_
                (lambda (_%g201625201642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201625201642%_))))
               (_%g201623201715%_
                (lambda (_%g201625201650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201625201650%_))
                      (let ((_%e201629201653%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201625201650%_))))
                        (let ((_%hd201630201657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201629201653%_)))
                              (_%tl201631201660%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201629201653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201631201660%_))
                              (let ((_%e201632201663%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201631201660%_))))
                                (let ((_%hd201633201667%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201632201663%_)))
                                      (_%tl201634201670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201632201663%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201634201670%_))
                                      (let ((_%e201635201673%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201634201670%_))))
                                        (let ((_%hd201636201677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201635201673%_)))
                                              (_%tl201637201680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201635201673%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201637201680%_))
                                              (let ((_%e201638201683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201637201680%_))))
                                                (let ((_%hd201639201687%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201638201683%_)))
                                                      (_%tl201640201690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201638201683%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201640201690%_))
                                                      ((lambda (_%L201693%_
                                                                _%L201695%_
                                                                _%L201696%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L201696%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L201695%_ '()))
                                   (cons _%L201693%_ '())))))
               _%hd201639201687%_
               _%hd201636201677%_
               _%hd201633201667%_)
              (_%g201624201646%_ _%g201625201650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201624201646%_
                                               _%g201625201650%_))))
                                      (_%g201624201646%_ _%g201625201650%_))))
                              (_%g201624201646%_ _%g201625201650%_))))
                      (_%g201624201646%_ _%g201625201650%_)))))
          (_%g201623201715%_ _%$stx201620%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx201719%_)
        (let* ((_%g201723201745%_
                (lambda (_%g201724201741%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201724201741%_))))
               (_%g201722201814%_
                (lambda (_%g201724201749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201724201749%_))
                      (let ((_%e201728201752%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201724201749%_))))
                        (let ((_%hd201729201756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201728201752%_)))
                              (_%tl201730201759%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201728201752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201730201759%_))
                              (let ((_%e201731201762%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201730201759%_))))
                                (let ((_%hd201732201766%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201731201762%_)))
                                      (_%tl201733201769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201731201762%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201733201769%_))
                                      (let ((_%e201734201772%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201733201769%_))))
                                        (let ((_%hd201735201776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201734201772%_)))
                                              (_%tl201736201779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201734201772%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201736201779%_))
                                              (let ((_%e201737201782%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201736201779%_))))
                                                (let ((_%hd201738201786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201737201782%_)))
                                                      (_%tl201739201789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201737201782%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201739201789%_))
                                                      ((lambda (_%L201792%_
                                                                _%L201794%_
                                                                _%L201795%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L201795%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L201794%_ '()))
                                   (cons _%L201792%_ '())))))
               _%hd201738201786%_
               _%hd201735201776%_
               _%hd201732201766%_)
              (_%g201723201745%_ _%g201724201749%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201723201745%_
                                               _%g201724201749%_))))
                                      (_%g201723201745%_ _%g201724201749%_))))
                              (_%g201723201745%_ _%g201724201749%_))))
                      (_%g201723201745%_ _%g201724201749%_)))))
          (_%g201722201814%_ _%$stx201719%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx201818%_)
        (let* ((_%g201822201836%_
                (lambda (_%g201823201832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201823201832%_))))
               (_%g201821201877%_
                (lambda (_%g201823201840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201823201840%_))
                      (let ((_%e201825201843%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201823201840%_))))
                        (let ((_%hd201826201847%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201825201843%_)))
                              (_%tl201827201850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201825201843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201827201850%_))
                              (let ((_%e201828201853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201827201850%_))))
                                (let ((_%hd201829201857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201828201853%_)))
                                      (_%tl201830201860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201828201853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201830201860%_))
                                      ((lambda (_%L201863%_)
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
                                                           (cons _%L201863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201829201857%_)
                                      (_%g201822201836%_ _%g201823201840%_))))
                              (_%g201822201836%_ _%g201823201840%_))))
                      (_%g201822201836%_ _%g201823201840%_)))))
          (_%g201821201877%_ _%$stx201818%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx201881%_)
        (let* ((_%g201885201903%_
                (lambda (_%g201886201899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201886201899%_))))
               (_%g201884201958%_
                (lambda (_%g201886201907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201886201907%_))
                      (let ((_%e201889201910%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201886201907%_))))
                        (let ((_%hd201890201914%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201889201910%_)))
                              (_%tl201891201917%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201889201910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201891201917%_))
                              (let ((_%e201892201920%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201891201917%_))))
                                (let ((_%hd201893201924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201892201920%_)))
                                      (_%tl201894201927%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201892201920%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201894201927%_))
                                      (let ((_%e201895201930%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201894201927%_))))
                                        (let ((_%hd201896201934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201895201930%_)))
                                              (_%tl201897201937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201895201930%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201897201937%_))
                                              ((lambda (_%L201940%_
                                                        _%L201942%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201942%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L201940%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd201896201934%_
                                               _%hd201893201924%_)
                                              (_%g201885201903%_
                                               _%g201886201907%_))))
                                      (_%g201885201903%_ _%g201886201907%_))))
                              (_%g201885201903%_ _%g201886201907%_))))
                      (_%g201885201903%_ _%g201886201907%_)))))
          (_%g201884201958%_ _%$stx201881%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx201962%_)
        (let* ((_%__stx206304206305%_ _%$stx201962%_)
               (_%g201969202030%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206304206305%_)))))
          (let ((_%__kont206307206308%_
                 (lambda (_%L202268%_ _%L202270%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202270%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202268%_ '()))
                                     '())))))
                (_%__kont206309206310%_
                 (lambda (_%L202207%_ _%L202209%_ _%L202210%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202210%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202209%_ '()))
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
                                 (cons _%L202207%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont206311206312%_
                 (lambda (_%L202131%_ _%L202133%_)
                   (cons _%L202133%_ (cons _%L202131%_ (cons '#f '())))))
                (_%__kont206313206314%_
                 (lambda (_%L202081%_ _%L202083%_ _%L202084%_)
                   (cons _%L202084%_
                         (cons _%L202083%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L202081%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206304206305%_))
                (let ((_%e201973202238%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206304206305%_))))
                  (let ((_%tl201975202245%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201973202238%_)))
                        (_%hd201974202242%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201973202238%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201975202245%_))
                        (let ((_%e201976202248%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201975202245%_))))
                          (let ((_%tl201978202255%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201976202248%_)))
                                (_%hd201977202252%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201976202248%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201978202255%_))
                                (let ((_%e201979202258%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201978202255%_))))
                                  (let ((_%tl201981202265%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201979202258%_)))
                                        (_%hd201980202262%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201979202258%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201981202265%_))
                                        (_%__kont206307206308%_
                                         _%hd201980202262%_
                                         _%hd201977202252%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201981202265%_))
                                            (let ((_%e201994202183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl201981202265%_))))
                                              (let ((_%tl201996202190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201994202183%_)))
                                                    (_%hd201995202187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201994202183%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd201995202187%_))
                                                    (let ((_%e201997202193%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd201995202187%_))))
                                                      (if (equal? _%e201997202193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201996202190%_))
                      (let ((_%e201998202197%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201996202190%_))))
                        (let ((_%tl202000202204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201998202197%_)))
                              (_%hd201999202201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201998202197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202000202204%_))
                              (_%__kont206309206310%_
                               _%hd201999202201%_
                               _%hd201980202262%_
                               _%hd201977202252%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd201980202262%_))
                                  (let ((_%e202021202067%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd201980202262%_))))
                                    (declare (not safe))
                                    (_%g201969202030%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201969202030%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd201980202262%_))
                          (let ((_%e202021202067%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd201980202262%_))))
                            (if (equal? _%e202021202067%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl201996202190%_))
                                    (_%__kont206313206314%_
                                     _%hd201995202187%_
                                     _%hd201977202252%_
                                     _%hd201974202242%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g201969202030%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g201969202030%_))))
                          (let () (declare (not safe)) (_%g201969202030%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd201980202262%_))
                      (let ((_%e202021202067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd201980202262%_))))
                        (if (equal? _%e202021202067%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201996202190%_))
                                (_%__kont206313206314%_
                                 _%hd201995202187%_
                                 _%hd201977202252%_
                                 _%hd201974202242%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g201969202030%_)))
                            (let () (declare (not safe)) (_%g201969202030%_))))
                      (let () (declare (not safe)) (_%g201969202030%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd201980202262%_))
                                                        (let ((_%e202021202067%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd201980202262%_))))
                  (if (equal? _%e202021202067%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl201996202190%_))
                          (_%__kont206313206314%_
                           _%hd201995202187%_
                           _%hd201977202252%_
                           _%hd201974202242%_)
                          (let () (declare (not safe)) (_%g201969202030%_)))
                      (let () (declare (not safe)) (_%g201969202030%_))))
                (let () (declare (not safe)) (_%g201969202030%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd201980202262%_))
                                                (let ((_%e202021202067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201980202262%_))))
                                                  (declare (not safe))
                                                  (_%g201969202030%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201969202030%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl201978202255%_))
                                    (_%__kont206311206312%_
                                     _%hd201977202252%_
                                     _%hd201974202242%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g201969202030%_))))))
                        (let () (declare (not safe)) (_%g201969202030%_)))))
                (let () (declare (not safe)) (_%g201969202030%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx202289%_)
        (let* ((_%g202293202322%_
                (lambda (_%g202294202318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202294202318%_))))
               (_%g202292202431%_
                (lambda (_%g202294202326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202294202326%_))
                      (let ((_%e202296202329%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202294202326%_))))
                        (let ((_%hd202297202333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202296202329%_)))
                              (_%tl202298202336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202296202329%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202298202336%_))
                              (let ((_g206934_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202298202336%_
                                        '0))))
                                (begin
                                  (let ((_g206935_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206934_)
                                               (##vector-length _g206934_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206935_ 2)))
                                        (error "Context expects 2 values"
                                               _g206935_)))
                                  (let ((_%target202299202339%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206934_ 0)))
                                        (_%tl202301202342%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206934_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202301202342%_))
                                        (letrec ((_%loop202302202345%_
                                                  (lambda (_%hd202300202349%_
                                                           _%clause202306202352%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202300202349%_))
                                                        (let ((_%e202303202355%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202300202349%_))))
                  (let ((_%lp-hd202304202359%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202303202355%_)))
                        (_%lp-tl202305202362%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202303202355%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd202304202359%_))
                        (let ((_g206936_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd202304202359%_
                                  '0))))
                          (begin
                            (let ((_g206937_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g206936_)
                                         (##vector-length _g206936_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g206937_ 2)))
                                  (error "Context expects 2 values"
                                         _g206937_)))
                            (let ((_%target202308202365%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g206936_ 0)))
                                  (_%tl202310202368%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g206936_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202310202368%_))
                                  (letrec ((_%loop202311202371%_
                                            (lambda (_%hd202309202375%_
                                                     _%clause202315202378%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202309202375%_))
                                                  (let ((_%e202312202381%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd202309202375%_))))
                                                    (let ((_%lp-hd202313202385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202312202381%_)))
                                                          (_%lp-tl202314202388%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202312202381%_))))
                                                      (_%loop202311202371%_
                                                       _%lp-tl202314202388%_
                                                       (cons _%lp-hd202313202385%_
                                                             _%clause202315202378%_))))
                                                  (let ((_%clause202316202391%_
                                                         (reverse _%clause202315202378%_)))
                                                    (_%loop202302202345%_
                                                     _%lp-tl202305202362%_
                                                     (cons _%clause202316202391%_
                                                           _%clause202306202352%_)))))))
                                    (_%loop202311202371%_
                                     _%target202308202365%_
                                     '()))
                                  (_%g202293202322%_ _%g202294202326%_)))))
                        (_%g202293202322%_ _%g202294202326%_))))
                (let ((_%clause202307202395%_
                       (reverse _%clause202306202352%_)))
                  ((lambda (_%L202399%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp206938
                                              (lambda (_%g202414202419%_
                                                       _%g202415202422%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp206939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g202416202425%_ _%g202417202428%_)
                             (cons _%g202416202425%_ _%g202417202428%_))))
                      (declare (not safe))
                      (__foldr1 __tmp206939 '() _%g202414202419%_)))
              _%g202415202422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp206938
                                          '()
                                          _%L202399%_)))
                                 '())))
                   _%clause202307202395%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202302202345%_
                                           _%target202299202339%_
                                           '()))
                                        (_%g202293202322%_
                                         _%g202294202326%_)))))
                              (_%g202293202322%_ _%g202294202326%_))))
                      (_%g202293202322%_ _%g202294202326%_)))))
          (_%g202292202431%_ _%$stx202289%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx202437%_)
        (let* ((_%g202441202459%_
                (lambda (_%g202442202455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202442202455%_))))
               (_%g202440202514%_
                (lambda (_%g202442202463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202442202463%_))
                      (let ((_%e202445202466%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202442202463%_))))
                        (let ((_%hd202446202470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202445202466%_)))
                              (_%tl202447202473%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202445202466%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202447202473%_))
                              (let ((_%e202448202476%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202447202473%_))))
                                (let ((_%hd202449202480%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202448202476%_)))
                                      (_%tl202450202483%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202448202476%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202450202483%_))
                                      (let ((_%e202451202486%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202450202483%_))))
                                        (let ((_%hd202452202490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202451202486%_)))
                                              (_%tl202453202493%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202451202486%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202453202493%_))
                                              ((lambda (_%L202496%_
                                                        _%L202498%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202498%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202496%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202452202490%_
                                               _%hd202449202480%_)
                                              (_%g202441202459%_
                                               _%g202442202463%_))))
                                      (_%g202441202459%_ _%g202442202463%_))))
                              (_%g202441202459%_ _%g202442202463%_))))
                      (_%g202441202459%_ _%g202442202463%_)))))
          (_%g202440202514%_ _%$stx202437%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx202518%_)
        (let* ((_%g202522202540%_
                (lambda (_%g202523202536%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202523202536%_))))
               (_%g202521202595%_
                (lambda (_%g202523202544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202523202544%_))
                      (let ((_%e202526202547%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202523202544%_))))
                        (let ((_%hd202527202551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202526202547%_)))
                              (_%tl202528202554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202526202547%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202528202554%_))
                              (let ((_%e202529202557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202528202554%_))))
                                (let ((_%hd202530202561%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202529202557%_)))
                                      (_%tl202531202564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202529202557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202531202564%_))
                                      (let ((_%e202532202567%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202531202564%_))))
                                        (let ((_%hd202533202571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202532202567%_)))
                                              (_%tl202534202574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202532202567%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202534202574%_))
                                              ((lambda (_%L202577%_
                                                        _%L202579%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202579%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202577%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202533202571%_
                                               _%hd202530202561%_)
                                              (_%g202522202540%_
                                               _%g202523202544%_))))
                                      (_%g202522202540%_ _%g202523202544%_))))
                              (_%g202522202540%_ _%g202523202544%_))))
                      (_%g202522202540%_ _%g202523202544%_)))))
          (_%g202521202595%_ _%$stx202518%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx202599%_)
        (let* ((_%g202603202632%_
                (lambda (_%g202604202628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202604202628%_))))
               (_%g202602202732%_
                (lambda (_%g202604202636%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202604202636%_))
                      (let ((_%e202607202639%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202604202636%_))))
                        (let ((_%hd202608202643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202607202639%_)))
                              (_%tl202609202646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202607202639%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202609202646%_))
                              (let ((_g206940_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202609202646%_
                                        '0))))
                                (begin
                                  (let ((_g206941_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206940_)
                                               (##vector-length _g206940_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206941_ 2)))
                                        (error "Context expects 2 values"
                                               _g206941_)))
                                  (let ((_%target202610202649%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206940_ 0)))
                                        (_%tl202612202652%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206940_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202612202652%_))
                                        (letrec ((_%loop202613202655%_
                                                  (lambda (_%hd202611202659%_
                                                           _%rule202617202662%_
                                                           _%proc202618202664%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202611202659%_))
                                                        (let ((_%e202614202667%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202611202659%_))))
                  (let ((_%lp-hd202615202671%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202614202667%_)))
                        (_%lp-tl202616202674%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202614202667%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd202615202671%_))
                        (let ((_%e202621202677%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd202615202671%_))))
                          (let ((_%hd202622202681%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202621202677%_)))
                                (_%tl202623202684%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202621202677%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202623202684%_))
                                (let ((_%e202624202687%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202623202684%_))))
                                  (let ((_%hd202625202691%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202624202687%_)))
                                        (_%tl202626202694%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202624202687%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202626202694%_))
                                        (_%loop202613202655%_
                                         _%lp-tl202616202674%_
                                         (cons _%hd202625202691%_
                                               _%rule202617202662%_)
                                         (cons _%hd202622202681%_
                                               _%proc202618202664%_))
                                        (_%g202603202632%_
                                         _%g202604202636%_))))
                                (_%g202603202632%_ _%g202604202636%_))))
                        (_%g202603202632%_ _%g202604202636%_))))
                (let ((_%rule202619202697%_ (reverse _%rule202617202662%_))
                      (_%proc202620202700%_ (reverse _%proc202618202664%_)))
                  ((lambda (_%L202703%_ _%L202705%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L202703%_
                                _%L202705%_))
                             (let ((__tmp206942
                                    (lambda (_%g202720202724%_
                                             _%g202721202727%_
                                             _%g202722202729%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g202721202727%_
                                                        (cons _%g202720202724%_
                                                              '())))
                                            _%g202722202729%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp206942
                                '()
                                _%L202703%_
                                _%L202705%_)))))
                   _%rule202619202697%_
                   _%proc202620202700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202613202655%_
                                           _%target202610202649%_
                                           '()
                                           '()))
                                        (_%g202603202632%_
                                         _%g202604202636%_)))))
                              (_%g202603202632%_ _%g202604202636%_))))
                      (_%g202603202632%_ _%g202604202636%_)))))
          (_%g202602202732%_ _%$stx202599%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx202737%_)
        (let* ((_%g202741202759%_
                (lambda (_%g202742202755%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202742202755%_))))
               (_%g202740202814%_
                (lambda (_%g202742202763%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202742202763%_))
                      (let ((_%e202745202766%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202742202763%_))))
                        (let ((_%hd202746202770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202745202766%_)))
                              (_%tl202747202773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202745202766%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202747202773%_))
                              (let ((_%e202748202776%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202747202773%_))))
                                (let ((_%hd202749202780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202748202776%_)))
                                      (_%tl202750202783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202748202776%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202750202783%_))
                                      (let ((_%e202751202786%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202750202783%_))))
                                        (let ((_%hd202752202790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202751202786%_)))
                                              (_%tl202753202793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202751202786%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202753202793%_))
                                              ((lambda (_%L202796%_
                                                        _%L202798%_)
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
                                                   (cons _%L202798%_ '()))
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
                 (cons _%L202796%_ '())))
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
                                   (cons _%L202798%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202752202790%_
                                               _%hd202749202780%_)
                                              (_%g202741202759%_
                                               _%g202742202763%_))))
                                      (_%g202741202759%_ _%g202742202763%_))))
                              (_%g202741202759%_ _%g202742202763%_))))
                      (_%g202741202759%_ _%g202742202763%_)))))
          (_%g202740202814%_ _%$stx202737%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx202818%_)
        (let* ((_%__stx206422206423%_ _%$stx202818%_)
               (_%g202823202848%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206422206423%_)))))
          (let ((_%__kont206425206426%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont206427206428%_
                 (lambda (_%L202895%_ _%L202897%_ _%L202898%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L202898%_ (cons _%L202897%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L202895%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206422206423%_))
                (let ((_%e202825202924%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206422206423%_))))
                  (let ((_%tl202827202931%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202825202924%_)))
                        (_%hd202826202928%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202825202924%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl202827202931%_))
                        (_%__kont206425206426%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202827202931%_))
                            (let ((_%e202834202865%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl202827202931%_))))
                              (let ((_%tl202836202872%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202834202865%_)))
                                    (_%hd202835202869%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202834202865%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd202835202869%_))
                                    (let ((_%e202837202875%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd202835202869%_))))
                                      (let ((_%tl202839202882%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202837202875%_)))
                                            (_%hd202838202879%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202837202875%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202839202882%_))
                                            (let ((_%e202840202885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202839202882%_))))
                                              (let ((_%tl202842202892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202840202885%_)))
                                                    (_%hd202841202889%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202840202885%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202842202892%_))
                                                    (_%__kont206427206428%_
                                                     _%tl202836202872%_
                                                     _%hd202841202889%_
                                                     _%hd202838202879%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202823202848%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202823202848%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202823202848%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g202823202848%_))))))
                (let () (declare (not safe)) (_%g202823202848%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx202942%_)
        (let* ((_%__stx206466206467%_ _%$stx202942%_)
               (_%g202947202978%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206466206467%_)))))
          (let ((_%__kont206469206470%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont206471206472%_
                 (lambda (_%L203045%_ _%L203047%_ _%L203048%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L203048%_
                                           (let ((__tmp206943
                                                  (lambda (_%g203068203071%_
                                                           _%g203069203074%_)
                                                    (cons _%g203068203071%_
                                                          _%g203069203074%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp206943
                                              '()
                                              _%L203047%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L203045%_)
                                     '()))))))
            (let ((_%__match206509206510%_
                   (lambda (_%e202955202985%_
                            _%hd202956202989%_
                            _%tl202957202992%_
                            _%e202958202995%_
                            _%hd202959202999%_
                            _%tl202960203002%_
                            _%e202961203005%_
                            _%hd202962203009%_
                            _%tl202963203012%_
                            _%__splice206473206474%_
                            _%target202964203015%_
                            _%tl202966203018%_)
                     (letrec ((_%loop202967203021%_
                               (lambda (_%hd202965203025%_ _%sig202971203028%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd202965203025%_))
                                     (let ((_%e202968203031%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd202965203025%_))))
                                       (let ((_%lp-tl202970203038%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e202968203031%_)))
                                             (_%lp-hd202969203035%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e202968203031%_))))
                                         (_%loop202967203021%_
                                          _%lp-tl202970203038%_
                                          (cons _%lp-hd202969203035%_
                                                _%sig202971203028%_))))
                                     (let ((_%sig202972203041%_
                                            (reverse _%sig202971203028%_)))
                                       (_%__kont206471206472%_
                                        _%tl202960203002%_
                                        _%sig202972203041%_
                                        _%hd202962203009%_))))))
                       (_%loop202967203021%_ _%target202964203015%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206466206467%_))
                  (let ((_%e202949203084%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206466206467%_))))
                    (let ((_%tl202951203091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202949203084%_)))
                          (_%hd202950203088%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202949203084%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202951203091%_))
                          (_%__kont206469206470%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202951203091%_))
                              (let ((_%e202958202995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202951203091%_))))
                                (let ((_%tl202960203002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202958202995%_)))
                                      (_%hd202959202999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202958202995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd202959202999%_))
                                      (let ((_%e202961203005%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd202959202999%_))))
                                        (let ((_%tl202963203012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202961203005%_)))
                                              (_%hd202962203009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202961203005%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl202963203012%_))
                                              (let ((_%__splice206473206474%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl202963203012%_
                                                        '0))))
                                                (let ((_%tl202966203018%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206473206474%_
                                                          '1)))
                                                      (_%target202964203015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206473206474%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202966203018%_))
                                                      (_%__match206509206510%_
                                                       _%e202949203084%_
                                                       _%hd202950203088%_
                                                       _%tl202951203091%_
                                                       _%e202958202995%_
                                                       _%hd202959202999%_
                                                       _%tl202960203002%_
                                                       _%e202961203005%_
                                                       _%hd202962203009%_
                                                       _%tl202963203012%_
                                                       _%__splice206473206474%_
                                                       _%target202964203015%_
                                                       _%tl202966203018%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g202947202978%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202947202978%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202947202978%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202947202978%_))))))
                  (let () (declare (not safe)) (_%g202947202978%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx203103%_)
        (let* ((_%__stx206512206513%_ _%$stx203103%_)
               (_%g203108203155%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206512206513%_)))))
          (let ((_%__kont206515206516%_
                 (lambda (_%L203317%_ _%L203319%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L203319%_
                               (let ((__tmp206944
                                      (lambda (_%g203339203342%_
                                               _%g203340203345%_)
                                        (cons _%g203339203342%_
                                              _%g203340203345%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp206944 '() _%L203317%_))))))
                (_%__kont206519206520%_
                 (lambda (_%L203212%_ _%L203214%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L203214%_
                               (let ((__tmp206945
                                      (lambda (_%g203231203234%_
                                               _%g203232203237%_)
                                        (cons _%g203231203234%_
                                              _%g203232203237%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp206945 '() _%L203212%_)))))))
            (let* ((_%__match206579206580%_
                    (lambda (_%e203135203162%_
                             _%hd203136203166%_
                             _%tl203137203169%_
                             _%e203138203172%_
                             _%hd203139203176%_
                             _%tl203140203179%_
                             _%__splice206521206522%_
                             _%target203141203182%_
                             _%tl203143203185%_)
                      (letrec ((_%loop203144203188%_
                                (lambda (_%hd203142203192%_
                                         _%sig203148203195%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203142203192%_))
                                      (let ((_%e203145203198%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203142203192%_))))
                                        (let ((_%lp-tl203147203205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203145203198%_)))
                                              (_%lp-hd203146203202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203145203198%_))))
                                          (_%loop203144203188%_
                                           _%lp-tl203147203205%_
                                           (cons _%lp-hd203146203202%_
                                                 _%sig203148203195%_))))
                                      (let ((_%sig203149203208%_
                                             (reverse _%sig203148203195%_)))
                                        (_%__kont206519206520%_
                                         _%sig203149203208%_
                                         _%hd203139203176%_))))))
                        (_%loop203144203188%_ _%target203141203182%_ '()))))
                   (_%__match206571206572%_
                    (lambda (_%e203135203162%_
                             _%hd203136203166%_
                             _%tl203137203169%_
                             _%e203138203172%_
                             _%hd203139203176%_
                             _%tl203140203179%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl203140203179%_))
                          (let ((_%__splice206521206522%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl203140203179%_
                                    '0))))
                            (let ((_%tl203143203185%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice206521206522%_
                                      '1)))
                                  (_%target203141203182%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice206521206522%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203143203185%_))
                                  (_%__match206579206580%_
                                   _%e203135203162%_
                                   _%hd203136203166%_
                                   _%tl203137203169%_
                                   _%e203138203172%_
                                   _%hd203139203176%_
                                   _%tl203140203179%_
                                   _%__splice206521206522%_
                                   _%target203141203182%_
                                   _%tl203143203185%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g203108203155%_)))))
                          (let () (declare (not safe)) (_%g203108203155%_)))))
                   (_%__match206559206560%_
                    (lambda (_%e203112203247%_
                             _%hd203113203251%_
                             _%tl203114203254%_
                             _%e203115203257%_
                             _%hd203116203261%_
                             _%tl203117203264%_
                             _%e203118203267%_
                             _%hd203119203271%_
                             _%tl203120203274%_
                             _%e203121203277%_
                             _%hd203122203281%_
                             _%tl203123203284%_
                             _%__splice206517206518%_
                             _%target203124203287%_
                             _%tl203126203290%_)
                      (letrec ((_%loop203127203293%_
                                (lambda (_%hd203125203297%_
                                         _%sig203131203300%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203125203297%_))
                                      (let ((_%e203128203303%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203125203297%_))))
                                        (let ((_%lp-tl203130203310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203128203303%_)))
                                              (_%lp-hd203129203307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203128203303%_))))
                                          (_%loop203127203293%_
                                           _%lp-tl203130203310%_
                                           (cons _%lp-hd203129203307%_
                                                 _%sig203131203300%_))))
                                      (let ((_%sig203132203313%_
                                             (reverse _%sig203131203300%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203120203274%_))
                                            (_%__kont206515206516%_
                                             _%sig203132203313%_
                                             _%hd203116203261%_)
                                            (_%__match206571206572%_
                                             _%e203112203247%_
                                             _%hd203113203251%_
                                             _%tl203114203254%_
                                             _%e203115203257%_
                                             _%hd203116203261%_
                                             _%tl203117203264%_)))))))
                        (_%loop203127203293%_ _%target203124203287%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206512206513%_))
                  (let ((_%e203112203247%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206512206513%_))))
                    (let ((_%tl203114203254%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203112203247%_)))
                          (_%hd203113203251%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203112203247%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203114203254%_))
                          (let ((_%e203115203257%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203114203254%_))))
                            (let ((_%tl203117203264%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203115203257%_)))
                                  (_%hd203116203261%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203115203257%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203117203264%_))
                                  (let ((_%e203118203267%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203117203264%_))))
                                    (let ((_%tl203120203274%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203118203267%_)))
                                          (_%hd203119203271%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203118203267%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd203119203271%_))
                                          (let ((_%e203121203277%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd203119203271%_))))
                                            (let ((_%tl203123203284%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203121203277%_)))
                                                  (_%hd203122203281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203121203277%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd203122203281%_))
                                                  (if (let ((__tmp206946
                                                             |gxc[1]#_g206947_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp206946
                                                         _%hd203122203281%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl203123203284%_))
                                                          (let ((_%__splice206517206518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203123203284%_ '0))))
                    (let ((_%tl203126203290%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206517206518%_ '1)))
                          (_%target203124203287%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206517206518%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203126203290%_))
                          (_%__match206559206560%_
                           _%e203112203247%_
                           _%hd203113203251%_
                           _%tl203114203254%_
                           _%e203115203257%_
                           _%hd203116203261%_
                           _%tl203117203264%_
                           _%e203118203267%_
                           _%hd203119203271%_
                           _%tl203120203274%_
                           _%e203121203277%_
                           _%hd203122203281%_
                           _%tl203123203284%_
                           _%__splice206517206518%_
                           _%target203124203287%_
                           _%tl203126203290%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203117203264%_))
                              (let ((_%__splice206521206522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203117203264%_
                                        '0))))
                                (let ((_%tl203143203185%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice206521206522%_
                                          '1)))
                                      (_%target203141203182%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice206521206522%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203143203185%_))
                                      (_%__match206579206580%_
                                       _%e203112203247%_
                                       _%hd203113203251%_
                                       _%tl203114203254%_
                                       _%e203115203257%_
                                       _%hd203116203261%_
                                       _%tl203117203264%_
                                       _%__splice206521206522%_
                                       _%target203141203182%_
                                       _%tl203143203185%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g203108203155%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203108203155%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl203117203264%_))
                      (let ((_%__splice206521206522%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl203117203264%_
                                '0))))
                        (let ((_%tl203143203185%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206521206522%_ '1)))
                              (_%target203141203182%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206521206522%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203143203185%_))
                              (_%__match206579206580%_
                               _%e203112203247%_
                               _%hd203113203251%_
                               _%tl203114203254%_
                               _%e203115203257%_
                               _%hd203116203261%_
                               _%tl203117203264%_
                               _%__splice206521206522%_
                               _%target203141203182%_
                               _%tl203143203185%_)
                              (let ()
                                (declare (not safe))
                                (_%g203108203155%_)))))
                      (let () (declare (not safe)) (_%g203108203155%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl203117203264%_))
                  (let ((_%__splice206521206522%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203117203264%_ '0))))
                    (let ((_%tl203143203185%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206521206522%_ '1)))
                          (_%target203141203182%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice206521206522%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203143203185%_))
                          (_%__match206579206580%_
                           _%e203112203247%_
                           _%hd203113203251%_
                           _%tl203114203254%_
                           _%e203115203257%_
                           _%hd203116203261%_
                           _%tl203117203264%_
                           _%__splice206521206522%_
                           _%target203141203182%_
                           _%tl203143203185%_)
                          (let () (declare (not safe)) (_%g203108203155%_)))))
                  (let () (declare (not safe)) (_%g203108203155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203117203264%_))
                                                      (let ((_%__splice206521206522%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl203117203264%_ '0))))
                (let ((_%tl203143203185%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206521206522%_ '1)))
                      (_%target203141203182%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice206521206522%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203143203185%_))
                      (_%__match206579206580%_
                       _%e203112203247%_
                       _%hd203113203251%_
                       _%tl203114203254%_
                       _%e203115203257%_
                       _%hd203116203261%_
                       _%tl203117203264%_
                       _%__splice206521206522%_
                       _%target203141203182%_
                       _%tl203143203185%_)
                      (let () (declare (not safe)) (_%g203108203155%_)))))
              (let () (declare (not safe)) (_%g203108203155%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203117203264%_))
                                              (let ((_%__splice206521206522%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203117203264%_
                                                        '0))))
                                                (let ((_%tl203143203185%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206521206522%_
                                                          '1)))
                                                      (_%target203141203182%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice206521206522%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203143203185%_))
                                                      (_%__match206579206580%_
                                                       _%e203112203247%_
                                                       _%hd203113203251%_
                                                       _%tl203114203254%_
                                                       _%e203115203257%_
                                                       _%hd203116203261%_
                                                       _%tl203117203264%_
                                                       _%__splice206521206522%_
                                                       _%target203141203182%_
                                                       _%tl203143203185%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203108203155%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203108203155%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203117203264%_))
                                      (let ((_%__splice206521206522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203117203264%_
                                                '0))))
                                        (let ((_%tl203143203185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206521206522%_
                                                  '1)))
                                              (_%target203141203182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice206521206522%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203143203185%_))
                                              (_%__match206579206580%_
                                               _%e203112203247%_
                                               _%hd203113203251%_
                                               _%tl203114203254%_
                                               _%e203115203257%_
                                               _%hd203116203261%_
                                               _%tl203117203264%_
                                               _%__splice206521206522%_
                                               _%target203141203182%_
                                               _%tl203143203185%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g203108203155%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203108203155%_))))))
                          (let () (declare (not safe)) (_%g203108203155%_)))))
                  (let () (declare (not safe)) (_%g203108203155%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx204502%_ _%id204504%_)
        (let ((_%proc204508%_
               (let ((__tmp206948
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id204504%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp206948))))
          (if (procedure? _%proc204508%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx204502%_
                 _%id204504%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx204493%_ _%id204495%_)
        (let ((_%klass204499%_
               (let ((__tmp206949
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id204495%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp206949))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass204499%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx204493%_
                 _%id204495%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx203743%_ _%proc203745%_ _%sig203746%_)
        (letrec ((_%signature-arity203748%_
                  (lambda (_%args204425%_)
                    (let _%loop204428%_ ((_%rest204431%_ _%args204425%_)
                                         (_%count204433%_ '0))
                      (let* ((_%rest204434204445%_ _%rest204431%_)
                             (_%E204438204451%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest204434204445%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K204441204482%_
                               (lambda (_%rest204479%_)
                                 (_%loop204428%_
                                  _%rest204479%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count204433%_ '1)))))
                              (_%K204440204471%_ (lambda () _%count204433%_))
                              (_%K204439204459%_
                               (lambda () (cons _%count204433%_ '()))))
                          (let ((_%try-match204436204475%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest204434204445%_))
                                       (_%K204440204471%_)
                                       (_%K204439204459%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest204434204445%_))
                                (let* ((_%tl204443204486%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest204434204445%_)))
                                       (_%rest204490%_ _%tl204443204486%_))
                                  (_%K204441204482%_ _%rest204490%_))
                                (_%try-match204436204475%_))))))))
                 (_%make-signature203750%_
                  (lambda (_%args204307%_
                           _%return204309%_
                           _%effect204310%_
                           _%unchecked204311%_)
                    (let ((__tmp206950
                           (lambda (_%g204312204314%_)
                             (|gxc[1]#verify-class!|
                              _%ctx203743%_
                              _%g204312204314%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp206950 _%args204307%_))
                    (|gxc[1]#verify-class!| _%ctx203743%_ _%return204309%_)
                    (if _%unchecked204311%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx203743%_
                         _%unchecked204311%_)
                        '#!void)
                    (let ((_%arity204318%_
                           (_%signature-arity203748%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args204307%_)))))
                      (if _%effect204310%_
                          (let ((_%effect204321%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect204310%_))))
                            (if (and (list? _%effect204321%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect204321%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx203743%_
                                   _%proc203745%_
                                   _%effect204321%_))))
                          '#!void)
                      (cons _%arity204318%_
                            (cons (let* ((_%g204324204347%_
                                          (lambda (_%g204325204343%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g204325204343%_))))
                                         (_%g204323204421%_
                                          (lambda (_%g204325204351%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g204325204351%_))
                                                (let ((_%e204330204354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g204325204351%_))))
                                                  (let ((_%hd204331204358%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204330204354%_)))
                                                        (_%tl204332204361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204330204354%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204332204361%_))
                                                        (let ((_%e204333204364%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204332204361%_))))
                  (let ((_%hd204334204368%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204333204364%_)))
                        (_%tl204335204371%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204333204364%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204335204371%_))
                        (let ((_%e204336204374%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204335204371%_))))
                          (let ((_%hd204337204378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204336204374%_)))
                                (_%tl204338204381%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204336204374%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204338204381%_))
                                (let ((_%e204339204384%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204338204381%_))))
                                  (let ((_%hd204340204388%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204339204384%_)))
                                        (_%tl204341204391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204339204384%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204341204391%_))
                                        ((lambda (_%L204394%_
                                                  _%L204396%_
                                                  _%L204397%_
                                                  _%L204398%_)
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
                           (cons _%L204398%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204397%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L204396%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L204394%_ '()))
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
                                         _%hd204340204388%_
                                         _%hd204337204378%_
                                         _%hd204334204368%_
                                         _%hd204331204358%_)
                                        (_%g204324204347%_
                                         _%g204325204351%_))))
                                (_%g204324204347%_ _%g204325204351%_))))
                        (_%g204324204347%_ _%g204325204351%_))))
                (_%g204324204347%_ _%g204325204351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204324204347%_
                                                 _%g204325204351%_)))))
                                    (_%g204323204421%_
                                     (list _%args204307%_
                                           _%return204309%_
                                           _%effect204310%_
                                           _%unchecked204311%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx203743%_ _%proc203745%_)
          (let* ((_%__stx206590206591%_ _%sig203746%_)
                 (_%g203757203860%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx206590206591%_)))))
            (let ((_%__kont206593206594%_
                   (lambda (_%L204288%_ _%L204290%_)
                     (_%make-signature203750%_
                      _%L204290%_
                      _%L204288%_
                      '#f
                      '#f)))
                  (_%__kont206595206596%_
                   (lambda (_%L204239%_ _%L204241%_ _%L204242%_)
                     (_%make-signature203750%_
                      _%L204242%_
                      _%L204241%_
                      _%L204239%_
                      '#f)))
                  (_%__kont206597206598%_
                   (lambda (_%L204163%_ _%L204165%_ _%L204166%_)
                     (_%make-signature203750%_
                      _%L204166%_
                      _%L204165%_
                      _%L204163%_
                      (let ((__tmp206951
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc203745%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp206951)))))
                  (_%__kont206599206600%_
                   (lambda (_%L204069%_ _%L204071%_ _%L204072%_ _%L204073%_)
                     (_%make-signature203750%_
                      _%L204073%_
                      _%L204072%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204069%_)))))
                  (_%__kont206601206602%_
                   (lambda (_%L203976%_ _%L203978%_)
                     (_%make-signature203750%_
                      _%L203978%_
                      _%L203976%_
                      '#f
                      (let ((__tmp206952
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc203745%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp206952)))))
                  (_%__kont206603206604%_
                   (lambda (_%L203911%_ _%L203913%_ _%L203914%_)
                     (_%make-signature203750%_
                      _%L203914%_
                      _%L203913%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L203911%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206590206591%_))
                  (let ((_%e203761204268%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206590206591%_))))
                    (let ((_%tl203763204275%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203761204268%_)))
                          (_%hd203762204272%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203761204268%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203763204275%_))
                          (let ((_%e203764204278%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203763204275%_))))
                            (let ((_%tl203766204285%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203764204278%_)))
                                  (_%hd203765204282%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203764204278%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203766204285%_))
                                  (_%__kont206593206594%_
                                   _%hd203765204282%_
                                   _%hd203762204272%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203766204285%_))
                                      (let ((_%e203776204215%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203766204285%_))))
                                        (let ((_%tl203778204222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203776204215%_)))
                                              (_%hd203777204219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203776204215%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd203777204219%_))
                                              (let ((_%e203779204225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203777204219%_))))
                                                (if (equal? _%e203779204225%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203778204222%_))
                                                        (let ((_%e203780204229%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl203778204222%_))))
                  (let ((_%tl203782204236%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203780204229%_)))
                        (_%hd203781204233%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203780204229%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl203782204236%_))
                        (_%__kont206595206596%_
                         _%hd203781204233%_
                         _%hd203765204282%_
                         _%hd203762204272%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203782204236%_))
                            (let ((_%e203799204149%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl203782204236%_))))
                              (let ((_%tl203801204156%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203799204149%_)))
                                    (_%hd203800204153%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203799204149%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd203800204153%_))
                                    (let ((_%e203802204159%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd203800204153%_))))
                                      (if (equal? _%e203802204159%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203801204156%_))
                                              (_%__kont206597206598%_
                                               _%hd203781204233%_
                                               _%hd203765204282%_
                                               _%hd203762204272%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203801204156%_))
                                                  (let ((_%e203824204059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203801204156%_))))
                                                    (let ((_%tl203826204066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203824204059%_)))
                                                          (_%hd203825204063%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203824204059%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203826204066%_))
                                                          (_%__kont206599206600%_
                                                           _%hd203825204063%_
                                                           _%hd203781204233%_
                                                           _%hd203765204282%_
                                                           _%hd203762204272%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g203757203860%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203757203860%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203757203860%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203757203860%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203757203860%_))))))
                (let () (declare (not safe)) (_%g203757203860%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e203779204225%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl203778204222%_))
                                                            (_%__kont206601206602%_
                                                             _%hd203765204282%_
                                                             _%hd203762204272%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203778204222%_))
                        (let ((_%e203852203901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203778204222%_))))
                          (let ((_%tl203854203908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203852203901%_)))
                                (_%hd203853203905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203852203901%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203854203908%_))
                                (_%__kont206603206604%_
                                 _%hd203853203905%_
                                 _%hd203765204282%_
                                 _%hd203762204272%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g203757203860%_)))))
                        (let () (declare (not safe)) (_%g203757203860%_))))
                (let () (declare (not safe)) (_%g203757203860%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203757203860%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203757203860%_))))))
                          (let () (declare (not safe)) (_%g203757203860%_)))))
                  (let () (declare (not safe)) (_%g203757203860%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig203354%_)
        (let* ((_%g203357203437%_
                (lambda (_%g203358203433%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203358203433%_))))
               (_%g203356203739%_
                (lambda (_%g203358203441%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203358203441%_))
                      (let ((_%e203364203444%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203358203441%_))))
                        (let ((_%hd203365203448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203364203444%_)))
                              (_%tl203366203451%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203364203444%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203366203451%_))
                              (let ((_%e203367203454%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203366203451%_))))
                                (let ((_%hd203368203458%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203367203454%_)))
                                      (_%tl203369203461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203367203454%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd203368203458%_))
                                      (let ((_%e203370203464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd203368203458%_))))
                                        (if (equal? _%e203370203464%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl203369203461%_))
                                                (let ((_%e203371203468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl203369203461%_))))
                                                  (let ((_%hd203372203472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203371203468%_)))
                                                        (_%tl203373203475%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203371203468%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203372203472%_))
                                                        (let ((_%e203374203478%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203372203472%_))))
                  (let ((_%hd203375203482%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203374203478%_)))
                        (_%tl203376203485%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203374203478%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd203375203482%_))
                        (if (let ((__tmp206953 |gxc[1]#_g206954_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp206953
                               _%hd203375203482%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203376203485%_))
                                (let ((_%e203377203488%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203376203485%_))))
                                  (let ((_%hd203378203492%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203377203488%_)))
                                        (_%tl203379203495%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203377203488%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203379203495%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203373203475%_))
                                            (let ((_%e203380203498%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203373203475%_))))
                                              (let ((_%hd203381203502%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203380203498%_)))
                                                    (_%tl203382203505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203380203498%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd203381203502%_))
                                                    (let ((_%e203383203508%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd203381203502%_))))
                                                      (if (equal? _%e203383203508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203382203505%_))
                      (let ((_%e203384203512%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203382203505%_))))
                        (let ((_%hd203385203516%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203384203512%_)))
                              (_%tl203386203519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203384203512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd203385203516%_))
                              (let ((_%e203387203522%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd203385203516%_))))
                                (let ((_%hd203388203526%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203387203522%_)))
                                      (_%tl203389203529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203387203522%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd203388203526%_))
                                      (if (let ((__tmp206955
                                                 |gxc[1]#_g206956_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp206955
                                             _%hd203388203526%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203389203529%_))
                                              (let ((_%e203390203532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203389203529%_))))
                                                (let ((_%hd203391203536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203390203532%_)))
                                                      (_%tl203392203539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203390203532%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203392203539%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203386203519%_))
                                                          (let ((_%e203393203542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl203386203519%_))))
                    (let ((_%hd203394203546%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203393203542%_)))
                          (_%tl203395203549%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203393203542%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd203394203546%_))
                          (let ((_%e203396203552%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd203394203546%_))))
                            (if (equal? _%e203396203552%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203395203549%_))
                                    (let ((_%e203397203556%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl203395203549%_))))
                                      (let ((_%hd203398203560%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203397203556%_)))
                                            (_%tl203399203563%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203397203556%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd203398203560%_))
                                            (let ((_%e203400203566%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd203398203560%_))))
                                              (let ((_%hd203401203570%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203400203566%_)))
                                                    (_%tl203402203573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203400203566%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd203401203570%_))
                                                    (if (let ((__tmp206957
                                                               |gxc[1]#_g206958_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp206957
                                                           _%hd203401203570%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203402203573%_))
                                                            (let ((_%e203403203576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl203402203573%_))))
                      (let ((_%hd203404203580%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203403203576%_)))
                            (_%tl203405203583%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203403203576%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203405203583%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203399203563%_))
                                (let ((_%e203406203586%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203399203563%_))))
                                  (let ((_%hd203407203590%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203406203586%_)))
                                        (_%tl203408203593%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203406203586%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd203407203590%_))
                                        (let ((_%e203409203596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd203407203590%_))))
                                          (if (equal? _%e203409203596%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203408203593%_))
                                                  (let ((_%e203410203600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203408203593%_))))
                                                    (let ((_%hd203411203604%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203410203600%_)))
                                                          (_%tl203412203607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203410203600%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd203411203604%_))
                                                          (let ((_%e203413203610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd203411203604%_))))
                    (let ((_%hd203414203614%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203413203610%_)))
                          (_%tl203415203617%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203413203610%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd203414203614%_))
                          (if (let ((__tmp206959 |gxc[1]#_g206960_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp206959
                                 _%hd203414203614%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203415203617%_))
                                  (let ((_%e203416203620%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203415203617%_))))
                                    (let ((_%hd203417203624%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203416203620%_)))
                                          (_%tl203418203627%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203416203620%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl203418203627%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203412203607%_))
                                              (let ((_%e203419203630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203412203607%_))))
                                                (let ((_%hd203420203634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203419203630%_)))
                                                      (_%tl203421203637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203419203630%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd203420203634%_))
                                                      (let ((_%e203422203640%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd203420203634%_))))
                (if (equal? _%e203422203640%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203421203637%_))
                        (let ((_%e203423203644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203421203637%_))))
                          (let ((_%hd203424203648%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203423203644%_)))
                                (_%tl203425203651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203423203644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd203424203648%_))
                                (let ((_%e203426203654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd203424203648%_))))
                                  (let ((_%hd203427203658%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203426203654%_)))
                                        (_%tl203428203661%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203426203654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd203427203658%_))
                                        (if (let ((__tmp206961
                                                   |gxc[1]#_g206962_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp206961
                                               _%hd203427203658%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl203428203661%_))
                                                (let ((_%e203429203664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl203428203661%_))))
                                                  (let ((_%hd203430203668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203429203664%_)))
                                                        (_%tl203431203671%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203429203664%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl203431203671%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl203425203651%_))
                                                            ((lambda (_%L203674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L203676%_
                              _%L203677%_
                              _%L203678%_
                              _%L203679%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L203676%_))
                           (cons _%L203676%_
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
                       (cons _%L203678%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L203674%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd203430203668%_
                     _%hd203417203624%_
                     _%hd203404203580%_
                     _%hd203391203536%_
                     _%hd203378203492%_)
                    (_%g203357203437%_ _%g203358203441%_))
                (_%g203357203437%_ _%g203358203441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g203357203437%_
                                                 _%g203358203441%_))
                                            (_%g203357203437%_
                                             _%g203358203441%_))
                                        (_%g203357203437%_
                                         _%g203358203441%_))))
                                (_%g203357203437%_ _%g203358203441%_))))
                        (_%g203357203437%_ _%g203358203441%_))
                    (_%g203357203437%_ _%g203358203441%_)))
              (_%g203357203437%_ _%g203358203441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203357203437%_
                                               _%g203358203441%_))
                                          (_%g203357203437%_
                                           _%g203358203441%_))))
                                  (_%g203357203437%_ _%g203358203441%_))
                              (_%g203357203437%_ _%g203358203441%_))
                          (_%g203357203437%_ _%g203358203441%_))))
                  (_%g203357203437%_ _%g203358203441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g203357203437%_
                                                   _%g203358203441%_))
                                              (_%g203357203437%_
                                               _%g203358203441%_)))
                                        (_%g203357203437%_
                                         _%g203358203441%_))))
                                (_%g203357203437%_ _%g203358203441%_))
                            (_%g203357203437%_ _%g203358203441%_))))
                    (_%g203357203437%_ _%g203358203441%_))
                (_%g203357203437%_ _%g203358203441%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g203357203437%_
                                                     _%g203358203441%_))))
                                            (_%g203357203437%_
                                             _%g203358203441%_))))
                                    (_%g203357203437%_ _%g203358203441%_))
                                (_%g203357203437%_ _%g203358203441%_)))
                          (_%g203357203437%_ _%g203358203441%_))))
                  (_%g203357203437%_ _%g203358203441%_))
              (_%g203357203437%_ _%g203358203441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g203357203437%_
                                               _%g203358203441%_))
                                          (_%g203357203437%_
                                           _%g203358203441%_))
                                      (_%g203357203437%_ _%g203358203441%_))))
                              (_%g203357203437%_ _%g203358203441%_))))
                      (_%g203357203437%_ _%g203358203441%_))
                  (_%g203357203437%_ _%g203358203441%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g203357203437%_
                                                     _%g203358203441%_))))
                                            (_%g203357203437%_
                                             _%g203358203441%_))
                                        (_%g203357203437%_
                                         _%g203358203441%_))))
                                (_%g203357203437%_ _%g203358203441%_))
                            (_%g203357203437%_ _%g203358203441%_))
                        (_%g203357203437%_ _%g203358203441%_))))
                (_%g203357203437%_ _%g203358203441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g203357203437%_
                                                 _%g203358203441%_))
                                            (_%g203357203437%_
                                             _%g203358203441%_)))
                                      (_%g203357203437%_ _%g203358203441%_))))
                              (_%g203357203437%_ _%g203358203441%_))))
                      (_%g203357203437%_ _%g203358203441%_)))))
          (_%g203356203739%_ _%sig203354%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx204511%_)
        (let* ((_%g204514204532%_
                (lambda (_%g204515204528%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204515204528%_))))
               (_%g204513204587%_
                (lambda (_%g204515204536%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204515204536%_))
                      (let ((_%e204518204539%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204515204536%_))))
                        (let ((_%hd204519204543%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204518204539%_)))
                              (_%tl204520204546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204518204539%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204520204546%_))
                              (let ((_%e204521204549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204520204546%_))))
                                (let ((_%hd204522204553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204521204549%_)))
                                      (_%tl204523204556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204521204549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204523204556%_))
                                      (let ((_%e204524204559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204523204556%_))))
                                        (let ((_%hd204525204563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204524204559%_)))
                                              (_%tl204526204566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204524204559%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204526204566%_))
                                              ((lambda (_%L204569%_
                                                        _%L204571%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L204571%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L204569%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx204511%_
                                                        _%L204571%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx204511%_
                                                        _%L204569%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L204571%_
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
                                                   (cons _%L204569%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g204514204532%_
                                                      _%g204515204536%_)))
                                               _%hd204525204563%_
                                               _%hd204522204553%_)
                                              (_%g204514204532%_
                                               _%g204515204536%_))))
                                      (_%g204514204532%_ _%g204515204536%_))))
                              (_%g204514204532%_ _%g204515204536%_))))
                      (_%g204514204532%_ _%g204515204536%_)))))
          (_%g204513204587%_ _%stx204511%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx204591%_)
        (let* ((_%g204594204618%_
                (lambda (_%g204595204614%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204595204614%_))))
               (_%g204593204901%_
                (lambda (_%g204595204622%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204595204622%_))
                      (let ((_%e204598204625%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204595204622%_))))
                        (let ((_%hd204599204629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204598204625%_)))
                              (_%tl204600204632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204598204625%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204600204632%_))
                              (let ((_%e204601204635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204600204632%_))))
                                (let ((_%hd204602204639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204601204635%_)))
                                      (_%tl204603204642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204601204635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204603204642%_))
                                      (let ((_g206963_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204603204642%_
                                                '0))))
                                        (begin
                                          (let ((_g206964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206963_)
                                                       (##vector-length
                                                        _g206963_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206964_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206964_)))
                                          (let ((_%target204604204645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206963_ 0)))
                                                (_%tl204606204648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206963_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204606204648%_))
                                                (letrec ((_%loop204607204651%_
                                                          (lambda (_%hd204605204655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature204611204658%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204605204655%_))
                        (let ((_%e204608204661%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204605204655%_))))
                          (let ((_%lp-hd204609204665%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204608204661%_)))
                                (_%lp-tl204610204668%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204608204661%_))))
                            (_%loop204607204651%_
                             _%lp-tl204610204668%_
                             (cons _%lp-hd204609204665%_
                                   _%signature204611204658%_))))
                        (let ((_%signature204612204671%_
                               (reverse _%signature204611204658%_)))
                          ((lambda (_%L204675%_ _%L204677%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L204677%_))
                                 (let* ((_%g204695204710%_
                                         (lambda (_%g204696204706%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g204696204706%_))))
                                        (_%g204694204889%_
                                         (lambda (_%g204696204714%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g204696204714%_))
                                               (let ((_%e204699204717%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g204696204714%_))))
                                                 (let ((_%hd204700204721%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e204699204717%_)))
                                                       (_%tl204701204724%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e204699204717%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl204701204724%_))
                                                       (let ((_%e204702204727%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl204701204724%_))))
                 (let ((_%hd204703204731%_
                        (let ()
                          (declare (not safe))
                          (##car _%e204702204727%_)))
                       (_%tl204704204734%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e204702204727%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl204704204734%_))
                       ((lambda (_%L204737%_ _%L204739%_)
                          (let* ((_%g204755204763%_
                                  (lambda (_%g204756204759%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g204756204759%_))))
                                 (_%g204754204885%_
                                  (lambda (_%g204756204767%_)
                                    ((lambda (_%L204770%_)
                                       (let* ((_%unchecked204783%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L204737%_))
                                              (_%g204786204794%_
                                               (lambda (_%g204787204790%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g204787204790%_))))
                                              (_%g204785204817%_
                                               (lambda (_%g204787204798%_)
                                                 ((lambda (_%L204801%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L204770%_
                                                                (cons _%L204801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g204787204798%_))))
                                         (_%g204785204817%_
                                          (if _%unchecked204783%_
                                              (let* ((_%g204821204836%_
                                                      (lambda (_%g204822204832%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g204822204832%_))))
                                                     (_%g204820204881%_
                                                      (lambda (_%g204822204840%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g204822204840%_))
                                                            (let ((_%e204825204843%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g204822204840%_))))
                      (let ((_%hd204826204847%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204825204843%_)))
                            (_%tl204827204850%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204825204843%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204827204850%_))
                            (let ((_%e204828204853%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204827204850%_))))
                              (let ((_%hd204829204857%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204828204853%_)))
                                    (_%tl204830204860%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204828204853%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl204830204860%_))
                                    ((lambda (_%L204863%_ _%L204865%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L204865%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204739%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L204863%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd204829204857%_
                                     _%hd204826204847%_)
                                    (_%g204821204836%_ _%g204822204840%_))))
                            (_%g204821204836%_ _%g204822204840%_))))
                    (_%g204821204836%_ _%g204822204840%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204820204881%_
                                                 _%unchecked204783%_))
                                              '(begin)))))
                                     _%g204756204767%_))))
                            (_%g204754204885%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L204677%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204739%_ '()))
                   (cons '#f (cons 'signature: (cons _%L204737%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd204703204731%_
                        _%hd204700204721%_)
                       (_%g204695204710%_ _%g204696204714%_))))
               (_%g204695204710%_ _%g204696204714%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g204695204710%_
                                                _%g204696204714%_)))))
                                   (_%g204694204889%_
                                    (|gxc[1]#parse-signature|
                                     _%stx204591%_
                                     _%L204677%_
                                     (let ((__tmp206965
                                            (lambda (_%g204892204895%_
                                                     _%g204893204898%_)
                                              (cons _%g204892204895%_
                                                    _%g204893204898%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp206965
                                        '()
                                        _%L204675%_)))))
                                 (_%g204594204618%_ _%g204595204622%_)))
                           _%signature204612204671%_
                           _%hd204602204639%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204607204651%_
                                                   _%target204604204645%_
                                                   '()))
                                                (_%g204594204618%_
                                                 _%g204595204622%_)))))
                                      (_%g204594204618%_ _%g204595204622%_))))
                              (_%g204594204618%_ _%g204595204622%_))))
                      (_%g204594204618%_ _%g204595204622%_)))))
          (_%g204593204901%_ _%stx204591%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx204906%_)
        (let* ((_%g204909204933%_
                (lambda (_%g204910204929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204910204929%_))))
               (_%g204908205816%_
                (lambda (_%g204910204937%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204910204937%_))
                      (let ((_%e204913204940%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204910204937%_))))
                        (let ((_%hd204914204944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204913204940%_)))
                              (_%tl204915204947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204913204940%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204915204947%_))
                              (let ((_%e204916204950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204915204947%_))))
                                (let ((_%hd204917204954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204916204950%_)))
                                      (_%tl204918204957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204916204950%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204918204957%_))
                                      (let ((_g206966_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204918204957%_
                                                '0))))
                                        (begin
                                          (let ((_g206967_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g206966_)
                                                       (##vector-length
                                                        _g206966_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g206967_ 2)))
                                                (error "Context expects 2 values"
                                                       _g206967_)))
                                          (let ((_%target204919204960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g206966_ 0)))
                                                (_%tl204921204963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g206966_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204921204963%_))
                                                (letrec ((_%loop204922204966%_
                                                          (lambda (_%hd204920204970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature204926204973%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204920204970%_))
                        (let ((_%e204923204976%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204920204970%_))))
                          (let ((_%lp-hd204924204980%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204923204976%_)))
                                (_%lp-tl204925204983%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204923204976%_))))
                            (_%loop204922204966%_
                             _%lp-tl204925204983%_
                             (cons _%lp-hd204924204980%_
                                   _%case-signature204926204973%_))))
                        (let ((_%case-signature204927204986%_
                               (reverse _%case-signature204926204973%_)))
                          ((lambda (_%L204990%_ _%L204992%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L204992%_))
                                 (let* ((_%signatures205023%_
                                         (map (lambda (_%g205009205011%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx204906%_
                                                 _%L204992%_
                                                 _%g205009205011%_))
                                              (let ((__tmp206968
                                                     (lambda (_%g205014205017%_
                                                              _%g205015205020%_)
                                                       (cons _%g205014205017%_
                                                             _%g205015205020%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp206968
                                                 '()
                                                 _%L204990%_))))
                                        (_%g205026205052%_
                                         (lambda (_%g205027205048%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205027205048%_))))
                                        (_%g205025205812%_
                                         (lambda (_%g205027205056%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g205027205056%_))
                                               (let ((_g206969_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g205027205056%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g206970_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g206969_)
                        (##vector-length _g206969_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g206970_ 2)))
                 (error "Context expects 2 values" _g206970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target205030205059%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g206969_
                                                             0)))
                                                         (_%tl205032205062%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g206969_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205032205062%_))
                                                         (letrec ((_%loop205033205065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd205031205069%_
                                    _%sig205037205072%_
                                    _%arity205038205074%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205031205069%_))
                                 (let ((_%e205034205077%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205031205069%_))))
                                   (let ((_%lp-hd205035205081%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205034205077%_)))
                                         (_%lp-tl205036205084%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205034205077%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd205035205081%_))
                                         (let ((_%e205041205087%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd205035205081%_))))
                                           (let ((_%hd205042205091%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205041205087%_)))
                                                 (_%tl205043205094%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205041205087%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205043205094%_))
                                                 (let ((_%e205044205097%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205043205094%_))))
                                                   (let ((_%hd205045205101%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205044205097%_)))
                                                         (_%tl205046205104%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205044205097%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205046205104%_))
                                                         (_%loop205033205065%_
                                                          _%lp-tl205036205084%_
                                                          (cons _%hd205045205101%_
                                                                _%sig205037205072%_)
                                                          (cons _%hd205042205091%_
                                                                _%arity205038205074%_))
                                                         (_%g205026205052%_
                                                          _%g205027205056%_))))
                                                 (_%g205026205052%_
                                                  _%g205027205056%_))))
                                         (_%g205026205052%_
                                          _%g205027205056%_))))
                                 (let ((_%sig205039205107%_
                                        (reverse _%sig205037205072%_))
                                       (_%arity205040205110%_
                                        (reverse _%arity205038205074%_)))
                                   ((lambda (_%L205113%_ _%L205115%_)
                                      (let* ((_%g205132205140%_
                                              (lambda (_%g205133205136%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g205133205136%_))))
                                             (_%g205131205797%_
                                              (lambda (_%g205133205144%_)
                                                ((lambda (_%L205147%_)
                                                   (let* ((_%g205160205168%_
                                                           (lambda (_%g205161205164%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g205161205164%_))))
                  (_%g205159205190%_
                   (lambda (_%g205161205172%_)
                     ((lambda (_%L205175%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L205147%_ (cons _%L205175%_ '()))))
                      _%g205161205172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205159205190%_
                                                      (let ((_g206971_
                                                             (let _%loop205194%_ ((_%rest205197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures205023%_)
                                          (_%unchecked-proc205199%_ '#f)
                                          (_%unchecked-clauses205200%_ '()))
                       (let* ((_%rest205201205209%_ _%rest205197%_)
                              (_%else205203205221%_
                               (lambda ()
                                 (values _%unchecked-proc205199%_
                                         (reverse!
                                          _%unchecked-clauses205200%_))))
                              (_%K205205205662%_
                               (lambda (_%rest205225%_ _%hd205227%_)
                                 (let* ((_%g205229205316%_
                                         (lambda (_%g205230205312%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205230205312%_))))
                                        (_%g205228205658%_
                                         (lambda (_%g205230205320%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205230205320%_))
                                               (let ((_%e205237205323%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205230205320%_))))
                                                 (let ((_%hd205238205327%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205237205323%_)))
                                                       (_%tl205239205330%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205237205323%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205239205330%_))
                                                       (let ((_%e205240205333%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205239205330%_))))
                 (let ((_%hd205241205337%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205240205333%_)))
                       (_%tl205242205340%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205240205333%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd205241205337%_))
                       (let ((_%e205243205343%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd205241205337%_))))
                         (let ((_%hd205244205347%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205243205343%_)))
                               (_%tl205245205350%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205243205343%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl205245205350%_))
                               (let ((_%e205246205353%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl205245205350%_))))
                                 (let ((_%hd205247205357%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205246205353%_)))
                                       (_%tl205248205360%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205246205353%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd205247205357%_))
                                       (let ((_%e205249205363%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd205247205357%_))))
                                         (if (equal? _%e205249205363%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205248205360%_))
                                                 (let ((_%e205250205367%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205248205360%_))))
                                                   (let ((_%hd205251205371%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205250205367%_)))
                                                         (_%tl205252205374%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205250205367%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd205251205371%_))
                                                         (let ((_%e205253205377%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd205251205371%_))))
                   (let ((_%hd205254205381%_
                          (let ()
                            (declare (not safe))
                            (##car _%e205253205377%_)))
                         (_%tl205255205384%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e205253205377%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd205254205381%_))
                         (if (let ((__tmp206973 |gxc[1]#_g206974_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp206973
                                _%hd205254205381%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205255205384%_))
                                 (let ((_%e205256205387%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205255205384%_))))
                                   (let ((_%hd205257205391%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205256205387%_)))
                                         (_%tl205258205394%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205256205387%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl205258205394%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl205252205374%_))
                                             (let ((_%e205259205397%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl205252205374%_))))
                                               (let ((_%hd205260205401%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205259205397%_)))
                                                     (_%tl205261205404%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205259205397%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd205260205401%_))
                                                     (let ((_%e205262205407%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd205260205401%_))))
                                                       (if (equal? _%e205262205407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl205261205404%_))
                       (let ((_%e205263205411%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl205261205404%_))))
                         (let ((_%hd205264205415%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205263205411%_)))
                               (_%tl205265205418%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205263205411%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd205264205415%_))
                               (let ((_%e205266205421%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd205264205415%_))))
                                 (let ((_%hd205267205425%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205266205421%_)))
                                       (_%tl205268205428%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205266205421%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd205267205425%_))
                                       (if (let ((__tmp206975
                                                  |gxc[1]#_g206976_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp206975
                                              _%hd205267205425%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205268205428%_))
                                               (let ((_%e205269205431%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205268205428%_))))
                                                 (let ((_%hd205270205435%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205269205431%_)))
                                                       (_%tl205271205438%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205269205431%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl205271205438%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl205265205418%_))
                                                           (let ((_%e205272205441%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl205265205418%_))))
                     (let ((_%hd205273205445%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205272205441%_)))
                           (_%tl205274205448%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205272205441%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd205273205445%_))
                           (let ((_%e205275205451%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd205273205445%_))))
                             (if (equal? _%e205275205451%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl205274205448%_))
                                     (let ((_%e205276205455%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl205274205448%_))))
                                       (let ((_%hd205277205459%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205276205455%_)))
                                             (_%tl205278205462%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205276205455%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd205277205459%_))
                                             (let ((_%e205279205465%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd205277205459%_))))
                                               (let ((_%hd205280205469%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205279205465%_)))
                                                     (_%tl205281205472%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205279205465%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd205280205469%_))
                                                     (if (let ((__tmp206977
                                                                |gxc[1]#_g206978_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp206977
                                                            _%hd205280205469%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl205281205472%_))
                     (let ((_%e205282205475%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl205281205472%_))))
                       (let ((_%hd205283205479%_
                              (let ()
                                (declare (not safe))
                                (##car _%e205282205475%_)))
                             (_%tl205284205482%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e205282205475%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl205284205482%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205278205462%_))
                                 (let ((_%e205285205485%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205278205462%_))))
                                   (let ((_%hd205286205489%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205285205485%_)))
                                         (_%tl205287205492%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205285205485%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd205286205489%_))
                                         (let ((_%e205288205495%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd205286205489%_))))
                                           (if (equal? _%e205288205495%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl205287205492%_))
                                                   (let ((_%e205289205499%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl205287205492%_))))
                                                     (let ((_%hd205290205503%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e205289205499%_)))
                                                           (_%tl205291205506%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e205289205499%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd205290205503%_))
                                                           (let ((_%e205292205509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd205290205503%_))))
                     (let ((_%hd205293205513%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205292205509%_)))
                           (_%tl205294205516%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205292205509%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd205293205513%_))
                           (if (let ((__tmp206979 |gxc[1]#_g206980_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp206979
                                  _%hd205293205513%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl205294205516%_))
                                   (let ((_%e205295205519%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl205294205516%_))))
                                     (let ((_%hd205296205523%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e205295205519%_)))
                                           (_%tl205297205526%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e205295205519%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl205297205526%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205291205506%_))
                                               (let ((_%e205298205529%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205291205506%_))))
                                                 (let ((_%hd205299205533%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205298205529%_)))
                                                       (_%tl205300205536%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205298205529%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd205299205533%_))
                                                       (let ((_%e205301205539%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd205299205533%_))))
                 (if (equal? _%e205301205539%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl205300205536%_))
                         (let ((_%e205302205543%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl205300205536%_))))
                           (let ((_%hd205303205547%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e205302205543%_)))
                                 (_%tl205304205550%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e205302205543%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205303205547%_))
                                 (let ((_%e205305205553%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205303205547%_))))
                                   (let ((_%hd205306205557%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205305205553%_)))
                                         (_%tl205307205560%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205305205553%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd205306205557%_))
                                         (if (let ((__tmp206981
                                                    |gxc[1]#_g206982_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp206981
                                                _%hd205306205557%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205307205560%_))
                                                 (let ((_%e205308205563%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205307205560%_))))
                                                   (let ((_%hd205309205567%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205308205563%_)))
                                                         (_%tl205310205570%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205308205563%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205310205570%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl205304205550%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl205242205340%_))
                         ((lambda (_%L205573%_
                                   _%L205575%_
                                   _%L205576%_
                                   _%L205577%_
                                   _%L205578%_
                                   _%L205579%_)
                            (let ((_%clause205650%_
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
                                                     (cons _%L205579%_ '()))
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
                                                 (cons _%L205577%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205573%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked205652%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L205575%_))))
                              (_%loop205194%_
                               _%rest205225%_
                               (let ((_%$e205654%_ _%unchecked205652%_))
                                 (if _%$e205654%_
                                     _%$e205654%_
                                     _%unchecked-proc205199%_))
                               (cons _%clause205650%_
                                     _%unchecked-clauses205200%_))))
                          _%hd205309205567%_
                          _%hd205296205523%_
                          _%hd205283205479%_
                          _%hd205270205435%_
                          _%hd205257205391%_
                          _%hd205238205327%_)
                         (_%g205229205316%_ _%g205230205320%_))
                     (_%g205229205316%_ _%g205230205320%_))
                 (_%g205229205316%_ _%g205230205320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205229205316%_
                                                  _%g205230205320%_))
                                             (_%g205229205316%_
                                              _%g205230205320%_))
                                         (_%g205229205316%_
                                          _%g205230205320%_))))
                                 (_%g205229205316%_ _%g205230205320%_))))
                         (_%g205229205316%_ _%g205230205320%_))
                     (_%g205229205316%_ _%g205230205320%_)))
               (_%g205229205316%_ _%g205230205320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205229205316%_
                                                _%g205230205320%_))
                                           (_%g205229205316%_
                                            _%g205230205320%_))))
                                   (_%g205229205316%_ _%g205230205320%_))
                               (_%g205229205316%_ _%g205230205320%_))
                           (_%g205229205316%_ _%g205230205320%_))))
                   (_%g205229205316%_ _%g205230205320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g205229205316%_
                                                    _%g205230205320%_))
                                               (_%g205229205316%_
                                                _%g205230205320%_)))
                                         (_%g205229205316%_
                                          _%g205230205320%_))))
                                 (_%g205229205316%_ _%g205230205320%_))
                             (_%g205229205316%_ _%g205230205320%_))))
                     (_%g205229205316%_ _%g205230205320%_))
                 (_%g205229205316%_ _%g205230205320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205229205316%_
                                                      _%g205230205320%_))))
                                             (_%g205229205316%_
                                              _%g205230205320%_))))
                                     (_%g205229205316%_ _%g205230205320%_))
                                 (_%g205229205316%_ _%g205230205320%_)))
                           (_%g205229205316%_ _%g205230205320%_))))
                   (_%g205229205316%_ _%g205230205320%_))
               (_%g205229205316%_ _%g205230205320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205229205316%_
                                                _%g205230205320%_))
                                           (_%g205229205316%_
                                            _%g205230205320%_))
                                       (_%g205229205316%_ _%g205230205320%_))))
                               (_%g205229205316%_ _%g205230205320%_))))
                       (_%g205229205316%_ _%g205230205320%_))
                   (_%g205229205316%_ _%g205230205320%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205229205316%_
                                                      _%g205230205320%_))))
                                             (_%g205229205316%_
                                              _%g205230205320%_))
                                         (_%g205229205316%_
                                          _%g205230205320%_))))
                                 (_%g205229205316%_ _%g205230205320%_))
                             (_%g205229205316%_ _%g205230205320%_))
                         (_%g205229205316%_ _%g205230205320%_))))
                 (_%g205229205316%_ _%g205230205320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205229205316%_
                                                  _%g205230205320%_))
                                             (_%g205229205316%_
                                              _%g205230205320%_)))
                                       (_%g205229205316%_ _%g205230205320%_))))
                               (_%g205229205316%_ _%g205230205320%_))))
                       (_%g205229205316%_ _%g205230205320%_))))
               (_%g205229205316%_ _%g205230205320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205229205316%_
                                                _%g205230205320%_)))))
                                   (_%g205228205658%_ _%hd205227%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest205201205209%_))
                             (let ((_%hd205206205666%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest205201205209%_)))
                                   (_%tl205207205669%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest205201205209%_))))
                               (let* ((_%hd205672%_ _%hd205206205666%_)
                                      (_%rest205675%_ _%tl205207205669%_))
                                 (_%K205205205662%_
                                  _%rest205675%_
                                  _%hd205672%_)))
                             (_%else205203205221%_))))))
                (begin
                  (let ((_g206972_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g206971_)
                               (##vector-length _g206971_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g206972_ 2)))
                        (error "Context expects 2 values" _g206972_)))
                  (let ((_%unchecked-proc205678%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206971_ 0)))
                        (_%unchecked-clauses205680%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206971_ 1))))
                    (if _%unchecked-proc205678%_
                        (let* ((_%g205682205706%_
                                (lambda (_%g205683205702%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g205683205702%_))))
                               (_%g205681205793%_
                                (lambda (_%g205683205710%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g205683205710%_))
                                      (let ((_%e205686205713%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g205683205710%_))))
                                        (let ((_%hd205687205717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205686205713%_)))
                                              (_%tl205688205720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205686205713%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205688205720%_))
                                              (let ((_%e205689205723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205688205720%_))))
                                                (let ((_%hd205690205727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205689205723%_)))
                                                      (_%tl205691205730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205689205723%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd205690205727%_))
                                                      (let ((_g206983_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd205690205727%_ '0))))
                (begin
                  (let ((_g206984_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g206983_)
                               (##vector-length _g206983_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g206984_ 2)))
                        (error "Context expects 2 values" _g206984_)))
                  (let ((_%target205692205733%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206983_ 0)))
                        (_%tl205694205736%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g206983_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl205694205736%_))
                        (letrec ((_%loop205695205739%_
                                  (lambda (_%hd205693205743%_
                                           _%clause205699205746%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd205693205743%_))
                                        (let ((_%e205696205749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd205693205743%_))))
                                          (let ((_%lp-hd205697205753%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e205696205749%_)))
                                                (_%lp-tl205698205756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e205696205749%_))))
                                            (_%loop205695205739%_
                                             _%lp-tl205698205756%_
                                             (cons _%lp-hd205697205753%_
                                                   _%clause205699205746%_))))
                                        (let ((_%clause205700205759%_
                                               (reverse _%clause205699205746%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205691205730%_))
                                              ((lambda (_%L205763%_
                                                        _%L205765%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L205765%_
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
                                             (let ((__tmp206985
                                                    (lambda (_%g205784205787%_
                                                             _%g205785205790%_)
                                                      (cons _%g205784205787%_
                                                            _%g205785205790%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp206985
                                                '()
                                                _%L205763%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause205700205759%_
                                               _%hd205687205717%_)
                                              (_%g205682205706%_
                                               _%g205683205710%_)))))))
                          (_%loop205695205739%_ _%target205692205733%_ '()))
                        (_%g205682205706%_ _%g205683205710%_)))))
              (_%g205682205706%_ _%g205683205710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205682205706%_
                                               _%g205683205710%_))))
                                      (_%g205682205706%_ _%g205683205710%_)))))
                          (_%g205681205793%_
                           (list _%unchecked-proc205678%_
                                 _%unchecked-clauses205680%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g205133205144%_))))
                                        (_%g205131205797%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L204992%_
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
                                          _%L205113%_
                                          _%L205115%_))
                                       (let ((__tmp206986
                                              (lambda (_%g205800205804%_
                                                       _%g205801205807%_
                                                       _%g205802205809%_)
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
                                (cons _%g205801205807%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g205800205804%_ '())))))
              _%g205802205809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp206986
                                          '()
                                          _%L205113%_
                                          _%L205115%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig205039205107%_
                                    _%arity205040205110%_))))))
                   (_%loop205033205065%_ _%target205030205059%_ '() '()))
                 (_%g205026205052%_ _%g205027205056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205026205052%_
                                                _%g205027205056%_)))))
                                   (_%g205025205812%_ _%signatures205023%_))
                                 (_%g204909204933%_ _%g204910204937%_)))
                           _%case-signature204927204986%_
                           _%hd204917204954%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204922204966%_
                                                   _%target204919204960%_
                                                   '()))
                                                (_%g204909204933%_
                                                 _%g204910204937%_)))))
                                      (_%g204909204933%_ _%g204910204937%_))))
                              (_%g204909204933%_ _%g204910204937%_))))
                      (_%g204909204933%_ _%g204910204937%_)))))
          (_%g204908205816%_ _%stx204906%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx205824%_)
        (let* ((_%__stx206806206807%_ _%$stx205824%_)
               (_%g205830205890%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206806206807%_)))))
          (let ((_%__kont206809206810%_
                 (lambda (_%L206112%_ _%L206114%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206114%_ '()))
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
                                                       (cons _%L206114%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206112%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont206811206812%_
                 (lambda (_%L206037%_ _%L206039%_ _%L206040%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206040%_ '()))
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
                                                       (cons _%L206040%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206039%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206037%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont206813206814%_
                 (lambda (_%L205951%_ _%L205953%_ _%L205954%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205954%_ '()))
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
                                                       (cons _%L205954%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L205953%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205951%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206806206807%_))
                (let ((_%e205834206068%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206806206807%_))))
                  (let ((_%tl205836206075%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205834206068%_)))
                        (_%hd205835206072%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205834206068%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205836206075%_))
                        (let ((_%e205837206078%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205836206075%_))))
                          (let ((_%tl205839206085%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205837206078%_)))
                                (_%hd205838206082%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205837206078%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd205838206082%_))
                                (let ((_%e205840206088%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd205838206082%_))))
                                  (if (equal? _%e205840206088%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl205839206085%_))
                                          (let ((_%e205841206092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl205839206085%_))))
                                            (let ((_%tl205843206099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e205841206092%_)))
                                                  (_%hd205842206096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e205841206092%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205843206099%_))
                                                  (let ((_%e205844206102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205843206099%_))))
                                                    (let ((_%tl205846206109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205844206102%_)))
                                                          (_%hd205845206106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205844206102%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl205846206109%_))
                                                          (_%__kont206809206810%_
                                                           _%hd205845206106%_
                                                           _%hd205842206096%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g205830205890%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205830205890%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g205830205890%_)))
                                      (if (equal? _%e205840206088%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205839206085%_))
                                              (let ((_%e205857206007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205839206085%_))))
                                                (let ((_%tl205859206014%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205857206007%_)))
                                                      (_%hd205858206011%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205857206007%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl205859206014%_))
                                                      (let ((_%e205860206017%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl205859206014%_))))
                (let ((_%tl205862206024%_
                       (let () (declare (not safe)) (##cdr _%e205860206017%_)))
                      (_%hd205861206021%_
                       (let ()
                         (declare (not safe))
                         (##car _%e205860206017%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205862206024%_))
                      (let ((_%e205863206027%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205862206024%_))))
                        (let ((_%tl205865206034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205863206027%_)))
                              (_%hd205864206031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205863206027%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205865206034%_))
                              (_%__kont206811206812%_
                               _%hd205864206031%_
                               _%hd205861206021%_
                               _%hd205858206011%_)
                              (let ()
                                (declare (not safe))
                                (_%g205830205890%_)))))
                      (let () (declare (not safe)) (_%g205830205890%_)))))
              (let () (declare (not safe)) (_%g205830205890%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g205830205890%_)))
                                          (if (equal? _%e205840206088%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl205839206085%_))
                                                  (let ((_%e205876205921%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl205839206085%_))))
                                                    (let ((_%tl205878205928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205876205921%_)))
                                                          (_%hd205877205925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205876205921%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl205878205928%_))
                                                          (let ((_%e205879205931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl205878205928%_))))
                    (let ((_%tl205881205938%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e205879205931%_)))
                          (_%hd205880205935%_
                           (let ()
                             (declare (not safe))
                             (##car _%e205879205931%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl205881205938%_))
                          (let ((_%e205882205941%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl205881205938%_))))
                            (let ((_%tl205884205948%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e205882205941%_)))
                                  (_%hd205883205945%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e205882205941%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205884205948%_))
                                  (_%__kont206813206814%_
                                   _%hd205883205945%_
                                   _%hd205880205935%_
                                   _%hd205877205925%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g205830205890%_)))))
                          (let () (declare (not safe)) (_%g205830205890%_)))))
                  (let () (declare (not safe)) (_%g205830205890%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g205830205890%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g205830205890%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g205830205890%_)))))
                        (let () (declare (not safe)) (_%g205830205890%_)))))
                (let () (declare (not safe)) (_%g205830205890%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx206136%_)
        (let* ((_%g206140206160%_
                (lambda (_%g206141206156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206141206156%_))))
               (_%g206139206231%_
                (lambda (_%g206141206164%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206141206164%_))
                      (let ((_%e206143206167%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206141206164%_))))
                        (let ((_%hd206144206171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206143206167%_)))
                              (_%tl206145206174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206143206167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206145206174%_))
                              (let ((_g206987_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206145206174%_
                                        '0))))
                                (begin
                                  (let ((_g206988_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g206987_)
                                               (##vector-length _g206987_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g206988_ 2)))
                                        (error "Context expects 2 values"
                                               _g206988_)))
                                  (let ((_%target206146206177%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206987_ 0)))
                                        (_%tl206148206180%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g206987_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206148206180%_))
                                        (letrec ((_%loop206149206183%_
                                                  (lambda (_%hd206147206187%_
                                                           _%decl206153206190%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206147206187%_))
                                                        (let ((_%e206150206193%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206147206187%_))))
                  (let ((_%lp-hd206151206197%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206150206193%_)))
                        (_%lp-tl206152206200%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206150206193%_))))
                    (_%loop206149206183%_
                     _%lp-tl206152206200%_
                     (cons _%lp-hd206151206197%_ _%decl206153206190%_))))
                (let ((_%decl206154206203%_ (reverse _%decl206153206190%_)))
                  ((lambda (_%L206207%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp206989
                                  (lambda (_%g206222206225%_ _%g206223206228%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g206222206225%_)
                                          _%g206223206228%_))))
                             (declare (not safe))
                             (__foldr1 __tmp206989 '() _%L206207%_))))
                   _%decl206154206203%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206149206183%_
                                           _%target206146206177%_
                                           '()))
                                        (_%g206140206160%_
                                         _%g206141206164%_)))))
                              (_%g206140206160%_ _%g206141206164%_))))
                      (_%g206140206160%_ _%g206141206164%_)))))
          (_%g206139206231%_ _%$stx206136%_))))))
