(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g203012_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203019_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203021_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203023_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203025_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203027_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203039_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203041_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203043_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203045_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g203047_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx196430%_)
        (let* ((_%g196434196452%_
                (lambda (_%g196435196448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196435196448%_))))
               (_%g196433196507%_
                (lambda (_%g196435196456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196435196456%_))
                      (let ((_%e196438196459%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196435196456%_))))
                        (let ((_%hd196439196463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196438196459%_)))
                              (_%tl196440196466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196438196459%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196440196466%_))
                              (let ((_%e196441196469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196440196466%_))))
                                (let ((_%hd196442196473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196441196469%_)))
                                      (_%tl196443196476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196441196469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196443196476%_))
                                      (let ((_%e196444196479%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196443196476%_))))
                                        (let ((_%hd196445196483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196444196479%_)))
                                              (_%tl196446196486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196444196479%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196446196486%_))
                                              ((lambda (_%L196489%_
                                                        _%L196491%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196491%_))
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
                               (cons _%L196491%_ '()))
                         (cons _%L196489%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196434196452%_
                                                      _%g196435196456%_)))
                                               _%hd196445196483%_
                                               _%hd196442196473%_)
                                              (_%g196434196452%_
                                               _%g196435196456%_))))
                                      (_%g196434196452%_ _%g196435196456%_))))
                              (_%g196434196452%_ _%g196435196456%_))))
                      (_%g196434196452%_ _%g196435196456%_)))))
          (_%g196433196507%_ _%$stx196430%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx196511%_)
        (let* ((_%g196515196533%_
                (lambda (_%g196516196529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196516196529%_))))
               (_%g196514196588%_
                (lambda (_%g196516196537%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196516196537%_))
                      (let ((_%e196519196540%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196516196537%_))))
                        (let ((_%hd196520196544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196519196540%_)))
                              (_%tl196521196547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196519196540%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196521196547%_))
                              (let ((_%e196522196550%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196521196547%_))))
                                (let ((_%hd196523196554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196522196550%_)))
                                      (_%tl196524196557%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196522196550%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196524196557%_))
                                      (let ((_%e196525196560%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196524196557%_))))
                                        (let ((_%hd196526196564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196525196560%_)))
                                              (_%tl196527196567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196525196560%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196527196567%_))
                                              ((lambda (_%L196570%_
                                                        _%L196572%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L196572%_))
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
                               (cons _%L196572%_ '()))
                         (cons _%L196570%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g196515196533%_
                                                      _%g196516196537%_)))
                                               _%hd196526196564%_
                                               _%hd196523196554%_)
                                              (_%g196515196533%_
                                               _%g196516196537%_))))
                                      (_%g196515196533%_ _%g196516196537%_))))
                              (_%g196515196533%_ _%g196516196537%_))))
                      (_%g196515196533%_ _%g196516196537%_)))))
          (_%g196514196588%_ _%$stx196511%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx196592%_)
        (let* ((_%g196596196625%_
                (lambda (_%g196597196621%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196597196621%_))))
               (_%g196595196725%_
                (lambda (_%g196597196629%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196597196629%_))
                      (let ((_%e196600196632%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196597196629%_))))
                        (let ((_%hd196601196636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196600196632%_)))
                              (_%tl196602196639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196600196632%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196602196639%_))
                              (let ((_g202990_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196602196639%_
                                        '0))))
                                (begin
                                  (let ((_g202991_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202990_)
                                               (##vector-length _g202990_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202991_ 2)))
                                        (error "Context expects 2 values"
                                               _g202991_)))
                                  (let ((_%target196603196642%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202990_ 0)))
                                        (_%tl196605196645%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202990_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196605196645%_))
                                        (letrec ((_%loop196606196648%_
                                                  (lambda (_%hd196604196652%_
                                                           _%type196610196655%_
                                                           _%symbol196611196657%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196604196652%_))
                                                        (let ((_%e196607196660%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196604196652%_))))
                  (let ((_%lp-hd196608196664%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196607196660%_)))
                        (_%lp-tl196609196667%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196607196660%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196608196664%_))
                        (let ((_%e196614196670%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196608196664%_))))
                          (let ((_%hd196615196674%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196614196670%_)))
                                (_%tl196616196677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196614196670%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196616196677%_))
                                (let ((_%e196617196680%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196616196677%_))))
                                  (let ((_%hd196618196684%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196617196680%_)))
                                        (_%tl196619196687%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196617196680%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196619196687%_))
                                        (_%loop196606196648%_
                                         _%lp-tl196609196667%_
                                         (cons _%hd196618196684%_
                                               _%type196610196655%_)
                                         (cons _%hd196615196674%_
                                               _%symbol196611196657%_))
                                        (_%g196596196625%_
                                         _%g196597196629%_))))
                                (_%g196596196625%_ _%g196597196629%_))))
                        (_%g196596196625%_ _%g196597196629%_))))
                (let ((_%type196612196690%_ (reverse _%type196610196655%_))
                      (_%symbol196613196693%_
                       (reverse _%symbol196611196657%_)))
                  ((lambda (_%L196696%_ _%L196698%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196696%_
                                _%L196698%_))
                             (let ((__tmp202992
                                    (lambda (_%g196713196717%_
                                             _%g196714196720%_
                                             _%g196715196722%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g196714196720%_
                                                        (cons _%g196713196717%_
                                                              '())))
                                            _%g196715196722%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp202992
                                '()
                                _%L196696%_
                                _%L196698%_)))))
                   _%type196612196690%_
                   _%symbol196613196693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196606196648%_
                                           _%target196603196642%_
                                           '()
                                           '()))
                                        (_%g196596196625%_
                                         _%g196597196629%_)))))
                              (_%g196596196625%_ _%g196597196629%_))))
                      (_%g196596196625%_ _%g196597196629%_)))))
          (_%g196595196725%_ _%$stx196592%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx196730%_)
        (let* ((_%__stx202301202302%_ _%$stx196730%_)
               (_%g196735196777%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202301202302%_)))))
          (let ((_%__kont202304202305%_
                 (lambda (_%L196905%_ _%L196907%_ _%L196908%_ _%L196909%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196909%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196908%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196907%_ '()))
                                           (cons _%L196905%_ '())))))))
                (_%__kont202306202307%_
                 (lambda (_%L196824%_ _%L196826%_ _%L196827%_ _%L196828%_)
                   (cons _%L196828%_
                         (cons _%L196827%_
                               (cons _%L196826%_
                                     (cons _%L196824%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match202340202341%_
                   (lambda (_%e196741196855%_
                            _%hd196742196859%_
                            _%tl196743196862%_
                            _%e196744196865%_
                            _%hd196745196869%_
                            _%tl196746196872%_
                            _%e196747196875%_
                            _%hd196748196879%_
                            _%tl196749196882%_
                            _%e196750196885%_
                            _%hd196751196889%_
                            _%tl196752196892%_
                            _%e196753196895%_
                            _%hd196754196899%_
                            _%tl196755196902%_)
                     (let ((_%L196905%_ _%hd196754196899%_)
                           (_%L196907%_ _%hd196751196889%_)
                           (_%L196908%_ _%hd196748196879%_)
                           (_%L196909%_ _%hd196745196869%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196909%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196908%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L196907%_)))
                           (_%__kont202304202305%_
                            _%L196905%_
                            _%L196907%_
                            _%L196908%_
                            _%L196909%_)
                           (let ()
                             (declare (not safe))
                             (_%g196735196777%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202301202302%_))
                  (let ((_%e196741196855%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202301202302%_))))
                    (let ((_%tl196743196862%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196741196855%_)))
                          (_%hd196742196859%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196741196855%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196743196862%_))
                          (let ((_%e196744196865%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl196743196862%_))))
                            (let ((_%tl196746196872%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196744196865%_)))
                                  (_%hd196745196869%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196744196865%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl196746196872%_))
                                  (let ((_%e196747196875%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl196746196872%_))))
                                    (let ((_%tl196749196882%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196747196875%_)))
                                          (_%hd196748196879%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196747196875%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl196749196882%_))
                                          (let ((_%e196750196885%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl196749196882%_))))
                                            (let ((_%tl196752196892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e196750196885%_)))
                                                  (_%hd196751196889%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e196750196885%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196752196892%_))
                                                  (let ((_%e196753196895%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl196752196892%_))))
                                                    (let ((_%tl196755196902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196753196895%_)))
                                                          (_%hd196754196899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196753196895%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196755196902%_))
                                                          (_%__match202340202341%_
                                                           _%e196741196855%_
                                                           _%hd196742196859%_
                                                           _%tl196743196862%_
                                                           _%e196744196865%_
                                                           _%hd196745196869%_
                                                           _%tl196746196872%_
                                                           _%e196747196875%_
                                                           _%hd196748196879%_
                                                           _%tl196749196882%_
                                                           _%e196750196885%_
                                                           _%hd196751196889%_
                                                           _%tl196752196892%_
                                                           _%e196753196895%_
                                                           _%hd196754196899%_
                                                           _%tl196755196902%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g196735196777%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196752196892%_))
                                                      (_%__kont202306202307%_
                                                       _%hd196751196889%_
                                                       _%hd196748196879%_
                                                       _%hd196745196869%_
                                                       _%hd196742196859%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g196735196777%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g196735196777%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196735196777%_)))))
                          (let () (declare (not safe)) (_%g196735196777%_)))))
                  (let () (declare (not safe)) (_%g196735196777%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx196934%_)
        (let* ((_%g196938196973%_
                (lambda (_%g196939196969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196939196969%_))))
               (_%g196937197092%_
                (lambda (_%g196939196977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196939196977%_))
                      (let ((_%e196943196980%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196939196977%_))))
                        (let ((_%hd196944196984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196943196980%_)))
                              (_%tl196945196987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196943196980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196945196987%_))
                              (let ((_g202993_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196945196987%_
                                        '0))))
                                (begin
                                  (let ((_g202994_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202993_)
                                               (##vector-length _g202993_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202994_ 2)))
                                        (error "Context expects 2 values"
                                               _g202994_)))
                                  (let ((_%target196946196990%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202993_ 0)))
                                        (_%tl196948196993%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202993_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196948196993%_))
                                        (letrec ((_%loop196949196996%_
                                                  (lambda (_%hd196947197000%_
                                                           _%symbol196953197003%_
                                                           _%method196954197005%_
                                                           _%type-t196955197007%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196947197000%_))
                                                        (let ((_%e196950197010%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196947197000%_))))
                  (let ((_%lp-hd196951197014%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196950197010%_)))
                        (_%lp-tl196952197017%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196950197010%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196951197014%_))
                        (let ((_%e196959197020%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196951197014%_))))
                          (let ((_%hd196960197024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196959197020%_)))
                                (_%tl196961197027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196959197020%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196961197027%_))
                                (let ((_%e196962197030%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196961197027%_))))
                                  (let ((_%hd196963197034%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196962197030%_)))
                                        (_%tl196964197037%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196962197030%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196964197037%_))
                                        (let ((_%e196965197040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196964197037%_))))
                                          (let ((_%hd196966197044%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196965197040%_)))
                                                (_%tl196967197047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196965197040%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196967197047%_))
                                                (_%loop196949196996%_
                                                 _%lp-tl196952197017%_
                                                 (cons _%hd196966197044%_
                                                       _%symbol196953197003%_)
                                                 (cons _%hd196963197034%_
                                                       _%method196954197005%_)
                                                 (cons _%hd196960197024%_
                                                       _%type-t196955197007%_))
                                                (_%g196938196973%_
                                                 _%g196939196977%_))))
                                        (_%g196938196973%_
                                         _%g196939196977%_))))
                                (_%g196938196973%_ _%g196939196977%_))))
                        (_%g196938196973%_ _%g196939196977%_))))
                (let ((_%symbol196956197050%_ (reverse _%symbol196953197003%_))
                      (_%method196957197053%_ (reverse _%method196954197005%_))
                      (_%type-t196958197055%_
                       (reverse _%type-t196955197007%_)))
                  ((lambda (_%L197058%_ _%L197060%_ _%L197061%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197058%_
                                _%L197060%_
                                _%L197061%_))
                             (let ((__tmp202995
                                    (lambda (_%g197077197082%_
                                             _%g197078197085%_
                                             _%g197079197087%_
                                             _%g197080197089%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g197079197087%_
                                                        (cons _%g197078197085%_
                                                              (cons _%g197077197082%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g197080197089%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp202995
                                '()
                                _%L197058%_
                                _%L197060%_
                                _%L197061%_)))))
                   _%symbol196956197050%_
                   _%method196957197053%_
                   _%type-t196958197055%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196949196996%_
                                           _%target196946196990%_
                                           '()
                                           '()
                                           '()))
                                        (_%g196938196973%_
                                         _%g196939196977%_)))))
                              (_%g196938196973%_ _%g196939196977%_))))
                      (_%g196938196973%_ _%g196939196977%_)))))
          (_%g196937197092%_ _%$stx196934%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx197097%_)
        (let* ((_%g197101197134%_
                (lambda (_%g197102197130%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197102197130%_))))
               (_%g197100197248%_
                (lambda (_%g197102197138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197102197138%_))
                      (let ((_%e197106197141%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197102197138%_))))
                        (let ((_%hd197107197145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197106197141%_)))
                              (_%tl197108197148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197106197141%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197108197148%_))
                              (let ((_%e197109197151%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197108197148%_))))
                                (let ((_%hd197110197155%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197109197151%_)))
                                      (_%tl197111197158%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197109197151%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197111197158%_))
                                      (let ((_g202996_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197111197158%_
                                                '0))))
                                        (begin
                                          (let ((_g202997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202996_)
                                                       (##vector-length
                                                        _g202996_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202997_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202997_)))
                                          (let ((_%target197112197161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202996_ 0)))
                                                (_%tl197114197164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202996_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197114197164%_))
                                                (letrec ((_%loop197115197167%_
                                                          (lambda (_%hd197113197171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol197119197174%_
                           _%method197120197176%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd197113197171%_))
                        (let ((_%e197116197179%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd197113197171%_))))
                          (let ((_%lp-hd197117197183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197116197179%_)))
                                (_%lp-tl197118197186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197116197179%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd197117197183%_))
                                (let ((_%e197123197189%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd197117197183%_))))
                                  (let ((_%hd197124197193%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197123197189%_)))
                                        (_%tl197125197196%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197123197189%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197125197196%_))
                                        (let ((_%e197126197199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl197125197196%_))))
                                          (let ((_%hd197127197203%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197126197199%_)))
                                                (_%tl197128197206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197126197199%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197128197206%_))
                                                (_%loop197115197167%_
                                                 _%lp-tl197118197186%_
                                                 (cons _%hd197127197203%_
                                                       _%symbol197119197174%_)
                                                 (cons _%hd197124197193%_
                                                       _%method197120197176%_))
                                                (_%g197101197134%_
                                                 _%g197102197138%_))))
                                        (_%g197101197134%_
                                         _%g197102197138%_))))
                                (_%g197101197134%_ _%g197102197138%_))))
                        (let ((_%symbol197121197209%_
                               (reverse _%symbol197119197174%_))
                              (_%method197122197212%_
                               (reverse _%method197120197176%_)))
                          ((lambda (_%L197215%_ _%L197217%_ _%L197218%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L197215%_
                                        _%L197217%_))
                                     (let ((__tmp202998
                                            (lambda (_%g197236197240%_
                                                     _%g197237197243%_
                                                     _%g197238197245%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L197218%_
                                                                (cons _%g197237197243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g197236197240%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g197238197245%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp202998
                                        '()
                                        _%L197215%_
                                        _%L197217%_)))))
                           _%symbol197121197209%_
                           _%method197122197212%_
                           _%hd197110197155%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop197115197167%_
                                                   _%target197112197161%_
                                                   '()
                                                   '()))
                                                (_%g197101197134%_
                                                 _%g197102197138%_)))))
                                      (_%g197101197134%_ _%g197102197138%_))))
                              (_%g197101197134%_ _%g197102197138%_))))
                      (_%g197101197134%_ _%g197102197138%_)))))
          (_%g197100197248%_ _%$stx197097%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx197253%_)
        (let* ((_%g197257197271%_
                (lambda (_%g197258197267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197258197267%_))))
               (_%g197256197312%_
                (lambda (_%g197258197275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197258197275%_))
                      (let ((_%e197260197278%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197258197275%_))))
                        (let ((_%hd197261197282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197260197278%_)))
                              (_%tl197262197285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197260197278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197262197285%_))
                              (let ((_%e197263197288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197262197285%_))))
                                (let ((_%hd197264197292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197263197288%_)))
                                      (_%tl197265197295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197263197288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197265197295%_))
                                      ((lambda (_%L197298%_)
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
                                                           (cons _%L197298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197264197292%_)
                                      (_%g197257197271%_ _%g197258197275%_))))
                              (_%g197257197271%_ _%g197258197275%_))))
                      (_%g197257197271%_ _%g197258197275%_)))))
          (_%g197256197312%_ _%$stx197253%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx197316%_)
        (let* ((_%g197320197374%_
                (lambda (_%g197321197370%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197321197370%_))))
               (_%g197319197555%_
                (lambda (_%g197321197378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197321197378%_))
                      (let ((_%e197333197381%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197321197378%_))))
                        (let ((_%hd197334197385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197333197381%_)))
                              (_%tl197335197388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197333197381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197335197388%_))
                              (let ((_%e197336197391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197335197388%_))))
                                (let ((_%hd197337197395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197336197391%_)))
                                      (_%tl197338197398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197336197391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197338197398%_))
                                      (let ((_%e197339197401%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197338197398%_))))
                                        (let ((_%hd197340197405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197339197401%_)))
                                              (_%tl197341197408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197339197401%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197341197408%_))
                                              (let ((_%e197342197411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197341197408%_))))
                                                (let ((_%hd197343197415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197342197411%_)))
                                                      (_%tl197344197418%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197342197411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197344197418%_))
                                                      (let ((_%e197345197421%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197344197418%_))))
                (let ((_%hd197346197425%_
                       (let () (declare (not safe)) (##car _%e197345197421%_)))
                      (_%tl197347197428%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197345197421%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197347197428%_))
                      (let ((_%e197348197431%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197347197428%_))))
                        (let ((_%hd197349197435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197348197431%_)))
                              (_%tl197350197438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197348197431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197350197438%_))
                              (let ((_%e197351197441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197350197438%_))))
                                (let ((_%hd197352197445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197351197441%_)))
                                      (_%tl197353197448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197351197441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197353197448%_))
                                      (let ((_%e197354197451%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197353197448%_))))
                                        (let ((_%hd197355197455%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197354197451%_)))
                                              (_%tl197356197458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197354197451%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197356197458%_))
                                              (let ((_%e197357197461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197356197458%_))))
                                                (let ((_%hd197358197465%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197357197461%_)))
                                                      (_%tl197359197468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197357197461%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197359197468%_))
                                                      (let ((_%e197360197471%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl197359197468%_))))
                (let ((_%hd197361197475%_
                       (let () (declare (not safe)) (##car _%e197360197471%_)))
                      (_%tl197362197478%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e197360197471%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197362197478%_))
                      (let ((_%e197363197481%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197362197478%_))))
                        (let ((_%hd197364197485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197363197481%_)))
                              (_%tl197365197488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197363197481%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197365197488%_))
                              (let ((_%e197366197491%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197365197488%_))))
                                (let ((_%hd197367197495%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197366197491%_)))
                                      (_%tl197368197498%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197366197491%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197368197498%_))
                                      ((lambda (_%L197501%_
                                                _%L197503%_
                                                _%L197504%_
                                                _%L197505%_
                                                _%L197506%_
                                                _%L197507%_
                                                _%L197508%_
                                                _%L197509%_
                                                _%L197510%_
                                                _%L197511%_
                                                _%L197512%_)
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
                                                           (cons _%L197512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L197511%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197510%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197509%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197508%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L197507%_ '()))
                                           (cons _%L197506%_
                                                 (cons _%L197505%_
                                                       (cons _%L197504%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197503%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L197501%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd197367197495%_
                                       _%hd197364197485%_
                                       _%hd197361197475%_
                                       _%hd197358197465%_
                                       _%hd197355197455%_
                                       _%hd197352197445%_
                                       _%hd197349197435%_
                                       _%hd197346197425%_
                                       _%hd197343197415%_
                                       _%hd197340197405%_
                                       _%hd197337197395%_)
                                      (_%g197320197374%_ _%g197321197378%_))))
                              (_%g197320197374%_ _%g197321197378%_))))
                      (_%g197320197374%_ _%g197321197378%_))))
              (_%g197320197374%_ _%g197321197378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197320197374%_
                                               _%g197321197378%_))))
                                      (_%g197320197374%_ _%g197321197378%_))))
                              (_%g197320197374%_ _%g197321197378%_))))
                      (_%g197320197374%_ _%g197321197378%_))))
              (_%g197320197374%_ _%g197321197378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197320197374%_
                                               _%g197321197378%_))))
                                      (_%g197320197374%_ _%g197321197378%_))))
                              (_%g197320197374%_ _%g197321197378%_))))
                      (_%g197320197374%_ _%g197321197378%_)))))
          (_%g197319197555%_ _%$stx197316%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx197559%_)
        (let* ((_%g197563197577%_
                (lambda (_%g197564197573%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197564197573%_))))
               (_%g197562197618%_
                (lambda (_%g197564197581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197564197581%_))
                      (let ((_%e197566197584%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197564197581%_))))
                        (let ((_%hd197567197588%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197566197584%_)))
                              (_%tl197568197591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197566197584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197568197591%_))
                              (let ((_%e197569197594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197568197591%_))))
                                (let ((_%hd197570197598%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197569197594%_)))
                                      (_%tl197571197601%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197569197594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197571197601%_))
                                      ((lambda (_%L197604%_)
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
                                                           (cons _%L197604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197570197598%_)
                                      (_%g197563197577%_ _%g197564197581%_))))
                              (_%g197563197577%_ _%g197564197581%_))))
                      (_%g197563197577%_ _%g197564197581%_)))))
          (_%g197562197618%_ _%$stx197559%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx197622%_)
        (let* ((_%g197626197640%_
                (lambda (_%g197627197636%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197627197636%_))))
               (_%g197625197681%_
                (lambda (_%g197627197644%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197627197644%_))
                      (let ((_%e197629197647%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197627197644%_))))
                        (let ((_%hd197630197651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197629197647%_)))
                              (_%tl197631197654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197629197647%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197631197654%_))
                              (let ((_%e197632197657%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197631197654%_))))
                                (let ((_%hd197633197661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197632197657%_)))
                                      (_%tl197634197664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197632197657%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197634197664%_))
                                      ((lambda (_%L197667%_)
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
                                                           (cons _%L197667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197633197661%_)
                                      (_%g197626197640%_ _%g197627197644%_))))
                              (_%g197626197640%_ _%g197627197644%_))))
                      (_%g197626197640%_ _%g197627197644%_)))))
          (_%g197625197681%_ _%$stx197622%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx197685%_)
        (let* ((_%g197689197711%_
                (lambda (_%g197690197707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197690197707%_))))
               (_%g197688197780%_
                (lambda (_%g197690197715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197690197715%_))
                      (let ((_%e197694197718%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197690197715%_))))
                        (let ((_%hd197695197722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197694197718%_)))
                              (_%tl197696197725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197694197718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197696197725%_))
                              (let ((_%e197697197728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197696197725%_))))
                                (let ((_%hd197698197732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197697197728%_)))
                                      (_%tl197699197735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197697197728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197699197735%_))
                                      (let ((_%e197700197738%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197699197735%_))))
                                        (let ((_%hd197701197742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197700197738%_)))
                                              (_%tl197702197745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197700197738%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197702197745%_))
                                              (let ((_%e197703197748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197702197745%_))))
                                                (let ((_%hd197704197752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197703197748%_)))
                                                      (_%tl197705197755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197703197748%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197705197755%_))
                                                      ((lambda (_%L197758%_
                                                                _%L197760%_
                                                                _%L197761%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197761%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197760%_ '()))
                                   (cons _%L197758%_ '())))))
               _%hd197704197752%_
               _%hd197701197742%_
               _%hd197698197732%_)
              (_%g197689197711%_ _%g197690197715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197689197711%_
                                               _%g197690197715%_))))
                                      (_%g197689197711%_ _%g197690197715%_))))
                              (_%g197689197711%_ _%g197690197715%_))))
                      (_%g197689197711%_ _%g197690197715%_)))))
          (_%g197688197780%_ _%$stx197685%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx197784%_)
        (let* ((_%g197788197810%_
                (lambda (_%g197789197806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197789197806%_))))
               (_%g197787197879%_
                (lambda (_%g197789197814%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197789197814%_))
                      (let ((_%e197793197817%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197789197814%_))))
                        (let ((_%hd197794197821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197793197817%_)))
                              (_%tl197795197824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197793197817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197795197824%_))
                              (let ((_%e197796197827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197795197824%_))))
                                (let ((_%hd197797197831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197796197827%_)))
                                      (_%tl197798197834%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197796197827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197798197834%_))
                                      (let ((_%e197799197837%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197798197834%_))))
                                        (let ((_%hd197800197841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197799197837%_)))
                                              (_%tl197801197844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197799197837%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197801197844%_))
                                              (let ((_%e197802197847%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197801197844%_))))
                                                (let ((_%hd197803197851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197802197847%_)))
                                                      (_%tl197804197854%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197802197847%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197804197854%_))
                                                      ((lambda (_%L197857%_
                                                                _%L197859%_
                                                                _%L197860%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L197860%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L197859%_ '()))
                                   (cons _%L197857%_ '())))))
               _%hd197803197851%_
               _%hd197800197841%_
               _%hd197797197831%_)
              (_%g197788197810%_ _%g197789197814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g197788197810%_
                                               _%g197789197814%_))))
                                      (_%g197788197810%_ _%g197789197814%_))))
                              (_%g197788197810%_ _%g197789197814%_))))
                      (_%g197788197810%_ _%g197789197814%_)))))
          (_%g197787197879%_ _%$stx197784%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx197883%_)
        (let* ((_%g197887197901%_
                (lambda (_%g197888197897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197888197897%_))))
               (_%g197886197942%_
                (lambda (_%g197888197905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197888197905%_))
                      (let ((_%e197890197908%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197888197905%_))))
                        (let ((_%hd197891197912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197890197908%_)))
                              (_%tl197892197915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197890197908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197892197915%_))
                              (let ((_%e197893197918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197892197915%_))))
                                (let ((_%hd197894197922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197893197918%_)))
                                      (_%tl197895197925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197893197918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197895197925%_))
                                      ((lambda (_%L197928%_)
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
                                                           (cons _%L197928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd197894197922%_)
                                      (_%g197887197901%_ _%g197888197905%_))))
                              (_%g197887197901%_ _%g197888197905%_))))
                      (_%g197887197901%_ _%g197888197905%_)))))
          (_%g197886197942%_ _%$stx197883%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx197946%_)
        (let* ((_%g197950197968%_
                (lambda (_%g197951197964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197951197964%_))))
               (_%g197949198023%_
                (lambda (_%g197951197972%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197951197972%_))
                      (let ((_%e197954197975%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197951197972%_))))
                        (let ((_%hd197955197979%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197954197975%_)))
                              (_%tl197956197982%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197954197975%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197956197982%_))
                              (let ((_%e197957197985%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197956197982%_))))
                                (let ((_%hd197958197989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197957197985%_)))
                                      (_%tl197959197992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197957197985%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197959197992%_))
                                      (let ((_%e197960197995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197959197992%_))))
                                        (let ((_%hd197961197999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197960197995%_)))
                                              (_%tl197962198002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197960197995%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197962198002%_))
                                              ((lambda (_%L198005%_
                                                        _%L198007%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198007%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198005%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197961197999%_
                                               _%hd197958197989%_)
                                              (_%g197950197968%_
                                               _%g197951197972%_))))
                                      (_%g197950197968%_ _%g197951197972%_))))
                              (_%g197950197968%_ _%g197951197972%_))))
                      (_%g197950197968%_ _%g197951197972%_)))))
          (_%g197949198023%_ _%$stx197946%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx198027%_)
        (let* ((_%__stx202369202370%_ _%$stx198027%_)
               (_%g198034198095%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202369202370%_)))))
          (let ((_%__kont202372202373%_
                 (lambda (_%L198333%_ _%L198335%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198335%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198333%_ '()))
                                     '())))))
                (_%__kont202374202375%_
                 (lambda (_%L198272%_ _%L198274%_ _%L198275%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198275%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198274%_ '()))
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
                                 (cons _%L198272%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont202376202377%_
                 (lambda (_%L198196%_ _%L198198%_)
                   (cons _%L198198%_ (cons _%L198196%_ (cons '#f '())))))
                (_%__kont202378202379%_
                 (lambda (_%L198146%_ _%L198148%_ _%L198149%_)
                   (cons _%L198149%_
                         (cons _%L198148%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L198146%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202369202370%_))
                (let ((_%e198038198303%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202369202370%_))))
                  (let ((_%tl198040198310%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198038198303%_)))
                        (_%hd198039198307%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198038198303%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198040198310%_))
                        (let ((_%e198041198313%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198040198310%_))))
                          (let ((_%tl198043198320%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198041198313%_)))
                                (_%hd198042198317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198041198313%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198043198320%_))
                                (let ((_%e198044198323%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198043198320%_))))
                                  (let ((_%tl198046198330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198044198323%_)))
                                        (_%hd198045198327%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198044198323%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198046198330%_))
                                        (_%__kont202372202373%_
                                         _%hd198045198327%_
                                         _%hd198042198317%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198046198330%_))
                                            (let ((_%e198059198248%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198046198330%_))))
                                              (let ((_%tl198061198255%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198059198248%_)))
                                                    (_%hd198060198252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198059198248%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198060198252%_))
                                                    (let ((_%e198062198258%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198060198252%_))))
                                                      (if (equal? _%e198062198258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198061198255%_))
                      (let ((_%e198063198262%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198061198255%_))))
                        (let ((_%tl198065198269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198063198262%_)))
                              (_%hd198064198266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198063198262%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198065198269%_))
                              (_%__kont202374202375%_
                               _%hd198064198266%_
                               _%hd198045198327%_
                               _%hd198042198317%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd198045198327%_))
                                  (let ((_%e198086198132%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd198045198327%_))))
                                    (declare (not safe))
                                    (_%g198034198095%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g198034198095%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198045198327%_))
                          (let ((_%e198086198132%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198045198327%_))))
                            (if (equal? _%e198086198132%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl198061198255%_))
                                    (_%__kont202378202379%_
                                     _%hd198060198252%_
                                     _%hd198042198317%_
                                     _%hd198039198307%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g198034198095%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g198034198095%_))))
                          (let () (declare (not safe)) (_%g198034198095%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd198045198327%_))
                      (let ((_%e198086198132%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd198045198327%_))))
                        (if (equal? _%e198086198132%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198061198255%_))
                                (_%__kont202378202379%_
                                 _%hd198060198252%_
                                 _%hd198042198317%_
                                 _%hd198039198307%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198034198095%_)))
                            (let () (declare (not safe)) (_%g198034198095%_))))
                      (let () (declare (not safe)) (_%g198034198095%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd198045198327%_))
                                                        (let ((_%e198086198132%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd198045198327%_))))
                  (if (equal? _%e198086198132%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198061198255%_))
                          (_%__kont202378202379%_
                           _%hd198060198252%_
                           _%hd198042198317%_
                           _%hd198039198307%_)
                          (let () (declare (not safe)) (_%g198034198095%_)))
                      (let () (declare (not safe)) (_%g198034198095%_))))
                (let () (declare (not safe)) (_%g198034198095%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd198045198327%_))
                                                (let ((_%e198086198132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd198045198327%_))))
                                                  (declare (not safe))
                                                  (_%g198034198095%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198034198095%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl198043198320%_))
                                    (_%__kont202376202377%_
                                     _%hd198042198317%_
                                     _%hd198039198307%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g198034198095%_))))))
                        (let () (declare (not safe)) (_%g198034198095%_)))))
                (let () (declare (not safe)) (_%g198034198095%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx198354%_)
        (let* ((_%g198358198387%_
                (lambda (_%g198359198383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198359198383%_))))
               (_%g198357198496%_
                (lambda (_%g198359198391%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198359198391%_))
                      (let ((_%e198361198394%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198359198391%_))))
                        (let ((_%hd198362198398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198361198394%_)))
                              (_%tl198363198401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198361198394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198363198401%_))
                              (let ((_g202999_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198363198401%_
                                        '0))))
                                (begin
                                  (let ((_g203000_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202999_)
                                               (##vector-length _g202999_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203000_ 2)))
                                        (error "Context expects 2 values"
                                               _g203000_)))
                                  (let ((_%target198364198404%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202999_ 0)))
                                        (_%tl198366198407%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202999_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198366198407%_))
                                        (letrec ((_%loop198367198410%_
                                                  (lambda (_%hd198365198414%_
                                                           _%clause198371198417%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198365198414%_))
                                                        (let ((_%e198368198420%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198365198414%_))))
                  (let ((_%lp-hd198369198424%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198368198420%_)))
                        (_%lp-tl198370198427%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198368198420%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd198369198424%_))
                        (let ((_g203001_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd198369198424%_
                                  '0))))
                          (begin
                            (let ((_g203002_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g203001_)
                                         (##vector-length _g203001_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g203002_ 2)))
                                  (error "Context expects 2 values"
                                         _g203002_)))
                            (let ((_%target198373198430%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g203001_ 0)))
                                  (_%tl198375198433%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g203001_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198375198433%_))
                                  (letrec ((_%loop198376198436%_
                                            (lambda (_%hd198374198440%_
                                                     _%clause198380198443%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd198374198440%_))
                                                  (let ((_%e198377198446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd198374198440%_))))
                                                    (let ((_%lp-hd198378198450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198377198446%_)))
                                                          (_%lp-tl198379198453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198377198446%_))))
                                                      (_%loop198376198436%_
                                                       _%lp-tl198379198453%_
                                                       (cons _%lp-hd198378198450%_
                                                             _%clause198380198443%_))))
                                                  (let ((_%clause198381198456%_
                                                         (reverse _%clause198380198443%_)))
                                                    (_%loop198367198410%_
                                                     _%lp-tl198370198427%_
                                                     (cons _%clause198381198456%_
                                                           _%clause198371198417%_)))))))
                                    (_%loop198376198436%_
                                     _%target198373198430%_
                                     '()))
                                  (_%g198358198387%_ _%g198359198391%_)))))
                        (_%g198358198387%_ _%g198359198391%_))))
                (let ((_%clause198372198460%_
                       (reverse _%clause198371198417%_)))
                  ((lambda (_%L198464%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp203003
                                              (lambda (_%g198479198484%_
                                                       _%g198480198487%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp203004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g198481198490%_ _%g198482198493%_)
                             (cons _%g198481198490%_ _%g198482198493%_))))
                      (declare (not safe))
                      (__foldr1 __tmp203004 '() _%g198479198484%_)))
              _%g198480198487%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp203003
                                          '()
                                          _%L198464%_)))
                                 '())))
                   _%clause198372198460%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198367198410%_
                                           _%target198364198404%_
                                           '()))
                                        (_%g198358198387%_
                                         _%g198359198391%_)))))
                              (_%g198358198387%_ _%g198359198391%_))))
                      (_%g198358198387%_ _%g198359198391%_)))))
          (_%g198357198496%_ _%$stx198354%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx198502%_)
        (let* ((_%g198506198524%_
                (lambda (_%g198507198520%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198507198520%_))))
               (_%g198505198579%_
                (lambda (_%g198507198528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198507198528%_))
                      (let ((_%e198510198531%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198507198528%_))))
                        (let ((_%hd198511198535%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198510198531%_)))
                              (_%tl198512198538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198510198531%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198512198538%_))
                              (let ((_%e198513198541%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198512198538%_))))
                                (let ((_%hd198514198545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198513198541%_)))
                                      (_%tl198515198548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198513198541%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198515198548%_))
                                      (let ((_%e198516198551%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198515198548%_))))
                                        (let ((_%hd198517198555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198516198551%_)))
                                              (_%tl198518198558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198516198551%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198518198558%_))
                                              ((lambda (_%L198561%_
                                                        _%L198563%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198563%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198561%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198517198555%_
                                               _%hd198514198545%_)
                                              (_%g198506198524%_
                                               _%g198507198528%_))))
                                      (_%g198506198524%_ _%g198507198528%_))))
                              (_%g198506198524%_ _%g198507198528%_))))
                      (_%g198506198524%_ _%g198507198528%_)))))
          (_%g198505198579%_ _%$stx198502%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx198583%_)
        (let* ((_%g198587198605%_
                (lambda (_%g198588198601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198588198601%_))))
               (_%g198586198660%_
                (lambda (_%g198588198609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198588198609%_))
                      (let ((_%e198591198612%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198588198609%_))))
                        (let ((_%hd198592198616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198591198612%_)))
                              (_%tl198593198619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198591198612%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198593198619%_))
                              (let ((_%e198594198622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198593198619%_))))
                                (let ((_%hd198595198626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198594198622%_)))
                                      (_%tl198596198629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198594198622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198596198629%_))
                                      (let ((_%e198597198632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198596198629%_))))
                                        (let ((_%hd198598198636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198597198632%_)))
                                              (_%tl198599198639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198597198632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198599198639%_))
                                              ((lambda (_%L198642%_
                                                        _%L198644%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L198644%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198642%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198598198636%_
                                               _%hd198595198626%_)
                                              (_%g198587198605%_
                                               _%g198588198609%_))))
                                      (_%g198587198605%_ _%g198588198609%_))))
                              (_%g198587198605%_ _%g198588198609%_))))
                      (_%g198587198605%_ _%g198588198609%_)))))
          (_%g198586198660%_ _%$stx198583%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx198664%_)
        (let* ((_%g198668198697%_
                (lambda (_%g198669198693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198669198693%_))))
               (_%g198667198797%_
                (lambda (_%g198669198701%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198669198701%_))
                      (let ((_%e198672198704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198669198701%_))))
                        (let ((_%hd198673198708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198672198704%_)))
                              (_%tl198674198711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198672198704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198674198711%_))
                              (let ((_g203005_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198674198711%_
                                        '0))))
                                (begin
                                  (let ((_g203006_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203005_)
                                               (##vector-length _g203005_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203006_ 2)))
                                        (error "Context expects 2 values"
                                               _g203006_)))
                                  (let ((_%target198675198714%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203005_ 0)))
                                        (_%tl198677198717%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203005_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198677198717%_))
                                        (letrec ((_%loop198678198720%_
                                                  (lambda (_%hd198676198724%_
                                                           _%rule198682198727%_
                                                           _%proc198683198729%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198676198724%_))
                                                        (let ((_%e198679198732%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198676198724%_))))
                  (let ((_%lp-hd198680198736%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198679198732%_)))
                        (_%lp-tl198681198739%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198679198732%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198680198736%_))
                        (let ((_%e198686198742%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198680198736%_))))
                          (let ((_%hd198687198746%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198686198742%_)))
                                (_%tl198688198749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198686198742%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198688198749%_))
                                (let ((_%e198689198752%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198688198749%_))))
                                  (let ((_%hd198690198756%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198689198752%_)))
                                        (_%tl198691198759%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198689198752%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198691198759%_))
                                        (_%loop198678198720%_
                                         _%lp-tl198681198739%_
                                         (cons _%hd198690198756%_
                                               _%rule198682198727%_)
                                         (cons _%hd198687198746%_
                                               _%proc198683198729%_))
                                        (_%g198668198697%_
                                         _%g198669198701%_))))
                                (_%g198668198697%_ _%g198669198701%_))))
                        (_%g198668198697%_ _%g198669198701%_))))
                (let ((_%rule198684198762%_ (reverse _%rule198682198727%_))
                      (_%proc198685198765%_ (reverse _%proc198683198729%_)))
                  ((lambda (_%L198768%_ _%L198770%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198768%_
                                _%L198770%_))
                             (let ((__tmp203007
                                    (lambda (_%g198785198789%_
                                             _%g198786198792%_
                                             _%g198787198794%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g198786198792%_
                                                        (cons _%g198785198789%_
                                                              '())))
                                            _%g198787198794%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp203007
                                '()
                                _%L198768%_
                                _%L198770%_)))))
                   _%rule198684198762%_
                   _%proc198685198765%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198678198720%_
                                           _%target198675198714%_
                                           '()
                                           '()))
                                        (_%g198668198697%_
                                         _%g198669198701%_)))))
                              (_%g198668198697%_ _%g198669198701%_))))
                      (_%g198668198697%_ _%g198669198701%_)))))
          (_%g198667198797%_ _%$stx198664%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx198802%_)
        (let* ((_%g198806198824%_
                (lambda (_%g198807198820%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198807198820%_))))
               (_%g198805198879%_
                (lambda (_%g198807198828%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198807198828%_))
                      (let ((_%e198810198831%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198807198828%_))))
                        (let ((_%hd198811198835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198810198831%_)))
                              (_%tl198812198838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198810198831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198812198838%_))
                              (let ((_%e198813198841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198812198838%_))))
                                (let ((_%hd198814198845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198813198841%_)))
                                      (_%tl198815198848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198813198841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198815198848%_))
                                      (let ((_%e198816198851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198815198848%_))))
                                        (let ((_%hd198817198855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198816198851%_)))
                                              (_%tl198818198858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198816198851%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198818198858%_))
                                              ((lambda (_%L198861%_
                                                        _%L198863%_)
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
                                                   (cons _%L198863%_ '()))
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
                 (cons _%L198861%_ '())))
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
                                   (cons _%L198863%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198817198855%_
                                               _%hd198814198845%_)
                                              (_%g198806198824%_
                                               _%g198807198828%_))))
                                      (_%g198806198824%_ _%g198807198828%_))))
                              (_%g198806198824%_ _%g198807198828%_))))
                      (_%g198806198824%_ _%g198807198828%_)))))
          (_%g198805198879%_ _%$stx198802%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx198883%_)
        (let* ((_%__stx202487202488%_ _%$stx198883%_)
               (_%g198888198913%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202487202488%_)))))
          (let ((_%__kont202490202491%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202492202493%_
                 (lambda (_%L198960%_ _%L198962%_ _%L198963%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L198963%_ (cons _%L198962%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L198960%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202487202488%_))
                (let ((_%e198890198989%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202487202488%_))))
                  (let ((_%tl198892198996%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198890198989%_)))
                        (_%hd198891198993%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198890198989%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198892198996%_))
                        (_%__kont202490202491%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198892198996%_))
                            (let ((_%e198899198930%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198892198996%_))))
                              (let ((_%tl198901198937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198899198930%_)))
                                    (_%hd198900198934%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198899198930%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198900198934%_))
                                    (let ((_%e198902198940%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd198900198934%_))))
                                      (let ((_%tl198904198947%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198902198940%_)))
                                            (_%hd198903198944%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198902198940%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198904198947%_))
                                            (let ((_%e198905198950%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198904198947%_))))
                                              (let ((_%tl198907198957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198905198950%_)))
                                                    (_%hd198906198954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198905198950%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl198907198957%_))
                                                    (_%__kont202492202493%_
                                                     _%tl198901198937%_
                                                     _%hd198906198954%_
                                                     _%hd198903198944%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198888198913%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g198888198913%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198888198913%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198888198913%_))))))
                (let () (declare (not safe)) (_%g198888198913%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx199007%_)
        (let* ((_%__stx202531202532%_ _%$stx199007%_)
               (_%g199012199043%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202531202532%_)))))
          (let ((_%__kont202534202535%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont202536202537%_
                 (lambda (_%L199110%_ _%L199112%_ _%L199113%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L199113%_
                                           (let ((__tmp203008
                                                  (lambda (_%g199133199136%_
                                                           _%g199134199139%_)
                                                    (cons _%g199133199136%_
                                                          _%g199134199139%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp203008
                                              '()
                                              _%L199112%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L199110%_)
                                     '()))))))
            (let ((_%__match202574202575%_
                   (lambda (_%e199020199050%_
                            _%hd199021199054%_
                            _%tl199022199057%_
                            _%e199023199060%_
                            _%hd199024199064%_
                            _%tl199025199067%_
                            _%e199026199070%_
                            _%hd199027199074%_
                            _%tl199028199077%_
                            _%__splice202538202539%_
                            _%target199029199080%_
                            _%tl199031199083%_)
                     (letrec ((_%loop199032199086%_
                               (lambda (_%hd199030199090%_ _%sig199036199093%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199030199090%_))
                                     (let ((_%e199033199096%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd199030199090%_))))
                                       (let ((_%lp-tl199035199103%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199033199096%_)))
                                             (_%lp-hd199034199100%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199033199096%_))))
                                         (_%loop199032199086%_
                                          _%lp-tl199035199103%_
                                          (cons _%lp-hd199034199100%_
                                                _%sig199036199093%_))))
                                     (let ((_%sig199037199106%_
                                            (reverse _%sig199036199093%_)))
                                       (_%__kont202536202537%_
                                        _%tl199025199067%_
                                        _%sig199037199106%_
                                        _%hd199027199074%_))))))
                       (_%loop199032199086%_ _%target199029199080%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202531202532%_))
                  (let ((_%e199014199149%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202531202532%_))))
                    (let ((_%tl199016199156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199014199149%_)))
                          (_%hd199015199153%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199014199149%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199016199156%_))
                          (_%__kont202534202535%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199016199156%_))
                              (let ((_%e199023199060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199016199156%_))))
                                (let ((_%tl199025199067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199023199060%_)))
                                      (_%hd199024199064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199023199060%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199024199064%_))
                                      (let ((_%e199026199070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199024199064%_))))
                                        (let ((_%tl199028199077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199026199070%_)))
                                              (_%hd199027199074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199026199070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199028199077%_))
                                              (let ((_%__splice202538202539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199028199077%_
                                                        '0))))
                                                (let ((_%tl199031199083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202538202539%_
                                                          '1)))
                                                      (_%target199029199080%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202538202539%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199031199083%_))
                                                      (_%__match202574202575%_
                                                       _%e199014199149%_
                                                       _%hd199015199153%_
                                                       _%tl199016199156%_
                                                       _%e199023199060%_
                                                       _%hd199024199064%_
                                                       _%tl199025199067%_
                                                       _%e199026199070%_
                                                       _%hd199027199074%_
                                                       _%tl199028199077%_
                                                       _%__splice202538202539%_
                                                       _%target199029199080%_
                                                       _%tl199031199083%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199012199043%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199012199043%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199012199043%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199012199043%_))))))
                  (let () (declare (not safe)) (_%g199012199043%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx199168%_)
        (let* ((_%__stx202577202578%_ _%$stx199168%_)
               (_%g199173199220%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202577202578%_)))))
          (let ((_%__kont202580202581%_
                 (lambda (_%L199382%_ _%L199384%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L199384%_
                               (let ((__tmp203009
                                      (lambda (_%g199404199407%_
                                               _%g199405199410%_)
                                        (cons _%g199404199407%_
                                              _%g199405199410%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp203009 '() _%L199382%_))))))
                (_%__kont202584202585%_
                 (lambda (_%L199277%_ _%L199279%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L199279%_
                               (let ((__tmp203010
                                      (lambda (_%g199296199299%_
                                               _%g199297199302%_)
                                        (cons _%g199296199299%_
                                              _%g199297199302%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp203010 '() _%L199277%_)))))))
            (let* ((_%__match202644202645%_
                    (lambda (_%e199200199227%_
                             _%hd199201199231%_
                             _%tl199202199234%_
                             _%e199203199237%_
                             _%hd199204199241%_
                             _%tl199205199244%_
                             _%__splice202586202587%_
                             _%target199206199247%_
                             _%tl199208199250%_)
                      (letrec ((_%loop199209199253%_
                                (lambda (_%hd199207199257%_
                                         _%sig199213199260%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199207199257%_))
                                      (let ((_%e199210199263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199207199257%_))))
                                        (let ((_%lp-tl199212199270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199210199263%_)))
                                              (_%lp-hd199211199267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199210199263%_))))
                                          (_%loop199209199253%_
                                           _%lp-tl199212199270%_
                                           (cons _%lp-hd199211199267%_
                                                 _%sig199213199260%_))))
                                      (let ((_%sig199214199273%_
                                             (reverse _%sig199213199260%_)))
                                        (_%__kont202584202585%_
                                         _%sig199214199273%_
                                         _%hd199204199241%_))))))
                        (_%loop199209199253%_ _%target199206199247%_ '()))))
                   (_%__match202636202637%_
                    (lambda (_%e199200199227%_
                             _%hd199201199231%_
                             _%tl199202199234%_
                             _%e199203199237%_
                             _%hd199204199241%_
                             _%tl199205199244%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl199205199244%_))
                          (let ((_%__splice202586202587%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl199205199244%_
                                    '0))))
                            (let ((_%tl199208199250%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202586202587%_
                                      '1)))
                                  (_%target199206199247%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice202586202587%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199208199250%_))
                                  (_%__match202644202645%_
                                   _%e199200199227%_
                                   _%hd199201199231%_
                                   _%tl199202199234%_
                                   _%e199203199237%_
                                   _%hd199204199241%_
                                   _%tl199205199244%_
                                   _%__splice202586202587%_
                                   _%target199206199247%_
                                   _%tl199208199250%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g199173199220%_)))))
                          (let () (declare (not safe)) (_%g199173199220%_)))))
                   (_%__match202624202625%_
                    (lambda (_%e199177199312%_
                             _%hd199178199316%_
                             _%tl199179199319%_
                             _%e199180199322%_
                             _%hd199181199326%_
                             _%tl199182199329%_
                             _%e199183199332%_
                             _%hd199184199336%_
                             _%tl199185199339%_
                             _%e199186199342%_
                             _%hd199187199346%_
                             _%tl199188199349%_
                             _%__splice202582202583%_
                             _%target199189199352%_
                             _%tl199191199355%_)
                      (letrec ((_%loop199192199358%_
                                (lambda (_%hd199190199362%_
                                         _%sig199196199365%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd199190199362%_))
                                      (let ((_%e199193199368%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd199190199362%_))))
                                        (let ((_%lp-tl199195199375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199193199368%_)))
                                              (_%lp-hd199194199372%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199193199368%_))))
                                          (_%loop199192199358%_
                                           _%lp-tl199195199375%_
                                           (cons _%lp-hd199194199372%_
                                                 _%sig199196199365%_))))
                                      (let ((_%sig199197199378%_
                                             (reverse _%sig199196199365%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199185199339%_))
                                            (_%__kont202580202581%_
                                             _%sig199197199378%_
                                             _%hd199181199326%_)
                                            (_%__match202636202637%_
                                             _%e199177199312%_
                                             _%hd199178199316%_
                                             _%tl199179199319%_
                                             _%e199180199322%_
                                             _%hd199181199326%_
                                             _%tl199182199329%_)))))))
                        (_%loop199192199358%_ _%target199189199352%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202577202578%_))
                  (let ((_%e199177199312%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202577202578%_))))
                    (let ((_%tl199179199319%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199177199312%_)))
                          (_%hd199178199316%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199177199312%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199179199319%_))
                          (let ((_%e199180199322%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199179199319%_))))
                            (let ((_%tl199182199329%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199180199322%_)))
                                  (_%hd199181199326%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199180199322%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199182199329%_))
                                  (let ((_%e199183199332%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199182199329%_))))
                                    (let ((_%tl199185199339%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199183199332%_)))
                                          (_%hd199184199336%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199183199332%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd199184199336%_))
                                          (let ((_%e199186199342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd199184199336%_))))
                                            (let ((_%tl199188199349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199186199342%_)))
                                                  (_%hd199187199346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199186199342%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd199187199346%_))
                                                  (if (let ((__tmp203011
                                                             |gxc[1]#_g203012_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp203011
                                                         _%hd199187199346%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl199188199349%_))
                                                          (let ((_%__splice202582202583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199188199349%_ '0))))
                    (let ((_%tl199191199355%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202582202583%_ '1)))
                          (_%target199189199352%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202582202583%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199191199355%_))
                          (_%__match202624202625%_
                           _%e199177199312%_
                           _%hd199178199316%_
                           _%tl199179199319%_
                           _%e199180199322%_
                           _%hd199181199326%_
                           _%tl199182199329%_
                           _%e199183199332%_
                           _%hd199184199336%_
                           _%tl199185199339%_
                           _%e199186199342%_
                           _%hd199187199346%_
                           _%tl199188199349%_
                           _%__splice202582202583%_
                           _%target199189199352%_
                           _%tl199191199355%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199182199329%_))
                              (let ((_%__splice202586202587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199182199329%_
                                        '0))))
                                (let ((_%tl199208199250%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202586202587%_
                                          '1)))
                                      (_%target199206199247%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice202586202587%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199208199250%_))
                                      (_%__match202644202645%_
                                       _%e199177199312%_
                                       _%hd199178199316%_
                                       _%tl199179199319%_
                                       _%e199180199322%_
                                       _%hd199181199326%_
                                       _%tl199182199329%_
                                       _%__splice202586202587%_
                                       _%target199206199247%_
                                       _%tl199208199250%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g199173199220%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g199173199220%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl199182199329%_))
                      (let ((_%__splice202586202587%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl199182199329%_
                                '0))))
                        (let ((_%tl199208199250%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202586202587%_ '1)))
                              (_%target199206199247%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice202586202587%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199208199250%_))
                              (_%__match202644202645%_
                               _%e199177199312%_
                               _%hd199178199316%_
                               _%tl199179199319%_
                               _%e199180199322%_
                               _%hd199181199326%_
                               _%tl199182199329%_
                               _%__splice202586202587%_
                               _%target199206199247%_
                               _%tl199208199250%_)
                              (let ()
                                (declare (not safe))
                                (_%g199173199220%_)))))
                      (let () (declare (not safe)) (_%g199173199220%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl199182199329%_))
                  (let ((_%__splice202586202587%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl199182199329%_ '0))))
                    (let ((_%tl199208199250%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202586202587%_ '1)))
                          (_%target199206199247%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice202586202587%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199208199250%_))
                          (_%__match202644202645%_
                           _%e199177199312%_
                           _%hd199178199316%_
                           _%tl199179199319%_
                           _%e199180199322%_
                           _%hd199181199326%_
                           _%tl199182199329%_
                           _%__splice202586202587%_
                           _%target199206199247%_
                           _%tl199208199250%_)
                          (let () (declare (not safe)) (_%g199173199220%_)))))
                  (let () (declare (not safe)) (_%g199173199220%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl199182199329%_))
                                                      (let ((_%__splice202586202587%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl199182199329%_ '0))))
                (let ((_%tl199208199250%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202586202587%_ '1)))
                      (_%target199206199247%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice202586202587%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199208199250%_))
                      (_%__match202644202645%_
                       _%e199177199312%_
                       _%hd199178199316%_
                       _%tl199179199319%_
                       _%e199180199322%_
                       _%hd199181199326%_
                       _%tl199182199329%_
                       _%__splice202586202587%_
                       _%target199206199247%_
                       _%tl199208199250%_)
                      (let () (declare (not safe)) (_%g199173199220%_)))))
              (let () (declare (not safe)) (_%g199173199220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl199182199329%_))
                                              (let ((_%__splice202586202587%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl199182199329%_
                                                        '0))))
                                                (let ((_%tl199208199250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202586202587%_
                                                          '1)))
                                                      (_%target199206199247%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice202586202587%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199208199250%_))
                                                      (_%__match202644202645%_
                                                       _%e199177199312%_
                                                       _%hd199178199316%_
                                                       _%tl199179199319%_
                                                       _%e199180199322%_
                                                       _%hd199181199326%_
                                                       _%tl199182199329%_
                                                       _%__splice202586202587%_
                                                       _%target199206199247%_
                                                       _%tl199208199250%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g199173199220%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g199173199220%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199182199329%_))
                                      (let ((_%__splice202586202587%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199182199329%_
                                                '0))))
                                        (let ((_%tl199208199250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202586202587%_
                                                  '1)))
                                              (_%target199206199247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice202586202587%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199208199250%_))
                                              (_%__match202644202645%_
                                               _%e199177199312%_
                                               _%hd199178199316%_
                                               _%tl199179199319%_
                                               _%e199180199322%_
                                               _%hd199181199326%_
                                               _%tl199182199329%_
                                               _%__splice202586202587%_
                                               _%target199206199247%_
                                               _%tl199208199250%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g199173199220%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199173199220%_))))))
                          (let () (declare (not safe)) (_%g199173199220%_)))))
                  (let () (declare (not safe)) (_%g199173199220%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx200567%_ _%id200569%_)
        (let ((_%proc200573%_
               (let ((__tmp203013
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200569%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp203013))))
          (if (procedure? _%proc200573%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx200567%_
                 _%id200569%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx200558%_ _%id200560%_)
        (let ((_%klass200564%_
               (let ((__tmp203014
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id200560%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp203014))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass200564%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx200558%_
                 _%id200560%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx199808%_ _%proc199810%_ _%sig199811%_)
        (letrec ((_%signature-arity199813%_
                  (lambda (_%args200490%_)
                    (let _%loop200493%_ ((_%rest200496%_ _%args200490%_)
                                         (_%count200498%_ '0))
                      (let* ((_%rest200499200510%_ _%rest200496%_)
                             (_%E200503200516%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest200499200510%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K200506200547%_
                               (lambda (_%rest200544%_)
                                 (_%loop200493%_
                                  _%rest200544%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count200498%_ '1)))))
                              (_%K200505200536%_ (lambda () _%count200498%_))
                              (_%K200504200524%_
                               (lambda () (cons _%count200498%_ '()))))
                          (let ((_%try-match200501200540%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest200499200510%_))
                                       (_%K200505200536%_)
                                       (_%K200504200524%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest200499200510%_))
                                (let* ((_%tl200508200551%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200499200510%_)))
                                       (_%rest200555%_ _%tl200508200551%_))
                                  (_%K200506200547%_ _%rest200555%_))
                                (_%try-match200501200540%_))))))))
                 (_%make-signature199815%_
                  (lambda (_%args200372%_
                           _%return200374%_
                           _%effect200375%_
                           _%unchecked200376%_)
                    (let ((__tmp203015
                           (lambda (_%g200377200379%_)
                             (|gxc[1]#verify-class!|
                              _%ctx199808%_
                              _%g200377200379%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp203015 _%args200372%_))
                    (|gxc[1]#verify-class!| _%ctx199808%_ _%return200374%_)
                    (if _%unchecked200376%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx199808%_
                         _%unchecked200376%_)
                        '#!void)
                    (let ((_%arity200383%_
                           (_%signature-arity199813%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args200372%_)))))
                      (if _%effect200375%_
                          (let ((_%effect200386%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect200375%_))))
                            (if (and (list? _%effect200386%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect200386%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx199808%_
                                   _%proc199810%_
                                   _%effect200386%_))))
                          '#!void)
                      (cons _%arity200383%_
                            (cons (let* ((_%g200389200412%_
                                          (lambda (_%g200390200408%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g200390200408%_))))
                                         (_%g200388200486%_
                                          (lambda (_%g200390200416%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g200390200416%_))
                                                (let ((_%e200395200419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g200390200416%_))))
                                                  (let ((_%hd200396200423%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200395200419%_)))
                                                        (_%tl200397200426%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200395200419%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200397200426%_))
                                                        (let ((_%e200398200429%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl200397200426%_))))
                  (let ((_%hd200399200433%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200398200429%_)))
                        (_%tl200400200436%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200398200429%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200400200436%_))
                        (let ((_%e200401200439%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200400200436%_))))
                          (let ((_%hd200402200443%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200401200439%_)))
                                (_%tl200403200446%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200401200439%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200403200446%_))
                                (let ((_%e200404200449%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200403200446%_))))
                                  (let ((_%hd200405200453%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200404200449%_)))
                                        (_%tl200406200456%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200404200449%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200406200456%_))
                                        ((lambda (_%L200459%_
                                                  _%L200461%_
                                                  _%L200462%_
                                                  _%L200463%_)
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
                           (cons _%L200463%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L200462%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L200461%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L200459%_ '()))
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
                                         _%hd200405200453%_
                                         _%hd200402200443%_
                                         _%hd200399200433%_
                                         _%hd200396200423%_)
                                        (_%g200389200412%_
                                         _%g200390200416%_))))
                                (_%g200389200412%_ _%g200390200416%_))))
                        (_%g200389200412%_ _%g200390200416%_))))
                (_%g200389200412%_ _%g200390200416%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200389200412%_
                                                 _%g200390200416%_)))))
                                    (_%g200388200486%_
                                     (list _%args200372%_
                                           _%return200374%_
                                           _%effect200375%_
                                           _%unchecked200376%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx199808%_ _%proc199810%_)
          (let* ((_%__stx202655202656%_ _%sig199811%_)
                 (_%g199822199925%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx202655202656%_)))))
            (let ((_%__kont202658202659%_
                   (lambda (_%L200353%_ _%L200355%_)
                     (_%make-signature199815%_
                      _%L200355%_
                      _%L200353%_
                      '#f
                      '#f)))
                  (_%__kont202660202661%_
                   (lambda (_%L200304%_ _%L200306%_ _%L200307%_)
                     (_%make-signature199815%_
                      _%L200307%_
                      _%L200306%_
                      _%L200304%_
                      '#f)))
                  (_%__kont202662202663%_
                   (lambda (_%L200228%_ _%L200230%_ _%L200231%_)
                     (_%make-signature199815%_
                      _%L200231%_
                      _%L200230%_
                      _%L200228%_
                      (let ((__tmp203016
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc199810%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp203016)))))
                  (_%__kont202664202665%_
                   (lambda (_%L200134%_ _%L200136%_ _%L200137%_ _%L200138%_)
                     (_%make-signature199815%_
                      _%L200138%_
                      _%L200137%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L200134%_)))))
                  (_%__kont202666202667%_
                   (lambda (_%L200041%_ _%L200043%_)
                     (_%make-signature199815%_
                      _%L200043%_
                      _%L200041%_
                      '#f
                      (let ((__tmp203017
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc199810%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp203017)))))
                  (_%__kont202668202669%_
                   (lambda (_%L199976%_ _%L199978%_ _%L199979%_)
                     (_%make-signature199815%_
                      _%L199979%_
                      _%L199978%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L199976%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx202655202656%_))
                  (let ((_%e199826200333%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx202655202656%_))))
                    (let ((_%tl199828200340%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199826200333%_)))
                          (_%hd199827200337%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199826200333%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199828200340%_))
                          (let ((_%e199829200343%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl199828200340%_))))
                            (let ((_%tl199831200350%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199829200343%_)))
                                  (_%hd199830200347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199829200343%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199831200350%_))
                                  (_%__kont202658202659%_
                                   _%hd199830200347%_
                                   _%hd199827200337%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199831200350%_))
                                      (let ((_%e199841200280%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199831200350%_))))
                                        (let ((_%tl199843200287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199841200280%_)))
                                              (_%hd199842200284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199841200280%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd199842200284%_))
                                              (let ((_%e199844200290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd199842200284%_))))
                                                (if (equal? _%e199844200290%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199843200287%_))
                                                        (let ((_%e199845200294%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199843200287%_))))
                  (let ((_%tl199847200301%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199845200294%_)))
                        (_%hd199846200298%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199845200294%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl199847200301%_))
                        (_%__kont202660202661%_
                         _%hd199846200298%_
                         _%hd199830200347%_
                         _%hd199827200337%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199847200301%_))
                            (let ((_%e199864200214%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199847200301%_))))
                              (let ((_%tl199866200221%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199864200214%_)))
                                    (_%hd199865200218%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199864200214%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd199865200218%_))
                                    (let ((_%e199867200224%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199865200218%_))))
                                      (if (equal? _%e199867200224%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199866200221%_))
                                              (_%__kont202662202663%_
                                               _%hd199846200298%_
                                               _%hd199830200347%_
                                               _%hd199827200337%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199866200221%_))
                                                  (let ((_%e199889200124%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199866200221%_))))
                                                    (let ((_%tl199891200131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199889200124%_)))
                                                          (_%hd199890200128%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199889200124%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199891200131%_))
                                                          (_%__kont202664202665%_
                                                           _%hd199890200128%_
                                                           _%hd199846200298%_
                                                           _%hd199830200347%_
                                                           _%hd199827200337%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g199822199925%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g199822199925%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g199822199925%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199822199925%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g199822199925%_))))))
                (let () (declare (not safe)) (_%g199822199925%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e199844200290%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199843200287%_))
                                                            (_%__kont202666202667%_
                                                             _%hd199830200347%_
                                                             _%hd199827200337%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl199843200287%_))
                        (let ((_%e199917199966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199843200287%_))))
                          (let ((_%tl199919199973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199917199966%_)))
                                (_%hd199918199970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199917199966%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199919199973%_))
                                (_%__kont202668202669%_
                                 _%hd199918199970%_
                                 _%hd199830200347%_
                                 _%hd199827200337%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199822199925%_)))))
                        (let () (declare (not safe)) (_%g199822199925%_))))
                (let () (declare (not safe)) (_%g199822199925%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g199822199925%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g199822199925%_))))))
                          (let () (declare (not safe)) (_%g199822199925%_)))))
                  (let () (declare (not safe)) (_%g199822199925%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig199419%_)
        (let* ((_%g199422199502%_
                (lambda (_%g199423199498%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199423199498%_))))
               (_%g199421199804%_
                (lambda (_%g199423199506%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199423199506%_))
                      (let ((_%e199429199509%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199423199506%_))))
                        (let ((_%hd199430199513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199429199509%_)))
                              (_%tl199431199516%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199429199509%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199431199516%_))
                              (let ((_%e199432199519%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199431199516%_))))
                                (let ((_%hd199433199523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199432199519%_)))
                                      (_%tl199434199526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199432199519%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd199433199523%_))
                                      (let ((_%e199435199529%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd199433199523%_))))
                                        (if (equal? _%e199435199529%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199434199526%_))
                                                (let ((_%e199436199533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199434199526%_))))
                                                  (let ((_%hd199437199537%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199436199533%_)))
                                                        (_%tl199438199540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199436199533%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199437199537%_))
                                                        (let ((_%e199439199543%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199437199537%_))))
                  (let ((_%hd199440199547%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199439199543%_)))
                        (_%tl199441199550%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199439199543%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd199440199547%_))
                        (if (let ((__tmp203018 |gxc[1]#_g203019_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp203018
                               _%hd199440199547%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199441199550%_))
                                (let ((_%e199442199553%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199441199550%_))))
                                  (let ((_%hd199443199557%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199442199553%_)))
                                        (_%tl199444199560%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199442199553%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199444199560%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199438199540%_))
                                            (let ((_%e199445199563%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199438199540%_))))
                                              (let ((_%hd199446199567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199445199563%_)))
                                                    (_%tl199447199570%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199445199563%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199446199567%_))
                                                    (let ((_%e199448199573%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199446199567%_))))
                                                      (if (equal? _%e199448199573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199447199570%_))
                      (let ((_%e199449199577%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199447199570%_))))
                        (let ((_%hd199450199581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199449199577%_)))
                              (_%tl199451199584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199449199577%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199450199581%_))
                              (let ((_%e199452199587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd199450199581%_))))
                                (let ((_%hd199453199591%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199452199587%_)))
                                      (_%tl199454199594%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199452199587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199453199591%_))
                                      (if (let ((__tmp203020
                                                 |gxc[1]#_g203021_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp203020
                                             _%hd199453199591%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199454199594%_))
                                              (let ((_%e199455199597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199454199594%_))))
                                                (let ((_%hd199456199601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199455199597%_)))
                                                      (_%tl199457199604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199455199597%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199457199604%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199451199584%_))
                                                          (let ((_%e199458199607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl199451199584%_))))
                    (let ((_%hd199459199611%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199458199607%_)))
                          (_%tl199460199614%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199458199607%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199459199611%_))
                          (let ((_%e199461199617%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199459199611%_))))
                            (if (equal? _%e199461199617%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199460199614%_))
                                    (let ((_%e199462199621%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl199460199614%_))))
                                      (let ((_%hd199463199625%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199462199621%_)))
                                            (_%tl199464199628%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199462199621%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199463199625%_))
                                            (let ((_%e199465199631%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199463199625%_))))
                                              (let ((_%hd199466199635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199465199631%_)))
                                                    (_%tl199467199638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199465199631%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd199466199635%_))
                                                    (if (let ((__tmp203022
                                                               |gxc[1]#_g203023_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp203022
                                                           _%hd199466199635%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199467199638%_))
                                                            (let ((_%e199468199641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl199467199638%_))))
                      (let ((_%hd199469199645%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199468199641%_)))
                            (_%tl199470199648%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199468199641%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199470199648%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199464199628%_))
                                (let ((_%e199471199651%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199464199628%_))))
                                  (let ((_%hd199472199655%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199471199651%_)))
                                        (_%tl199473199658%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199471199651%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd199472199655%_))
                                        (let ((_%e199474199661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd199472199655%_))))
                                          (if (equal? _%e199474199661%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199473199658%_))
                                                  (let ((_%e199475199665%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199473199658%_))))
                                                    (let ((_%hd199476199669%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199475199665%_)))
                                                          (_%tl199477199672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199475199665%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199476199669%_))
                                                          (let ((_%e199478199675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd199476199669%_))))
                    (let ((_%hd199479199679%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199478199675%_)))
                          (_%tl199480199682%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199478199675%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199479199679%_))
                          (if (let ((__tmp203024 |gxc[1]#_g203025_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp203024
                                 _%hd199479199679%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199480199682%_))
                                  (let ((_%e199481199685%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl199480199682%_))))
                                    (let ((_%hd199482199689%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199481199685%_)))
                                          (_%tl199483199692%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199481199685%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199483199692%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199477199672%_))
                                              (let ((_%e199484199695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl199477199672%_))))
                                                (let ((_%hd199485199699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199484199695%_)))
                                                      (_%tl199486199702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199484199695%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd199485199699%_))
                                                      (let ((_%e199487199705%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd199485199699%_))))
                (if (equal? _%e199487199705%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199486199702%_))
                        (let ((_%e199488199709%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199486199702%_))))
                          (let ((_%hd199489199713%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199488199709%_)))
                                (_%tl199490199716%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199488199709%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd199489199713%_))
                                (let ((_%e199491199719%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd199489199713%_))))
                                  (let ((_%hd199492199723%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199491199719%_)))
                                        (_%tl199493199726%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199491199719%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199492199723%_))
                                        (if (let ((__tmp203026
                                                   |gxc[1]#_g203027_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp203026
                                               _%hd199492199723%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199493199726%_))
                                                (let ((_%e199494199729%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl199493199726%_))))
                                                  (let ((_%hd199495199733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199494199729%_)))
                                                        (_%tl199496199736%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199494199729%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199496199736%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl199490199716%_))
                                                            ((lambda (_%L199739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L199741%_
                              _%L199742%_
                              _%L199743%_
                              _%L199744%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L199741%_))
                           (cons _%L199741%_
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
                       (cons _%L199743%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199739%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd199495199733%_
                     _%hd199482199689%_
                     _%hd199469199645%_
                     _%hd199456199601%_
                     _%hd199443199557%_)
                    (_%g199422199502%_ _%g199423199506%_))
                (_%g199422199502%_ _%g199423199506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199422199502%_
                                                 _%g199423199506%_))
                                            (_%g199422199502%_
                                             _%g199423199506%_))
                                        (_%g199422199502%_
                                         _%g199423199506%_))))
                                (_%g199422199502%_ _%g199423199506%_))))
                        (_%g199422199502%_ _%g199423199506%_))
                    (_%g199422199502%_ _%g199423199506%_)))
              (_%g199422199502%_ _%g199423199506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199422199502%_
                                               _%g199423199506%_))
                                          (_%g199422199502%_
                                           _%g199423199506%_))))
                                  (_%g199422199502%_ _%g199423199506%_))
                              (_%g199422199502%_ _%g199423199506%_))
                          (_%g199422199502%_ _%g199423199506%_))))
                  (_%g199422199502%_ _%g199423199506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g199422199502%_
                                                   _%g199423199506%_))
                                              (_%g199422199502%_
                                               _%g199423199506%_)))
                                        (_%g199422199502%_
                                         _%g199423199506%_))))
                                (_%g199422199502%_ _%g199423199506%_))
                            (_%g199422199502%_ _%g199423199506%_))))
                    (_%g199422199502%_ _%g199423199506%_))
                (_%g199422199502%_ _%g199423199506%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199422199502%_
                                                     _%g199423199506%_))))
                                            (_%g199422199502%_
                                             _%g199423199506%_))))
                                    (_%g199422199502%_ _%g199423199506%_))
                                (_%g199422199502%_ _%g199423199506%_)))
                          (_%g199422199502%_ _%g199423199506%_))))
                  (_%g199422199502%_ _%g199423199506%_))
              (_%g199422199502%_ _%g199423199506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199422199502%_
                                               _%g199423199506%_))
                                          (_%g199422199502%_
                                           _%g199423199506%_))
                                      (_%g199422199502%_ _%g199423199506%_))))
                              (_%g199422199502%_ _%g199423199506%_))))
                      (_%g199422199502%_ _%g199423199506%_))
                  (_%g199422199502%_ _%g199423199506%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199422199502%_
                                                     _%g199423199506%_))))
                                            (_%g199422199502%_
                                             _%g199423199506%_))
                                        (_%g199422199502%_
                                         _%g199423199506%_))))
                                (_%g199422199502%_ _%g199423199506%_))
                            (_%g199422199502%_ _%g199423199506%_))
                        (_%g199422199502%_ _%g199423199506%_))))
                (_%g199422199502%_ _%g199423199506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199422199502%_
                                                 _%g199423199506%_))
                                            (_%g199422199502%_
                                             _%g199423199506%_)))
                                      (_%g199422199502%_ _%g199423199506%_))))
                              (_%g199422199502%_ _%g199423199506%_))))
                      (_%g199422199502%_ _%g199423199506%_)))))
          (_%g199421199804%_ _%sig199419%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx200576%_)
        (let* ((_%g200579200597%_
                (lambda (_%g200580200593%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200580200593%_))))
               (_%g200578200652%_
                (lambda (_%g200580200601%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200580200601%_))
                      (let ((_%e200583200604%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200580200601%_))))
                        (let ((_%hd200584200608%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200583200604%_)))
                              (_%tl200585200611%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200583200604%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200585200611%_))
                              (let ((_%e200586200614%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200585200611%_))))
                                (let ((_%hd200587200618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200586200614%_)))
                                      (_%tl200588200621%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200586200614%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200588200621%_))
                                      (let ((_%e200589200624%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl200588200621%_))))
                                        (let ((_%hd200590200628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200589200624%_)))
                                              (_%tl200591200631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200589200624%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200591200631%_))
                                              ((lambda (_%L200634%_
                                                        _%L200636%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200636%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L200634%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx200576%_
                                                        _%L200636%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx200576%_
                                                        _%L200634%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L200636%_
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
                                                   (cons _%L200634%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200579200597%_
                                                      _%g200580200601%_)))
                                               _%hd200590200628%_
                                               _%hd200587200618%_)
                                              (_%g200579200597%_
                                               _%g200580200601%_))))
                                      (_%g200579200597%_ _%g200580200601%_))))
                              (_%g200579200597%_ _%g200580200601%_))))
                      (_%g200579200597%_ _%g200580200601%_)))))
          (_%g200578200652%_ _%stx200576%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx200656%_)
        (let* ((_%g200659200683%_
                (lambda (_%g200660200679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200660200679%_))))
               (_%g200658200966%_
                (lambda (_%g200660200687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200660200687%_))
                      (let ((_%e200663200690%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200660200687%_))))
                        (let ((_%hd200664200694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200663200690%_)))
                              (_%tl200665200697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200663200690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200665200697%_))
                              (let ((_%e200666200700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200665200697%_))))
                                (let ((_%hd200667200704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200666200700%_)))
                                      (_%tl200668200707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200666200700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200668200707%_))
                                      (let ((_g203028_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200668200707%_
                                                '0))))
                                        (begin
                                          (let ((_g203029_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203028_)
                                                       (##vector-length
                                                        _g203028_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203029_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203029_)))
                                          (let ((_%target200669200710%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203028_ 0)))
                                                (_%tl200671200713%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203028_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200671200713%_))
                                                (letrec ((_%loop200672200716%_
                                                          (lambda (_%hd200670200720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature200676200723%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200670200720%_))
                        (let ((_%e200673200726%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200670200720%_))))
                          (let ((_%lp-hd200674200730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200673200726%_)))
                                (_%lp-tl200675200733%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200673200726%_))))
                            (_%loop200672200716%_
                             _%lp-tl200675200733%_
                             (cons _%lp-hd200674200730%_
                                   _%signature200676200723%_))))
                        (let ((_%signature200677200736%_
                               (reverse _%signature200676200723%_)))
                          ((lambda (_%L200740%_ _%L200742%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200742%_))
                                 (let* ((_%g200760200775%_
                                         (lambda (_%g200761200771%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200761200771%_))))
                                        (_%g200759200954%_
                                         (lambda (_%g200761200779%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200761200779%_))
                                               (let ((_%e200764200782%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200761200779%_))))
                                                 (let ((_%hd200765200786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200764200782%_)))
                                                       (_%tl200766200789%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200764200782%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200766200789%_))
                                                       (let ((_%e200767200792%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200766200789%_))))
                 (let ((_%hd200768200796%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200767200792%_)))
                       (_%tl200769200799%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200767200792%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200769200799%_))
                       ((lambda (_%L200802%_ _%L200804%_)
                          (let* ((_%g200820200828%_
                                  (lambda (_%g200821200824%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g200821200824%_))))
                                 (_%g200819200950%_
                                  (lambda (_%g200821200832%_)
                                    ((lambda (_%L200835%_)
                                       (let* ((_%unchecked200848%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L200802%_))
                                              (_%g200851200859%_
                                               (lambda (_%g200852200855%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g200852200855%_))))
                                              (_%g200850200882%_
                                               (lambda (_%g200852200863%_)
                                                 ((lambda (_%L200866%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L200835%_
                                                                (cons _%L200866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g200852200863%_))))
                                         (_%g200850200882%_
                                          (if _%unchecked200848%_
                                              (let* ((_%g200886200901%_
                                                      (lambda (_%g200887200897%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g200887200897%_))))
                                                     (_%g200885200946%_
                                                      (lambda (_%g200887200905%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g200887200905%_))
                                                            (let ((_%e200890200908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g200887200905%_))))
                      (let ((_%hd200891200912%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200890200908%_)))
                            (_%tl200892200915%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200890200908%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200892200915%_))
                            (let ((_%e200893200918%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl200892200915%_))))
                              (let ((_%hd200894200922%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200893200918%_)))
                                    (_%tl200895200925%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200893200918%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl200895200925%_))
                                    ((lambda (_%L200928%_ _%L200930%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L200930%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L200804%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L200928%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd200894200922%_
                                     _%hd200891200912%_)
                                    (_%g200886200901%_ _%g200887200905%_))))
                            (_%g200886200901%_ _%g200887200905%_))))
                    (_%g200886200901%_ _%g200887200905%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200885200946%_
                                                 _%unchecked200848%_))
                                              '(begin)))))
                                     _%g200821200832%_))))
                            (_%g200819200950%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L200742%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L200804%_ '()))
                   (cons '#f (cons 'signature: (cons _%L200802%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd200768200796%_
                        _%hd200765200786%_)
                       (_%g200760200775%_ _%g200761200779%_))))
               (_%g200760200775%_ _%g200761200779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200760200775%_
                                                _%g200761200779%_)))))
                                   (_%g200759200954%_
                                    (|gxc[1]#parse-signature|
                                     _%stx200656%_
                                     _%L200742%_
                                     (let ((__tmp203030
                                            (lambda (_%g200957200960%_
                                                     _%g200958200963%_)
                                              (cons _%g200957200960%_
                                                    _%g200958200963%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp203030
                                        '()
                                        _%L200740%_)))))
                                 (_%g200659200683%_ _%g200660200687%_)))
                           _%signature200677200736%_
                           _%hd200667200704%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200672200716%_
                                                   _%target200669200710%_
                                                   '()))
                                                (_%g200659200683%_
                                                 _%g200660200687%_)))))
                                      (_%g200659200683%_ _%g200660200687%_))))
                              (_%g200659200683%_ _%g200660200687%_))))
                      (_%g200659200683%_ _%g200660200687%_)))))
          (_%g200658200966%_ _%stx200656%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx200971%_)
        (let* ((_%g200974200998%_
                (lambda (_%g200975200994%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200975200994%_))))
               (_%g200973201881%_
                (lambda (_%g200975201002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200975201002%_))
                      (let ((_%e200978201005%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200975201002%_))))
                        (let ((_%hd200979201009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200978201005%_)))
                              (_%tl200980201012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200978201005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200980201012%_))
                              (let ((_%e200981201015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200980201012%_))))
                                (let ((_%hd200982201019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200981201015%_)))
                                      (_%tl200983201022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200981201015%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200983201022%_))
                                      (let ((_g203031_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200983201022%_
                                                '0))))
                                        (begin
                                          (let ((_g203032_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g203031_)
                                                       (##vector-length
                                                        _g203031_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g203032_ 2)))
                                                (error "Context expects 2 values"
                                                       _g203032_)))
                                          (let ((_%target200984201025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g203031_ 0)))
                                                (_%tl200986201028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g203031_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200986201028%_))
                                                (letrec ((_%loop200987201031%_
                                                          (lambda (_%hd200985201035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature200991201038%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200985201035%_))
                        (let ((_%e200988201041%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd200985201035%_))))
                          (let ((_%lp-hd200989201045%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200988201041%_)))
                                (_%lp-tl200990201048%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200988201041%_))))
                            (_%loop200987201031%_
                             _%lp-tl200990201048%_
                             (cons _%lp-hd200989201045%_
                                   _%case-signature200991201038%_))))
                        (let ((_%case-signature200992201051%_
                               (reverse _%case-signature200991201038%_)))
                          ((lambda (_%L201055%_ _%L201057%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L201057%_))
                                 (let* ((_%signatures201088%_
                                         (map (lambda (_%g201074201076%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx200971%_
                                                 _%L201057%_
                                                 _%g201074201076%_))
                                              (let ((__tmp203033
                                                     (lambda (_%g201079201082%_
                                                              _%g201080201085%_)
                                                       (cons _%g201079201082%_
                                                             _%g201080201085%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp203033
                                                 '()
                                                 _%L201055%_))))
                                        (_%g201091201117%_
                                         (lambda (_%g201092201113%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201092201113%_))))
                                        (_%g201090201877%_
                                         (lambda (_%g201092201121%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g201092201121%_))
                                               (let ((_g203034_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g201092201121%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g203035_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g203034_)
                        (##vector-length _g203034_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g203035_ 2)))
                 (error "Context expects 2 values" _g203035_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target201095201124%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g203034_
                                                             0)))
                                                         (_%tl201097201127%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g203034_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201097201127%_))
                                                         (letrec ((_%loop201098201130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd201096201134%_
                                    _%sig201102201137%_
                                    _%arity201103201139%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd201096201134%_))
                                 (let ((_%e201099201142%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd201096201134%_))))
                                   (let ((_%lp-hd201100201146%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201099201142%_)))
                                         (_%lp-tl201101201149%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201099201142%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd201100201146%_))
                                         (let ((_%e201106201152%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd201100201146%_))))
                                           (let ((_%hd201107201156%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201106201152%_)))
                                                 (_%tl201108201159%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201106201152%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201108201159%_))
                                                 (let ((_%e201109201162%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201108201159%_))))
                                                   (let ((_%hd201110201166%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201109201162%_)))
                                                         (_%tl201111201169%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201109201162%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201111201169%_))
                                                         (_%loop201098201130%_
                                                          _%lp-tl201101201149%_
                                                          (cons _%hd201110201166%_
                                                                _%sig201102201137%_)
                                                          (cons _%hd201107201156%_
                                                                _%arity201103201139%_))
                                                         (_%g201091201117%_
                                                          _%g201092201121%_))))
                                                 (_%g201091201117%_
                                                  _%g201092201121%_))))
                                         (_%g201091201117%_
                                          _%g201092201121%_))))
                                 (let ((_%sig201104201172%_
                                        (reverse _%sig201102201137%_))
                                       (_%arity201105201175%_
                                        (reverse _%arity201103201139%_)))
                                   ((lambda (_%L201178%_ _%L201180%_)
                                      (let* ((_%g201197201205%_
                                              (lambda (_%g201198201201%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g201198201201%_))))
                                             (_%g201196201862%_
                                              (lambda (_%g201198201209%_)
                                                ((lambda (_%L201212%_)
                                                   (let* ((_%g201225201233%_
                                                           (lambda (_%g201226201229%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g201226201229%_))))
                  (_%g201224201255%_
                   (lambda (_%g201226201237%_)
                     ((lambda (_%L201240%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L201212%_ (cons _%L201240%_ '()))))
                      _%g201226201237%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201224201255%_
                                                      (let ((_g203036_
                                                             (let _%loop201259%_ ((_%rest201262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures201088%_)
                                          (_%unchecked-proc201264%_ '#f)
                                          (_%unchecked-clauses201265%_ '()))
                       (let* ((_%rest201266201274%_ _%rest201262%_)
                              (_%else201268201286%_
                               (lambda ()
                                 (values _%unchecked-proc201264%_
                                         (reverse!
                                          _%unchecked-clauses201265%_))))
                              (_%K201270201727%_
                               (lambda (_%rest201290%_ _%hd201292%_)
                                 (let* ((_%g201294201381%_
                                         (lambda (_%g201295201377%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201295201377%_))))
                                        (_%g201293201723%_
                                         (lambda (_%g201295201385%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g201295201385%_))
                                               (let ((_%e201302201388%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g201295201385%_))))
                                                 (let ((_%hd201303201392%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201302201388%_)))
                                                       (_%tl201304201395%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201302201388%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201304201395%_))
                                                       (let ((_%e201305201398%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201304201395%_))))
                 (let ((_%hd201306201402%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201305201398%_)))
                       (_%tl201307201405%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201305201398%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd201306201402%_))
                       (let ((_%e201308201408%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd201306201402%_))))
                         (let ((_%hd201309201412%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201308201408%_)))
                               (_%tl201310201415%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201308201408%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl201310201415%_))
                               (let ((_%e201311201418%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl201310201415%_))))
                                 (let ((_%hd201312201422%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e201311201418%_)))
                                       (_%tl201313201425%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e201311201418%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd201312201422%_))
                                       (let ((_%e201314201428%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd201312201422%_))))
                                         (if (equal? _%e201314201428%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201313201425%_))
                                                 (let ((_%e201315201432%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201313201425%_))))
                                                   (let ((_%hd201316201436%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201315201432%_)))
                                                         (_%tl201317201439%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201315201432%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd201316201436%_))
                                                         (let ((_%e201318201442%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd201316201436%_))))
                   (let ((_%hd201319201446%_
                          (let ()
                            (declare (not safe))
                            (##car _%e201318201442%_)))
                         (_%tl201320201449%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e201318201442%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd201319201446%_))
                         (if (let ((__tmp203038 |gxc[1]#_g203039_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp203038
                                _%hd201319201446%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl201320201449%_))
                                 (let ((_%e201321201452%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl201320201449%_))))
                                   (let ((_%hd201322201456%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201321201452%_)))
                                         (_%tl201323201459%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201321201452%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl201323201459%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl201317201439%_))
                                             (let ((_%e201324201462%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl201317201439%_))))
                                               (let ((_%hd201325201466%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201324201462%_)))
                                                     (_%tl201326201469%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201324201462%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd201325201466%_))
                                                     (let ((_%e201327201472%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd201325201466%_))))
                                                       (if (equal? _%e201327201472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl201326201469%_))
                       (let ((_%e201328201476%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl201326201469%_))))
                         (let ((_%hd201329201480%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e201328201476%_)))
                               (_%tl201330201483%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e201328201476%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd201329201480%_))
                               (let ((_%e201331201486%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd201329201480%_))))
                                 (let ((_%hd201332201490%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e201331201486%_)))
                                       (_%tl201333201493%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e201331201486%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd201332201490%_))
                                       (if (let ((__tmp203040
                                                  |gxc[1]#_g203041_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp203040
                                              _%hd201332201490%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl201333201493%_))
                                               (let ((_%e201334201496%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl201333201493%_))))
                                                 (let ((_%hd201335201500%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201334201496%_)))
                                                       (_%tl201336201503%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201334201496%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl201336201503%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl201330201483%_))
                                                           (let ((_%e201337201506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl201330201483%_))))
                     (let ((_%hd201338201510%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201337201506%_)))
                           (_%tl201339201513%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201337201506%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd201338201510%_))
                           (let ((_%e201340201516%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd201338201510%_))))
                             (if (equal? _%e201340201516%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl201339201513%_))
                                     (let ((_%e201341201520%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl201339201513%_))))
                                       (let ((_%hd201342201524%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e201341201520%_)))
                                             (_%tl201343201527%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e201341201520%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd201342201524%_))
                                             (let ((_%e201344201530%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd201342201524%_))))
                                               (let ((_%hd201345201534%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201344201530%_)))
                                                     (_%tl201346201537%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201344201530%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd201345201534%_))
                                                     (if (let ((__tmp203042
                                                                |gxc[1]#_g203043_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp203042
                                                            _%hd201345201534%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201346201537%_))
                     (let ((_%e201347201540%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl201346201537%_))))
                       (let ((_%hd201348201544%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201347201540%_)))
                             (_%tl201349201547%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201347201540%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201349201547%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl201343201527%_))
                                 (let ((_%e201350201550%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl201343201527%_))))
                                   (let ((_%hd201351201554%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201350201550%_)))
                                         (_%tl201352201557%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201350201550%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd201351201554%_))
                                         (let ((_%e201353201560%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd201351201554%_))))
                                           (if (equal? _%e201353201560%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl201352201557%_))
                                                   (let ((_%e201354201564%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl201352201557%_))))
                                                     (let ((_%hd201355201568%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e201354201564%_)))
                                                           (_%tl201356201571%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e201354201564%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd201355201568%_))
                                                           (let ((_%e201357201574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd201355201568%_))))
                     (let ((_%hd201358201578%_
                            (let ()
                              (declare (not safe))
                              (##car _%e201357201574%_)))
                           (_%tl201359201581%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e201357201574%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd201358201578%_))
                           (if (let ((__tmp203044 |gxc[1]#_g203045_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp203044
                                  _%hd201358201578%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl201359201581%_))
                                   (let ((_%e201360201584%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl201359201581%_))))
                                     (let ((_%hd201361201588%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e201360201584%_)))
                                           (_%tl201362201591%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e201360201584%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl201362201591%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl201356201571%_))
                                               (let ((_%e201363201594%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl201356201571%_))))
                                                 (let ((_%hd201364201598%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201363201594%_)))
                                                       (_%tl201365201601%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201363201594%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd201364201598%_))
                                                       (let ((_%e201366201604%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd201364201598%_))))
                 (if (equal? _%e201366201604%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl201365201601%_))
                         (let ((_%e201367201608%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl201365201601%_))))
                           (let ((_%hd201368201612%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201367201608%_)))
                                 (_%tl201369201615%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201367201608%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd201368201612%_))
                                 (let ((_%e201370201618%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd201368201612%_))))
                                   (let ((_%hd201371201622%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e201370201618%_)))
                                         (_%tl201372201625%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e201370201618%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd201371201622%_))
                                         (if (let ((__tmp203046
                                                    |gxc[1]#_g203047_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp203046
                                                _%hd201371201622%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl201372201625%_))
                                                 (let ((_%e201373201628%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl201372201625%_))))
                                                   (let ((_%hd201374201632%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201373201628%_)))
                                                         (_%tl201375201635%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201373201628%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201375201635%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl201369201615%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl201307201405%_))
                         ((lambda (_%L201638%_
                                   _%L201640%_
                                   _%L201641%_
                                   _%L201642%_
                                   _%L201643%_
                                   _%L201644%_)
                            (let ((_%clause201715%_
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
                                                     (cons _%L201644%_ '()))
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
                                                 (cons _%L201642%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201638%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked201717%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L201640%_))))
                              (_%loop201259%_
                               _%rest201290%_
                               (let ((_%$e201719%_ _%unchecked201717%_))
                                 (if _%$e201719%_
                                     _%$e201719%_
                                     _%unchecked-proc201264%_))
                               (cons _%clause201715%_
                                     _%unchecked-clauses201265%_))))
                          _%hd201374201632%_
                          _%hd201361201588%_
                          _%hd201348201544%_
                          _%hd201335201500%_
                          _%hd201322201456%_
                          _%hd201303201392%_)
                         (_%g201294201381%_ _%g201295201385%_))
                     (_%g201294201381%_ _%g201295201385%_))
                 (_%g201294201381%_ _%g201295201385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201294201381%_
                                                  _%g201295201385%_))
                                             (_%g201294201381%_
                                              _%g201295201385%_))
                                         (_%g201294201381%_
                                          _%g201295201385%_))))
                                 (_%g201294201381%_ _%g201295201385%_))))
                         (_%g201294201381%_ _%g201295201385%_))
                     (_%g201294201381%_ _%g201295201385%_)))
               (_%g201294201381%_ _%g201295201385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201294201381%_
                                                _%g201295201385%_))
                                           (_%g201294201381%_
                                            _%g201295201385%_))))
                                   (_%g201294201381%_ _%g201295201385%_))
                               (_%g201294201381%_ _%g201295201385%_))
                           (_%g201294201381%_ _%g201295201385%_))))
                   (_%g201294201381%_ _%g201295201385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g201294201381%_
                                                    _%g201295201385%_))
                                               (_%g201294201381%_
                                                _%g201295201385%_)))
                                         (_%g201294201381%_
                                          _%g201295201385%_))))
                                 (_%g201294201381%_ _%g201295201385%_))
                             (_%g201294201381%_ _%g201295201385%_))))
                     (_%g201294201381%_ _%g201295201385%_))
                 (_%g201294201381%_ _%g201295201385%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201294201381%_
                                                      _%g201295201385%_))))
                                             (_%g201294201381%_
                                              _%g201295201385%_))))
                                     (_%g201294201381%_ _%g201295201385%_))
                                 (_%g201294201381%_ _%g201295201385%_)))
                           (_%g201294201381%_ _%g201295201385%_))))
                   (_%g201294201381%_ _%g201295201385%_))
               (_%g201294201381%_ _%g201295201385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201294201381%_
                                                _%g201295201385%_))
                                           (_%g201294201381%_
                                            _%g201295201385%_))
                                       (_%g201294201381%_ _%g201295201385%_))))
                               (_%g201294201381%_ _%g201295201385%_))))
                       (_%g201294201381%_ _%g201295201385%_))
                   (_%g201294201381%_ _%g201295201385%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201294201381%_
                                                      _%g201295201385%_))))
                                             (_%g201294201381%_
                                              _%g201295201385%_))
                                         (_%g201294201381%_
                                          _%g201295201385%_))))
                                 (_%g201294201381%_ _%g201295201385%_))
                             (_%g201294201381%_ _%g201295201385%_))
                         (_%g201294201381%_ _%g201295201385%_))))
                 (_%g201294201381%_ _%g201295201385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g201294201381%_
                                                  _%g201295201385%_))
                                             (_%g201294201381%_
                                              _%g201295201385%_)))
                                       (_%g201294201381%_ _%g201295201385%_))))
                               (_%g201294201381%_ _%g201295201385%_))))
                       (_%g201294201381%_ _%g201295201385%_))))
               (_%g201294201381%_ _%g201295201385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201294201381%_
                                                _%g201295201385%_)))))
                                   (_%g201293201723%_ _%hd201292%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest201266201274%_))
                             (let ((_%hd201271201731%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest201266201274%_)))
                                   (_%tl201272201734%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest201266201274%_))))
                               (let* ((_%hd201737%_ _%hd201271201731%_)
                                      (_%rest201740%_ _%tl201272201734%_))
                                 (_%K201270201727%_
                                  _%rest201740%_
                                  _%hd201737%_)))
                             (_%else201268201286%_))))))
                (begin
                  (let ((_g203037_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g203036_)
                               (##vector-length _g203036_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g203037_ 2)))
                        (error "Context expects 2 values" _g203037_)))
                  (let ((_%unchecked-proc201743%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g203036_ 0)))
                        (_%unchecked-clauses201745%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g203036_ 1))))
                    (if _%unchecked-proc201743%_
                        (let* ((_%g201747201771%_
                                (lambda (_%g201748201767%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g201748201767%_))))
                               (_%g201746201858%_
                                (lambda (_%g201748201775%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g201748201775%_))
                                      (let ((_%e201751201778%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g201748201775%_))))
                                        (let ((_%hd201752201782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201751201778%_)))
                                              (_%tl201753201785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201751201778%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201753201785%_))
                                              (let ((_%e201754201788%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201753201785%_))))
                                                (let ((_%hd201755201792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201754201788%_)))
                                                      (_%tl201756201795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201754201788%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd201755201792%_))
                                                      (let ((_g203048_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd201755201792%_ '0))))
                (begin
                  (let ((_g203049_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g203048_)
                               (##vector-length _g203048_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g203049_ 2)))
                        (error "Context expects 2 values" _g203049_)))
                  (let ((_%target201757201798%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g203048_ 0)))
                        (_%tl201759201801%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g203048_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl201759201801%_))
                        (letrec ((_%loop201760201804%_
                                  (lambda (_%hd201758201808%_
                                           _%clause201764201811%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd201758201808%_))
                                        (let ((_%e201761201814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd201758201808%_))))
                                          (let ((_%lp-hd201762201818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201761201814%_)))
                                                (_%lp-tl201763201821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201761201814%_))))
                                            (_%loop201760201804%_
                                             _%lp-tl201763201821%_
                                             (cons _%lp-hd201762201818%_
                                                   _%clause201764201811%_))))
                                        (let ((_%clause201765201824%_
                                               (reverse _%clause201764201811%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201756201795%_))
                                              ((lambda (_%L201828%_
                                                        _%L201830%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L201830%_
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
                                             (let ((__tmp203050
                                                    (lambda (_%g201849201852%_
                                                             _%g201850201855%_)
                                                      (cons _%g201849201852%_
                                                            _%g201850201855%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp203050
                                                '()
                                                _%L201828%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause201765201824%_
                                               _%hd201752201782%_)
                                              (_%g201747201771%_
                                               _%g201748201775%_)))))))
                          (_%loop201760201804%_ _%target201757201798%_ '()))
                        (_%g201747201771%_ _%g201748201775%_)))))
              (_%g201747201771%_ _%g201748201775%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201747201771%_
                                               _%g201748201775%_))))
                                      (_%g201747201771%_ _%g201748201775%_)))))
                          (_%g201746201858%_
                           (list _%unchecked-proc201743%_
                                 _%unchecked-clauses201745%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g201198201209%_))))
                                        (_%g201196201862%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L201057%_
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
                                          _%L201178%_
                                          _%L201180%_))
                                       (let ((__tmp203051
                                              (lambda (_%g201865201869%_
                                                       _%g201866201872%_
                                                       _%g201867201874%_)
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
                                (cons _%g201866201872%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g201865201869%_ '())))))
              _%g201867201874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp203051
                                          '()
                                          _%L201178%_
                                          _%L201180%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig201104201172%_
                                    _%arity201105201175%_))))))
                   (_%loop201098201130%_ _%target201095201124%_ '() '()))
                 (_%g201091201117%_ _%g201092201121%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201091201117%_
                                                _%g201092201121%_)))))
                                   (_%g201090201877%_ _%signatures201088%_))
                                 (_%g200974200998%_ _%g200975201002%_)))
                           _%case-signature200992201051%_
                           _%hd200982201019%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop200987201031%_
                                                   _%target200984201025%_
                                                   '()))
                                                (_%g200974200998%_
                                                 _%g200975201002%_)))))
                                      (_%g200974200998%_ _%g200975201002%_))))
                              (_%g200974200998%_ _%g200975201002%_))))
                      (_%g200974200998%_ _%g200975201002%_)))))
          (_%g200973201881%_ _%stx200971%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx201889%_)
        (let* ((_%__stx202871202872%_ _%$stx201889%_)
               (_%g201895201955%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx202871202872%_)))))
          (let ((_%__kont202874202875%_
                 (lambda (_%L202177%_ _%L202179%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202179%_ '()))
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
                                                       (cons _%L202179%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202177%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202876202877%_
                 (lambda (_%L202102%_ _%L202104%_ _%L202105%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202105%_ '()))
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
                                                       (cons _%L202105%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202104%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202102%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont202878202879%_
                 (lambda (_%L202016%_ _%L202018%_ _%L202019%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202019%_ '()))
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
                                                       (cons _%L202019%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202018%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202016%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx202871202872%_))
                (let ((_%e201899202133%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx202871202872%_))))
                  (let ((_%tl201901202140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201899202133%_)))
                        (_%hd201900202137%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201899202133%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201901202140%_))
                        (let ((_%e201902202143%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201901202140%_))))
                          (let ((_%tl201904202150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201902202143%_)))
                                (_%hd201903202147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201902202143%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd201903202147%_))
                                (let ((_%e201905202153%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd201903202147%_))))
                                  (if (equal? _%e201905202153%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201904202150%_))
                                          (let ((_%e201906202157%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201904202150%_))))
                                            (let ((_%tl201908202164%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201906202157%_)))
                                                  (_%hd201907202161%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201906202157%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201908202164%_))
                                                  (let ((_%e201909202167%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201908202164%_))))
                                                    (let ((_%tl201911202174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201909202167%_)))
                                                          (_%hd201910202171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201909202167%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201911202174%_))
                                                          (_%__kont202874202875%_
                                                           _%hd201910202171%_
                                                           _%hd201907202161%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201895201955%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201895201955%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201895201955%_)))
                                      (if (equal? _%e201905202153%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201904202150%_))
                                              (let ((_%e201922202072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201904202150%_))))
                                                (let ((_%tl201924202079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201922202072%_)))
                                                      (_%hd201923202076%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201922202072%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201924202079%_))
                                                      (let ((_%e201925202082%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201924202079%_))))
                (let ((_%tl201927202089%_
                       (let () (declare (not safe)) (##cdr _%e201925202082%_)))
                      (_%hd201926202086%_
                       (let ()
                         (declare (not safe))
                         (##car _%e201925202082%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201927202089%_))
                      (let ((_%e201928202092%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201927202089%_))))
                        (let ((_%tl201930202099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201928202092%_)))
                              (_%hd201929202096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201928202092%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl201930202099%_))
                              (_%__kont202876202877%_
                               _%hd201929202096%_
                               _%hd201926202086%_
                               _%hd201923202076%_)
                              (let ()
                                (declare (not safe))
                                (_%g201895201955%_)))))
                      (let () (declare (not safe)) (_%g201895201955%_)))))
              (let () (declare (not safe)) (_%g201895201955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g201895201955%_)))
                                          (if (equal? _%e201905202153%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201904202150%_))
                                                  (let ((_%e201941201986%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201904202150%_))))
                                                    (let ((_%tl201943201993%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201941201986%_)))
                                                          (_%hd201942201990%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201941201986%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl201943201993%_))
                                                          (let ((_%e201944201996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl201943201993%_))))
                    (let ((_%tl201946202003%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201944201996%_)))
                          (_%hd201945202000%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201944201996%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201946202003%_))
                          (let ((_%e201947202006%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201946202003%_))))
                            (let ((_%tl201949202013%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201947202006%_)))
                                  (_%hd201948202010%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201947202006%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201949202013%_))
                                  (_%__kont202878202879%_
                                   _%hd201948202010%_
                                   _%hd201945202000%_
                                   _%hd201942201990%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g201895201955%_)))))
                          (let () (declare (not safe)) (_%g201895201955%_)))))
                  (let () (declare (not safe)) (_%g201895201955%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g201895201955%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g201895201955%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g201895201955%_)))))
                        (let () (declare (not safe)) (_%g201895201955%_)))))
                (let () (declare (not safe)) (_%g201895201955%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx202201%_)
        (let* ((_%g202205202225%_
                (lambda (_%g202206202221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202206202221%_))))
               (_%g202204202296%_
                (lambda (_%g202206202229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202206202229%_))
                      (let ((_%e202208202232%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202206202229%_))))
                        (let ((_%hd202209202236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202208202232%_)))
                              (_%tl202210202239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202208202232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202210202239%_))
                              (let ((_g203052_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202210202239%_
                                        '0))))
                                (begin
                                  (let ((_g203053_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g203052_)
                                               (##vector-length _g203052_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g203053_ 2)))
                                        (error "Context expects 2 values"
                                               _g203053_)))
                                  (let ((_%target202211202242%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203052_ 0)))
                                        (_%tl202213202245%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g203052_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202213202245%_))
                                        (letrec ((_%loop202214202248%_
                                                  (lambda (_%hd202212202252%_
                                                           _%decl202218202255%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202212202252%_))
                                                        (let ((_%e202215202258%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202212202252%_))))
                  (let ((_%lp-hd202216202262%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202215202258%_)))
                        (_%lp-tl202217202265%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202215202258%_))))
                    (_%loop202214202248%_
                     _%lp-tl202217202265%_
                     (cons _%lp-hd202216202262%_ _%decl202218202255%_))))
                (let ((_%decl202219202268%_ (reverse _%decl202218202255%_)))
                  ((lambda (_%L202272%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp203054
                                  (lambda (_%g202287202290%_ _%g202288202293%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g202287202290%_)
                                          _%g202288202293%_))))
                             (declare (not safe))
                             (__foldr1 __tmp203054 '() _%L202272%_))))
                   _%decl202219202268%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202214202248%_
                                           _%target202211202242%_
                                           '()))
                                        (_%g202205202225%_
                                         _%g202206202229%_)))))
                              (_%g202205202225%_ _%g202206202229%_))))
                      (_%g202205202225%_ _%g202206202229%_)))))
          (_%g202204202296%_ _%$stx202201%_))))))
