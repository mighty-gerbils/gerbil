(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g269993_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270000_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270002_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270004_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270006_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270008_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270020_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270022_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270024_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270026_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g270028_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx263451%_)
        (let* ((_%g263455263473%_
                (lambda (_%g263456263469%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263456263469%_))))
               (_%g263454263528%_
                (lambda (_%g263456263477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263456263477%_))
                      (let ((_%e263459263480%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263456263477%_))))
                        (let ((_%hd263460263484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263459263480%_)))
                              (_%tl263461263487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263459263480%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263461263487%_))
                              (let ((_%e263462263490%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263461263487%_))))
                                (let ((_%hd263463263494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263462263490%_)))
                                      (_%tl263464263497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263462263490%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263464263497%_))
                                      (let ((_%e263465263500%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263464263497%_))))
                                        (let ((_%hd263466263504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263465263500%_)))
                                              (_%tl263467263507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263465263500%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263467263507%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd263463263494%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd263463263494%_ '()))
                      (cons _%hd263466263504%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g263455263473%_
                                                   _%g263456263477%_))
                                              (_%g263455263473%_
                                               _%g263456263477%_))))
                                      (_%g263455263473%_ _%g263456263477%_))))
                              (_%g263455263473%_ _%g263456263477%_))))
                      (_%g263455263473%_ _%g263456263477%_)))))
          (_%g263454263528%_ _%$stx263451%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx263532%_)
        (let* ((_%g263536263554%_
                (lambda (_%g263537263550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263537263550%_))))
               (_%g263535263609%_
                (lambda (_%g263537263558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263537263558%_))
                      (let ((_%e263540263561%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263537263558%_))))
                        (let ((_%hd263541263565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263540263561%_)))
                              (_%tl263542263568%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263540263561%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263542263568%_))
                              (let ((_%e263543263571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263542263568%_))))
                                (let ((_%hd263544263575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263543263571%_)))
                                      (_%tl263545263578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263543263571%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263545263578%_))
                                      (let ((_%e263546263581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263545263578%_))))
                                        (let ((_%hd263547263585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263546263581%_)))
                                              (_%tl263548263588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263546263581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl263548263588%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd263544263575%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd263544263575%_ '()))
                      (cons _%hd263547263585%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g263536263554%_
                                                   _%g263537263558%_))
                                              (_%g263536263554%_
                                               _%g263537263558%_))))
                                      (_%g263536263554%_ _%g263537263558%_))))
                              (_%g263536263554%_ _%g263537263558%_))))
                      (_%g263536263554%_ _%g263537263558%_)))))
          (_%g263535263609%_ _%$stx263532%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx263613%_)
        (let* ((_%g263617263646%_
                (lambda (_%g263618263642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263618263642%_))))
               (_%g263616263742%_
                (lambda (_%g263618263650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263618263650%_))
                      (let ((_%e263621263653%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263618263650%_))))
                        (let ((_%hd263622263657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263621263653%_)))
                              (_%tl263623263660%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263621263653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263623263660%_))
                              (let ((_g269971_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263623263660%_
                                        '0))))
                                (begin
                                  (let ((_g269972_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269971_)
                                               (##values-length _g269971_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269972_ 2)))
                                        (error "Context expects 2 values"
                                               _g269972_)))
                                  (let ((_%target263624263663%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269971_ 0)))
                                        (_%tl263626263666%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269971_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263626263666%_))
                                        (letrec ((_%loop263627263669%_
                                                  (lambda (_%hd263625263673%_
                                                           _%type263631263676%_
                                                           _%symbol263632263677%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263625263673%_))
                                                        (let ((_%e263628263679%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263625263673%_))))
                  (let ((_%lp-hd263629263683%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263628263679%_)))
                        (_%lp-tl263630263686%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263628263679%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263629263683%_))
                        (let ((_%e263635263689%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263629263683%_))))
                          (let ((_%hd263636263693%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263635263689%_)))
                                (_%tl263637263696%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263635263689%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263637263696%_))
                                (let ((_%e263638263699%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263637263696%_))))
                                  (let ((_%hd263639263703%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263638263699%_)))
                                        (_%tl263640263706%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263638263699%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263640263706%_))
                                        (_%loop263627263669%_
                                         _%lp-tl263630263686%_
                                         (cons _%hd263639263703%_
                                               _%type263631263676%_)
                                         (cons _%hd263636263693%_
                                               _%symbol263632263677%_))
                                        (_%g263617263646%_
                                         _%g263618263650%_))))
                                (_%g263617263646%_ _%g263618263650%_))))
                        (_%g263617263646%_ _%g263618263650%_))))
                (let ((_%type263633263709%_ (reverse _%type263631263676%_))
                      (_%symbol263634263711%_
                       (reverse _%symbol263632263677%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%type263633263709%_
                             _%symbol263634263711%_))
                          (let ((__tmp269973
                                 (lambda (_%g263730263734%_
                                          _%g263731263737%_
                                          _%g263732263739%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g263731263737%_
                                                     (cons _%g263730263734%_
                                                           '())))
                                         _%g263732263739%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp269973
                             '()
                             _%type263633263709%_
                             _%symbol263634263711%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263627263669%_
                                           _%target263624263663%_
                                           '()
                                           '()))
                                        (_%g263617263646%_
                                         _%g263618263650%_)))))
                              (_%g263617263646%_ _%g263618263650%_))))
                      (_%g263617263646%_ _%g263618263650%_)))))
          (_%g263616263742%_ _%$stx263613%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx263747%_)
        (let* ((_%__stx269282269283%_ _%$stx263747%_)
               (_%g263752263794%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269282269283%_)))))
          (let ((_%__kont269285269286%_
                 (lambda (_%g263754263922%_
                          _%g263755263924%_
                          _%g263756263925%_
                          _%g263757263926%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263757263926%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g263756263925%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g263755263924%_ '()))
                                           (cons _%g263754263922%_ '())))))))
                (_%__kont269287269288%_
                 (lambda (_%g263773263841%_
                          _%g263774263843%_
                          _%g263775263844%_
                          _%g263776263845%_)
                   (cons _%g263776263845%_
                         (cons _%g263775263844%_
                               (cons _%g263774263843%_
                                     (cons _%g263773263841%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match269321269322%_
                   (lambda (_%e263758263872%_
                            _%hd263759263876%_
                            _%tl263760263879%_
                            _%e263761263882%_
                            _%hd263762263886%_
                            _%tl263763263889%_
                            _%e263764263892%_
                            _%hd263765263896%_
                            _%tl263766263899%_
                            _%e263767263902%_
                            _%hd263768263906%_
                            _%tl263769263909%_
                            _%e263770263912%_
                            _%hd263771263916%_
                            _%tl263772263919%_)
                     (let ((_%g263754263922%_ _%hd263771263916%_)
                           (_%g263755263924%_ _%hd263768263906%_)
                           (_%g263756263925%_ _%hd263765263896%_)
                           (_%g263757263926%_ _%hd263762263886%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263757263926%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263756263925%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263755263924%_)))
                           (_%__kont269285269286%_
                            _%g263754263922%_
                            _%g263755263924%_
                            _%g263756263925%_
                            _%g263757263926%_)
                           (let ()
                             (declare (not safe))
                             (_%g263752263794%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269282269283%_))
                  (let ((_%e263758263872%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269282269283%_))))
                    (let ((_%tl263760263879%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263758263872%_)))
                          (_%hd263759263876%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263758263872%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263760263879%_))
                          (let ((_%e263761263882%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263760263879%_))))
                            (let ((_%tl263763263889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263761263882%_)))
                                  (_%hd263762263886%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263761263882%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263763263889%_))
                                  (let ((_%e263764263892%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263763263889%_))))
                                    (let ((_%tl263766263899%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263764263892%_)))
                                          (_%hd263765263896%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263764263892%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl263766263899%_))
                                          (let ((_%e263767263902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl263766263899%_))))
                                            (let ((_%tl263769263909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263767263902%_)))
                                                  (_%hd263768263906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263767263902%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263769263909%_))
                                                  (let ((_%e263770263912%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263769263909%_))))
                                                    (let ((_%tl263772263919%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263770263912%_)))
                                                          (_%hd263771263916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263770263912%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263772263919%_))
                                                          (_%__match269321269322%_
                                                           _%e263758263872%_
                                                           _%hd263759263876%_
                                                           _%tl263760263879%_
                                                           _%e263761263882%_
                                                           _%hd263762263886%_
                                                           _%tl263763263889%_
                                                           _%e263764263892%_
                                                           _%hd263765263896%_
                                                           _%tl263766263899%_
                                                           _%e263767263902%_
                                                           _%hd263768263906%_
                                                           _%tl263769263909%_
                                                           _%e263770263912%_
                                                           _%hd263771263916%_
                                                           _%tl263772263919%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263752263794%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263769263909%_))
                                                      (_%__kont269287269288%_
                                                       _%hd263768263906%_
                                                       _%hd263765263896%_
                                                       _%hd263762263886%_
                                                       _%hd263759263876%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263752263794%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263752263794%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g263752263794%_)))))
                          (let () (declare (not safe)) (_%g263752263794%_)))))
                  (let () (declare (not safe)) (_%g263752263794%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx263951%_)
        (let* ((_%g263955263990%_
                (lambda (_%g263956263986%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263956263986%_))))
               (_%g263954264103%_
                (lambda (_%g263956263994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263956263994%_))
                      (let ((_%e263960263997%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263956263994%_))))
                        (let ((_%hd263961264001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263960263997%_)))
                              (_%tl263962264004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263960263997%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263962264004%_))
                              (let ((_g269974_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263962264004%_
                                        '0))))
                                (begin
                                  (let ((_g269975_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269974_)
                                               (##values-length _g269974_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269975_ 2)))
                                        (error "Context expects 2 values"
                                               _g269975_)))
                                  (let ((_%target263963264007%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269974_ 0)))
                                        (_%tl263965264010%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269974_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263965264010%_))
                                        (letrec ((_%loop263966264013%_
                                                  (lambda (_%hd263964264017%_
                                                           _%symbol263970264020%_
                                                           _%method263971264021%_
                                                           _%type-t263972264022%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263964264017%_))
                                                        (let ((_%e263967264024%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263964264017%_))))
                  (let ((_%lp-hd263968264028%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263967264024%_)))
                        (_%lp-tl263969264031%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263967264024%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263968264028%_))
                        (let ((_%e263976264034%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263968264028%_))))
                          (let ((_%hd263977264038%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263976264034%_)))
                                (_%tl263978264041%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263976264034%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263978264041%_))
                                (let ((_%e263979264044%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263978264041%_))))
                                  (let ((_%hd263980264048%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263979264044%_)))
                                        (_%tl263981264051%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263979264044%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl263981264051%_))
                                        (let ((_%e263982264054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl263981264051%_))))
                                          (let ((_%hd263983264058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e263982264054%_)))
                                                (_%tl263984264061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e263982264054%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263984264061%_))
                                                (_%loop263966264013%_
                                                 _%lp-tl263969264031%_
                                                 (cons _%hd263983264058%_
                                                       _%symbol263970264020%_)
                                                 (cons _%hd263980264048%_
                                                       _%method263971264021%_)
                                                 (cons _%hd263977264038%_
                                                       _%type-t263972264022%_))
                                                (_%g263955263990%_
                                                 _%g263956263994%_))))
                                        (_%g263955263990%_
                                         _%g263956263994%_))))
                                (_%g263955263990%_ _%g263956263994%_))))
                        (_%g263955263990%_ _%g263956263994%_))))
                (let ((_%symbol263973264064%_ (reverse _%symbol263970264020%_))
                      (_%method263974264066%_ (reverse _%method263971264021%_))
                      (_%type-t263975264067%_
                       (reverse _%type-t263972264022%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%symbol263973264064%_
                             _%method263974264066%_
                             _%type-t263975264067%_))
                          (let ((__tmp269976
                                 (lambda (_%g264088264093%_
                                          _%g264089264096%_
                                          _%g264090264098%_
                                          _%g264091264100%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%g264090264098%_
                                                     (cons _%g264089264096%_
                                                           (cons _%g264088264093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g264091264100%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp269976
                             '()
                             _%symbol263973264064%_
                             _%method263974264066%_
                             _%type-t263975264067%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263966264013%_
                                           _%target263963264007%_
                                           '()
                                           '()
                                           '()))
                                        (_%g263955263990%_
                                         _%g263956263994%_)))))
                              (_%g263955263990%_ _%g263956263994%_))))
                      (_%g263955263990%_ _%g263956263994%_)))))
          (_%g263954264103%_ _%$stx263951%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx264108%_)
        (let* ((_%g264112264145%_
                (lambda (_%g264113264141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264113264141%_))))
               (_%g264111264255%_
                (lambda (_%g264113264149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264113264149%_))
                      (let ((_%e264117264152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264113264149%_))))
                        (let ((_%hd264118264156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264117264152%_)))
                              (_%tl264119264159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264117264152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264119264159%_))
                              (let ((_%e264120264162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264119264159%_))))
                                (let ((_%hd264121264166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264120264162%_)))
                                      (_%tl264122264169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264120264162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl264122264169%_))
                                      (let ((_g269977_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl264122264169%_
                                                '0))))
                                        (begin
                                          (let ((_g269978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g269977_)
                                                       (##values-length
                                                        _g269977_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g269978_ 2)))
                                                (error "Context expects 2 values"
                                                       _g269978_)))
                                          (let ((_%target264123264172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g269977_ 0)))
                                                (_%tl264125264175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g269977_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264125264175%_))
                                                (letrec ((_%loop264126264178%_
                                                          (lambda (_%hd264124264182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol264130264185%_
                           _%method264131264186%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd264124264182%_))
                        (let ((_%e264127264188%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd264124264182%_))))
                          (let ((_%lp-hd264128264192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264127264188%_)))
                                (_%lp-tl264129264195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264127264188%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd264128264192%_))
                                (let ((_%e264134264198%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd264128264192%_))))
                                  (let ((_%hd264135264202%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264134264198%_)))
                                        (_%tl264136264205%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264134264198%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl264136264205%_))
                                        (let ((_%e264137264208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl264136264205%_))))
                                          (let ((_%hd264138264212%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e264137264208%_)))
                                                (_%tl264139264215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e264137264208%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl264139264215%_))
                                                (_%loop264126264178%_
                                                 _%lp-tl264129264195%_
                                                 (cons _%hd264138264212%_
                                                       _%symbol264130264185%_)
                                                 (cons _%hd264135264202%_
                                                       _%method264131264186%_))
                                                (_%g264112264145%_
                                                 _%g264113264149%_))))
                                        (_%g264112264145%_
                                         _%g264113264149%_))))
                                (_%g264112264145%_ _%g264113264149%_))))
                        (let ((_%symbol264132264218%_
                               (reverse _%symbol264130264185%_))
                              (_%method264133264220%_
                               (reverse _%method264131264186%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%symbol264132264218%_
                                     _%method264133264220%_))
                                  (let ((__tmp269979
                                         (lambda (_%g264243264247%_
                                                  _%g264244264250%_
                                                  _%g264245264252%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%hd264121264166%_
                                                             (cons _%g264244264250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g264243264247%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g264245264252%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp269979
                                     '()
                                     _%symbol264132264218%_
                                     _%method264133264220%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop264126264178%_
                                                   _%target264123264172%_
                                                   '()
                                                   '()))
                                                (_%g264112264145%_
                                                 _%g264113264149%_)))))
                                      (_%g264112264145%_ _%g264113264149%_))))
                              (_%g264112264145%_ _%g264113264149%_))))
                      (_%g264112264145%_ _%g264113264149%_)))))
          (_%g264111264255%_ _%$stx264108%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx264260%_)
        (let* ((_%g264264264278%_
                (lambda (_%g264265264274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264265264274%_))))
               (_%g264263264319%_
                (lambda (_%g264265264282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264265264282%_))
                      (let ((_%e264267264285%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264265264282%_))))
                        (let ((_%hd264268264289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264267264285%_)))
                              (_%tl264269264292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264267264285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264269264292%_))
                              (let ((_%e264270264295%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264269264292%_))))
                                (let ((_%hd264271264299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264270264295%_)))
                                      (_%tl264272264302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264270264295%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264272264302%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!alias))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%hd264271264299%_
                                                              '()))
                                                  '()))
                                      (_%g264264264278%_ _%g264265264282%_))))
                              (_%g264264264278%_ _%g264265264282%_))))
                      (_%g264264264278%_ _%g264265264282%_)))))
          (_%g264263264319%_ _%$stx264260%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx264323%_)
        (let* ((_%g264327264381%_
                (lambda (_%g264328264377%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264328264377%_))))
               (_%g264326264562%_
                (lambda (_%g264328264385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264328264385%_))
                      (let ((_%e264340264388%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264328264385%_))))
                        (let ((_%hd264341264392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264340264388%_)))
                              (_%tl264342264395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264340264388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264342264395%_))
                              (let ((_%e264343264398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264342264395%_))))
                                (let ((_%hd264344264402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264343264398%_)))
                                      (_%tl264345264405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264343264398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264345264405%_))
                                      (let ((_%e264346264408%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264345264405%_))))
                                        (let ((_%hd264347264412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264346264408%_)))
                                              (_%tl264348264415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264346264408%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264348264415%_))
                                              (let ((_%e264349264418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264348264415%_))))
                                                (let ((_%hd264350264422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264349264418%_)))
                                                      (_%tl264351264425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264349264418%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl264351264425%_))
                                                      (let ((_%e264352264428%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl264351264425%_))))
                (let ((_%hd264353264432%_
                       (let () (declare (not safe)) (##car _%e264352264428%_)))
                      (_%tl264354264435%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e264352264428%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl264354264435%_))
                      (let ((_%e264355264438%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl264354264435%_))))
                        (let ((_%hd264356264442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264355264438%_)))
                              (_%tl264357264445%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264355264438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264357264445%_))
                              (let ((_%e264358264448%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264357264445%_))))
                                (let ((_%hd264359264452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264358264448%_)))
                                      (_%tl264360264455%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264358264448%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264360264455%_))
                                      (let ((_%e264361264458%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264360264455%_))))
                                        (let ((_%hd264362264462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264361264458%_)))
                                              (_%tl264363264465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264361264458%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264363264465%_))
                                              (let ((_%e264364264468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264363264465%_))))
                                                (let ((_%hd264365264472%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264364264468%_)))
                                                      (_%tl264366264475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264364264468%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl264366264475%_))
                                                      (let ((_%e264367264478%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl264366264475%_))))
                (let ((_%hd264368264482%_
                       (let () (declare (not safe)) (##car _%e264367264478%_)))
                      (_%tl264369264485%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e264367264478%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl264369264485%_))
                      (let ((_%e264370264488%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl264369264485%_))))
                        (let ((_%hd264371264492%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264370264488%_)))
                              (_%tl264372264495%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264370264488%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264372264495%_))
                              (let ((_%e264373264498%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264372264495%_))))
                                (let ((_%hd264374264502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264373264498%_)))
                                      (_%tl264375264505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264373264498%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264375264505%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!class))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%hd264344264402%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%hd264347264412%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd264350264422%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%hd264353264432%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%hd264356264442%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%hd264359264452%_ '()))
                                        (cons _%hd264362264462%_
                                              (cons _%hd264365264472%_
                                                    (cons _%hd264368264482%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd264371264492%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%hd264374264502%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g264327264381%_ _%g264328264385%_))))
                              (_%g264327264381%_ _%g264328264385%_))))
                      (_%g264327264381%_ _%g264328264385%_))))
              (_%g264327264381%_ _%g264328264385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264327264381%_
                                               _%g264328264385%_))))
                                      (_%g264327264381%_ _%g264328264385%_))))
                              (_%g264327264381%_ _%g264328264385%_))))
                      (_%g264327264381%_ _%g264328264385%_))))
              (_%g264327264381%_ _%g264328264385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264327264381%_
                                               _%g264328264385%_))))
                                      (_%g264327264381%_ _%g264328264385%_))))
                              (_%g264327264381%_ _%g264328264385%_))))
                      (_%g264327264381%_ _%g264328264385%_)))))
          (_%g264326264562%_ _%$stx264323%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx264566%_)
        (let* ((_%g264570264584%_
                (lambda (_%g264571264580%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264571264580%_))))
               (_%g264569264625%_
                (lambda (_%g264571264588%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264571264588%_))
                      (let ((_%e264573264591%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264571264588%_))))
                        (let ((_%hd264574264595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264573264591%_)))
                              (_%tl264575264598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264573264591%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264575264598%_))
                              (let ((_%e264576264601%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264575264598%_))))
                                (let ((_%hd264577264605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264576264601%_)))
                                      (_%tl264578264608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264576264601%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264578264608%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%hd264577264605%_
                                                              '()))
                                                  '()))
                                      (_%g264570264584%_ _%g264571264588%_))))
                              (_%g264570264584%_ _%g264571264588%_))))
                      (_%g264570264584%_ _%g264571264588%_)))))
          (_%g264569264625%_ _%$stx264566%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx264629%_)
        (let* ((_%g264633264647%_
                (lambda (_%g264634264643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264634264643%_))))
               (_%g264632264688%_
                (lambda (_%g264634264651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264634264651%_))
                      (let ((_%e264636264654%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264634264651%_))))
                        (let ((_%hd264637264658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264636264654%_)))
                              (_%tl264638264661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264636264654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264638264661%_))
                              (let ((_%e264639264664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264638264661%_))))
                                (let ((_%hd264640264668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264639264664%_)))
                                      (_%tl264641264671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264639264664%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264641264671%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!constructor))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%hd264640264668%_
                                                              '()))
                                                  '()))
                                      (_%g264633264647%_ _%g264634264651%_))))
                              (_%g264633264647%_ _%g264634264651%_))))
                      (_%g264633264647%_ _%g264634264651%_)))))
          (_%g264632264688%_ _%$stx264629%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx264692%_)
        (let* ((_%g264696264718%_
                (lambda (_%g264697264714%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264697264714%_))))
               (_%g264695264787%_
                (lambda (_%g264697264722%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264697264722%_))
                      (let ((_%e264701264725%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264697264722%_))))
                        (let ((_%hd264702264729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264701264725%_)))
                              (_%tl264703264732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264701264725%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264703264732%_))
                              (let ((_%e264704264735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264703264732%_))))
                                (let ((_%hd264705264739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264704264735%_)))
                                      (_%tl264706264742%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264704264735%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264706264742%_))
                                      (let ((_%e264707264745%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264706264742%_))))
                                        (let ((_%hd264708264749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264707264745%_)))
                                              (_%tl264709264752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264707264745%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264709264752%_))
                                              (let ((_%e264710264755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264709264752%_))))
                                                (let ((_%hd264711264759%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264710264755%_)))
                                                      (_%tl264712264762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264710264755%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264712264762%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!accessor))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%hd264705264739%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%hd264708264749%_ '()))
                                (cons _%hd264711264759%_ '()))))
              (_%g264696264718%_ _%g264697264722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264696264718%_
                                               _%g264697264722%_))))
                                      (_%g264696264718%_ _%g264697264722%_))))
                              (_%g264696264718%_ _%g264697264722%_))))
                      (_%g264696264718%_ _%g264697264722%_)))))
          (_%g264695264787%_ _%$stx264692%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx264791%_)
        (let* ((_%g264795264817%_
                (lambda (_%g264796264813%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264796264813%_))))
               (_%g264794264886%_
                (lambda (_%g264796264821%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264796264821%_))
                      (let ((_%e264800264824%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264796264821%_))))
                        (let ((_%hd264801264828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264800264824%_)))
                              (_%tl264802264831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264800264824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264802264831%_))
                              (let ((_%e264803264834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264802264831%_))))
                                (let ((_%hd264804264838%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264803264834%_)))
                                      (_%tl264805264841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264803264834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264805264841%_))
                                      (let ((_%e264806264844%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264805264841%_))))
                                        (let ((_%hd264807264848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264806264844%_)))
                                              (_%tl264808264851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264806264844%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264808264851%_))
                                              (let ((_%e264809264854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264808264851%_))))
                                                (let ((_%hd264810264858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264809264854%_)))
                                                      (_%tl264811264861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264809264854%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264811264861%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!mutator))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%hd264804264838%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%hd264807264848%_ '()))
                                (cons _%hd264810264858%_ '()))))
              (_%g264795264817%_ _%g264796264821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264795264817%_
                                               _%g264796264821%_))))
                                      (_%g264795264817%_ _%g264796264821%_))))
                              (_%g264795264817%_ _%g264796264821%_))))
                      (_%g264795264817%_ _%g264796264821%_)))))
          (_%g264794264886%_ _%$stx264791%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx264890%_)
        (let* ((_%g264894264908%_
                (lambda (_%g264895264904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264895264904%_))))
               (_%g264893264949%_
                (lambda (_%g264895264912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264895264912%_))
                      (let ((_%e264897264915%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264895264912%_))))
                        (let ((_%hd264898264919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264897264915%_)))
                              (_%tl264899264922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264897264915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264899264922%_))
                              (let ((_%e264900264925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264899264922%_))))
                                (let ((_%hd264901264929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264900264925%_)))
                                      (_%tl264902264932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264900264925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264902264932%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!primitive-predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%hd264901264929%_
                                                              '()))
                                                  '()))
                                      (_%g264894264908%_ _%g264895264912%_))))
                              (_%g264894264908%_ _%g264895264912%_))))
                      (_%g264894264908%_ _%g264895264912%_)))))
          (_%g264893264949%_ _%$stx264890%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx264953%_)
        (let* ((_%g264957264975%_
                (lambda (_%g264958264971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264958264971%_))))
               (_%g264956265030%_
                (lambda (_%g264958264979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264958264979%_))
                      (let ((_%e264961264982%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264958264979%_))))
                        (let ((_%hd264962264986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264961264982%_)))
                              (_%tl264963264989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264961264982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264963264989%_))
                              (let ((_%e264964264992%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264963264989%_))))
                                (let ((_%hd264965264996%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264964264992%_)))
                                      (_%tl264966264999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264964264992%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264966264999%_))
                                      (let ((_%e264967265002%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264966264999%_))))
                                        (let ((_%hd264968265006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264967265002%_)))
                                              (_%tl264969265009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264967265002%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264969265009%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd264965264996%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd264968265006%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264957264975%_
                                               _%g264958264979%_))))
                                      (_%g264957264975%_ _%g264958264979%_))))
                              (_%g264957264975%_ _%g264958264979%_))))
                      (_%g264957264975%_ _%g264958264979%_)))))
          (_%g264956265030%_ _%$stx264953%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx265034%_)
        (let* ((_%__stx269350269351%_ _%$stx265034%_)
               (_%g265041265102%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269350269351%_)))))
          (let ((_%__kont269353269354%_
                 (lambda (_%g265043265340%_ _%g265044265342%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265044265342%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g265043265340%_ '()))
                                     '())))))
                (_%__kont269355269356%_
                 (lambda (_%g265054265279%_
                          _%g265055265281%_
                          _%g265056265282%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g265056265282%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g265055265281%_ '()))
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
                                 (cons _%g265054265279%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont269357269358%_
                 (lambda (_%g265073265203%_ _%g265074265205%_)
                   (cons _%g265074265205%_
                         (cons _%g265073265203%_ (cons '#f '())))))
                (_%__kont269359269360%_
                 (lambda (_%g265081265153%_
                          _%g265082265155%_
                          _%g265083265156%_)
                   (cons _%g265083265156%_
                         (cons _%g265082265155%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g265081265153%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269350269351%_))
                (let ((_%e265045265310%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx269350269351%_))))
                  (let ((_%tl265047265317%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265045265310%_)))
                        (_%hd265046265314%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265045265310%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265047265317%_))
                        (let ((_%e265048265320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265047265317%_))))
                          (let ((_%tl265050265327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265048265320%_)))
                                (_%hd265049265324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265048265320%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265050265327%_))
                                (let ((_%e265051265330%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265050265327%_))))
                                  (let ((_%tl265053265337%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265051265330%_)))
                                        (_%hd265052265334%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265051265330%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265053265337%_))
                                        (_%__kont269353269354%_
                                         _%hd265052265334%_
                                         _%hd265049265324%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl265053265337%_))
                                            (let ((_%e265066265255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl265053265337%_))))
                                              (let ((_%tl265068265262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265066265255%_)))
                                                    (_%hd265067265259%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265066265255%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd265067265259%_))
                                                    (let ((_%e265069265265%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd265067265259%_))))
                                                      (if (equal? _%e265069265265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl265068265262%_))
                      (let ((_%e265070265269%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl265068265262%_))))
                        (let ((_%tl265072265276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265070265269%_)))
                              (_%hd265071265273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265070265269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl265072265276%_))
                              (_%__kont269355269356%_
                               _%hd265071265273%_
                               _%hd265052265334%_
                               _%hd265049265324%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd265052265334%_))
                                  (let ((_%e265093265139%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd265052265334%_))))
                                    (declare (not safe))
                                    (_%g265041265102%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g265041265102%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd265052265334%_))
                          (let ((_%e265093265139%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd265052265334%_))))
                            (if (equal? _%e265093265139%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl265068265262%_))
                                    (_%__kont269359269360%_
                                     _%hd265067265259%_
                                     _%hd265049265324%_
                                     _%hd265046265314%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g265041265102%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g265041265102%_))))
                          (let () (declare (not safe)) (_%g265041265102%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd265052265334%_))
                      (let ((_%e265093265139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd265052265334%_))))
                        (if (equal? _%e265093265139%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl265068265262%_))
                                (_%__kont269359269360%_
                                 _%hd265067265259%_
                                 _%hd265049265324%_
                                 _%hd265046265314%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g265041265102%_)))
                            (let () (declare (not safe)) (_%g265041265102%_))))
                      (let () (declare (not safe)) (_%g265041265102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd265052265334%_))
                                                        (let ((_%e265093265139%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd265052265334%_))))
                  (if (equal? _%e265093265139%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl265068265262%_))
                          (_%__kont269359269360%_
                           _%hd265067265259%_
                           _%hd265049265324%_
                           _%hd265046265314%_)
                          (let () (declare (not safe)) (_%g265041265102%_)))
                      (let () (declare (not safe)) (_%g265041265102%_))))
                (let () (declare (not safe)) (_%g265041265102%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd265052265334%_))
                                                (let ((_%e265093265139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd265052265334%_))))
                                                  (declare (not safe))
                                                  (_%g265041265102%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g265041265102%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl265050265327%_))
                                    (_%__kont269357269358%_
                                     _%hd265049265324%_
                                     _%hd265046265314%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g265041265102%_))))))
                        (let () (declare (not safe)) (_%g265041265102%_)))))
                (let () (declare (not safe)) (_%g265041265102%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx265361%_)
        (let* ((_%g265365265394%_
                (lambda (_%g265366265390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265366265390%_))))
               (_%g265364265499%_
                (lambda (_%g265366265398%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265366265398%_))
                      (let ((_%e265368265401%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265366265398%_))))
                        (let ((_%hd265369265405%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265368265401%_)))
                              (_%tl265370265408%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265368265401%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265370265408%_))
                              (let ((_g269980_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl265370265408%_
                                        '0))))
                                (begin
                                  (let ((_g269981_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269980_)
                                               (##values-length _g269980_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269981_ 2)))
                                        (error "Context expects 2 values"
                                               _g269981_)))
                                  (let ((_%target265371265411%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269980_ 0)))
                                        (_%tl265373265414%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269980_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265373265414%_))
                                        (letrec ((_%loop265374265417%_
                                                  (lambda (_%hd265372265421%_
                                                           _%clause265378265424%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265372265421%_))
                                                        (let ((_%e265375265426%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265372265421%_))))
                  (let ((_%lp-hd265376265430%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265375265426%_)))
                        (_%lp-tl265377265433%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265375265426%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd265376265430%_))
                        (let ((_g269982_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd265376265430%_
                                  '0))))
                          (begin
                            (let ((_g269983_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g269982_)
                                         (##values-length _g269982_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g269983_ 2)))
                                  (error "Context expects 2 values"
                                         _g269983_)))
                            (let ((_%target265380265436%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g269982_ 0)))
                                  (_%tl265382265439%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g269982_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl265382265439%_))
                                  (letrec ((_%loop265383265442%_
                                            (lambda (_%hd265381265446%_
                                                     _%clause265387265449%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd265381265446%_))
                                                  (let ((_%e265384265451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd265381265446%_))))
                                                    (let ((_%lp-hd265385265455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265384265451%_)))
                                                          (_%lp-tl265386265458%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265384265451%_))))
                                                      (_%loop265383265442%_
                                                       _%lp-tl265386265458%_
                                                       (cons _%lp-hd265385265455%_
                                                             _%clause265387265449%_))))
                                                  (let ((_%clause265388265461%_
                                                         (reverse _%clause265387265449%_)))
                                                    (_%loop265374265417%_
                                                     _%lp-tl265377265433%_
                                                     (cons _%clause265388265461%_
                                                           _%clause265378265424%_)))))))
                                    (_%loop265383265442%_
                                     _%target265380265436%_
                                     '()))
                                  (_%g265365265394%_ _%g265366265398%_)))))
                        (_%g265365265394%_ _%g265366265398%_))))
                (let ((_%clause265379265464%_
                       (reverse _%clause265378265424%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp269984
                                           (lambda (_%g265482265487%_
                                                    _%g265483265490%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp269985
                                                                (lambda (_%g265484265493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g265485265496%_)
                          (cons _%g265484265493%_ _%g265485265496%_))))
                   (declare (not safe))
                   (foldr__0 __tmp269985 '() _%g265482265487%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g265483265490%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp269984
                                       '()
                                       _%clause265379265464%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop265374265417%_
                                           _%target265371265411%_
                                           '()))
                                        (_%g265365265394%_
                                         _%g265366265398%_)))))
                              (_%g265365265394%_ _%g265366265398%_))))
                      (_%g265365265394%_ _%g265366265398%_)))))
          (_%g265364265499%_ _%$stx265361%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx265505%_)
        (let* ((_%g265509265527%_
                (lambda (_%g265510265523%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265510265523%_))))
               (_%g265508265582%_
                (lambda (_%g265510265531%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265510265531%_))
                      (let ((_%e265513265534%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265510265531%_))))
                        (let ((_%hd265514265538%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265513265534%_)))
                              (_%tl265515265541%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265513265534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265515265541%_))
                              (let ((_%e265516265544%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265515265541%_))))
                                (let ((_%hd265517265548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265516265544%_)))
                                      (_%tl265518265551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265516265544%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265518265551%_))
                                      (let ((_%e265519265554%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265518265551%_))))
                                        (let ((_%hd265520265558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265519265554%_)))
                                              (_%tl265521265561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265519265554%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265521265561%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd265517265548%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd265520265558%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265509265527%_
                                               _%g265510265531%_))))
                                      (_%g265509265527%_ _%g265510265531%_))))
                              (_%g265509265527%_ _%g265510265531%_))))
                      (_%g265509265527%_ _%g265510265531%_)))))
          (_%g265508265582%_ _%$stx265505%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx265586%_)
        (let* ((_%g265590265608%_
                (lambda (_%g265591265604%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265591265604%_))))
               (_%g265589265663%_
                (lambda (_%g265591265612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265591265612%_))
                      (let ((_%e265594265615%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265591265612%_))))
                        (let ((_%hd265595265619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265594265615%_)))
                              (_%tl265596265622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265594265615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265596265622%_))
                              (let ((_%e265597265625%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265596265622%_))))
                                (let ((_%hd265598265629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265597265625%_)))
                                      (_%tl265599265632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265597265625%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265599265632%_))
                                      (let ((_%e265600265635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265599265632%_))))
                                        (let ((_%hd265601265639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265600265635%_)))
                                              (_%tl265602265642%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265600265635%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265602265642%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd265598265629%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd265601265639%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265590265608%_
                                               _%g265591265612%_))))
                                      (_%g265590265608%_ _%g265591265612%_))))
                              (_%g265590265608%_ _%g265591265612%_))))
                      (_%g265590265608%_ _%g265591265612%_)))))
          (_%g265589265663%_ _%$stx265586%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx265667%_)
        (let* ((_%g265671265700%_
                (lambda (_%g265672265696%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265672265696%_))))
               (_%g265670265796%_
                (lambda (_%g265672265704%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265672265704%_))
                      (let ((_%e265675265707%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265672265704%_))))
                        (let ((_%hd265676265711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265675265707%_)))
                              (_%tl265677265714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265675265707%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265677265714%_))
                              (let ((_g269986_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl265677265714%_
                                        '0))))
                                (begin
                                  (let ((_g269987_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269986_)
                                               (##values-length _g269986_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269987_ 2)))
                                        (error "Context expects 2 values"
                                               _g269987_)))
                                  (let ((_%target265678265717%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269986_ 0)))
                                        (_%tl265680265720%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269986_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265680265720%_))
                                        (letrec ((_%loop265681265723%_
                                                  (lambda (_%hd265679265727%_
                                                           _%rule265685265730%_
                                                           _%proc265686265731%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265679265727%_))
                                                        (let ((_%e265682265733%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265679265727%_))))
                  (let ((_%lp-hd265683265737%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265682265733%_)))
                        (_%lp-tl265684265740%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265682265733%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd265683265737%_))
                        (let ((_%e265689265743%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd265683265737%_))))
                          (let ((_%hd265690265747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265689265743%_)))
                                (_%tl265691265750%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265689265743%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265691265750%_))
                                (let ((_%e265692265753%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265691265750%_))))
                                  (let ((_%hd265693265757%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265692265753%_)))
                                        (_%tl265694265760%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265692265753%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265694265760%_))
                                        (_%loop265681265723%_
                                         _%lp-tl265684265740%_
                                         (cons _%hd265693265757%_
                                               _%rule265685265730%_)
                                         (cons _%hd265690265747%_
                                               _%proc265686265731%_))
                                        (_%g265671265700%_
                                         _%g265672265704%_))))
                                (_%g265671265700%_ _%g265672265704%_))))
                        (_%g265671265700%_ _%g265672265704%_))))
                (let ((_%rule265687265763%_ (reverse _%rule265685265730%_))
                      (_%proc265688265765%_ (reverse _%proc265686265731%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%rule265687265763%_
                             _%proc265688265765%_))
                          (let ((__tmp269988
                                 (lambda (_%g265784265788%_
                                          _%g265785265791%_
                                          _%g265786265793%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%g265785265791%_
                                                     (cons _%g265784265788%_
                                                           '())))
                                         _%g265786265793%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp269988
                             '()
                             _%rule265687265763%_
                             _%proc265688265765%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop265681265723%_
                                           _%target265678265717%_
                                           '()
                                           '()))
                                        (_%g265671265700%_
                                         _%g265672265704%_)))))
                              (_%g265671265700%_ _%g265672265704%_))))
                      (_%g265671265700%_ _%g265672265704%_)))))
          (_%g265670265796%_ _%$stx265667%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx265801%_)
        (let* ((_%g265805265823%_
                (lambda (_%g265806265819%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265806265819%_))))
               (_%g265804265878%_
                (lambda (_%g265806265827%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265806265827%_))
                      (let ((_%e265809265830%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265806265827%_))))
                        (let ((_%hd265810265834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265809265830%_)))
                              (_%tl265811265837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265809265830%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265811265837%_))
                              (let ((_%e265812265840%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265811265837%_))))
                                (let ((_%hd265813265844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265812265840%_)))
                                      (_%tl265814265847%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265812265840%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265814265847%_))
                                      (let ((_%e265815265850%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265814265847%_))))
                                        (let ((_%hd265816265854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265815265850%_)))
                                              (_%tl265817265857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265815265850%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265817265857%_))
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
                                                (cons _%hd265813265844%_ '()))
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
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '!lambda-inline))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'type))
                          '()))
              (cons _%hd265816265854%_ '())))
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
                                (cons _%hd265813265844%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265805265823%_
                                               _%g265806265827%_))))
                                      (_%g265805265823%_ _%g265806265827%_))))
                              (_%g265805265823%_ _%g265806265827%_))))
                      (_%g265805265823%_ _%g265806265827%_)))))
          (_%g265804265878%_ _%$stx265801%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx265882%_)
        (let* ((_%__stx269468269469%_ _%$stx265882%_)
               (_%g265887265912%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269468269469%_)))))
          (let ((_%__kont269471269472%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont269473269474%_
                 (lambda (_%g265892265959%_
                          _%g265893265961%_
                          _%g265894265962%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g265894265962%_
                                           (cons _%g265893265961%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g265892265959%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269468269469%_))
                (let ((_%e265889265988%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx269468269469%_))))
                  (let ((_%tl265891265995%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265889265988%_)))
                        (_%hd265890265992%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265889265988%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl265891265995%_))
                        (_%__kont269471269472%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl265891265995%_))
                            (let ((_%e265898265929%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl265891265995%_))))
                              (let ((_%tl265900265936%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e265898265929%_)))
                                    (_%hd265899265933%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e265898265929%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd265899265933%_))
                                    (let ((_%e265901265939%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd265899265933%_))))
                                      (let ((_%tl265903265946%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e265901265939%_)))
                                            (_%hd265902265943%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e265901265939%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl265903265946%_))
                                            (let ((_%e265904265949%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl265903265946%_))))
                                              (let ((_%tl265906265956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265904265949%_)))
                                                    (_%hd265905265953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265904265949%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl265906265956%_))
                                                    (_%__kont269473269474%_
                                                     _%tl265900265936%_
                                                     _%hd265905265953%_
                                                     _%hd265902265943%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g265887265912%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g265887265912%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g265887265912%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g265887265912%_))))))
                (let () (declare (not safe)) (_%g265887265912%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx266006%_)
        (let* ((_%__stx269512269513%_ _%$stx266006%_)
               (_%g266011266042%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269512269513%_)))))
          (let ((_%__kont269515269516%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont269517269518%_
                 (lambda (_%g266016266107%_
                          _%g266017266109%_
                          _%g266018266110%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g266018266110%_
                                           (let ((__tmp269989
                                                  (lambda (_%g266130266133%_
                                                           _%g266131266136%_)
                                                    (cons _%g266130266133%_
                                                          _%g266131266136%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp269989
                                              '()
                                              _%g266017266109%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g266016266107%_)
                                     '()))))))
            (let ((_%__match269555269556%_
                   (lambda (_%e266019266049%_
                            _%hd266020266053%_
                            _%tl266021266056%_
                            _%e266022266059%_
                            _%hd266023266063%_
                            _%tl266024266066%_
                            _%e266025266069%_
                            _%hd266026266073%_
                            _%tl266027266076%_
                            _%__splice269519269520%_
                            _%target266028266079%_
                            _%tl266030266082%_)
                     (letrec ((_%loop266031266085%_
                               (lambda (_%hd266029266089%_ _%sig266035266092%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd266029266089%_))
                                     (let ((_%e266032266094%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd266029266089%_))))
                                       (let ((_%lp-tl266034266101%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e266032266094%_)))
                                             (_%lp-hd266033266098%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e266032266094%_))))
                                         (_%loop266031266085%_
                                          _%lp-tl266034266101%_
                                          (cons _%lp-hd266033266098%_
                                                _%sig266035266092%_))))
                                     (let ((_%sig266036266104%_
                                            (reverse _%sig266035266092%_)))
                                       (_%__kont269517269518%_
                                        _%tl266024266066%_
                                        _%sig266036266104%_
                                        _%hd266026266073%_))))))
                       (_%loop266031266085%_ _%target266028266079%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269512269513%_))
                  (let ((_%e266013266146%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269512269513%_))))
                    (let ((_%tl266015266153%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266013266146%_)))
                          (_%hd266014266150%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266013266146%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl266015266153%_))
                          (_%__kont269515269516%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl266015266153%_))
                              (let ((_%e266022266059%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl266015266153%_))))
                                (let ((_%tl266024266066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e266022266059%_)))
                                      (_%hd266023266063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e266022266059%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd266023266063%_))
                                      (let ((_%e266025266069%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd266023266063%_))))
                                        (let ((_%tl266027266076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266025266069%_)))
                                              (_%hd266026266073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266025266069%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl266027266076%_))
                                              (let ((_%__splice269519269520%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl266027266076%_
                                                        '0))))
                                                (let ((_%tl266030266082%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269519269520%_
                                                          '1)))
                                                      (_%target266028266079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269519269520%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl266030266082%_))
                                                      (_%__match269555269556%_
                                                       _%e266013266146%_
                                                       _%hd266014266150%_
                                                       _%tl266015266153%_
                                                       _%e266022266059%_
                                                       _%hd266023266063%_
                                                       _%tl266024266066%_
                                                       _%e266025266069%_
                                                       _%hd266026266073%_
                                                       _%tl266027266076%_
                                                       _%__splice269519269520%_
                                                       _%target266028266079%_
                                                       _%tl266030266082%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g266011266042%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g266011266042%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g266011266042%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g266011266042%_))))))
                  (let () (declare (not safe)) (_%g266011266042%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx266165%_)
        (let* ((_%__stx269558269559%_ _%$stx266165%_)
               (_%g266170266217%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269558269559%_)))))
          (let ((_%__kont269561269562%_
                 (lambda (_%g266172266375%_ _%g266173266377%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g266173266377%_
                               (let ((__tmp269990
                                      (lambda (_%g266397266400%_
                                               _%g266398266403%_)
                                        (cons _%g266397266400%_
                                              _%g266398266403%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp269990
                                  '()
                                  _%g266172266375%_))))))
                (_%__kont269565269566%_
                 (lambda (_%g266195266272%_ _%g266196266274%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g266196266274%_
                               (let ((__tmp269991
                                      (lambda (_%g266291266294%_
                                               _%g266292266297%_)
                                        (cons _%g266291266294%_
                                              _%g266292266297%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp269991
                                  '()
                                  _%g266195266272%_)))))))
            (let* ((_%__match269625269626%_
                    (lambda (_%e266197266224%_
                             _%hd266198266228%_
                             _%tl266199266231%_
                             _%e266200266234%_
                             _%hd266201266238%_
                             _%tl266202266241%_
                             _%__splice269567269568%_
                             _%target266203266244%_
                             _%tl266205266247%_)
                      (letrec ((_%loop266206266250%_
                                (lambda (_%hd266204266254%_
                                         _%sig266210266257%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd266204266254%_))
                                      (let ((_%e266207266259%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd266204266254%_))))
                                        (let ((_%lp-tl266209266266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266207266259%_)))
                                              (_%lp-hd266208266263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266207266259%_))))
                                          (_%loop266206266250%_
                                           _%lp-tl266209266266%_
                                           (cons _%lp-hd266208266263%_
                                                 _%sig266210266257%_))))
                                      (let ((_%sig266211266269%_
                                             (reverse _%sig266210266257%_)))
                                        (_%__kont269565269566%_
                                         _%sig266211266269%_
                                         _%hd266201266238%_))))))
                        (_%loop266206266250%_ _%target266203266244%_ '()))))
                   (_%__match269617269618%_
                    (lambda (_%e266197266224%_
                             _%hd266198266228%_
                             _%tl266199266231%_
                             _%e266200266234%_
                             _%hd266201266238%_
                             _%tl266202266241%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl266202266241%_))
                          (let ((_%__splice269567269568%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl266202266241%_
                                    '0))))
                            (let ((_%tl266205266247%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269567269568%_
                                      '1)))
                                  (_%target266203266244%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269567269568%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl266205266247%_))
                                  (_%__match269625269626%_
                                   _%e266197266224%_
                                   _%hd266198266228%_
                                   _%tl266199266231%_
                                   _%e266200266234%_
                                   _%hd266201266238%_
                                   _%tl266202266241%_
                                   _%__splice269567269568%_
                                   _%target266203266244%_
                                   _%tl266205266247%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g266170266217%_)))))
                          (let () (declare (not safe)) (_%g266170266217%_)))))
                   (_%__match269605269606%_
                    (lambda (_%e266174266307%_
                             _%hd266175266311%_
                             _%tl266176266314%_
                             _%e266177266317%_
                             _%hd266178266321%_
                             _%tl266179266324%_
                             _%e266180266327%_
                             _%hd266181266331%_
                             _%tl266182266334%_
                             _%e266183266337%_
                             _%hd266184266341%_
                             _%tl266185266344%_
                             _%__splice269563269564%_
                             _%target266186266347%_
                             _%tl266188266350%_)
                      (letrec ((_%loop266189266353%_
                                (lambda (_%hd266187266357%_
                                         _%sig266193266360%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd266187266357%_))
                                      (let ((_%e266190266362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd266187266357%_))))
                                        (let ((_%lp-tl266192266369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266190266362%_)))
                                              (_%lp-hd266191266366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266190266362%_))))
                                          (_%loop266189266353%_
                                           _%lp-tl266192266369%_
                                           (cons _%lp-hd266191266366%_
                                                 _%sig266193266360%_))))
                                      (let ((_%sig266194266372%_
                                             (reverse _%sig266193266360%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl266182266334%_))
                                            (_%__kont269561269562%_
                                             _%sig266194266372%_
                                             _%hd266178266321%_)
                                            (_%__match269617269618%_
                                             _%e266174266307%_
                                             _%hd266175266311%_
                                             _%tl266176266314%_
                                             _%e266177266317%_
                                             _%hd266178266321%_
                                             _%tl266179266324%_)))))))
                        (_%loop266189266353%_ _%target266186266347%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269558269559%_))
                  (let ((_%e266174266307%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269558269559%_))))
                    (let ((_%tl266176266314%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266174266307%_)))
                          (_%hd266175266311%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266174266307%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl266176266314%_))
                          (let ((_%e266177266317%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl266176266314%_))))
                            (let ((_%tl266179266324%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e266177266317%_)))
                                  (_%hd266178266321%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e266177266317%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl266179266324%_))
                                  (let ((_%e266180266327%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl266179266324%_))))
                                    (let ((_%tl266182266334%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e266180266327%_)))
                                          (_%hd266181266331%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e266180266327%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd266181266331%_))
                                          (let ((_%e266183266337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd266181266331%_))))
                                            (let ((_%tl266185266344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e266183266337%_)))
                                                  (_%hd266184266341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e266183266337%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd266184266341%_))
                                                  (if (let ((__tmp269992
                                                             |gxc[1]#_g269993_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp269992
                                                         _%hd266184266341%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl266185266344%_))
                                                          (let ((_%__splice269563269564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl266185266344%_
                            '0))))
                    (let ((_%tl266188266350%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269563269564%_ '1)))
                          (_%target266186266347%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269563269564%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl266188266350%_))
                          (_%__match269605269606%_
                           _%e266174266307%_
                           _%hd266175266311%_
                           _%tl266176266314%_
                           _%e266177266317%_
                           _%hd266178266321%_
                           _%tl266179266324%_
                           _%e266180266327%_
                           _%hd266181266331%_
                           _%tl266182266334%_
                           _%e266183266337%_
                           _%hd266184266341%_
                           _%tl266185266344%_
                           _%__splice269563269564%_
                           _%target266186266347%_
                           _%tl266188266350%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl266179266324%_))
                              (let ((_%__splice269567269568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl266179266324%_
                                        '0))))
                                (let ((_%tl266205266247%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice269567269568%_
                                          '1)))
                                      (_%target266203266244%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice269567269568%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl266205266247%_))
                                      (_%__match269625269626%_
                                       _%e266174266307%_
                                       _%hd266175266311%_
                                       _%tl266176266314%_
                                       _%e266177266317%_
                                       _%hd266178266321%_
                                       _%tl266179266324%_
                                       _%__splice269567269568%_
                                       _%target266203266244%_
                                       _%tl266205266247%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g266170266217%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g266170266217%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl266179266324%_))
                      (let ((_%__splice269567269568%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl266179266324%_
                                '0))))
                        (let ((_%tl266205266247%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269567269568%_ '1)))
                              (_%target266203266244%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269567269568%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl266205266247%_))
                              (_%__match269625269626%_
                               _%e266174266307%_
                               _%hd266175266311%_
                               _%tl266176266314%_
                               _%e266177266317%_
                               _%hd266178266321%_
                               _%tl266179266324%_
                               _%__splice269567269568%_
                               _%target266203266244%_
                               _%tl266205266247%_)
                              (let ()
                                (declare (not safe))
                                (_%g266170266217%_)))))
                      (let () (declare (not safe)) (_%g266170266217%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl266179266324%_))
                  (let ((_%__splice269567269568%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl266179266324%_
                            '0))))
                    (let ((_%tl266205266247%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269567269568%_ '1)))
                          (_%target266203266244%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269567269568%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl266205266247%_))
                          (_%__match269625269626%_
                           _%e266174266307%_
                           _%hd266175266311%_
                           _%tl266176266314%_
                           _%e266177266317%_
                           _%hd266178266321%_
                           _%tl266179266324%_
                           _%__splice269567269568%_
                           _%target266203266244%_
                           _%tl266205266247%_)
                          (let () (declare (not safe)) (_%g266170266217%_)))))
                  (let () (declare (not safe)) (_%g266170266217%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl266179266324%_))
                                                      (let ((_%__splice269567269568%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl266179266324%_
                        '0))))
                (let ((_%tl266205266247%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269567269568%_ '1)))
                      (_%target266203266244%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269567269568%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl266205266247%_))
                      (_%__match269625269626%_
                       _%e266174266307%_
                       _%hd266175266311%_
                       _%tl266176266314%_
                       _%e266177266317%_
                       _%hd266178266321%_
                       _%tl266179266324%_
                       _%__splice269567269568%_
                       _%target266203266244%_
                       _%tl266205266247%_)
                      (let () (declare (not safe)) (_%g266170266217%_)))))
              (let () (declare (not safe)) (_%g266170266217%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl266179266324%_))
                                              (let ((_%__splice269567269568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl266179266324%_
                                                        '0))))
                                                (let ((_%tl266205266247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269567269568%_
                                                          '1)))
                                                      (_%target266203266244%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269567269568%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl266205266247%_))
                                                      (_%__match269625269626%_
                                                       _%e266174266307%_
                                                       _%hd266175266311%_
                                                       _%tl266176266314%_
                                                       _%e266177266317%_
                                                       _%hd266178266321%_
                                                       _%tl266179266324%_
                                                       _%__splice269567269568%_
                                                       _%target266203266244%_
                                                       _%tl266205266247%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g266170266217%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g266170266217%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl266179266324%_))
                                      (let ((_%__splice269567269568%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl266179266324%_
                                                '0))))
                                        (let ((_%tl266205266247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269567269568%_
                                                  '1)))
                                              (_%target266203266244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269567269568%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl266205266247%_))
                                              (_%__match269625269626%_
                                               _%e266174266307%_
                                               _%hd266175266311%_
                                               _%tl266176266314%_
                                               _%e266177266317%_
                                               _%hd266178266321%_
                                               _%tl266179266324%_
                                               _%__splice269567269568%_
                                               _%target266203266244%_
                                               _%tl266205266247%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g266170266217%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g266170266217%_))))))
                          (let () (declare (not safe)) (_%g266170266217%_)))))
                  (let () (declare (not safe)) (_%g266170266217%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx267560%_ _%id267562%_)
        (let ((_%proc267566%_
               (let ((__tmp269994
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id267562%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp269994))))
          (if (procedure? _%proc267566%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx267560%_
                 _%id267562%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx267551%_ _%id267553%_)
        (let ((_%klass267557%_
               (let ((__tmp269995
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id267553%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp269995))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass267557%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx267551%_
                 _%id267553%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx266801%_ _%proc266803%_ _%sig266804%_)
        (letrec ((_%signature-arity266806%_
                  (lambda (_%args267483%_)
                    (let _%loop267486%_ ((_%rest267489%_ _%args267483%_)
                                         (_%count267491%_ '0))
                      (let* ((_%rest267492267503%_ _%rest267489%_)
                             (_%E267496267509%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest267492267503%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K267499267540%_
                               (lambda (_%rest267537%_)
                                 (_%loop267486%_
                                  _%rest267537%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count267491%_ '1)))))
                              (_%K267498267529%_ (lambda () _%count267491%_))
                              (_%K267497267517%_
                               (lambda () (cons _%count267491%_ '()))))
                          (let ((_%try-match267494267533%_
                                 (lambda ()
                                   (if (null? _%rest267492267503%_)
                                       (_%K267498267529%_)
                                       (_%K267497267517%_)))))
                            (if (pair? _%rest267492267503%_)
                                (let* ((_%tl267501267544%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest267492267503%_)))
                                       (_%rest267548%_ _%tl267501267544%_))
                                  (_%K267499267540%_ _%rest267548%_))
                                (_%try-match267494267533%_))))))))
                 (_%make-signature266808%_
                  (lambda (_%args267365%_
                           _%return267367%_
                           _%effect267368%_
                           _%unchecked267369%_)
                    (let ((__tmp269996
                           (lambda (_%g267370267372%_)
                             (|gxc[1]#verify-class!|
                              _%ctx266801%_
                              _%g267370267372%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp269996 _%args267365%_))
                    (|gxc[1]#verify-class!| _%ctx266801%_ _%return267367%_)
                    (if _%unchecked267369%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx266801%_
                         _%unchecked267369%_)
                        '#!void)
                    (let ((_%arity267376%_
                           (_%signature-arity266806%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args267365%_)))))
                      (if _%effect267368%_
                          (let ((_%effect267379%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect267368%_))))
                            (if (and (list? _%effect267379%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect267379%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx266801%_
                                   _%proc266803%_
                                   _%effect267379%_))))
                          '#!void)
                      (cons _%arity267376%_
                            (cons (let* ((_%g267382267405%_
                                          (lambda (_%g267383267401%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g267383267401%_))))
                                         (_%g267381267479%_
                                          (lambda (_%g267383267409%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g267383267409%_))
                                                (let ((_%e267388267412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g267383267409%_))))
                                                  (let ((_%hd267389267416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e267388267412%_)))
                                                        (_%tl267390267419%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e267388267412%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl267390267419%_))
                                                        (let ((_%e267391267422%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl267390267419%_))))
                  (let ((_%hd267392267426%_
                         (let ()
                           (declare (not safe))
                           (##car _%e267391267422%_)))
                        (_%tl267393267429%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e267391267422%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl267393267429%_))
                        (let ((_%e267394267432%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl267393267429%_))))
                          (let ((_%hd267395267436%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267394267432%_)))
                                (_%tl267396267439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267394267432%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl267396267439%_))
                                (let ((_%e267397267442%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl267396267439%_))))
                                  (let ((_%hd267398267446%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e267397267442%_)))
                                        (_%tl267399267449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e267397267442%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl267399267449%_))
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
                        (cons _%hd267389267416%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%hd267392267426%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%hd267395267436%_ '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%hd267398267446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'builtin))
                                      '()))
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%g267382267405%_
                                         _%g267383267409%_))))
                                (_%g267382267405%_ _%g267383267409%_))))
                        (_%g267382267405%_ _%g267383267409%_))))
                (_%g267382267405%_ _%g267383267409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g267382267405%_
                                                 _%g267383267409%_)))))
                                    (_%g267381267479%_
                                     (list _%args267365%_
                                           _%return267367%_
                                           _%effect267368%_
                                           _%unchecked267369%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx266801%_ _%proc266803%_)
          (let* ((_%__stx269636269637%_ _%sig266804%_)
                 (_%g266815266918%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx269636269637%_)))))
            (let ((_%__kont269639269640%_
                   (lambda (_%g266817267346%_ _%g266818267348%_)
                     (_%make-signature266808%_
                      _%g266818267348%_
                      _%g266817267346%_
                      '#f
                      '#f)))
                  (_%__kont269641269642%_
                   (lambda (_%g266825267297%_
                            _%g266826267299%_
                            _%g266827267300%_)
                     (_%make-signature266808%_
                      _%g266827267300%_
                      _%g266826267299%_
                      _%g266825267297%_
                      '#f)))
                  (_%__kont269643269644%_
                   (lambda (_%g266841267221%_
                            _%g266842267223%_
                            _%g266843267224%_)
                     (_%make-signature266808%_
                      _%g266843267224%_
                      _%g266842267223%_
                      _%g266841267221%_
                      (let ((__tmp269997
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc266803%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp269997)))))
                  (_%__kont269645269646%_
                   (lambda (_%g266861267127%_
                            _%g266862267129%_
                            _%g266863267130%_
                            _%g266864267131%_)
                     (_%make-signature266808%_
                      _%g266864267131%_
                      _%g266863267130%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g266861267127%_)))))
                  (_%__kont269647269648%_
                   (lambda (_%g266885267034%_ _%g266886267036%_)
                     (_%make-signature266808%_
                      _%g266886267036%_
                      _%g266885267034%_
                      '#f
                      (let ((__tmp269998
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc266803%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp269998)))))
                  (_%__kont269649269650%_
                   (lambda (_%g266897266969%_
                            _%g266898266971%_
                            _%g266899266972%_)
                     (_%make-signature266808%_
                      _%g266899266972%_
                      _%g266898266971%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g266897266969%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269636269637%_))
                  (let ((_%e266819267326%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269636269637%_))))
                    (let ((_%tl266821267333%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266819267326%_)))
                          (_%hd266820267330%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266819267326%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl266821267333%_))
                          (let ((_%e266822267336%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl266821267333%_))))
                            (let ((_%tl266824267343%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e266822267336%_)))
                                  (_%hd266823267340%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e266822267336%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl266824267343%_))
                                  (_%__kont269639269640%_
                                   _%hd266823267340%_
                                   _%hd266820267330%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl266824267343%_))
                                      (let ((_%e266834267273%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl266824267343%_))))
                                        (let ((_%tl266836267280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266834267273%_)))
                                              (_%hd266835267277%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266834267273%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd266835267277%_))
                                              (let ((_%e266837267283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd266835267277%_))))
                                                (if (equal? _%e266837267283%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl266836267280%_))
                                                        (let ((_%e266838267287%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl266836267280%_))))
                  (let ((_%tl266840267294%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266838267287%_)))
                        (_%hd266839267291%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266838267287%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl266840267294%_))
                        (_%__kont269641269642%_
                         _%hd266839267291%_
                         _%hd266823267340%_
                         _%hd266820267330%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl266840267294%_))
                            (let ((_%e266857267207%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl266840267294%_))))
                              (let ((_%tl266859267214%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e266857267207%_)))
                                    (_%hd266858267211%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e266857267207%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd266858267211%_))
                                    (let ((_%e266860267217%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd266858267211%_))))
                                      (if (equal? _%e266860267217%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl266859267214%_))
                                              (_%__kont269643269644%_
                                               _%hd266839267291%_
                                               _%hd266823267340%_
                                               _%hd266820267330%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266859267214%_))
                                                  (let ((_%e266882267117%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266859267214%_))))
                                                    (let ((_%tl266884267124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266882267117%_)))
                                                          (_%hd266883267121%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266882267117%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl266884267124%_))
                                                          (_%__kont269645269646%_
                                                           _%hd266883267121%_
                                                           _%hd266839267291%_
                                                           _%hd266823267340%_
                                                           _%hd266820267330%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g266815266918%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266815266918%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g266815266918%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g266815266918%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g266815266918%_))))))
                (let () (declare (not safe)) (_%g266815266918%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e266837267283%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl266836267280%_))
                                                            (_%__kont269647269648%_
                                                             _%hd266823267340%_
                                                             _%hd266820267330%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl266836267280%_))
                        (let ((_%e266910266959%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266836267280%_))))
                          (let ((_%tl266912266966%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266910266959%_)))
                                (_%hd266911266963%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266910266959%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl266912266966%_))
                                (_%__kont269649269650%_
                                 _%hd266911266963%_
                                 _%hd266823267340%_
                                 _%hd266820267330%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g266815266918%_)))))
                        (let () (declare (not safe)) (_%g266815266918%_))))
                (let () (declare (not safe)) (_%g266815266918%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g266815266918%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g266815266918%_))))))
                          (let () (declare (not safe)) (_%g266815266918%_)))))
                  (let () (declare (not safe)) (_%g266815266918%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig266412%_)
        (let* ((_%g266415266495%_
                (lambda (_%g266416266491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g266416266491%_))))
               (_%g266414266797%_
                (lambda (_%g266416266499%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g266416266499%_))
                      (let ((_%e266422266502%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g266416266499%_))))
                        (let ((_%hd266423266506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266422266502%_)))
                              (_%tl266424266509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266422266502%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl266424266509%_))
                              (let ((_%e266425266512%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl266424266509%_))))
                                (let ((_%hd266426266516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e266425266512%_)))
                                      (_%tl266427266519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e266425266512%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd266426266516%_))
                                      (let ((_%e266428266522%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd266426266516%_))))
                                        (if (equal? _%e266428266522%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl266427266519%_))
                                                (let ((_%e266429266526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl266427266519%_))))
                                                  (let ((_%hd266430266530%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e266429266526%_)))
                                                        (_%tl266431266533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e266429266526%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd266430266530%_))
                                                        (let ((_%e266432266536%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd266430266530%_))))
                  (let ((_%hd266433266540%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266432266536%_)))
                        (_%tl266434266543%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266432266536%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd266433266540%_))
                        (if (let ((__tmp269999 |gxc[1]#_g270000_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp269999
                               _%hd266433266540%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl266434266543%_))
                                (let ((_%e266435266546%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl266434266543%_))))
                                  (let ((_%hd266436266550%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e266435266546%_)))
                                        (_%tl266437266553%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e266435266546%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl266437266553%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl266431266533%_))
                                            (let ((_%e266438266556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl266431266533%_))))
                                              (let ((_%hd266439266560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e266438266556%_)))
                                                    (_%tl266440266563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e266438266556%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd266439266560%_))
                                                    (let ((_%e266441266566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd266439266560%_))))
                                                      (if (equal? _%e266441266566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl266440266563%_))
                      (let ((_%e266442266570%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl266440266563%_))))
                        (let ((_%hd266443266574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266442266570%_)))
                              (_%tl266444266577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266442266570%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd266443266574%_))
                              (let ((_%e266445266580%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd266443266574%_))))
                                (let ((_%hd266446266584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e266445266580%_)))
                                      (_%tl266447266587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e266445266580%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd266446266584%_))
                                      (if (let ((__tmp270001
                                                 |gxc[1]#_g270002_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp270001
                                             _%hd266446266584%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl266447266587%_))
                                              (let ((_%e266448266590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl266447266587%_))))
                                                (let ((_%hd266449266594%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e266448266590%_)))
                                                      (_%tl266450266597%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e266448266590%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl266450266597%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl266444266577%_))
                                                          (let ((_%e266451266600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl266444266577%_))))
                    (let ((_%hd266452266604%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266451266600%_)))
                          (_%tl266453266607%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266451266600%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd266452266604%_))
                          (let ((_%e266454266610%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd266452266604%_))))
                            (if (equal? _%e266454266610%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl266453266607%_))
                                    (let ((_%e266455266614%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl266453266607%_))))
                                      (let ((_%hd266456266618%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e266455266614%_)))
                                            (_%tl266457266621%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e266455266614%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd266456266618%_))
                                            (let ((_%e266458266624%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd266456266618%_))))
                                              (let ((_%hd266459266628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e266458266624%_)))
                                                    (_%tl266460266631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e266458266624%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd266459266628%_))
                                                    (if (let ((__tmp270003
                                                               |gxc[1]#_g270004_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp270003
                                                           _%hd266459266628%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl266460266631%_))
                                                            (let ((_%e266461266634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl266460266631%_))))
                      (let ((_%hd266462266638%_
                             (let ()
                               (declare (not safe))
                               (##car _%e266461266634%_)))
                            (_%tl266463266641%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e266461266634%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl266463266641%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl266457266621%_))
                                (let ((_%e266464266644%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl266457266621%_))))
                                  (let ((_%hd266465266648%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e266464266644%_)))
                                        (_%tl266466266651%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e266464266644%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd266465266648%_))
                                        (let ((_%e266467266654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd266465266648%_))))
                                          (if (equal? _%e266467266654%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266466266651%_))
                                                  (let ((_%e266468266658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266466266651%_))))
                                                    (let ((_%hd266469266662%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266468266658%_)))
                                                          (_%tl266470266665%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266468266658%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd266469266662%_))
                                                          (let ((_%e266471266668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd266469266662%_))))
                    (let ((_%hd266472266672%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266471266668%_)))
                          (_%tl266473266675%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266471266668%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd266472266672%_))
                          (if (let ((__tmp270005 |gxc[1]#_g270006_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp270005
                                 _%hd266472266672%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl266473266675%_))
                                  (let ((_%e266474266678%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl266473266675%_))))
                                    (let ((_%hd266475266682%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e266474266678%_)))
                                          (_%tl266476266685%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e266474266678%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl266476266685%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl266470266665%_))
                                              (let ((_%e266477266688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl266470266665%_))))
                                                (let ((_%hd266478266692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e266477266688%_)))
                                                      (_%tl266479266695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e266477266688%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd266478266692%_))
                                                      (let ((_%e266480266698%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd266478266692%_))))
                (if (equal? _%e266480266698%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl266479266695%_))
                        (let ((_%e266481266702%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266479266695%_))))
                          (let ((_%hd266482266706%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266481266702%_)))
                                (_%tl266483266709%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266481266702%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd266482266706%_))
                                (let ((_%e266484266712%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd266482266706%_))))
                                  (let ((_%hd266485266716%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e266484266712%_)))
                                        (_%tl266486266719%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e266484266712%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd266485266716%_))
                                        (if (let ((__tmp270007
                                                   |gxc[1]#_g270008_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp270007
                                               _%hd266485266716%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl266486266719%_))
                                                (let ((_%e266487266722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl266486266719%_))))
                                                  (let ((_%hd266488266726%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e266487266722%_)))
                                                        (_%tl266489266729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e266487266722%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl266489266729%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl266483266709%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd266475266682%_))
                        (cons _%hd266475266682%_
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'make-!signature))
                                          (cons 'return:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%hd266449266594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%hd266488266726%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%g266415266495%_ _%g266416266499%_))
                (_%g266415266495%_ _%g266416266499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g266415266495%_
                                                 _%g266416266499%_))
                                            (_%g266415266495%_
                                             _%g266416266499%_))
                                        (_%g266415266495%_
                                         _%g266416266499%_))))
                                (_%g266415266495%_ _%g266416266499%_))))
                        (_%g266415266495%_ _%g266416266499%_))
                    (_%g266415266495%_ _%g266416266499%_)))
              (_%g266415266495%_ _%g266416266499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g266415266495%_
                                               _%g266416266499%_))
                                          (_%g266415266495%_
                                           _%g266416266499%_))))
                                  (_%g266415266495%_ _%g266416266499%_))
                              (_%g266415266495%_ _%g266416266499%_))
                          (_%g266415266495%_ _%g266416266499%_))))
                  (_%g266415266495%_ _%g266416266499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g266415266495%_
                                                   _%g266416266499%_))
                                              (_%g266415266495%_
                                               _%g266416266499%_)))
                                        (_%g266415266495%_
                                         _%g266416266499%_))))
                                (_%g266415266495%_ _%g266416266499%_))
                            (_%g266415266495%_ _%g266416266499%_))))
                    (_%g266415266495%_ _%g266416266499%_))
                (_%g266415266495%_ _%g266416266499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g266415266495%_
                                                     _%g266416266499%_))))
                                            (_%g266415266495%_
                                             _%g266416266499%_))))
                                    (_%g266415266495%_ _%g266416266499%_))
                                (_%g266415266495%_ _%g266416266499%_)))
                          (_%g266415266495%_ _%g266416266499%_))))
                  (_%g266415266495%_ _%g266416266499%_))
              (_%g266415266495%_ _%g266416266499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g266415266495%_
                                               _%g266416266499%_))
                                          (_%g266415266495%_
                                           _%g266416266499%_))
                                      (_%g266415266495%_ _%g266416266499%_))))
                              (_%g266415266495%_ _%g266416266499%_))))
                      (_%g266415266495%_ _%g266416266499%_))
                  (_%g266415266495%_ _%g266416266499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g266415266495%_
                                                     _%g266416266499%_))))
                                            (_%g266415266495%_
                                             _%g266416266499%_))
                                        (_%g266415266495%_
                                         _%g266416266499%_))))
                                (_%g266415266495%_ _%g266416266499%_))
                            (_%g266415266495%_ _%g266416266499%_))
                        (_%g266415266495%_ _%g266416266499%_))))
                (_%g266415266495%_ _%g266416266499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g266415266495%_
                                                 _%g266416266499%_))
                                            (_%g266415266495%_
                                             _%g266416266499%_)))
                                      (_%g266415266495%_ _%g266416266499%_))))
                              (_%g266415266495%_ _%g266416266499%_))))
                      (_%g266415266495%_ _%g266416266499%_)))))
          (_%g266414266797%_ _%sig266412%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx267569%_)
        (let* ((_%g267572267590%_
                (lambda (_%g267573267586%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267573267586%_))))
               (_%g267571267645%_
                (lambda (_%g267573267594%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267573267594%_))
                      (let ((_%e267576267597%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267573267594%_))))
                        (let ((_%hd267577267601%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267576267597%_)))
                              (_%tl267578267604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267576267597%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267578267604%_))
                              (let ((_%e267579267607%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267578267604%_))))
                                (let ((_%hd267580267611%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267579267607%_)))
                                      (_%tl267581267614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267579267607%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl267581267614%_))
                                      (let ((_%e267582267617%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl267581267614%_))))
                                        (let ((_%hd267583267621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267582267617%_)))
                                              (_%tl267584267624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267582267617%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl267584267624%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%hd267580267611%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%hd267583267621%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx267569%_
                                                     _%hd267580267611%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx267569%_
                                                     _%hd267583267621%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%hd267580267611%_
                                                                (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'make-!primitive-predicate))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%hd267583267621%_ '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267572267590%_
                                                   _%g267573267594%_))
                                              (_%g267572267590%_
                                               _%g267573267594%_))))
                                      (_%g267572267590%_ _%g267573267594%_))))
                              (_%g267572267590%_ _%g267573267594%_))))
                      (_%g267572267590%_ _%g267573267594%_)))))
          (_%g267571267645%_ _%stx267569%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx267649%_)
        (let* ((_%g267652267676%_
                (lambda (_%g267653267672%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267653267672%_))))
               (_%g267651267957%_
                (lambda (_%g267653267680%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267653267680%_))
                      (let ((_%e267656267683%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267653267680%_))))
                        (let ((_%hd267657267687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267656267683%_)))
                              (_%tl267658267690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267656267683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267658267690%_))
                              (let ((_%e267659267693%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267658267690%_))))
                                (let ((_%hd267660267697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267659267693%_)))
                                      (_%tl267661267700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267659267693%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl267661267700%_))
                                      (let ((_g270009_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl267661267700%_
                                                '0))))
                                        (begin
                                          (let ((_g270010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g270009_)
                                                       (##values-length
                                                        _g270009_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g270010_ 2)))
                                                (error "Context expects 2 values"
                                                       _g270010_)))
                                          (let ((_%target267662267703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g270009_ 0)))
                                                (_%tl267664267706%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g270009_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl267664267706%_))
                                                (letrec ((_%loop267665267709%_
                                                          (lambda (_%hd267663267713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature267669267716%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd267663267713%_))
                        (let ((_%e267666267718%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd267663267713%_))))
                          (let ((_%lp-hd267667267722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267666267718%_)))
                                (_%lp-tl267668267725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267666267718%_))))
                            (_%loop267665267709%_
                             _%lp-tl267668267725%_
                             (cons _%lp-hd267667267722%_
                                   _%signature267669267716%_))))
                        (let ((_%signature267670267728%_
                               (reverse _%signature267669267716%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd267660267697%_))
                              (let* ((_%g267751267766%_
                                      (lambda (_%g267752267762%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g267752267762%_))))
                                     (_%g267750267945%_
                                      (lambda (_%g267752267770%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%g267752267770%_))
                                            (let ((_%e267755267773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%g267752267770%_))))
                                              (let ((_%hd267756267777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e267755267773%_)))
                                                    (_%tl267757267780%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e267755267773%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl267757267780%_))
                                                    (let ((_%e267758267783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%tl267757267780%_))))
                                                      (let ((_%hd267759267787%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e267758267783%_)))
                    (_%tl267760267790%_
                     (let () (declare (not safe)) (##cdr _%e267758267783%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl267760267790%_))
                    (let* ((_%g267811267819%_
                            (lambda (_%g267812267815%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g267812267815%_))))
                           (_%g267810267941%_
                            (lambda (_%g267812267823%_)
                              (let* ((_%unchecked267839%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%hd267759267787%_))
                                     (_%g267842267850%_
                                      (lambda (_%g267843267846%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g267843267846%_))))
                                     (_%g267841267873%_
                                      (lambda (_%g267843267854%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%g267812267823%_
                                                    (cons _%g267843267854%_
                                                          '()))))))
                                (_%g267841267873%_
                                 (if _%unchecked267839%_
                                     (let* ((_%g267877267892%_
                                             (lambda (_%g267878267888%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g267878267888%_))))
                                            (_%g267876267937%_
                                             (lambda (_%g267878267896%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g267878267896%_))
                                                   (let ((_%e267881267899%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g267878267896%_))))
                                                     (let ((_%hd267882267903%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e267881267899%_)))
                                                           (_%tl267883267906%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e267881267899%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl267883267906%_))
                                                           (let ((_%e267884267909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl267883267906%_))))
                     (let ((_%hd267885267913%_
                            (let ()
                              (declare (not safe))
                              (##car _%e267884267909%_)))
                           (_%tl267886267916%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e267884267909%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl267886267916%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%hd267882267903%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%hd267756267777%_ '()))
                 (cons '#f (cons 'signature: (cons _%hd267885267913%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%g267877267892%_ _%g267878267896%_))))
                   (_%g267877267892%_ _%g267878267896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g267877267892%_
                                                    _%g267878267896%_)))))
                                       (_%g267876267937%_ _%unchecked267839%_))
                                     '(begin)))))))
                      (_%g267810267941%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%hd267660267697%_
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-lambda))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%hd267756267777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%hd267759267787%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%g267751267766%_ _%g267752267770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267751267766%_
                                                     _%g267752267770%_))))
                                            (_%g267751267766%_
                                             _%g267752267770%_)))))
                                (_%g267750267945%_
                                 (|gxc[1]#parse-signature|
                                  _%stx267649%_
                                  _%hd267660267697%_
                                  (let ((__tmp270011
                                         (lambda (_%g267948267951%_
                                                  _%g267949267954%_)
                                           (cons _%g267948267951%_
                                                 _%g267949267954%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp270011
                                     '()
                                     _%signature267670267728%_)))))
                              (_%g267652267676%_ _%g267653267680%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop267665267709%_
                                                   _%target267662267703%_
                                                   '()))
                                                (_%g267652267676%_
                                                 _%g267653267680%_)))))
                                      (_%g267652267676%_ _%g267653267680%_))))
                              (_%g267652267676%_ _%g267653267680%_))))
                      (_%g267652267676%_ _%g267653267680%_)))))
          (_%g267651267957%_ _%stx267649%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx267962%_)
        (let* ((_%g267965267989%_
                (lambda (_%g267966267985%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267966267985%_))))
               (_%g267964268864%_
                (lambda (_%g267966267993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267966267993%_))
                      (let ((_%e267969267996%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267966267993%_))))
                        (let ((_%hd267970268000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267969267996%_)))
                              (_%tl267971268003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267969267996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267971268003%_))
                              (let ((_%e267972268006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267971268003%_))))
                                (let ((_%hd267973268010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267972268006%_)))
                                      (_%tl267974268013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267972268006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl267974268013%_))
                                      (let ((_g270012_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl267974268013%_
                                                '0))))
                                        (begin
                                          (let ((_g270013_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g270012_)
                                                       (##values-length
                                                        _g270012_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g270013_ 2)))
                                                (error "Context expects 2 values"
                                                       _g270013_)))
                                          (let ((_%target267975268016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g270012_ 0)))
                                                (_%tl267977268019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g270012_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl267977268019%_))
                                                (letrec ((_%loop267978268022%_
                                                          (lambda (_%hd267976268026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature267982268029%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd267976268026%_))
                        (let ((_%e267979268031%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd267976268026%_))))
                          (let ((_%lp-hd267980268035%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267979268031%_)))
                                (_%lp-tl267981268038%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267979268031%_))))
                            (_%loop267978268022%_
                             _%lp-tl267981268038%_
                             (cons _%lp-hd267980268035%_
                                   _%case-signature267982268029%_))))
                        (let ((_%case-signature267983268041%_
                               (reverse _%case-signature267982268029%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd267973268010%_))
                              (let* ((_%signatures268077%_
                                      (map (lambda (_%g268063268065%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx267962%_
                                              _%hd267973268010%_
                                              _%g268063268065%_))
                                           (let ((__tmp270014
                                                  (lambda (_%g268068268071%_
                                                           _%g268069268074%_)
                                                    (cons _%g268068268071%_
                                                          _%g268069268074%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp270014
                                              '()
                                              _%case-signature267983268041%_))))
                                     (_%g268080268106%_
                                      (lambda (_%g268081268102%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g268081268102%_))))
                                     (_%g268079268860%_
                                      (lambda (_%g268081268110%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%g268081268110%_))
                                            (let ((_g270015_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%g268081268110%_
                                                      '0))))
                                              (begin
                                                (let ((_g270016_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g270015_)
                                                             (##values-length
                                                              _g270015_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g270016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g270016_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target268084268113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g270015_
                                                          0)))
                                                      (_%tl268086268116%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g270015_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl268086268116%_))
                                                      (letrec ((_%loop268087268119%_
                                                                (lambda (_%hd268085268123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%sig268091268126%_
                                 _%arity268092268127%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd268085268123%_))
                              (let ((_%e268088268129%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd268085268123%_))))
                                (let ((_%lp-hd268089268133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e268088268129%_)))
                                      (_%lp-tl268090268136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e268088268129%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%lp-hd268089268133%_))
                                      (let ((_%e268095268139%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%lp-hd268089268133%_))))
                                        (let ((_%hd268096268143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e268095268139%_)))
                                              (_%tl268097268146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e268095268139%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl268097268146%_))
                                              (let ((_%e268098268149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl268097268146%_))))
                                                (let ((_%hd268099268153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e268098268149%_)))
                                                      (_%tl268100268156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e268098268149%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl268100268156%_))
                                                      (_%loop268087268119%_
                                                       _%lp-tl268090268136%_
                                                       (cons _%hd268099268153%_
                                                             _%sig268091268126%_)
                                                       (cons _%hd268096268143%_
                                                             _%arity268092268127%_))
                                                      (_%g268080268106%_
                                                       _%g268081268110%_))))
                                              (_%g268080268106%_
                                               _%g268081268110%_))))
                                      (_%g268080268106%_ _%g268081268110%_))))
                              (let ((_%sig268093268159%_
                                     (reverse _%sig268091268126%_))
                                    (_%arity268094268161%_
                                     (reverse _%arity268092268127%_)))
                                (let* ((_%g268182268190%_
                                        (lambda (_%g268183268186%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g268183268186%_))))
                                       (_%g268181268845%_
                                        (lambda (_%g268183268194%_)
                                          (let* ((_%g268210268218%_
                                                  (lambda (_%g268211268214%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g268211268214%_))))
                                                 (_%g268209268240%_
                                                  (lambda (_%g268211268222%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g268183268194%_
                                                                (cons _%g268211268222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g268209268240%_
                                             (let ((_g270017_
                                                    (let _%loop268244%_ ((_%rest268247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures268077%_)
                                 (_%unchecked-proc268249%_ '#f)
                                 (_%unchecked-clauses268250%_ '()))
              (let* ((_%rest268251268259%_ _%rest268247%_)
                     (_%else268253268271%_
                      (lambda ()
                        (values _%unchecked-proc268249%_
                                (reverse! _%unchecked-clauses268250%_))))
                     (_%K268255268712%_
                      (lambda (_%rest268275%_ _%hd268277%_)
                        (let* ((_%g268279268366%_
                                (lambda (_%g268280268362%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g268280268362%_))))
                               (_%g268278268708%_
                                (lambda (_%g268280268370%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g268280268370%_))
                                      (let ((_%e268287268373%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g268280268370%_))))
                                        (let ((_%hd268288268377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e268287268373%_)))
                                              (_%tl268289268380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e268287268373%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl268289268380%_))
                                              (let ((_%e268290268383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl268289268380%_))))
                                                (let ((_%hd268291268387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e268290268383%_)))
                                                      (_%tl268292268390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e268290268383%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd268291268387%_))
                                                      (let ((_%e268293268393%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%hd268291268387%_))))
                (let ((_%hd268294268397%_
                       (let () (declare (not safe)) (##car _%e268293268393%_)))
                      (_%tl268295268400%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e268293268393%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl268295268400%_))
                      (let ((_%e268296268403%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl268295268400%_))))
                        (let ((_%hd268297268407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e268296268403%_)))
                              (_%tl268298268410%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e268296268403%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%hd268297268407%_))
                              (let ((_%e268299268413%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd268297268407%_))))
                                (if (equal? _%e268299268413%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl268298268410%_))
                                        (let ((_%e268300268417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl268298268410%_))))
                                          (let ((_%hd268301268421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e268300268417%_)))
                                                (_%tl268302268424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e268300268417%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd268301268421%_))
                                                (let ((_%e268303268427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%hd268301268421%_))))
                                                  (let ((_%hd268304268431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e268303268427%_)))
                                                        (_%tl268305268434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e268303268427%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd268304268431%_))
                                                        (if (let ((__tmp270019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g270020_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp270019 _%hd268304268431%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl268305268434%_))
                        (let ((_%e268306268437%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl268305268434%_))))
                          (let ((_%hd268307268441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e268306268437%_)))
                                (_%tl268308268444%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e268306268437%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl268308268444%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl268302268424%_))
                                    (let ((_%e268309268447%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl268302268424%_))))
                                      (let ((_%hd268310268451%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e268309268447%_)))
                                            (_%tl268311268454%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e268309268447%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%hd268310268451%_))
                                            (let ((_%e268312268457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd268310268451%_))))
                                              (if (equal? _%e268312268457%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl268311268454%_))
                                                      (let ((_%e268313268461%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl268311268454%_))))
                (let ((_%hd268314268465%_
                       (let () (declare (not safe)) (##car _%e268313268461%_)))
                      (_%tl268315268468%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e268313268461%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd268314268465%_))
                      (let ((_%e268316268471%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%hd268314268465%_))))
                        (let ((_%hd268317268475%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e268316268471%_)))
                              (_%tl268318268478%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e268316268471%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd268317268475%_))
                              (if (let ((__tmp270021 |gxc[1]#_g270022_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp270021
                                     _%hd268317268475%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl268318268478%_))
                                      (let ((_%e268319268481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl268318268478%_))))
                                        (let ((_%hd268320268485%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e268319268481%_)))
                                              (_%tl268321268488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e268319268481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl268321268488%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl268315268468%_))
                                                  (let ((_%e268322268491%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl268315268468%_))))
                                                    (let ((_%hd268323268495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e268322268491%_)))
                                                          (_%tl268324268498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e268322268491%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%hd268323268495%_))
                                                          (let ((_%e268325268501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd268323268495%_))))
                    (if (equal? _%e268325268501%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl268324268498%_))
                            (let ((_%e268326268505%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl268324268498%_))))
                              (let ((_%hd268327268509%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e268326268505%_)))
                                    (_%tl268328268512%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e268326268505%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd268327268509%_))
                                    (let ((_%e268329268515%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd268327268509%_))))
                                      (let ((_%hd268330268519%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e268329268515%_)))
                                            (_%tl268331268522%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e268329268515%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd268330268519%_))
                                            (if (let ((__tmp270023
                                                       |gxc[1]#_g270024_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp270023
                                                   _%hd268330268519%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl268331268522%_))
                                                    (let ((_%e268332268525%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%tl268331268522%_))))
                                                      (let ((_%hd268333268529%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e268332268525%_)))
                    (_%tl268334268532%_
                     (let () (declare (not safe)) (##cdr _%e268332268525%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl268334268532%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl268328268512%_))
                        (let ((_%e268335268535%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl268328268512%_))))
                          (let ((_%hd268336268539%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e268335268535%_)))
                                (_%tl268337268542%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e268335268535%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd268336268539%_))
                                (let ((_%e268338268545%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd268336268539%_))))
                                  (if (equal? _%e268338268545%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl268337268542%_))
                                          (let ((_%e268339268549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl268337268542%_))))
                                            (let ((_%hd268340268553%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e268339268549%_)))
                                                  (_%tl268341268556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e268339268549%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd268340268553%_))
                                                  (let ((_%e268342268559%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd268340268553%_))))
                                                    (let ((_%hd268343268563%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e268342268559%_)))
                                                          (_%tl268344268566%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e268342268559%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd268343268563%_))
                                                          (if (let ((__tmp270025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g270026_|))
                        (declare (not safe))
                        (gx#free-identifier=? __tmp270025 _%hd268343268563%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl268344268566%_))
                          (let ((_%e268345268569%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl268344268566%_))))
                            (let ((_%hd268346268573%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e268345268569%_)))
                                  (_%tl268347268576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e268345268569%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl268347268576%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl268341268556%_))
                                      (let ((_%e268348268579%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl268341268556%_))))
                                        (let ((_%hd268349268583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e268348268579%_)))
                                              (_%tl268350268586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e268348268579%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd268349268583%_))
                                              (let ((_%e268351268589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd268349268583%_))))
                                                (if (equal? _%e268351268589%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl268350268586%_))
                                                        (let ((_%e268352268593%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl268350268586%_))))
                  (let ((_%hd268353268597%_
                         (let ()
                           (declare (not safe))
                           (##car _%e268352268593%_)))
                        (_%tl268354268600%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e268352268593%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd268353268597%_))
                        (let ((_%e268355268603%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd268353268597%_))))
                          (let ((_%hd268356268607%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e268355268603%_)))
                                (_%tl268357268610%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e268355268603%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd268356268607%_))
                                (if (let ((__tmp270027 |gxc[1]#_g270028_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp270027
                                       _%hd268356268607%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl268357268610%_))
                                        (let ((_%e268358268613%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl268357268610%_))))
                                          (let ((_%hd268359268617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e268358268613%_)))
                                                (_%tl268360268620%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e268358268613%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl268360268620%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl268354268600%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl268292268390%_))
                                                        (let ((_%clause268700%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%hd268288268377%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!signature))
                                                           (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%hd268320268485%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%hd268359268617%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked268702%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%hd268346268573%_))))
                  (_%loop268244%_
                   _%rest268275%_
                   (let ((_%$e268704%_ _%unchecked268702%_))
                     (if _%$e268704%_ _%$e268704%_ _%unchecked-proc268249%_))
                   (cons _%clause268700%_ _%unchecked-clauses268250%_)))
                (_%g268279268366%_ _%g268280268370%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g268279268366%_
                                                     _%g268280268370%_))
                                                (_%g268279268366%_
                                                 _%g268280268370%_))))
                                        (_%g268279268366%_ _%g268280268370%_))
                                    (_%g268279268366%_ _%g268280268370%_))
                                (_%g268279268366%_ _%g268280268370%_))))
                        (_%g268279268366%_ _%g268280268370%_))))
                (_%g268279268366%_ _%g268280268370%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g268279268366%_
                                                     _%g268280268370%_)))
                                              (_%g268279268366%_
                                               _%g268280268370%_))))
                                      (_%g268279268366%_ _%g268280268370%_))
                                  (_%g268279268366%_ _%g268280268370%_))))
                          (_%g268279268366%_ _%g268280268370%_))
                      (_%g268279268366%_ _%g268280268370%_))
                  (_%g268279268366%_ _%g268280268370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g268279268366%_
                                                   _%g268280268370%_))))
                                          (_%g268279268366%_
                                           _%g268280268370%_))
                                      (_%g268279268366%_ _%g268280268370%_)))
                                (_%g268279268366%_ _%g268280268370%_))))
                        (_%g268279268366%_ _%g268280268370%_))
                    (_%g268279268366%_ _%g268280268370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g268279268366%_
                                                     _%g268280268370%_))
                                                (_%g268279268366%_
                                                 _%g268280268370%_))
                                            (_%g268279268366%_
                                             _%g268280268370%_))))
                                    (_%g268279268366%_ _%g268280268370%_))))
                            (_%g268279268366%_ _%g268280268370%_))
                        (_%g268279268366%_ _%g268280268370%_)))
                  (_%g268279268366%_ _%g268280268370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g268279268366%_
                                                   _%g268280268370%_))
                                              (_%g268279268366%_
                                               _%g268280268370%_))))
                                      (_%g268279268366%_ _%g268280268370%_))
                                  (_%g268279268366%_ _%g268280268370%_))
                              (_%g268279268366%_ _%g268280268370%_))))
                      (_%g268279268366%_ _%g268280268370%_))))
              (_%g268279268366%_ _%g268280268370%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g268279268366%_
                                                   _%g268280268370%_)))
                                            (_%g268279268366%_
                                             _%g268280268370%_))))
                                    (_%g268279268366%_ _%g268280268370%_))
                                (_%g268279268366%_ _%g268280268370%_))))
                        (_%g268279268366%_ _%g268280268370%_))
                    (_%g268279268366%_ _%g268280268370%_))
                (_%g268279268366%_ _%g268280268370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g268279268366%_
                                                 _%g268280268370%_))))
                                        (_%g268279268366%_ _%g268280268370%_))
                                    (_%g268279268366%_ _%g268280268370%_)))
                              (_%g268279268366%_ _%g268280268370%_))))
                      (_%g268279268366%_ _%g268280268370%_))))
              (_%g268279268366%_ _%g268280268370%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g268279268366%_
                                               _%g268280268370%_))))
                                      (_%g268279268366%_ _%g268280268370%_)))))
                          (_%g268278268708%_ _%hd268277%_)))))
                (if (pair? _%rest268251268259%_)
                    (let ((_%hd268256268716%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest268251268259%_)))
                          (_%tl268257268719%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest268251268259%_))))
                      (let* ((_%hd268722%_ _%hd268256268716%_)
                             (_%rest268725%_ _%tl268257268719%_))
                        (_%K268255268712%_ _%rest268725%_ _%hd268722%_)))
                    (_%else268253268271%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g270018_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g270017_)
                                                              (##values-length
                                                               _g270017_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g270018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g270018_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc268728%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g270017_
                                                           0)))
                                                       (_%unchecked-clauses268730%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g270017_
                                                           1))))
                                                   (if _%unchecked-proc268728%_
                                                       (let* ((_%g268732268756%_
                                                               (lambda (_%g268733268752%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g268733268752%_))))
                      (_%g268731268841%_
                       (lambda (_%g268733268760%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%g268733268760%_))
                             (let ((_%e268736268763%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%g268733268760%_))))
                               (let ((_%hd268737268767%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e268736268763%_)))
                                     (_%tl268738268770%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e268736268763%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl268738268770%_))
                                     (let ((_%e268739268773%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl268738268770%_))))
                                       (let ((_%hd268740268777%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e268739268773%_)))
                                             (_%tl268741268780%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e268739268773%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%hd268740268777%_))
                                             (let ((_g270029_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%hd268740268777%_
                                                       '0))))
                                               (begin
                                                 (let ((_g270030_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g270029_)
                                                              (##values-length
                                                               _g270029_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g270030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g270030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target268742268783%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g270029_
                                                           0)))
                                                       (_%tl268744268786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g270029_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl268744268786%_))
                                                       (letrec ((_%loop268745268789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd268743268793%_ _%clause268749268796%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd268743268793%_))
                               (let ((_%e268746268798%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd268743268793%_))))
                                 (let ((_%lp-hd268747268802%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e268746268798%_)))
                                       (_%lp-tl268748268805%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e268746268798%_))))
                                   (_%loop268745268789%_
                                    _%lp-tl268748268805%_
                                    (cons _%lp-hd268747268802%_
                                          _%clause268749268796%_))))
                               (let ((_%clause268750268808%_
                                      (reverse _%clause268749268796%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl268741268780%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%hd268737268767%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp270031
                                        (lambda (_%g268832268835%_
                                                 _%g268833268838%_)
                                          (cons _%g268832268835%_
                                                _%g268833268838%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp270031
                                    '()
                                    _%clause268750268808%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%g268732268756%_
                                      _%g268733268760%_)))))))
                 (_%loop268745268789%_ _%target268742268783%_ '()))
               (_%g268732268756%_ _%g268733268760%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g268732268756%_
                                              _%g268733268760%_))))
                                     (_%g268732268756%_ _%g268733268760%_))))
                             (_%g268732268756%_ _%g268733268760%_)))))
                 (_%g268731268841%_
                  (list _%unchecked-proc268728%_ _%unchecked-clauses268730%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%g268181268845%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%hd267973268010%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-case-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '@list))
                               (begin
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-check-splice-targets
                                    _%sig268093268159%_
                                    _%arity268094268161%_))
                                 (let ((__tmp270032
                                        (lambda (_%g268848268852%_
                                                 _%g268849268855%_
                                                 _%g268850268857%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%g268849268855%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%g268848268852%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g268850268857%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp270032
                                    '()
                                    _%sig268093268159%_
                                    _%arity268094268161%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%loop268087268119%_ _%target268084268113%_ '() '()))
              (_%g268080268106%_ _%g268081268110%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g268080268106%_
                                             _%g268081268110%_)))))
                                (_%g268079268860%_ _%signatures268077%_))
                              (_%g267965267989%_ _%g267966267993%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop267978268022%_
                                                   _%target267975268016%_
                                                   '()))
                                                (_%g267965267989%_
                                                 _%g267966267993%_)))))
                                      (_%g267965267989%_ _%g267966267993%_))))
                              (_%g267965267989%_ _%g267966267993%_))))
                      (_%g267965267989%_ _%g267966267993%_)))))
          (_%g267964268864%_ _%stx267962%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx268872%_)
        (let* ((_%__stx269852269853%_ _%$stx268872%_)
               (_%g268878268938%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269852269853%_)))))
          (let ((_%__kont269855269856%_
                 (lambda (_%g268880269160%_ _%g268881269162%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268881269162%_ '()))
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
                                                       (cons _%g268881269162%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268880269160%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont269857269858%_
                 (lambda (_%g268895269085%_
                          _%g268896269087%_
                          _%g268897269088%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268897269088%_ '()))
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
                                                       (cons _%g268897269088%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268896269087%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g268895269085%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont269859269860%_
                 (lambda (_%g268914268999%_
                          _%g268915269001%_
                          _%g268916269002%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268916269002%_ '()))
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
                                                       (cons _%g268916269002%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268915269001%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g268914268999%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269852269853%_))
                (let ((_%e268882269116%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx269852269853%_))))
                  (let ((_%tl268884269123%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e268882269116%_)))
                        (_%hd268883269120%_
                         (let ()
                           (declare (not safe))
                           (##car _%e268882269116%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl268884269123%_))
                        (let ((_%e268885269126%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl268884269123%_))))
                          (let ((_%tl268887269133%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e268885269126%_)))
                                (_%hd268886269130%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e268885269126%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd268886269130%_))
                                (let ((_%e268888269136%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd268886269130%_))))
                                  (if (equal? _%e268888269136%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl268887269133%_))
                                          (let ((_%e268889269140%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl268887269133%_))))
                                            (let ((_%tl268891269147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e268889269140%_)))
                                                  (_%hd268890269144%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e268889269140%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl268891269147%_))
                                                  (let ((_%e268892269150%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl268891269147%_))))
                                                    (let ((_%tl268894269157%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e268892269150%_)))
                                                          (_%hd268893269154%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e268892269150%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl268894269157%_))
                                                          (_%__kont269855269856%_
                                                           _%hd268893269154%_
                                                           _%hd268890269144%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g268878268938%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g268878268938%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g268878268938%_)))
                                      (if (equal? _%e268888269136%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl268887269133%_))
                                              (let ((_%e268905269055%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl268887269133%_))))
                                                (let ((_%tl268907269062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e268905269055%_)))
                                                      (_%hd268906269059%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e268905269055%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl268907269062%_))
                                                      (let ((_%e268908269065%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl268907269062%_))))
                (let ((_%tl268910269072%_
                       (let () (declare (not safe)) (##cdr _%e268908269065%_)))
                      (_%hd268909269069%_
                       (let ()
                         (declare (not safe))
                         (##car _%e268908269065%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl268910269072%_))
                      (let ((_%e268911269075%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl268910269072%_))))
                        (let ((_%tl268913269082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e268911269075%_)))
                              (_%hd268912269079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e268911269075%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl268913269082%_))
                              (_%__kont269857269858%_
                               _%hd268912269079%_
                               _%hd268909269069%_
                               _%hd268906269059%_)
                              (let ()
                                (declare (not safe))
                                (_%g268878268938%_)))))
                      (let () (declare (not safe)) (_%g268878268938%_)))))
              (let () (declare (not safe)) (_%g268878268938%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g268878268938%_)))
                                          (if (equal? _%e268888269136%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl268887269133%_))
                                                  (let ((_%e268924268969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl268887269133%_))))
                                                    (let ((_%tl268926268976%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e268924268969%_)))
                                                          (_%hd268925268973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e268924268969%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl268926268976%_))
                                                          (let ((_%e268927268979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl268926268976%_))))
                    (let ((_%tl268929268986%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e268927268979%_)))
                          (_%hd268928268983%_
                           (let ()
                             (declare (not safe))
                             (##car _%e268927268979%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl268929268986%_))
                          (let ((_%e268930268989%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl268929268986%_))))
                            (let ((_%tl268932268996%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e268930268989%_)))
                                  (_%hd268931268993%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e268930268989%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl268932268996%_))
                                  (_%__kont269859269860%_
                                   _%hd268931268993%_
                                   _%hd268928268983%_
                                   _%hd268925268973%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g268878268938%_)))))
                          (let () (declare (not safe)) (_%g268878268938%_)))))
                  (let () (declare (not safe)) (_%g268878268938%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g268878268938%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g268878268938%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g268878268938%_)))))
                        (let () (declare (not safe)) (_%g268878268938%_)))))
                (let () (declare (not safe)) (_%g268878268938%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx269184%_)
        (let* ((_%g269188269208%_
                (lambda (_%g269189269204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g269189269204%_))))
               (_%g269187269277%_
                (lambda (_%g269189269212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g269189269212%_))
                      (let ((_%e269191269215%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g269189269212%_))))
                        (let ((_%hd269192269219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e269191269215%_)))
                              (_%tl269193269222%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e269191269215%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl269193269222%_))
                              (let ((_g270033_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl269193269222%_
                                        '0))))
                                (begin
                                  (let ((_g270034_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g270033_)
                                               (##values-length _g270033_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g270034_ 2)))
                                        (error "Context expects 2 values"
                                               _g270034_)))
                                  (let ((_%target269194269225%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270033_ 0)))
                                        (_%tl269196269228%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g270033_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl269196269228%_))
                                        (letrec ((_%loop269197269231%_
                                                  (lambda (_%hd269195269235%_
                                                           _%decl269201269238%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd269195269235%_))
                                                        (let ((_%e269198269240%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd269195269235%_))))
                  (let ((_%lp-hd269199269244%_
                         (let ()
                           (declare (not safe))
                           (##car _%e269198269240%_)))
                        (_%lp-tl269200269247%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e269198269240%_))))
                    (_%loop269197269231%_
                     _%lp-tl269200269247%_
                     (cons _%lp-hd269199269244%_ _%decl269201269238%_))))
                (let ((_%decl269202269250%_ (reverse _%decl269201269238%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp270035
                               (lambda (_%g269268269271%_ _%g269269269274%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%g269268269271%_)
                                       _%g269269269274%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp270035
                           '()
                           _%decl269202269250%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop269197269231%_
                                           _%target269194269225%_
                                           '()))
                                        (_%g269188269208%_
                                         _%g269189269212%_)))))
                              (_%g269188269208%_ _%g269189269212%_))))
                      (_%g269188269208%_ _%g269189269212%_)))))
          (_%g269187269277%_ _%$stx269184%_))))))
