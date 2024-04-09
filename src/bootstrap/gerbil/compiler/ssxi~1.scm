(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201987_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201994_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201996_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201998_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202000_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202002_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202014_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202016_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202018_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202020_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g202022_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx195405%_)
        (let* ((_%g195409195427%_
                (lambda (_%g195410195423%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195410195423%_))))
               (_%g195408195482%_
                (lambda (_%g195410195431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195410195431%_))
                      (let ((_%e195413195434%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195410195431%_))))
                        (let ((_%hd195414195438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195413195434%_)))
                              (_%tl195415195441%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195413195434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195415195441%_))
                              (let ((_%e195416195444%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195415195441%_))))
                                (let ((_%hd195417195448%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195416195444%_)))
                                      (_%tl195418195451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195416195444%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195418195451%_))
                                      (let ((_%e195419195454%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195418195451%_))))
                                        (let ((_%hd195420195458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195419195454%_)))
                                              (_%tl195421195461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195419195454%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195421195461%_))
                                              ((lambda (_%L195464%_
                                                        _%L195466%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195466%_))
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
                               (cons _%L195466%_ '()))
                         (cons _%L195464%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195409195427%_
                                                      _%g195410195431%_)))
                                               _%hd195420195458%_
                                               _%hd195417195448%_)
                                              (_%g195409195427%_
                                               _%g195410195431%_))))
                                      (_%g195409195427%_ _%g195410195431%_))))
                              (_%g195409195427%_ _%g195410195431%_))))
                      (_%g195409195427%_ _%g195410195431%_)))))
          (_%g195408195482%_ _%$stx195405%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx195486%_)
        (let* ((_%g195490195508%_
                (lambda (_%g195491195504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195491195504%_))))
               (_%g195489195563%_
                (lambda (_%g195491195512%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195491195512%_))
                      (let ((_%e195494195515%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195491195512%_))))
                        (let ((_%hd195495195519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195494195515%_)))
                              (_%tl195496195522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195494195515%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195496195522%_))
                              (let ((_%e195497195525%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195496195522%_))))
                                (let ((_%hd195498195529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195497195525%_)))
                                      (_%tl195499195532%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195497195525%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195499195532%_))
                                      (let ((_%e195500195535%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195499195532%_))))
                                        (let ((_%hd195501195539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195500195535%_)))
                                              (_%tl195502195542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195500195535%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl195502195542%_))
                                              ((lambda (_%L195545%_
                                                        _%L195547%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L195547%_))
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
                               (cons _%L195547%_ '()))
                         (cons _%L195545%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g195490195508%_
                                                      _%g195491195512%_)))
                                               _%hd195501195539%_
                                               _%hd195498195529%_)
                                              (_%g195490195508%_
                                               _%g195491195512%_))))
                                      (_%g195490195508%_ _%g195491195512%_))))
                              (_%g195490195508%_ _%g195491195512%_))))
                      (_%g195490195508%_ _%g195491195512%_)))))
          (_%g195489195563%_ _%$stx195486%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx195567%_)
        (let* ((_%g195571195600%_
                (lambda (_%g195572195596%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195572195596%_))))
               (_%g195570195700%_
                (lambda (_%g195572195604%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195572195604%_))
                      (let ((_%e195575195607%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195572195604%_))))
                        (let ((_%hd195576195611%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195575195607%_)))
                              (_%tl195577195614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195575195607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195577195614%_))
                              (let ((_g201965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195577195614%_
                                        '0))))
                                (begin
                                  (let ((_g201966_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201965_)
                                               (##vector-length _g201965_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201966_ 2)))
                                        (error "Context expects 2 values"
                                               _g201966_)))
                                  (let ((_%target195578195617%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201965_ 0)))
                                        (_%tl195580195620%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201965_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195580195620%_))
                                        (letrec ((_%loop195581195623%_
                                                  (lambda (_%hd195579195627%_
                                                           _%type195585195630%_
                                                           _%symbol195586195632%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195579195627%_))
                                                        (let ((_%e195582195635%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195579195627%_))))
                  (let ((_%lp-hd195583195639%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195582195635%_)))
                        (_%lp-tl195584195642%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195582195635%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195583195639%_))
                        (let ((_%e195589195645%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195583195639%_))))
                          (let ((_%hd195590195649%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195589195645%_)))
                                (_%tl195591195652%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195589195645%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195591195652%_))
                                (let ((_%e195592195655%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195591195652%_))))
                                  (let ((_%hd195593195659%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195592195655%_)))
                                        (_%tl195594195662%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195592195655%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195594195662%_))
                                        (_%loop195581195623%_
                                         _%lp-tl195584195642%_
                                         (cons _%hd195593195659%_
                                               _%type195585195630%_)
                                         (cons _%hd195590195649%_
                                               _%symbol195586195632%_))
                                        (_%g195571195600%_
                                         _%g195572195604%_))))
                                (_%g195571195600%_ _%g195572195604%_))))
                        (_%g195571195600%_ _%g195572195604%_))))
                (let ((_%type195587195665%_ (reverse _%type195585195630%_))
                      (_%symbol195588195668%_
                       (reverse _%symbol195586195632%_)))
                  ((lambda (_%L195671%_ _%L195673%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195671%_
                                _%L195673%_))
                             (let ((__tmp201967
                                    (lambda (_%g195688195692%_
                                             _%g195689195695%_
                                             _%g195690195697%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195689195695%_
                                                        (cons _%g195688195692%_
                                                              '())))
                                            _%g195690195697%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201967
                                '()
                                _%L195671%_
                                _%L195673%_)))))
                   _%type195587195665%_
                   _%symbol195588195668%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195581195623%_
                                           _%target195578195617%_
                                           '()
                                           '()))
                                        (_%g195571195600%_
                                         _%g195572195604%_)))))
                              (_%g195571195600%_ _%g195572195604%_))))
                      (_%g195571195600%_ _%g195572195604%_)))))
          (_%g195570195700%_ _%$stx195567%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195705%_)
        (let* ((_%__stx201276201277%_ _%$stx195705%_)
               (_%g195710195752%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201276201277%_)))))
          (let ((_%__kont201279201280%_
                 (lambda (_%L195880%_ _%L195882%_ _%L195883%_ _%L195884%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195884%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195883%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195882%_ '()))
                                           (cons _%L195880%_ '())))))))
                (_%__kont201281201282%_
                 (lambda (_%L195799%_ _%L195801%_ _%L195802%_ _%L195803%_)
                   (cons _%L195803%_
                         (cons _%L195802%_
                               (cons _%L195801%_
                                     (cons _%L195799%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match201315201316%_
                   (lambda (_%e195716195830%_
                            _%hd195717195834%_
                            _%tl195718195837%_
                            _%e195719195840%_
                            _%hd195720195844%_
                            _%tl195721195847%_
                            _%e195722195850%_
                            _%hd195723195854%_
                            _%tl195724195857%_
                            _%e195725195860%_
                            _%hd195726195864%_
                            _%tl195727195867%_
                            _%e195728195870%_
                            _%hd195729195874%_
                            _%tl195730195877%_)
                     (let ((_%L195880%_ _%hd195729195874%_)
                           (_%L195882%_ _%hd195726195864%_)
                           (_%L195883%_ _%hd195723195854%_)
                           (_%L195884%_ _%hd195720195844%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195884%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195883%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195882%_)))
                           (_%__kont201279201280%_
                            _%L195880%_
                            _%L195882%_
                            _%L195883%_
                            _%L195884%_)
                           (let ()
                             (declare (not safe))
                             (_%g195710195752%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201276201277%_))
                  (let ((_%e195716195830%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201276201277%_))))
                    (let ((_%tl195718195837%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195716195830%_)))
                          (_%hd195717195834%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195716195830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195718195837%_))
                          (let ((_%e195719195840%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195718195837%_))))
                            (let ((_%tl195721195847%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195719195840%_)))
                                  (_%hd195720195844%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195719195840%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195721195847%_))
                                  (let ((_%e195722195850%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195721195847%_))))
                                    (let ((_%tl195724195857%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195722195850%_)))
                                          (_%hd195723195854%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195722195850%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195724195857%_))
                                          (let ((_%e195725195860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195724195857%_))))
                                            (let ((_%tl195727195867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195725195860%_)))
                                                  (_%hd195726195864%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195725195860%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195727195867%_))
                                                  (let ((_%e195728195870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195727195867%_))))
                                                    (let ((_%tl195730195877%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195728195870%_)))
                                                          (_%hd195729195874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195728195870%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195730195877%_))
                                                          (_%__match201315201316%_
                                                           _%e195716195830%_
                                                           _%hd195717195834%_
                                                           _%tl195718195837%_
                                                           _%e195719195840%_
                                                           _%hd195720195844%_
                                                           _%tl195721195847%_
                                                           _%e195722195850%_
                                                           _%hd195723195854%_
                                                           _%tl195724195857%_
                                                           _%e195725195860%_
                                                           _%hd195726195864%_
                                                           _%tl195727195867%_
                                                           _%e195728195870%_
                                                           _%hd195729195874%_
                                                           _%tl195730195877%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195710195752%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195727195867%_))
                                                      (_%__kont201281201282%_
                                                       _%hd195726195864%_
                                                       _%hd195723195854%_
                                                       _%hd195720195844%_
                                                       _%hd195717195834%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195710195752%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195710195752%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195710195752%_)))))
                          (let () (declare (not safe)) (_%g195710195752%_)))))
                  (let () (declare (not safe)) (_%g195710195752%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195909%_)
        (let* ((_%g195913195948%_
                (lambda (_%g195914195944%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195914195944%_))))
               (_%g195912196067%_
                (lambda (_%g195914195952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195914195952%_))
                      (let ((_%e195918195955%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195914195952%_))))
                        (let ((_%hd195919195959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195918195955%_)))
                              (_%tl195920195962%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195918195955%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195920195962%_))
                              (let ((_g201968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195920195962%_
                                        '0))))
                                (begin
                                  (let ((_g201969_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201968_)
                                               (##vector-length _g201968_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201969_ 2)))
                                        (error "Context expects 2 values"
                                               _g201969_)))
                                  (let ((_%target195921195965%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201968_ 0)))
                                        (_%tl195923195968%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201968_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195923195968%_))
                                        (letrec ((_%loop195924195971%_
                                                  (lambda (_%hd195922195975%_
                                                           _%symbol195928195978%_
                                                           _%method195929195980%_
                                                           _%type-t195930195982%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195922195975%_))
                                                        (let ((_%e195925195985%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195922195975%_))))
                  (let ((_%lp-hd195926195989%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195925195985%_)))
                        (_%lp-tl195927195992%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195925195985%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195926195989%_))
                        (let ((_%e195934195995%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195926195989%_))))
                          (let ((_%hd195935195999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195934195995%_)))
                                (_%tl195936196002%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195934195995%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195936196002%_))
                                (let ((_%e195937196005%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195936196002%_))))
                                  (let ((_%hd195938196009%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195937196005%_)))
                                        (_%tl195939196012%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195937196005%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195939196012%_))
                                        (let ((_%e195940196015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195939196012%_))))
                                          (let ((_%hd195941196019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195940196015%_)))
                                                (_%tl195942196022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195940196015%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195942196022%_))
                                                (_%loop195924195971%_
                                                 _%lp-tl195927195992%_
                                                 (cons _%hd195941196019%_
                                                       _%symbol195928195978%_)
                                                 (cons _%hd195938196009%_
                                                       _%method195929195980%_)
                                                 (cons _%hd195935195999%_
                                                       _%type-t195930195982%_))
                                                (_%g195913195948%_
                                                 _%g195914195952%_))))
                                        (_%g195913195948%_
                                         _%g195914195952%_))))
                                (_%g195913195948%_ _%g195914195952%_))))
                        (_%g195913195948%_ _%g195914195952%_))))
                (let ((_%symbol195931196025%_ (reverse _%symbol195928195978%_))
                      (_%method195932196028%_ (reverse _%method195929195980%_))
                      (_%type-t195933196030%_
                       (reverse _%type-t195930195982%_)))
                  ((lambda (_%L196033%_ _%L196035%_ _%L196036%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L196033%_
                                _%L196035%_
                                _%L196036%_))
                             (let ((__tmp201970
                                    (lambda (_%g196052196057%_
                                             _%g196053196060%_
                                             _%g196054196062%_
                                             _%g196055196064%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g196054196062%_
                                                        (cons _%g196053196060%_
                                                              (cons _%g196052196057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g196055196064%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201970
                                '()
                                _%L196033%_
                                _%L196035%_
                                _%L196036%_)))))
                   _%symbol195931196025%_
                   _%method195932196028%_
                   _%type-t195933196030%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195924195971%_
                                           _%target195921195965%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195913195948%_
                                         _%g195914195952%_)))))
                              (_%g195913195948%_ _%g195914195952%_))))
                      (_%g195913195948%_ _%g195914195952%_)))))
          (_%g195912196067%_ _%$stx195909%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx196072%_)
        (let* ((_%g196076196109%_
                (lambda (_%g196077196105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196077196105%_))))
               (_%g196075196223%_
                (lambda (_%g196077196113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196077196113%_))
                      (let ((_%e196081196116%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196077196113%_))))
                        (let ((_%hd196082196120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196081196116%_)))
                              (_%tl196083196123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196081196116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196083196123%_))
                              (let ((_%e196084196126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196083196123%_))))
                                (let ((_%hd196085196130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196084196126%_)))
                                      (_%tl196086196133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196084196126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl196086196133%_))
                                      (let ((_g201971_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl196086196133%_
                                                '0))))
                                        (begin
                                          (let ((_g201972_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201971_)
                                                       (##vector-length
                                                        _g201971_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201972_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201972_)))
                                          (let ((_%target196087196136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201971_ 0)))
                                                (_%tl196089196139%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201971_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196089196139%_))
                                                (letrec ((_%loop196090196142%_
                                                          (lambda (_%hd196088196146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol196094196149%_
                           _%method196095196151%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd196088196146%_))
                        (let ((_%e196091196154%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd196088196146%_))))
                          (let ((_%lp-hd196092196158%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196091196154%_)))
                                (_%lp-tl196093196161%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196091196154%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd196092196158%_))
                                (let ((_%e196098196164%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd196092196158%_))))
                                  (let ((_%hd196099196168%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196098196164%_)))
                                        (_%tl196100196171%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196098196164%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl196100196171%_))
                                        (let ((_%e196101196174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl196100196171%_))))
                                          (let ((_%hd196102196178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e196101196174%_)))
                                                (_%tl196103196181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e196101196174%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl196103196181%_))
                                                (_%loop196090196142%_
                                                 _%lp-tl196093196161%_
                                                 (cons _%hd196102196178%_
                                                       _%symbol196094196149%_)
                                                 (cons _%hd196099196168%_
                                                       _%method196095196151%_))
                                                (_%g196076196109%_
                                                 _%g196077196113%_))))
                                        (_%g196076196109%_
                                         _%g196077196113%_))))
                                (_%g196076196109%_ _%g196077196113%_))))
                        (let ((_%symbol196096196184%_
                               (reverse _%symbol196094196149%_))
                              (_%method196097196187%_
                               (reverse _%method196095196151%_)))
                          ((lambda (_%L196190%_ _%L196192%_ _%L196193%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L196190%_
                                        _%L196192%_))
                                     (let ((__tmp201973
                                            (lambda (_%g196211196215%_
                                                     _%g196212196218%_
                                                     _%g196213196220%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L196193%_
                                                                (cons _%g196212196218%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g196211196215%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g196213196220%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201973
                                        '()
                                        _%L196190%_
                                        _%L196192%_)))))
                           _%symbol196096196184%_
                           _%method196097196187%_
                           _%hd196085196130%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop196090196142%_
                                                   _%target196087196136%_
                                                   '()
                                                   '()))
                                                (_%g196076196109%_
                                                 _%g196077196113%_)))))
                                      (_%g196076196109%_ _%g196077196113%_))))
                              (_%g196076196109%_ _%g196077196113%_))))
                      (_%g196076196109%_ _%g196077196113%_)))))
          (_%g196075196223%_ _%$stx196072%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx196228%_)
        (let* ((_%g196232196246%_
                (lambda (_%g196233196242%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196233196242%_))))
               (_%g196231196287%_
                (lambda (_%g196233196250%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196233196250%_))
                      (let ((_%e196235196253%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196233196250%_))))
                        (let ((_%hd196236196257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196235196253%_)))
                              (_%tl196237196260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196235196253%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196237196260%_))
                              (let ((_%e196238196263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196237196260%_))))
                                (let ((_%hd196239196267%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196238196263%_)))
                                      (_%tl196240196270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196238196263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196240196270%_))
                                      ((lambda (_%L196273%_)
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
                                                           (cons _%L196273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196239196267%_)
                                      (_%g196232196246%_ _%g196233196250%_))))
                              (_%g196232196246%_ _%g196233196250%_))))
                      (_%g196232196246%_ _%g196233196250%_)))))
          (_%g196231196287%_ _%$stx196228%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx196291%_)
        (let* ((_%g196295196349%_
                (lambda (_%g196296196345%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196296196345%_))))
               (_%g196294196530%_
                (lambda (_%g196296196353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196296196353%_))
                      (let ((_%e196308196356%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196296196353%_))))
                        (let ((_%hd196309196360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196308196356%_)))
                              (_%tl196310196363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196308196356%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196310196363%_))
                              (let ((_%e196311196366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196310196363%_))))
                                (let ((_%hd196312196370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196311196366%_)))
                                      (_%tl196313196373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196311196366%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196313196373%_))
                                      (let ((_%e196314196376%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196313196373%_))))
                                        (let ((_%hd196315196380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196314196376%_)))
                                              (_%tl196316196383%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196314196376%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196316196383%_))
                                              (let ((_%e196317196386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196316196383%_))))
                                                (let ((_%hd196318196390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196317196386%_)))
                                                      (_%tl196319196393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196317196386%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196319196393%_))
                                                      (let ((_%e196320196396%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196319196393%_))))
                (let ((_%hd196321196400%_
                       (let () (declare (not safe)) (##car _%e196320196396%_)))
                      (_%tl196322196403%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196320196396%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196322196403%_))
                      (let ((_%e196323196406%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196322196403%_))))
                        (let ((_%hd196324196410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196323196406%_)))
                              (_%tl196325196413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196323196406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196325196413%_))
                              (let ((_%e196326196416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196325196413%_))))
                                (let ((_%hd196327196420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196326196416%_)))
                                      (_%tl196328196423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196326196416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196328196423%_))
                                      (let ((_%e196329196426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196328196423%_))))
                                        (let ((_%hd196330196430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196329196426%_)))
                                              (_%tl196331196433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196329196426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196331196433%_))
                                              (let ((_%e196332196436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196331196433%_))))
                                                (let ((_%hd196333196440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196332196436%_)))
                                                      (_%tl196334196443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196332196436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl196334196443%_))
                                                      (let ((_%e196335196446%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl196334196443%_))))
                (let ((_%hd196336196450%_
                       (let () (declare (not safe)) (##car _%e196335196446%_)))
                      (_%tl196337196453%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e196335196446%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196337196453%_))
                      (let ((_%e196338196456%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196337196453%_))))
                        (let ((_%hd196339196460%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196338196456%_)))
                              (_%tl196340196463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196338196456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196340196463%_))
                              (let ((_%e196341196466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196340196463%_))))
                                (let ((_%hd196342196470%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196341196466%_)))
                                      (_%tl196343196473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196341196466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196343196473%_))
                                      ((lambda (_%L196476%_
                                                _%L196478%_
                                                _%L196479%_
                                                _%L196480%_
                                                _%L196481%_
                                                _%L196482%_
                                                _%L196483%_
                                                _%L196484%_
                                                _%L196485%_
                                                _%L196486%_
                                                _%L196487%_)
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
                                                           (cons _%L196487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L196486%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L196485%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196484%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196483%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L196482%_ '()))
                                           (cons _%L196481%_
                                                 (cons _%L196480%_
                                                       (cons _%L196479%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196478%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L196476%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd196342196470%_
                                       _%hd196339196460%_
                                       _%hd196336196450%_
                                       _%hd196333196440%_
                                       _%hd196330196430%_
                                       _%hd196327196420%_
                                       _%hd196324196410%_
                                       _%hd196321196400%_
                                       _%hd196318196390%_
                                       _%hd196315196380%_
                                       _%hd196312196370%_)
                                      (_%g196295196349%_ _%g196296196353%_))))
                              (_%g196295196349%_ _%g196296196353%_))))
                      (_%g196295196349%_ _%g196296196353%_))))
              (_%g196295196349%_ _%g196296196353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196295196349%_
                                               _%g196296196353%_))))
                                      (_%g196295196349%_ _%g196296196353%_))))
                              (_%g196295196349%_ _%g196296196353%_))))
                      (_%g196295196349%_ _%g196296196353%_))))
              (_%g196295196349%_ _%g196296196353%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196295196349%_
                                               _%g196296196353%_))))
                                      (_%g196295196349%_ _%g196296196353%_))))
                              (_%g196295196349%_ _%g196296196353%_))))
                      (_%g196295196349%_ _%g196296196353%_)))))
          (_%g196294196530%_ _%$stx196291%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx196534%_)
        (let* ((_%g196538196552%_
                (lambda (_%g196539196548%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196539196548%_))))
               (_%g196537196593%_
                (lambda (_%g196539196556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196539196556%_))
                      (let ((_%e196541196559%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196539196556%_))))
                        (let ((_%hd196542196563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196541196559%_)))
                              (_%tl196543196566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196541196559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196543196566%_))
                              (let ((_%e196544196569%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196543196566%_))))
                                (let ((_%hd196545196573%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196544196569%_)))
                                      (_%tl196546196576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196544196569%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196546196576%_))
                                      ((lambda (_%L196579%_)
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
                                                           (cons _%L196579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196545196573%_)
                                      (_%g196538196552%_ _%g196539196556%_))))
                              (_%g196538196552%_ _%g196539196556%_))))
                      (_%g196538196552%_ _%g196539196556%_)))))
          (_%g196537196593%_ _%$stx196534%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx196597%_)
        (let* ((_%g196601196615%_
                (lambda (_%g196602196611%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196602196611%_))))
               (_%g196600196656%_
                (lambda (_%g196602196619%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196602196619%_))
                      (let ((_%e196604196622%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196602196619%_))))
                        (let ((_%hd196605196626%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196604196622%_)))
                              (_%tl196606196629%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196604196622%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196606196629%_))
                              (let ((_%e196607196632%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196606196629%_))))
                                (let ((_%hd196608196636%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196607196632%_)))
                                      (_%tl196609196639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196607196632%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196609196639%_))
                                      ((lambda (_%L196642%_)
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
                                                           (cons _%L196642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196608196636%_)
                                      (_%g196601196615%_ _%g196602196619%_))))
                              (_%g196601196615%_ _%g196602196619%_))))
                      (_%g196601196615%_ _%g196602196619%_)))))
          (_%g196600196656%_ _%$stx196597%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx196660%_)
        (let* ((_%g196664196686%_
                (lambda (_%g196665196682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196665196682%_))))
               (_%g196663196755%_
                (lambda (_%g196665196690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196665196690%_))
                      (let ((_%e196669196693%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196665196690%_))))
                        (let ((_%hd196670196697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196669196693%_)))
                              (_%tl196671196700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196669196693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196671196700%_))
                              (let ((_%e196672196703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196671196700%_))))
                                (let ((_%hd196673196707%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196672196703%_)))
                                      (_%tl196674196710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196672196703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196674196710%_))
                                      (let ((_%e196675196713%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196674196710%_))))
                                        (let ((_%hd196676196717%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196675196713%_)))
                                              (_%tl196677196720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196675196713%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196677196720%_))
                                              (let ((_%e196678196723%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196677196720%_))))
                                                (let ((_%hd196679196727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196678196723%_)))
                                                      (_%tl196680196730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196678196723%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196680196730%_))
                                                      ((lambda (_%L196733%_
                                                                _%L196735%_
                                                                _%L196736%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196736%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196735%_ '()))
                                   (cons _%L196733%_ '())))))
               _%hd196679196727%_
               _%hd196676196717%_
               _%hd196673196707%_)
              (_%g196664196686%_ _%g196665196690%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196664196686%_
                                               _%g196665196690%_))))
                                      (_%g196664196686%_ _%g196665196690%_))))
                              (_%g196664196686%_ _%g196665196690%_))))
                      (_%g196664196686%_ _%g196665196690%_)))))
          (_%g196663196755%_ _%$stx196660%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196759%_)
        (let* ((_%g196763196785%_
                (lambda (_%g196764196781%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196764196781%_))))
               (_%g196762196854%_
                (lambda (_%g196764196789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196764196789%_))
                      (let ((_%e196768196792%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196764196789%_))))
                        (let ((_%hd196769196796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196768196792%_)))
                              (_%tl196770196799%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196768196792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196770196799%_))
                              (let ((_%e196771196802%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196770196799%_))))
                                (let ((_%hd196772196806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196771196802%_)))
                                      (_%tl196773196809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196771196802%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196773196809%_))
                                      (let ((_%e196774196812%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196773196809%_))))
                                        (let ((_%hd196775196816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196774196812%_)))
                                              (_%tl196776196819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196774196812%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196776196819%_))
                                              (let ((_%e196777196822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196776196819%_))))
                                                (let ((_%hd196778196826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196777196822%_)))
                                                      (_%tl196779196829%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196777196822%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196779196829%_))
                                                      ((lambda (_%L196832%_
                                                                _%L196834%_
                                                                _%L196835%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196835%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196834%_ '()))
                                   (cons _%L196832%_ '())))))
               _%hd196778196826%_
               _%hd196775196816%_
               _%hd196772196806%_)
              (_%g196763196785%_ _%g196764196789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196763196785%_
                                               _%g196764196789%_))))
                                      (_%g196763196785%_ _%g196764196789%_))))
                              (_%g196763196785%_ _%g196764196789%_))))
                      (_%g196763196785%_ _%g196764196789%_)))))
          (_%g196762196854%_ _%$stx196759%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196858%_)
        (let* ((_%g196862196876%_
                (lambda (_%g196863196872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196863196872%_))))
               (_%g196861196917%_
                (lambda (_%g196863196880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196863196880%_))
                      (let ((_%e196865196883%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196863196880%_))))
                        (let ((_%hd196866196887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196865196883%_)))
                              (_%tl196867196890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196865196883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196867196890%_))
                              (let ((_%e196868196893%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196867196890%_))))
                                (let ((_%hd196869196897%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196868196893%_)))
                                      (_%tl196870196900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196868196893%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196870196900%_))
                                      ((lambda (_%L196903%_)
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
                                                           (cons _%L196903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196869196897%_)
                                      (_%g196862196876%_ _%g196863196880%_))))
                              (_%g196862196876%_ _%g196863196880%_))))
                      (_%g196862196876%_ _%g196863196880%_)))))
          (_%g196861196917%_ _%$stx196858%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196921%_)
        (let* ((_%g196925196943%_
                (lambda (_%g196926196939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196926196939%_))))
               (_%g196924196998%_
                (lambda (_%g196926196947%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196926196947%_))
                      (let ((_%e196929196950%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196926196947%_))))
                        (let ((_%hd196930196954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196929196950%_)))
                              (_%tl196931196957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196929196950%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196931196957%_))
                              (let ((_%e196932196960%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196931196957%_))))
                                (let ((_%hd196933196964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196932196960%_)))
                                      (_%tl196934196967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196932196960%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196934196967%_))
                                      (let ((_%e196935196970%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196934196967%_))))
                                        (let ((_%hd196936196974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196935196970%_)))
                                              (_%tl196937196977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196935196970%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196937196977%_))
                                              ((lambda (_%L196980%_
                                                        _%L196982%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196982%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196980%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196936196974%_
                                               _%hd196933196964%_)
                                              (_%g196925196943%_
                                               _%g196926196947%_))))
                                      (_%g196925196943%_ _%g196926196947%_))))
                              (_%g196925196943%_ _%g196926196947%_))))
                      (_%g196925196943%_ _%g196926196947%_)))))
          (_%g196924196998%_ _%$stx196921%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx197002%_)
        (let* ((_%__stx201344201345%_ _%$stx197002%_)
               (_%g197009197070%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201344201345%_)))))
          (let ((_%__kont201347201348%_
                 (lambda (_%L197308%_ _%L197310%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197310%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197308%_ '()))
                                     '())))))
                (_%__kont201349201350%_
                 (lambda (_%L197247%_ _%L197249%_ _%L197250%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L197250%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L197249%_ '()))
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
                                 (cons _%L197247%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont201351201352%_
                 (lambda (_%L197171%_ _%L197173%_)
                   (cons _%L197173%_ (cons _%L197171%_ (cons '#f '())))))
                (_%__kont201353201354%_
                 (lambda (_%L197121%_ _%L197123%_ _%L197124%_)
                   (cons _%L197124%_
                         (cons _%L197123%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L197121%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201344201345%_))
                (let ((_%e197013197278%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201344201345%_))))
                  (let ((_%tl197015197285%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197013197278%_)))
                        (_%hd197014197282%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197013197278%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197015197285%_))
                        (let ((_%e197016197288%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl197015197285%_))))
                          (let ((_%tl197018197295%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197016197288%_)))
                                (_%hd197017197292%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197016197288%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197018197295%_))
                                (let ((_%e197019197298%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197018197295%_))))
                                  (let ((_%tl197021197305%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197019197298%_)))
                                        (_%hd197020197302%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197019197298%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197021197305%_))
                                        (_%__kont201347201348%_
                                         _%hd197020197302%_
                                         _%hd197017197292%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197021197305%_))
                                            (let ((_%e197034197223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197021197305%_))))
                                              (let ((_%tl197036197230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197034197223%_)))
                                                    (_%hd197035197227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197034197223%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197035197227%_))
                                                    (let ((_%e197037197233%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197035197227%_))))
                                                      (if (equal? _%e197037197233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197036197230%_))
                      (let ((_%e197038197237%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197036197230%_))))
                        (let ((_%tl197040197244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197038197237%_)))
                              (_%hd197039197241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197038197237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197040197244%_))
                              (_%__kont201349201350%_
                               _%hd197039197241%_
                               _%hd197020197302%_
                               _%hd197017197292%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd197020197302%_))
                                  (let ((_%e197061197107%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197020197302%_))))
                                    (declare (not safe))
                                    (_%g197009197070%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197009197070%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197020197302%_))
                          (let ((_%e197061197107%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197020197302%_))))
                            (if (equal? _%e197061197107%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197036197230%_))
                                    (_%__kont201353201354%_
                                     _%hd197035197227%_
                                     _%hd197017197292%_
                                     _%hd197014197282%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197009197070%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197009197070%_))))
                          (let () (declare (not safe)) (_%g197009197070%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd197020197302%_))
                      (let ((_%e197061197107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197020197302%_))))
                        (if (equal? _%e197061197107%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197036197230%_))
                                (_%__kont201353201354%_
                                 _%hd197035197227%_
                                 _%hd197017197292%_
                                 _%hd197014197282%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197009197070%_)))
                            (let () (declare (not safe)) (_%g197009197070%_))))
                      (let () (declare (not safe)) (_%g197009197070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd197020197302%_))
                                                        (let ((_%e197061197107%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd197020197302%_))))
                  (if (equal? _%e197061197107%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197036197230%_))
                          (_%__kont201353201354%_
                           _%hd197035197227%_
                           _%hd197017197292%_
                           _%hd197014197282%_)
                          (let () (declare (not safe)) (_%g197009197070%_)))
                      (let () (declare (not safe)) (_%g197009197070%_))))
                (let () (declare (not safe)) (_%g197009197070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd197020197302%_))
                                                (let ((_%e197061197107%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd197020197302%_))))
                                                  (declare (not safe))
                                                  (_%g197009197070%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197009197070%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl197018197295%_))
                                    (_%__kont201351201352%_
                                     _%hd197017197292%_
                                     _%hd197014197282%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g197009197070%_))))))
                        (let () (declare (not safe)) (_%g197009197070%_)))))
                (let () (declare (not safe)) (_%g197009197070%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx197329%_)
        (let* ((_%g197333197362%_
                (lambda (_%g197334197358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197334197358%_))))
               (_%g197332197471%_
                (lambda (_%g197334197366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197334197366%_))
                      (let ((_%e197336197369%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197334197366%_))))
                        (let ((_%hd197337197373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197336197369%_)))
                              (_%tl197338197376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197336197369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197338197376%_))
                              (let ((_g201974_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197338197376%_
                                        '0))))
                                (begin
                                  (let ((_g201975_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201974_)
                                               (##vector-length _g201974_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201975_ 2)))
                                        (error "Context expects 2 values"
                                               _g201975_)))
                                  (let ((_%target197339197379%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201974_ 0)))
                                        (_%tl197341197382%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201974_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197341197382%_))
                                        (letrec ((_%loop197342197385%_
                                                  (lambda (_%hd197340197389%_
                                                           _%clause197346197392%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197340197389%_))
                                                        (let ((_%e197343197395%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197340197389%_))))
                  (let ((_%lp-hd197344197399%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197343197395%_)))
                        (_%lp-tl197345197402%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197343197395%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd197344197399%_))
                        (let ((_g201976_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd197344197399%_
                                  '0))))
                          (begin
                            (let ((_g201977_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201976_)
                                         (##vector-length _g201976_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201977_ 2)))
                                  (error "Context expects 2 values"
                                         _g201977_)))
                            (let ((_%target197348197405%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201976_ 0)))
                                  (_%tl197350197408%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201976_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197350197408%_))
                                  (letrec ((_%loop197351197411%_
                                            (lambda (_%hd197349197415%_
                                                     _%clause197355197418%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd197349197415%_))
                                                  (let ((_%e197352197421%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd197349197415%_))))
                                                    (let ((_%lp-hd197353197425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197352197421%_)))
                                                          (_%lp-tl197354197428%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197352197421%_))))
                                                      (_%loop197351197411%_
                                                       _%lp-tl197354197428%_
                                                       (cons _%lp-hd197353197425%_
                                                             _%clause197355197418%_))))
                                                  (let ((_%clause197356197431%_
                                                         (reverse _%clause197355197418%_)))
                                                    (_%loop197342197385%_
                                                     _%lp-tl197345197402%_
                                                     (cons _%clause197356197431%_
                                                           _%clause197346197392%_)))))))
                                    (_%loop197351197411%_
                                     _%target197348197405%_
                                     '()))
                                  (_%g197333197362%_ _%g197334197366%_)))))
                        (_%g197333197362%_ _%g197334197366%_))))
                (let ((_%clause197347197435%_
                       (reverse _%clause197346197392%_)))
                  ((lambda (_%L197439%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201978
                                              (lambda (_%g197454197459%_
                                                       _%g197455197462%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g197456197465%_ _%g197457197468%_)
                             (cons _%g197456197465%_ _%g197457197468%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201979 '() _%g197454197459%_)))
              _%g197455197462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201978
                                          '()
                                          _%L197439%_)))
                                 '())))
                   _%clause197347197435%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197342197385%_
                                           _%target197339197379%_
                                           '()))
                                        (_%g197333197362%_
                                         _%g197334197366%_)))))
                              (_%g197333197362%_ _%g197334197366%_))))
                      (_%g197333197362%_ _%g197334197366%_)))))
          (_%g197332197471%_ _%$stx197329%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx197477%_)
        (let* ((_%g197481197499%_
                (lambda (_%g197482197495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197482197495%_))))
               (_%g197480197554%_
                (lambda (_%g197482197503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197482197503%_))
                      (let ((_%e197485197506%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197482197503%_))))
                        (let ((_%hd197486197510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197485197506%_)))
                              (_%tl197487197513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197485197506%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197487197513%_))
                              (let ((_%e197488197516%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197487197513%_))))
                                (let ((_%hd197489197520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197488197516%_)))
                                      (_%tl197490197523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197488197516%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197490197523%_))
                                      (let ((_%e197491197526%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197490197523%_))))
                                        (let ((_%hd197492197530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197491197526%_)))
                                              (_%tl197493197533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197491197526%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197493197533%_))
                                              ((lambda (_%L197536%_
                                                        _%L197538%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197538%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197536%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197492197530%_
                                               _%hd197489197520%_)
                                              (_%g197481197499%_
                                               _%g197482197503%_))))
                                      (_%g197481197499%_ _%g197482197503%_))))
                              (_%g197481197499%_ _%g197482197503%_))))
                      (_%g197481197499%_ _%g197482197503%_)))))
          (_%g197480197554%_ _%$stx197477%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx197558%_)
        (let* ((_%g197562197580%_
                (lambda (_%g197563197576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197563197576%_))))
               (_%g197561197635%_
                (lambda (_%g197563197584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197563197584%_))
                      (let ((_%e197566197587%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197563197584%_))))
                        (let ((_%hd197567197591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197566197587%_)))
                              (_%tl197568197594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197566197587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197568197594%_))
                              (let ((_%e197569197597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197568197594%_))))
                                (let ((_%hd197570197601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197569197597%_)))
                                      (_%tl197571197604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197569197597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197571197604%_))
                                      (let ((_%e197572197607%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197571197604%_))))
                                        (let ((_%hd197573197611%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197572197607%_)))
                                              (_%tl197574197614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197572197607%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197574197614%_))
                                              ((lambda (_%L197617%_
                                                        _%L197619%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L197619%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L197617%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197573197611%_
                                               _%hd197570197601%_)
                                              (_%g197562197580%_
                                               _%g197563197584%_))))
                                      (_%g197562197580%_ _%g197563197584%_))))
                              (_%g197562197580%_ _%g197563197584%_))))
                      (_%g197562197580%_ _%g197563197584%_)))))
          (_%g197561197635%_ _%$stx197558%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx197639%_)
        (let* ((_%g197643197672%_
                (lambda (_%g197644197668%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197644197668%_))))
               (_%g197642197772%_
                (lambda (_%g197644197676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197644197676%_))
                      (let ((_%e197647197679%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197644197676%_))))
                        (let ((_%hd197648197683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197647197679%_)))
                              (_%tl197649197686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197647197679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197649197686%_))
                              (let ((_g201980_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197649197686%_
                                        '0))))
                                (begin
                                  (let ((_g201981_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201980_)
                                               (##vector-length _g201980_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201981_ 2)))
                                        (error "Context expects 2 values"
                                               _g201981_)))
                                  (let ((_%target197650197689%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201980_ 0)))
                                        (_%tl197652197692%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201980_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197652197692%_))
                                        (letrec ((_%loop197653197695%_
                                                  (lambda (_%hd197651197699%_
                                                           _%rule197657197702%_
                                                           _%proc197658197704%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197651197699%_))
                                                        (let ((_%e197654197707%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197651197699%_))))
                  (let ((_%lp-hd197655197711%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197654197707%_)))
                        (_%lp-tl197656197714%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197654197707%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197655197711%_))
                        (let ((_%e197661197717%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197655197711%_))))
                          (let ((_%hd197662197721%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197661197717%_)))
                                (_%tl197663197724%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197661197717%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197663197724%_))
                                (let ((_%e197664197727%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197663197724%_))))
                                  (let ((_%hd197665197731%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197664197727%_)))
                                        (_%tl197666197734%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197664197727%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197666197734%_))
                                        (_%loop197653197695%_
                                         _%lp-tl197656197714%_
                                         (cons _%hd197665197731%_
                                               _%rule197657197702%_)
                                         (cons _%hd197662197721%_
                                               _%proc197658197704%_))
                                        (_%g197643197672%_
                                         _%g197644197676%_))))
                                (_%g197643197672%_ _%g197644197676%_))))
                        (_%g197643197672%_ _%g197644197676%_))))
                (let ((_%rule197659197737%_ (reverse _%rule197657197702%_))
                      (_%proc197660197740%_ (reverse _%proc197658197704%_)))
                  ((lambda (_%L197743%_ _%L197745%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197743%_
                                _%L197745%_))
                             (let ((__tmp201982
                                    (lambda (_%g197760197764%_
                                             _%g197761197767%_
                                             _%g197762197769%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197761197767%_
                                                        (cons _%g197760197764%_
                                                              '())))
                                            _%g197762197769%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201982
                                '()
                                _%L197743%_
                                _%L197745%_)))))
                   _%rule197659197737%_
                   _%proc197660197740%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197653197695%_
                                           _%target197650197689%_
                                           '()
                                           '()))
                                        (_%g197643197672%_
                                         _%g197644197676%_)))))
                              (_%g197643197672%_ _%g197644197676%_))))
                      (_%g197643197672%_ _%g197644197676%_)))))
          (_%g197642197772%_ _%$stx197639%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197777%_)
        (let* ((_%g197781197799%_
                (lambda (_%g197782197795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197782197795%_))))
               (_%g197780197854%_
                (lambda (_%g197782197803%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197782197803%_))
                      (let ((_%e197785197806%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197782197803%_))))
                        (let ((_%hd197786197810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197785197806%_)))
                              (_%tl197787197813%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197785197806%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197787197813%_))
                              (let ((_%e197788197816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197787197813%_))))
                                (let ((_%hd197789197820%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197788197816%_)))
                                      (_%tl197790197823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197788197816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197790197823%_))
                                      (let ((_%e197791197826%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197790197823%_))))
                                        (let ((_%hd197792197830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197791197826%_)))
                                              (_%tl197793197833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197791197826%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197793197833%_))
                                              ((lambda (_%L197836%_
                                                        _%L197838%_)
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
                                                   (cons _%L197838%_ '()))
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
                 (cons _%L197836%_ '())))
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
                                   (cons _%L197838%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197792197830%_
                                               _%hd197789197820%_)
                                              (_%g197781197799%_
                                               _%g197782197803%_))))
                                      (_%g197781197799%_ _%g197782197803%_))))
                              (_%g197781197799%_ _%g197782197803%_))))
                      (_%g197781197799%_ _%g197782197803%_)))))
          (_%g197780197854%_ _%$stx197777%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197858%_)
        (let* ((_%__stx201462201463%_ _%$stx197858%_)
               (_%g197863197888%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201462201463%_)))))
          (let ((_%__kont201465201466%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201467201468%_
                 (lambda (_%L197935%_ _%L197937%_ _%L197938%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197938%_ (cons _%L197937%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197935%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201462201463%_))
                (let ((_%e197865197964%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201462201463%_))))
                  (let ((_%tl197867197971%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197865197964%_)))
                        (_%hd197866197968%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197865197964%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197867197971%_))
                        (_%__kont201465201466%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197867197971%_))
                            (let ((_%e197874197905%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197867197971%_))))
                              (let ((_%tl197876197912%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197874197905%_)))
                                    (_%hd197875197909%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197874197905%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197875197909%_))
                                    (let ((_%e197877197915%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197875197909%_))))
                                      (let ((_%tl197879197922%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197877197915%_)))
                                            (_%hd197878197919%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197877197915%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197879197922%_))
                                            (let ((_%e197880197925%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197879197922%_))))
                                              (let ((_%tl197882197932%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197880197925%_)))
                                                    (_%hd197881197929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197880197925%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197882197932%_))
                                                    (_%__kont201467201468%_
                                                     _%tl197876197912%_
                                                     _%hd197881197929%_
                                                     _%hd197878197919%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197863197888%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197863197888%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197863197888%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197863197888%_))))))
                (let () (declare (not safe)) (_%g197863197888%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197982%_)
        (let* ((_%__stx201506201507%_ _%$stx197982%_)
               (_%g197987198018%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201506201507%_)))))
          (let ((_%__kont201509201510%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont201511201512%_
                 (lambda (_%L198085%_ _%L198087%_ _%L198088%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L198088%_
                                           (let ((__tmp201983
                                                  (lambda (_%g198108198111%_
                                                           _%g198109198114%_)
                                                    (cons _%g198108198111%_
                                                          _%g198109198114%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201983
                                              '()
                                              _%L198087%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L198085%_)
                                     '()))))))
            (let ((_%__match201549201550%_
                   (lambda (_%e197995198025%_
                            _%hd197996198029%_
                            _%tl197997198032%_
                            _%e197998198035%_
                            _%hd197999198039%_
                            _%tl198000198042%_
                            _%e198001198045%_
                            _%hd198002198049%_
                            _%tl198003198052%_
                            _%__splice201513201514%_
                            _%target198004198055%_
                            _%tl198006198058%_)
                     (letrec ((_%loop198007198061%_
                               (lambda (_%hd198005198065%_ _%sig198011198068%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd198005198065%_))
                                     (let ((_%e198008198071%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd198005198065%_))))
                                       (let ((_%lp-tl198010198078%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e198008198071%_)))
                                             (_%lp-hd198009198075%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e198008198071%_))))
                                         (_%loop198007198061%_
                                          _%lp-tl198010198078%_
                                          (cons _%lp-hd198009198075%_
                                                _%sig198011198068%_))))
                                     (let ((_%sig198012198081%_
                                            (reverse _%sig198011198068%_)))
                                       (_%__kont201511201512%_
                                        _%tl198000198042%_
                                        _%sig198012198081%_
                                        _%hd198002198049%_))))))
                       (_%loop198007198061%_ _%target198004198055%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201506201507%_))
                  (let ((_%e197989198124%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201506201507%_))))
                    (let ((_%tl197991198131%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197989198124%_)))
                          (_%hd197990198128%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197989198124%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197991198131%_))
                          (_%__kont201509201510%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197991198131%_))
                              (let ((_%e197998198035%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197991198131%_))))
                                (let ((_%tl198000198042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197998198035%_)))
                                      (_%hd197999198039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197998198035%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197999198039%_))
                                      (let ((_%e198001198045%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197999198039%_))))
                                        (let ((_%tl198003198052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198001198045%_)))
                                              (_%hd198002198049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198001198045%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198003198052%_))
                                              (let ((_%__splice201513201514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198003198052%_
                                                        '0))))
                                                (let ((_%tl198006198058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201513201514%_
                                                          '1)))
                                                      (_%target198004198055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201513201514%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198006198058%_))
                                                      (_%__match201549201550%_
                                                       _%e197989198124%_
                                                       _%hd197990198128%_
                                                       _%tl197991198131%_
                                                       _%e197998198035%_
                                                       _%hd197999198039%_
                                                       _%tl198000198042%_
                                                       _%e198001198045%_
                                                       _%hd198002198049%_
                                                       _%tl198003198052%_
                                                       _%__splice201513201514%_
                                                       _%target198004198055%_
                                                       _%tl198006198058%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197987198018%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197987198018%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197987198018%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197987198018%_))))))
                  (let () (declare (not safe)) (_%g197987198018%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx198143%_)
        (let* ((_%__stx201552201553%_ _%$stx198143%_)
               (_%g198148198195%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201552201553%_)))))
          (let ((_%__kont201555201556%_
                 (lambda (_%L198357%_ _%L198359%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L198359%_
                               (let ((__tmp201984
                                      (lambda (_%g198379198382%_
                                               _%g198380198385%_)
                                        (cons _%g198379198382%_
                                              _%g198380198385%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201984 '() _%L198357%_))))))
                (_%__kont201559201560%_
                 (lambda (_%L198252%_ _%L198254%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L198254%_
                               (let ((__tmp201985
                                      (lambda (_%g198271198274%_
                                               _%g198272198277%_)
                                        (cons _%g198271198274%_
                                              _%g198272198277%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201985 '() _%L198252%_)))))))
            (let* ((_%__match201619201620%_
                    (lambda (_%e198175198202%_
                             _%hd198176198206%_
                             _%tl198177198209%_
                             _%e198178198212%_
                             _%hd198179198216%_
                             _%tl198180198219%_
                             _%__splice201561201562%_
                             _%target198181198222%_
                             _%tl198183198225%_)
                      (letrec ((_%loop198184198228%_
                                (lambda (_%hd198182198232%_
                                         _%sig198188198235%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198182198232%_))
                                      (let ((_%e198185198238%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198182198232%_))))
                                        (let ((_%lp-tl198187198245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198185198238%_)))
                                              (_%lp-hd198186198242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198185198238%_))))
                                          (_%loop198184198228%_
                                           _%lp-tl198187198245%_
                                           (cons _%lp-hd198186198242%_
                                                 _%sig198188198235%_))))
                                      (let ((_%sig198189198248%_
                                             (reverse _%sig198188198235%_)))
                                        (_%__kont201559201560%_
                                         _%sig198189198248%_
                                         _%hd198179198216%_))))))
                        (_%loop198184198228%_ _%target198181198222%_ '()))))
                   (_%__match201611201612%_
                    (lambda (_%e198175198202%_
                             _%hd198176198206%_
                             _%tl198177198209%_
                             _%e198178198212%_
                             _%hd198179198216%_
                             _%tl198180198219%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl198180198219%_))
                          (let ((_%__splice201561201562%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl198180198219%_
                                    '0))))
                            (let ((_%tl198183198225%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201561201562%_
                                      '1)))
                                  (_%target198181198222%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice201561201562%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198183198225%_))
                                  (_%__match201619201620%_
                                   _%e198175198202%_
                                   _%hd198176198206%_
                                   _%tl198177198209%_
                                   _%e198178198212%_
                                   _%hd198179198216%_
                                   _%tl198180198219%_
                                   _%__splice201561201562%_
                                   _%target198181198222%_
                                   _%tl198183198225%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g198148198195%_)))))
                          (let () (declare (not safe)) (_%g198148198195%_)))))
                   (_%__match201599201600%_
                    (lambda (_%e198152198287%_
                             _%hd198153198291%_
                             _%tl198154198294%_
                             _%e198155198297%_
                             _%hd198156198301%_
                             _%tl198157198304%_
                             _%e198158198307%_
                             _%hd198159198311%_
                             _%tl198160198314%_
                             _%e198161198317%_
                             _%hd198162198321%_
                             _%tl198163198324%_
                             _%__splice201557201558%_
                             _%target198164198327%_
                             _%tl198166198330%_)
                      (letrec ((_%loop198167198333%_
                                (lambda (_%hd198165198337%_
                                         _%sig198171198340%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd198165198337%_))
                                      (let ((_%e198168198343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd198165198337%_))))
                                        (let ((_%lp-tl198170198350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198168198343%_)))
                                              (_%lp-hd198169198347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198168198343%_))))
                                          (_%loop198167198333%_
                                           _%lp-tl198170198350%_
                                           (cons _%lp-hd198169198347%_
                                                 _%sig198171198340%_))))
                                      (let ((_%sig198172198353%_
                                             (reverse _%sig198171198340%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198160198314%_))
                                            (_%__kont201555201556%_
                                             _%sig198172198353%_
                                             _%hd198156198301%_)
                                            (_%__match201611201612%_
                                             _%e198152198287%_
                                             _%hd198153198291%_
                                             _%tl198154198294%_
                                             _%e198155198297%_
                                             _%hd198156198301%_
                                             _%tl198157198304%_)))))))
                        (_%loop198167198333%_ _%target198164198327%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201552201553%_))
                  (let ((_%e198152198287%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201552201553%_))))
                    (let ((_%tl198154198294%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198152198287%_)))
                          (_%hd198153198291%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198152198287%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198154198294%_))
                          (let ((_%e198155198297%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198154198294%_))))
                            (let ((_%tl198157198304%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198155198297%_)))
                                  (_%hd198156198301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198155198297%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198157198304%_))
                                  (let ((_%e198158198307%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198157198304%_))))
                                    (let ((_%tl198160198314%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198158198307%_)))
                                          (_%hd198159198311%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198158198307%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd198159198311%_))
                                          (let ((_%e198161198317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd198159198311%_))))
                                            (let ((_%tl198163198324%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e198161198317%_)))
                                                  (_%hd198162198321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e198161198317%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd198162198321%_))
                                                  (if (let ((__tmp201986
                                                             |gxc[1]#_g201987_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201986
                                                         _%hd198162198321%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl198163198324%_))
                                                          (let ((_%__splice201557201558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198163198324%_ '0))))
                    (let ((_%tl198166198330%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201557201558%_ '1)))
                          (_%target198164198327%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201557201558%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198166198330%_))
                          (_%__match201599201600%_
                           _%e198152198287%_
                           _%hd198153198291%_
                           _%tl198154198294%_
                           _%e198155198297%_
                           _%hd198156198301%_
                           _%tl198157198304%_
                           _%e198158198307%_
                           _%hd198159198311%_
                           _%tl198160198314%_
                           _%e198161198317%_
                           _%hd198162198321%_
                           _%tl198163198324%_
                           _%__splice201557201558%_
                           _%target198164198327%_
                           _%tl198166198330%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198157198304%_))
                              (let ((_%__splice201561201562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198157198304%_
                                        '0))))
                                (let ((_%tl198183198225%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201561201562%_
                                          '1)))
                                      (_%target198181198222%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice201561201562%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198183198225%_))
                                      (_%__match201619201620%_
                                       _%e198152198287%_
                                       _%hd198153198291%_
                                       _%tl198154198294%_
                                       _%e198155198297%_
                                       _%hd198156198301%_
                                       _%tl198157198304%_
                                       _%__splice201561201562%_
                                       _%target198181198222%_
                                       _%tl198183198225%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g198148198195%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g198148198195%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl198157198304%_))
                      (let ((_%__splice201561201562%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl198157198304%_
                                '0))))
                        (let ((_%tl198183198225%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201561201562%_ '1)))
                              (_%target198181198222%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice201561201562%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl198183198225%_))
                              (_%__match201619201620%_
                               _%e198152198287%_
                               _%hd198153198291%_
                               _%tl198154198294%_
                               _%e198155198297%_
                               _%hd198156198301%_
                               _%tl198157198304%_
                               _%__splice201561201562%_
                               _%target198181198222%_
                               _%tl198183198225%_)
                              (let ()
                                (declare (not safe))
                                (_%g198148198195%_)))))
                      (let () (declare (not safe)) (_%g198148198195%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl198157198304%_))
                  (let ((_%__splice201561201562%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl198157198304%_ '0))))
                    (let ((_%tl198183198225%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201561201562%_ '1)))
                          (_%target198181198222%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice201561201562%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl198183198225%_))
                          (_%__match201619201620%_
                           _%e198152198287%_
                           _%hd198153198291%_
                           _%tl198154198294%_
                           _%e198155198297%_
                           _%hd198156198301%_
                           _%tl198157198304%_
                           _%__splice201561201562%_
                           _%target198181198222%_
                           _%tl198183198225%_)
                          (let () (declare (not safe)) (_%g198148198195%_)))))
                  (let () (declare (not safe)) (_%g198148198195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl198157198304%_))
                                                      (let ((_%__splice201561201562%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl198157198304%_ '0))))
                (let ((_%tl198183198225%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201561201562%_ '1)))
                      (_%target198181198222%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice201561201562%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198183198225%_))
                      (_%__match201619201620%_
                       _%e198152198287%_
                       _%hd198153198291%_
                       _%tl198154198294%_
                       _%e198155198297%_
                       _%hd198156198301%_
                       _%tl198157198304%_
                       _%__splice201561201562%_
                       _%target198181198222%_
                       _%tl198183198225%_)
                      (let () (declare (not safe)) (_%g198148198195%_)))))
              (let () (declare (not safe)) (_%g198148198195%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl198157198304%_))
                                              (let ((_%__splice201561201562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl198157198304%_
                                                        '0))))
                                                (let ((_%tl198183198225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201561201562%_
                                                          '1)))
                                                      (_%target198181198222%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice201561201562%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198183198225%_))
                                                      (_%__match201619201620%_
                                                       _%e198152198287%_
                                                       _%hd198153198291%_
                                                       _%tl198154198294%_
                                                       _%e198155198297%_
                                                       _%hd198156198301%_
                                                       _%tl198157198304%_
                                                       _%__splice201561201562%_
                                                       _%target198181198222%_
                                                       _%tl198183198225%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g198148198195%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g198148198195%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198157198304%_))
                                      (let ((_%__splice201561201562%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198157198304%_
                                                '0))))
                                        (let ((_%tl198183198225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201561201562%_
                                                  '1)))
                                              (_%target198181198222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice201561201562%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198183198225%_))
                                              (_%__match201619201620%_
                                               _%e198152198287%_
                                               _%hd198153198291%_
                                               _%tl198154198294%_
                                               _%e198155198297%_
                                               _%hd198156198301%_
                                               _%tl198157198304%_
                                               _%__splice201561201562%_
                                               _%target198181198222%_
                                               _%tl198183198225%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g198148198195%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198148198195%_))))))
                          (let () (declare (not safe)) (_%g198148198195%_)))))
                  (let () (declare (not safe)) (_%g198148198195%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx199542%_ _%id199544%_)
        (let ((_%proc199548%_
               (let ((__tmp201988
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199544%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201988))))
          (if (procedure? _%proc199548%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx199542%_
                 _%id199544%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx199533%_ _%id199535%_)
        (let ((_%klass199539%_
               (let ((__tmp201989
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id199535%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201989))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass199539%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx199533%_
                 _%id199535%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198783%_ _%proc198785%_ _%sig198786%_)
        (letrec ((_%signature-arity198788%_
                  (lambda (_%args199465%_)
                    (let _%loop199468%_ ((_%rest199471%_ _%args199465%_)
                                         (_%count199473%_ '0))
                      (let* ((_%rest199474199485%_ _%rest199471%_)
                             (_%E199478199491%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest199474199485%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K199481199522%_
                               (lambda (_%rest199519%_)
                                 (_%loop199468%_
                                  _%rest199519%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count199473%_ '1)))))
                              (_%K199480199511%_ (lambda () _%count199473%_))
                              (_%K199479199499%_
                               (lambda () (cons _%count199473%_ '()))))
                          (let ((_%try-match199476199515%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest199474199485%_))
                                       (_%K199480199511%_)
                                       (_%K199479199499%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest199474199485%_))
                                (let* ((_%tl199483199526%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199474199485%_)))
                                       (_%rest199530%_ _%tl199483199526%_))
                                  (_%K199481199522%_ _%rest199530%_))
                                (_%try-match199476199515%_))))))))
                 (_%make-signature198790%_
                  (lambda (_%args199347%_
                           _%return199349%_
                           _%effect199350%_
                           _%unchecked199351%_)
                    (let ((__tmp201990
                           (lambda (_%g199352199354%_)
                             (|gxc[1]#verify-class!|
                              _%ctx198783%_
                              _%g199352199354%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201990 _%args199347%_))
                    (|gxc[1]#verify-class!| _%ctx198783%_ _%return199349%_)
                    (if _%unchecked199351%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx198783%_
                         _%unchecked199351%_)
                        '#!void)
                    (let ((_%arity199358%_
                           (_%signature-arity198788%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args199347%_)))))
                      (if _%effect199350%_
                          (let ((_%effect199361%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect199350%_))))
                            (if (and (list? _%effect199361%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect199361%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198783%_
                                   _%proc198785%_
                                   _%effect199361%_))))
                          '#!void)
                      (cons _%arity199358%_
                            (cons (let* ((_%g199364199387%_
                                          (lambda (_%g199365199383%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g199365199383%_))))
                                         (_%g199363199461%_
                                          (lambda (_%g199365199391%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g199365199391%_))
                                                (let ((_%e199370199394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g199365199391%_))))
                                                  (let ((_%hd199371199398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199370199394%_)))
                                                        (_%tl199372199401%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199370199394%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl199372199401%_))
                                                        (let ((_%e199373199404%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl199372199401%_))))
                  (let ((_%hd199374199408%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199373199404%_)))
                        (_%tl199375199411%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199373199404%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199375199411%_))
                        (let ((_%e199376199414%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199375199411%_))))
                          (let ((_%hd199377199418%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199376199414%_)))
                                (_%tl199378199421%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199376199414%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199378199421%_))
                                (let ((_%e199379199424%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199378199421%_))))
                                  (let ((_%hd199380199428%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199379199424%_)))
                                        (_%tl199381199431%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199379199424%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199381199431%_))
                                        ((lambda (_%L199434%_
                                                  _%L199436%_
                                                  _%L199437%_
                                                  _%L199438%_)
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
                           (cons _%L199438%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L199437%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L199436%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L199434%_ '()))
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
                                         _%hd199380199428%_
                                         _%hd199377199418%_
                                         _%hd199374199408%_
                                         _%hd199371199398%_)
                                        (_%g199364199387%_
                                         _%g199365199391%_))))
                                (_%g199364199387%_ _%g199365199391%_))))
                        (_%g199364199387%_ _%g199365199391%_))))
                (_%g199364199387%_ _%g199365199391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199364199387%_
                                                 _%g199365199391%_)))))
                                    (_%g199363199461%_
                                     (list _%args199347%_
                                           _%return199349%_
                                           _%effect199350%_
                                           _%unchecked199351%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx198783%_ _%proc198785%_)
          (let* ((_%__stx201630201631%_ _%sig198786%_)
                 (_%g198797198900%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201630201631%_)))))
            (let ((_%__kont201633201634%_
                   (lambda (_%L199328%_ _%L199330%_)
                     (_%make-signature198790%_
                      _%L199330%_
                      _%L199328%_
                      '#f
                      '#f)))
                  (_%__kont201635201636%_
                   (lambda (_%L199279%_ _%L199281%_ _%L199282%_)
                     (_%make-signature198790%_
                      _%L199282%_
                      _%L199281%_
                      _%L199279%_
                      '#f)))
                  (_%__kont201637201638%_
                   (lambda (_%L199203%_ _%L199205%_ _%L199206%_)
                     (_%make-signature198790%_
                      _%L199206%_
                      _%L199205%_
                      _%L199203%_
                      (let ((__tmp201991
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198785%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp201991)))))
                  (_%__kont201639201640%_
                   (lambda (_%L199109%_ _%L199111%_ _%L199112%_ _%L199113%_)
                     (_%make-signature198790%_
                      _%L199113%_
                      _%L199112%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L199109%_)))))
                  (_%__kont201641201642%_
                   (lambda (_%L199016%_ _%L199018%_)
                     (_%make-signature198790%_
                      _%L199018%_
                      _%L199016%_
                      '#f
                      (let ((__tmp201992
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc198785%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp201992)))))
                  (_%__kont201643201644%_
                   (lambda (_%L198951%_ _%L198953%_ _%L198954%_)
                     (_%make-signature198790%_
                      _%L198954%_
                      _%L198953%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L198951%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201630201631%_))
                  (let ((_%e198801199308%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx201630201631%_))))
                    (let ((_%tl198803199315%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198801199308%_)))
                          (_%hd198802199312%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198801199308%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198803199315%_))
                          (let ((_%e198804199318%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198803199315%_))))
                            (let ((_%tl198806199325%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198804199318%_)))
                                  (_%hd198805199322%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198804199318%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198806199325%_))
                                  (_%__kont201633201634%_
                                   _%hd198805199322%_
                                   _%hd198802199312%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198806199325%_))
                                      (let ((_%e198816199255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198806199325%_))))
                                        (let ((_%tl198818199262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198816199255%_)))
                                              (_%hd198817199259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198816199255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198817199259%_))
                                              (let ((_%e198819199265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198817199259%_))))
                                                (if (equal? _%e198819199265%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198818199262%_))
                                                        (let ((_%e198820199269%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198818199262%_))))
                  (let ((_%tl198822199276%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198820199269%_)))
                        (_%hd198821199273%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198820199269%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198822199276%_))
                        (_%__kont201635201636%_
                         _%hd198821199273%_
                         _%hd198805199322%_
                         _%hd198802199312%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198822199276%_))
                            (let ((_%e198839199189%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198822199276%_))))
                              (let ((_%tl198841199196%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198839199189%_)))
                                    (_%hd198840199193%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198839199189%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198840199193%_))
                                    (let ((_%e198842199199%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198840199193%_))))
                                      (if (equal? _%e198842199199%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198841199196%_))
                                              (_%__kont201637201638%_
                                               _%hd198821199273%_
                                               _%hd198805199322%_
                                               _%hd198802199312%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198841199196%_))
                                                  (let ((_%e198864199099%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198841199196%_))))
                                                    (let ((_%tl198866199106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198864199099%_)))
                                                          (_%hd198865199103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198864199099%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198866199106%_))
                                                          (_%__kont201639201640%_
                                                           _%hd198865199103%_
                                                           _%hd198821199273%_
                                                           _%hd198805199322%_
                                                           _%hd198802199312%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198797198900%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198797198900%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198797198900%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198797198900%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198797198900%_))))))
                (let () (declare (not safe)) (_%g198797198900%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198819199265%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198818199262%_))
                                                            (_%__kont201641201642%_
                                                             _%hd198805199322%_
                                                             _%hd198802199312%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198818199262%_))
                        (let ((_%e198892198941%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198818199262%_))))
                          (let ((_%tl198894198948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198892198941%_)))
                                (_%hd198893198945%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198892198941%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198894198948%_))
                                (_%__kont201643201644%_
                                 _%hd198893198945%_
                                 _%hd198805199322%_
                                 _%hd198802199312%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198797198900%_)))))
                        (let () (declare (not safe)) (_%g198797198900%_))))
                (let () (declare (not safe)) (_%g198797198900%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198797198900%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198797198900%_))))))
                          (let () (declare (not safe)) (_%g198797198900%_)))))
                  (let () (declare (not safe)) (_%g198797198900%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig198394%_)
        (let* ((_%g198397198477%_
                (lambda (_%g198398198473%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198398198473%_))))
               (_%g198396198779%_
                (lambda (_%g198398198481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198398198481%_))
                      (let ((_%e198404198484%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198398198481%_))))
                        (let ((_%hd198405198488%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198404198484%_)))
                              (_%tl198406198491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198404198484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198406198491%_))
                              (let ((_%e198407198494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198406198491%_))))
                                (let ((_%hd198408198498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198407198494%_)))
                                      (_%tl198409198501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198407198494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd198408198498%_))
                                      (let ((_%e198410198504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd198408198498%_))))
                                        (if (equal? _%e198410198504%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198409198501%_))
                                                (let ((_%e198411198508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198409198501%_))))
                                                  (let ((_%hd198412198512%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198411198508%_)))
                                                        (_%tl198413198515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198411198508%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198412198512%_))
                                                        (let ((_%e198414198518%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198412198512%_))))
                  (let ((_%hd198415198522%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198414198518%_)))
                        (_%tl198416198525%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198414198518%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd198415198522%_))
                        (if (let ((__tmp201993 |gxc[1]#_g201994_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201993
                               _%hd198415198522%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198416198525%_))
                                (let ((_%e198417198528%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198416198525%_))))
                                  (let ((_%hd198418198532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198417198528%_)))
                                        (_%tl198419198535%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198417198528%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198419198535%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl198413198515%_))
                                            (let ((_%e198420198538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl198413198515%_))))
                                              (let ((_%hd198421198542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198420198538%_)))
                                                    (_%tl198422198545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198420198538%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd198421198542%_))
                                                    (let ((_%e198423198548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd198421198542%_))))
                                                      (if (equal? _%e198423198548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198422198545%_))
                      (let ((_%e198424198552%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198422198545%_))))
                        (let ((_%hd198425198556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198424198552%_)))
                              (_%tl198426198559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198424198552%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd198425198556%_))
                              (let ((_%e198427198562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd198425198556%_))))
                                (let ((_%hd198428198566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198427198562%_)))
                                      (_%tl198429198569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198427198562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd198428198566%_))
                                      (if (let ((__tmp201995
                                                 |gxc[1]#_g201996_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201995
                                             _%hd198428198566%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198429198569%_))
                                              (let ((_%e198430198572%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198429198569%_))))
                                                (let ((_%hd198431198576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198430198572%_)))
                                                      (_%tl198432198579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198430198572%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198432198579%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl198426198559%_))
                                                          (let ((_%e198433198582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl198426198559%_))))
                    (let ((_%hd198434198586%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198433198582%_)))
                          (_%tl198435198589%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198433198582%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd198434198586%_))
                          (let ((_%e198436198592%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd198434198586%_))))
                            (if (equal? _%e198436198592%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl198435198589%_))
                                    (let ((_%e198437198596%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl198435198589%_))))
                                      (let ((_%hd198438198600%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198437198596%_)))
                                            (_%tl198439198603%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198437198596%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd198438198600%_))
                                            (let ((_%e198440198606%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd198438198600%_))))
                                              (let ((_%hd198441198610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e198440198606%_)))
                                                    (_%tl198442198613%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e198440198606%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd198441198610%_))
                                                    (if (let ((__tmp201997
                                                               |gxc[1]#_g201998_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201997
                                                           _%hd198441198610%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl198442198613%_))
                                                            (let ((_%e198443198616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl198442198613%_))))
                      (let ((_%hd198444198620%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198443198616%_)))
                            (_%tl198445198623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198443198616%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198445198623%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198439198603%_))
                                (let ((_%e198446198626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198439198603%_))))
                                  (let ((_%hd198447198630%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198446198626%_)))
                                        (_%tl198448198633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198446198626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd198447198630%_))
                                        (let ((_%e198449198636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd198447198630%_))))
                                          (if (equal? _%e198449198636%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198448198633%_))
                                                  (let ((_%e198450198640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198448198633%_))))
                                                    (let ((_%hd198451198644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198450198640%_)))
                                                          (_%tl198452198647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198450198640%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd198451198644%_))
                                                          (let ((_%e198453198650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd198451198644%_))))
                    (let ((_%hd198454198654%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198453198650%_)))
                          (_%tl198455198657%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198453198650%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd198454198654%_))
                          (if (let ((__tmp201999 |gxc[1]#_g202000_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201999
                                 _%hd198454198654%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl198455198657%_))
                                  (let ((_%e198456198660%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl198455198657%_))))
                                    (let ((_%hd198457198664%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e198456198660%_)))
                                          (_%tl198458198667%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e198456198660%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl198458198667%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198452198647%_))
                                              (let ((_%e198459198670%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198452198647%_))))
                                                (let ((_%hd198460198674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198459198670%_)))
                                                      (_%tl198461198677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198459198670%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd198460198674%_))
                                                      (let ((_%e198462198680%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd198460198674%_))))
                (if (equal? _%e198462198680%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198461198677%_))
                        (let ((_%e198463198684%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198461198677%_))))
                          (let ((_%hd198464198688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198463198684%_)))
                                (_%tl198465198691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198463198684%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd198464198688%_))
                                (let ((_%e198466198694%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd198464198688%_))))
                                  (let ((_%hd198467198698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198466198694%_)))
                                        (_%tl198468198701%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198466198694%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd198467198698%_))
                                        (if (let ((__tmp202001
                                                   |gxc[1]#_g202002_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp202001
                                               _%hd198467198698%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198468198701%_))
                                                (let ((_%e198469198704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl198468198701%_))))
                                                  (let ((_%hd198470198708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198469198704%_)))
                                                        (_%tl198471198711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198469198704%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198471198711%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198465198691%_))
                                                            ((lambda (_%L198714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L198716%_
                              _%L198717%_
                              _%L198718%_
                              _%L198719%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L198716%_))
                           (cons _%L198716%_
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
                       (cons _%L198718%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198714%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd198470198708%_
                     _%hd198457198664%_
                     _%hd198444198620%_
                     _%hd198431198576%_
                     _%hd198418198532%_)
                    (_%g198397198477%_ _%g198398198481%_))
                (_%g198397198477%_ _%g198398198481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198397198477%_
                                                 _%g198398198481%_))
                                            (_%g198397198477%_
                                             _%g198398198481%_))
                                        (_%g198397198477%_
                                         _%g198398198481%_))))
                                (_%g198397198477%_ _%g198398198481%_))))
                        (_%g198397198477%_ _%g198398198481%_))
                    (_%g198397198477%_ _%g198398198481%_)))
              (_%g198397198477%_ _%g198398198481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198397198477%_
                                               _%g198398198481%_))
                                          (_%g198397198477%_
                                           _%g198398198481%_))))
                                  (_%g198397198477%_ _%g198398198481%_))
                              (_%g198397198477%_ _%g198398198481%_))
                          (_%g198397198477%_ _%g198398198481%_))))
                  (_%g198397198477%_ _%g198398198481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g198397198477%_
                                                   _%g198398198481%_))
                                              (_%g198397198477%_
                                               _%g198398198481%_)))
                                        (_%g198397198477%_
                                         _%g198398198481%_))))
                                (_%g198397198477%_ _%g198398198481%_))
                            (_%g198397198477%_ _%g198398198481%_))))
                    (_%g198397198477%_ _%g198398198481%_))
                (_%g198397198477%_ _%g198398198481%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198397198477%_
                                                     _%g198398198481%_))))
                                            (_%g198397198477%_
                                             _%g198398198481%_))))
                                    (_%g198397198477%_ _%g198398198481%_))
                                (_%g198397198477%_ _%g198398198481%_)))
                          (_%g198397198477%_ _%g198398198481%_))))
                  (_%g198397198477%_ _%g198398198481%_))
              (_%g198397198477%_ _%g198398198481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198397198477%_
                                               _%g198398198481%_))
                                          (_%g198397198477%_
                                           _%g198398198481%_))
                                      (_%g198397198477%_ _%g198398198481%_))))
                              (_%g198397198477%_ _%g198398198481%_))))
                      (_%g198397198477%_ _%g198398198481%_))
                  (_%g198397198477%_ _%g198398198481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g198397198477%_
                                                     _%g198398198481%_))))
                                            (_%g198397198477%_
                                             _%g198398198481%_))
                                        (_%g198397198477%_
                                         _%g198398198481%_))))
                                (_%g198397198477%_ _%g198398198481%_))
                            (_%g198397198477%_ _%g198398198481%_))
                        (_%g198397198477%_ _%g198398198481%_))))
                (_%g198397198477%_ _%g198398198481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g198397198477%_
                                                 _%g198398198481%_))
                                            (_%g198397198477%_
                                             _%g198398198481%_)))
                                      (_%g198397198477%_ _%g198398198481%_))))
                              (_%g198397198477%_ _%g198398198481%_))))
                      (_%g198397198477%_ _%g198398198481%_)))))
          (_%g198396198779%_ _%sig198394%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx199551%_)
        (let* ((_%g199554199572%_
                (lambda (_%g199555199568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199555199568%_))))
               (_%g199553199627%_
                (lambda (_%g199555199576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199555199576%_))
                      (let ((_%e199558199579%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199555199576%_))))
                        (let ((_%hd199559199583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199558199579%_)))
                              (_%tl199560199586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199558199579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199560199586%_))
                              (let ((_%e199561199589%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199560199586%_))))
                                (let ((_%hd199562199593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199561199589%_)))
                                      (_%tl199563199596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199561199589%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199563199596%_))
                                      (let ((_%e199564199599%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199563199596%_))))
                                        (let ((_%hd199565199603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199564199599%_)))
                                              (_%tl199566199606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199564199599%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199566199606%_))
                                              ((lambda (_%L199609%_
                                                        _%L199611%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199611%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L199609%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx199551%_
                                                        _%L199611%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx199551%_
                                                        _%L199609%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199611%_
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
                                                   (cons _%L199609%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199554199572%_
                                                      _%g199555199576%_)))
                                               _%hd199565199603%_
                                               _%hd199562199593%_)
                                              (_%g199554199572%_
                                               _%g199555199576%_))))
                                      (_%g199554199572%_ _%g199555199576%_))))
                              (_%g199554199572%_ _%g199555199576%_))))
                      (_%g199554199572%_ _%g199555199576%_)))))
          (_%g199553199627%_ _%stx199551%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx199631%_)
        (let* ((_%g199634199658%_
                (lambda (_%g199635199654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199635199654%_))))
               (_%g199633199941%_
                (lambda (_%g199635199662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199635199662%_))
                      (let ((_%e199638199665%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199635199662%_))))
                        (let ((_%hd199639199669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199638199665%_)))
                              (_%tl199640199672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199638199665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199640199672%_))
                              (let ((_%e199641199675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199640199672%_))))
                                (let ((_%hd199642199679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199641199675%_)))
                                      (_%tl199643199682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199641199675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199643199682%_))
                                      (let ((_g202003_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199643199682%_
                                                '0))))
                                        (begin
                                          (let ((_g202004_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202003_)
                                                       (##vector-length
                                                        _g202003_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202004_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202004_)))
                                          (let ((_%target199644199685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202003_ 0)))
                                                (_%tl199646199688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202003_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199646199688%_))
                                                (letrec ((_%loop199647199691%_
                                                          (lambda (_%hd199645199695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature199651199698%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199645199695%_))
                        (let ((_%e199648199701%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199645199695%_))))
                          (let ((_%lp-hd199649199705%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199648199701%_)))
                                (_%lp-tl199650199708%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199648199701%_))))
                            (_%loop199647199691%_
                             _%lp-tl199650199708%_
                             (cons _%lp-hd199649199705%_
                                   _%signature199651199698%_))))
                        (let ((_%signature199652199711%_
                               (reverse _%signature199651199698%_)))
                          ((lambda (_%L199715%_ _%L199717%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199717%_))
                                 (let* ((_%g199735199750%_
                                         (lambda (_%g199736199746%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199736199746%_))))
                                        (_%g199734199929%_
                                         (lambda (_%g199736199754%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g199736199754%_))
                                               (let ((_%e199739199757%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g199736199754%_))))
                                                 (let ((_%hd199740199761%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e199739199757%_)))
                                                       (_%tl199741199764%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e199739199757%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199741199764%_))
                                                       (let ((_%e199742199767%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199741199764%_))))
                 (let ((_%hd199743199771%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199742199767%_)))
                       (_%tl199744199774%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199742199767%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl199744199774%_))
                       ((lambda (_%L199777%_ _%L199779%_)
                          (let* ((_%g199795199803%_
                                  (lambda (_%g199796199799%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g199796199799%_))))
                                 (_%g199794199925%_
                                  (lambda (_%g199796199807%_)
                                    ((lambda (_%L199810%_)
                                       (let* ((_%unchecked199823%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L199777%_))
                                              (_%g199826199834%_
                                               (lambda (_%g199827199830%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g199827199830%_))))
                                              (_%g199825199857%_
                                               (lambda (_%g199827199838%_)
                                                 ((lambda (_%L199841%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L199810%_
                                                                (cons _%L199841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g199827199838%_))))
                                         (_%g199825199857%_
                                          (if _%unchecked199823%_
                                              (let* ((_%g199861199876%_
                                                      (lambda (_%g199862199872%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g199862199872%_))))
                                                     (_%g199860199921%_
                                                      (lambda (_%g199862199880%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g199862199880%_))
                                                            (let ((_%e199865199883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g199862199880%_))))
                      (let ((_%hd199866199887%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199865199883%_)))
                            (_%tl199867199890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199865199883%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199867199890%_))
                            (let ((_%e199868199893%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl199867199890%_))))
                              (let ((_%hd199869199897%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199868199893%_)))
                                    (_%tl199870199900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199868199893%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199870199900%_))
                                    ((lambda (_%L199903%_ _%L199905%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L199905%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199779%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L199903%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd199869199897%_
                                     _%hd199866199887%_)
                                    (_%g199861199876%_ _%g199862199880%_))))
                            (_%g199861199876%_ _%g199862199880%_))))
                    (_%g199861199876%_ _%g199862199880%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199860199921%_
                                                 _%unchecked199823%_))
                                              '(begin)))))
                                     _%g199796199807%_))))
                            (_%g199794199925%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L199717%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L199779%_ '()))
                   (cons '#f (cons 'signature: (cons _%L199777%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd199743199771%_
                        _%hd199740199761%_)
                       (_%g199735199750%_ _%g199736199754%_))))
               (_%g199735199750%_ _%g199736199754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199735199750%_
                                                _%g199736199754%_)))))
                                   (_%g199734199929%_
                                    (|gxc[1]#parse-signature|
                                     _%stx199631%_
                                     _%L199717%_
                                     (let ((__tmp202005
                                            (lambda (_%g199932199935%_
                                                     _%g199933199938%_)
                                              (cons _%g199932199935%_
                                                    _%g199933199938%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp202005
                                        '()
                                        _%L199715%_)))))
                                 (_%g199634199658%_ _%g199635199662%_)))
                           _%signature199652199711%_
                           _%hd199642199679%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199647199691%_
                                                   _%target199644199685%_
                                                   '()))
                                                (_%g199634199658%_
                                                 _%g199635199662%_)))))
                                      (_%g199634199658%_ _%g199635199662%_))))
                              (_%g199634199658%_ _%g199635199662%_))))
                      (_%g199634199658%_ _%g199635199662%_)))))
          (_%g199633199941%_ _%stx199631%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199946%_)
        (let* ((_%g199949199973%_
                (lambda (_%g199950199969%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199950199969%_))))
               (_%g199948200856%_
                (lambda (_%g199950199977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199950199977%_))
                      (let ((_%e199953199980%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199950199977%_))))
                        (let ((_%hd199954199984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199953199980%_)))
                              (_%tl199955199987%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199953199980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199955199987%_))
                              (let ((_%e199956199990%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199955199987%_))))
                                (let ((_%hd199957199994%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199956199990%_)))
                                      (_%tl199958199997%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199956199990%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199958199997%_))
                                      (let ((_g202006_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199958199997%_
                                                '0))))
                                        (begin
                                          (let ((_g202007_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g202006_)
                                                       (##vector-length
                                                        _g202006_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g202007_ 2)))
                                                (error "Context expects 2 values"
                                                       _g202007_)))
                                          (let ((_%target199959200000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g202006_ 0)))
                                                (_%tl199961200003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g202006_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199961200003%_))
                                                (letrec ((_%loop199962200006%_
                                                          (lambda (_%hd199960200010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199966200013%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199960200010%_))
                        (let ((_%e199963200016%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199960200010%_))))
                          (let ((_%lp-hd199964200020%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199963200016%_)))
                                (_%lp-tl199965200023%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199963200016%_))))
                            (_%loop199962200006%_
                             _%lp-tl199965200023%_
                             (cons _%lp-hd199964200020%_
                                   _%case-signature199966200013%_))))
                        (let ((_%case-signature199967200026%_
                               (reverse _%case-signature199966200013%_)))
                          ((lambda (_%L200030%_ _%L200032%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L200032%_))
                                 (let* ((_%signatures200063%_
                                         (map (lambda (_%g200049200051%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx199946%_
                                                 _%L200032%_
                                                 _%g200049200051%_))
                                              (let ((__tmp202008
                                                     (lambda (_%g200054200057%_
                                                              _%g200055200060%_)
                                                       (cons _%g200054200057%_
                                                             _%g200055200060%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp202008
                                                 '()
                                                 _%L200030%_))))
                                        (_%g200066200092%_
                                         (lambda (_%g200067200088%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200067200088%_))))
                                        (_%g200065200852%_
                                         (lambda (_%g200067200096%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g200067200096%_))
                                               (let ((_g202009_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g200067200096%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g202010_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g202009_)
                        (##vector-length _g202009_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g202010_ 2)))
                 (error "Context expects 2 values" _g202010_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target200070200099%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202009_
                                                             0)))
                                                         (_%tl200072200102%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g202009_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200072200102%_))
                                                         (letrec ((_%loop200073200105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd200071200109%_
                                    _%sig200077200112%_
                                    _%arity200078200114%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200071200109%_))
                                 (let ((_%e200074200117%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200071200109%_))))
                                   (let ((_%lp-hd200075200121%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200074200117%_)))
                                         (_%lp-tl200076200124%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200074200117%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd200075200121%_))
                                         (let ((_%e200081200127%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd200075200121%_))))
                                           (let ((_%hd200082200131%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200081200127%_)))
                                                 (_%tl200083200134%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200081200127%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200083200134%_))
                                                 (let ((_%e200084200137%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200083200134%_))))
                                                   (let ((_%hd200085200141%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200084200137%_)))
                                                         (_%tl200086200144%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200084200137%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200086200144%_))
                                                         (_%loop200073200105%_
                                                          _%lp-tl200076200124%_
                                                          (cons _%hd200085200141%_
                                                                _%sig200077200112%_)
                                                          (cons _%hd200082200131%_
                                                                _%arity200078200114%_))
                                                         (_%g200066200092%_
                                                          _%g200067200096%_))))
                                                 (_%g200066200092%_
                                                  _%g200067200096%_))))
                                         (_%g200066200092%_
                                          _%g200067200096%_))))
                                 (let ((_%sig200079200147%_
                                        (reverse _%sig200077200112%_))
                                       (_%arity200080200150%_
                                        (reverse _%arity200078200114%_)))
                                   ((lambda (_%L200153%_ _%L200155%_)
                                      (let* ((_%g200172200180%_
                                              (lambda (_%g200173200176%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g200173200176%_))))
                                             (_%g200171200837%_
                                              (lambda (_%g200173200184%_)
                                                ((lambda (_%L200187%_)
                                                   (let* ((_%g200200200208%_
                                                           (lambda (_%g200201200204%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g200201200204%_))))
                  (_%g200199200230%_
                   (lambda (_%g200201200212%_)
                     ((lambda (_%L200215%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L200187%_ (cons _%L200215%_ '()))))
                      _%g200201200212%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200199200230%_
                                                      (let ((_g202011_
                                                             (let _%loop200234%_ ((_%rest200237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures200063%_)
                                          (_%unchecked-proc200239%_ '#f)
                                          (_%unchecked-clauses200240%_ '()))
                       (let* ((_%rest200241200249%_ _%rest200237%_)
                              (_%else200243200261%_
                               (lambda ()
                                 (values _%unchecked-proc200239%_
                                         (reverse!
                                          _%unchecked-clauses200240%_))))
                              (_%K200245200702%_
                               (lambda (_%rest200265%_ _%hd200267%_)
                                 (let* ((_%g200269200356%_
                                         (lambda (_%g200270200352%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g200270200352%_))))
                                        (_%g200268200698%_
                                         (lambda (_%g200270200360%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g200270200360%_))
                                               (let ((_%e200277200363%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g200270200360%_))))
                                                 (let ((_%hd200278200367%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200277200363%_)))
                                                       (_%tl200279200370%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200277200363%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200279200370%_))
                                                       (let ((_%e200280200373%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl200279200370%_))))
                 (let ((_%hd200281200377%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200280200373%_)))
                       (_%tl200282200380%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200280200373%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd200281200377%_))
                       (let ((_%e200283200383%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd200281200377%_))))
                         (let ((_%hd200284200387%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200283200383%_)))
                               (_%tl200285200390%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200283200383%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl200285200390%_))
                               (let ((_%e200286200393%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl200285200390%_))))
                                 (let ((_%hd200287200397%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200286200393%_)))
                                       (_%tl200288200400%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200286200393%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd200287200397%_))
                                       (let ((_%e200289200403%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200287200397%_))))
                                         (if (equal? _%e200289200403%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200288200400%_))
                                                 (let ((_%e200290200407%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200288200400%_))))
                                                   (let ((_%hd200291200411%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200290200407%_)))
                                                         (_%tl200292200414%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200290200407%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd200291200411%_))
                                                         (let ((_%e200293200417%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd200291200411%_))))
                   (let ((_%hd200294200421%_
                          (let ()
                            (declare (not safe))
                            (##car _%e200293200417%_)))
                         (_%tl200295200424%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e200293200417%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd200294200421%_))
                         (if (let ((__tmp202013 |gxc[1]#_g202014_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp202013
                                _%hd200294200421%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200295200424%_))
                                 (let ((_%e200296200427%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200295200424%_))))
                                   (let ((_%hd200297200431%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200296200427%_)))
                                         (_%tl200298200434%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200296200427%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl200298200434%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200292200414%_))
                                             (let ((_%e200299200437%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl200292200414%_))))
                                               (let ((_%hd200300200441%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200299200437%_)))
                                                     (_%tl200301200444%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200299200437%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd200300200441%_))
                                                     (let ((_%e200302200447%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd200300200441%_))))
                                                       (if (equal? _%e200302200447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl200301200444%_))
                       (let ((_%e200303200451%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl200301200444%_))))
                         (let ((_%hd200304200455%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e200303200451%_)))
                               (_%tl200305200458%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e200303200451%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd200304200455%_))
                               (let ((_%e200306200461%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd200304200455%_))))
                                 (let ((_%hd200307200465%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e200306200461%_)))
                                       (_%tl200308200468%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e200306200461%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd200307200465%_))
                                       (if (let ((__tmp202015
                                                  |gxc[1]#_g202016_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp202015
                                              _%hd200307200465%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200308200468%_))
                                               (let ((_%e200309200471%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200308200468%_))))
                                                 (let ((_%hd200310200475%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200309200471%_)))
                                                       (_%tl200311200478%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200309200471%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl200311200478%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200305200458%_))
                                                           (let ((_%e200312200481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl200305200458%_))))
                     (let ((_%hd200313200485%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200312200481%_)))
                           (_%tl200314200488%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200312200481%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd200313200485%_))
                           (let ((_%e200315200491%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd200313200485%_))))
                             (if (equal? _%e200315200491%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl200314200488%_))
                                     (let ((_%e200316200495%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl200314200488%_))))
                                       (let ((_%hd200317200499%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200316200495%_)))
                                             (_%tl200318200502%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200316200495%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd200317200499%_))
                                             (let ((_%e200319200505%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd200317200499%_))))
                                               (let ((_%hd200320200509%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200319200505%_)))
                                                     (_%tl200321200512%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200319200505%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200320200509%_))
                                                     (if (let ((__tmp202017
                                                                |gxc[1]#_g202018_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp202017
                                                            _%hd200320200509%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200321200512%_))
                     (let ((_%e200322200515%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl200321200512%_))))
                       (let ((_%hd200323200519%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200322200515%_)))
                             (_%tl200324200522%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200322200515%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200324200522%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl200318200502%_))
                                 (let ((_%e200325200525%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl200318200502%_))))
                                   (let ((_%hd200326200529%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200325200525%_)))
                                         (_%tl200327200532%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200325200525%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd200326200529%_))
                                         (let ((_%e200328200535%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200326200529%_))))
                                           (if (equal? _%e200328200535%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl200327200532%_))
                                                   (let ((_%e200329200539%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl200327200532%_))))
                                                     (let ((_%hd200330200543%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200329200539%_)))
                                                           (_%tl200331200546%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200329200539%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd200330200543%_))
                                                           (let ((_%e200332200549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd200330200543%_))))
                     (let ((_%hd200333200553%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200332200549%_)))
                           (_%tl200334200556%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200332200549%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd200333200553%_))
                           (if (let ((__tmp202019 |gxc[1]#_g202020_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp202019
                                  _%hd200333200553%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl200334200556%_))
                                   (let ((_%e200335200559%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl200334200556%_))))
                                     (let ((_%hd200336200563%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e200335200559%_)))
                                           (_%tl200337200566%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e200335200559%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl200337200566%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl200331200546%_))
                                               (let ((_%e200338200569%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl200331200546%_))))
                                                 (let ((_%hd200339200573%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e200338200569%_)))
                                                       (_%tl200340200576%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e200338200569%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd200339200573%_))
                                                       (let ((_%e200341200579%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd200339200573%_))))
                 (if (equal? _%e200341200579%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200340200576%_))
                         (let ((_%e200342200583%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl200340200576%_))))
                           (let ((_%hd200343200587%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200342200583%_)))
                                 (_%tl200344200590%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200342200583%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd200343200587%_))
                                 (let ((_%e200345200593%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd200343200587%_))))
                                   (let ((_%hd200346200597%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e200345200593%_)))
                                         (_%tl200347200600%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e200345200593%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd200346200597%_))
                                         (if (let ((__tmp202021
                                                    |gxc[1]#_g202022_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp202021
                                                _%hd200346200597%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl200347200600%_))
                                                 (let ((_%e200348200603%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl200347200600%_))))
                                                   (let ((_%hd200349200607%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e200348200603%_)))
                                                         (_%tl200350200610%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e200348200603%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl200350200610%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl200344200590%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200282200380%_))
                         ((lambda (_%L200613%_
                                   _%L200615%_
                                   _%L200616%_
                                   _%L200617%_
                                   _%L200618%_
                                   _%L200619%_)
                            (let ((_%clause200690%_
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
                                                     (cons _%L200619%_ '()))
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
                                                 (cons _%L200617%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200613%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked200692%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L200615%_))))
                              (_%loop200234%_
                               _%rest200265%_
                               (let ((_%$e200694%_ _%unchecked200692%_))
                                 (if _%$e200694%_
                                     _%$e200694%_
                                     _%unchecked-proc200239%_))
                               (cons _%clause200690%_
                                     _%unchecked-clauses200240%_))))
                          _%hd200349200607%_
                          _%hd200336200563%_
                          _%hd200323200519%_
                          _%hd200310200475%_
                          _%hd200297200431%_
                          _%hd200278200367%_)
                         (_%g200269200356%_ _%g200270200360%_))
                     (_%g200269200356%_ _%g200270200360%_))
                 (_%g200269200356%_ _%g200270200360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200269200356%_
                                                  _%g200270200360%_))
                                             (_%g200269200356%_
                                              _%g200270200360%_))
                                         (_%g200269200356%_
                                          _%g200270200360%_))))
                                 (_%g200269200356%_ _%g200270200360%_))))
                         (_%g200269200356%_ _%g200270200360%_))
                     (_%g200269200356%_ _%g200270200360%_)))
               (_%g200269200356%_ _%g200270200360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200269200356%_
                                                _%g200270200360%_))
                                           (_%g200269200356%_
                                            _%g200270200360%_))))
                                   (_%g200269200356%_ _%g200270200360%_))
                               (_%g200269200356%_ _%g200270200360%_))
                           (_%g200269200356%_ _%g200270200360%_))))
                   (_%g200269200356%_ _%g200270200360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g200269200356%_
                                                    _%g200270200360%_))
                                               (_%g200269200356%_
                                                _%g200270200360%_)))
                                         (_%g200269200356%_
                                          _%g200270200360%_))))
                                 (_%g200269200356%_ _%g200270200360%_))
                             (_%g200269200356%_ _%g200270200360%_))))
                     (_%g200269200356%_ _%g200270200360%_))
                 (_%g200269200356%_ _%g200270200360%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200269200356%_
                                                      _%g200270200360%_))))
                                             (_%g200269200356%_
                                              _%g200270200360%_))))
                                     (_%g200269200356%_ _%g200270200360%_))
                                 (_%g200269200356%_ _%g200270200360%_)))
                           (_%g200269200356%_ _%g200270200360%_))))
                   (_%g200269200356%_ _%g200270200360%_))
               (_%g200269200356%_ _%g200270200360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200269200356%_
                                                _%g200270200360%_))
                                           (_%g200269200356%_
                                            _%g200270200360%_))
                                       (_%g200269200356%_ _%g200270200360%_))))
                               (_%g200269200356%_ _%g200270200360%_))))
                       (_%g200269200356%_ _%g200270200360%_))
                   (_%g200269200356%_ _%g200270200360%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g200269200356%_
                                                      _%g200270200360%_))))
                                             (_%g200269200356%_
                                              _%g200270200360%_))
                                         (_%g200269200356%_
                                          _%g200270200360%_))))
                                 (_%g200269200356%_ _%g200270200360%_))
                             (_%g200269200356%_ _%g200270200360%_))
                         (_%g200269200356%_ _%g200270200360%_))))
                 (_%g200269200356%_ _%g200270200360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g200269200356%_
                                                  _%g200270200360%_))
                                             (_%g200269200356%_
                                              _%g200270200360%_)))
                                       (_%g200269200356%_ _%g200270200360%_))))
                               (_%g200269200356%_ _%g200270200360%_))))
                       (_%g200269200356%_ _%g200270200360%_))))
               (_%g200269200356%_ _%g200270200360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200269200356%_
                                                _%g200270200360%_)))))
                                   (_%g200268200698%_ _%hd200267%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest200241200249%_))
                             (let ((_%hd200246200706%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest200241200249%_)))
                                   (_%tl200247200709%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest200241200249%_))))
                               (let* ((_%hd200712%_ _%hd200246200706%_)
                                      (_%rest200715%_ _%tl200247200709%_))
                                 (_%K200245200702%_
                                  _%rest200715%_
                                  _%hd200712%_)))
                             (_%else200243200261%_))))))
                (begin
                  (let ((_g202012_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202011_)
                               (##vector-length _g202011_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202012_ 2)))
                        (error "Context expects 2 values" _g202012_)))
                  (let ((_%unchecked-proc200718%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202011_ 0)))
                        (_%unchecked-clauses200720%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202011_ 1))))
                    (if _%unchecked-proc200718%_
                        (let* ((_%g200722200746%_
                                (lambda (_%g200723200742%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g200723200742%_))))
                               (_%g200721200833%_
                                (lambda (_%g200723200750%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g200723200750%_))
                                      (let ((_%e200726200753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g200723200750%_))))
                                        (let ((_%hd200727200757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200726200753%_)))
                                              (_%tl200728200760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200726200753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200728200760%_))
                                              (let ((_%e200729200763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200728200760%_))))
                                                (let ((_%hd200730200767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200729200763%_)))
                                                      (_%tl200731200770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200729200763%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd200730200767%_))
                                                      (let ((_g202023_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd200730200767%_ '0))))
                (begin
                  (let ((_g202024_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g202023_)
                               (##vector-length _g202023_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g202024_ 2)))
                        (error "Context expects 2 values" _g202024_)))
                  (let ((_%target200732200773%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202023_ 0)))
                        (_%tl200734200776%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g202023_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200734200776%_))
                        (letrec ((_%loop200735200779%_
                                  (lambda (_%hd200733200783%_
                                           _%clause200739200786%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200733200783%_))
                                        (let ((_%e200736200789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd200733200783%_))))
                                          (let ((_%lp-hd200737200793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200736200789%_)))
                                                (_%lp-tl200738200796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200736200789%_))))
                                            (_%loop200735200779%_
                                             _%lp-tl200738200796%_
                                             (cons _%lp-hd200737200793%_
                                                   _%clause200739200786%_))))
                                        (let ((_%clause200740200799%_
                                               (reverse _%clause200739200786%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200731200770%_))
                                              ((lambda (_%L200803%_
                                                        _%L200805%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L200805%_
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
                                             (let ((__tmp202025
                                                    (lambda (_%g200824200827%_
                                                             _%g200825200830%_)
                                                      (cons _%g200824200827%_
                                                            _%g200825200830%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp202025
                                                '()
                                                _%L200803%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause200740200799%_
                                               _%hd200727200757%_)
                                              (_%g200722200746%_
                                               _%g200723200750%_)))))))
                          (_%loop200735200779%_ _%target200732200773%_ '()))
                        (_%g200722200746%_ _%g200723200750%_)))))
              (_%g200722200746%_ _%g200723200750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200722200746%_
                                               _%g200723200750%_))))
                                      (_%g200722200746%_ _%g200723200750%_)))))
                          (_%g200721200833%_
                           (list _%unchecked-proc200718%_
                                 _%unchecked-clauses200720%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g200173200184%_))))
                                        (_%g200171200837%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L200032%_
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
                                          _%L200153%_
                                          _%L200155%_))
                                       (let ((__tmp202026
                                              (lambda (_%g200840200844%_
                                                       _%g200841200847%_
                                                       _%g200842200849%_)
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
                                (cons _%g200841200847%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g200840200844%_ '())))))
              _%g200842200849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp202026
                                          '()
                                          _%L200153%_
                                          _%L200155%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig200079200147%_
                                    _%arity200080200150%_))))))
                   (_%loop200073200105%_ _%target200070200099%_ '() '()))
                 (_%g200066200092%_ _%g200067200096%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g200066200092%_
                                                _%g200067200096%_)))))
                                   (_%g200065200852%_ _%signatures200063%_))
                                 (_%g199949199973%_ _%g199950199977%_)))
                           _%case-signature199967200026%_
                           _%hd199957199994%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199962200006%_
                                                   _%target199959200000%_
                                                   '()))
                                                (_%g199949199973%_
                                                 _%g199950199977%_)))))
                                      (_%g199949199973%_ _%g199950199977%_))))
                              (_%g199949199973%_ _%g199950199977%_))))
                      (_%g199949199973%_ _%g199950199977%_)))))
          (_%g199948200856%_ _%stx199946%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200864%_)
        (let* ((_%__stx201846201847%_ _%$stx200864%_)
               (_%g200870200930%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201846201847%_)))))
          (let ((_%__kont201849201850%_
                 (lambda (_%L201152%_ _%L201154%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201154%_ '()))
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
                                                       (cons _%L201154%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201152%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201851201852%_
                 (lambda (_%L201077%_ _%L201079%_ _%L201080%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201080%_ '()))
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
                                                       (cons _%L201080%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L201079%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201077%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201853201854%_
                 (lambda (_%L200991%_ _%L200993%_ _%L200994%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200994%_ '()))
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
                                                       (cons _%L200994%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200993%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200991%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201846201847%_))
                (let ((_%e200874201108%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201846201847%_))))
                  (let ((_%tl200876201115%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200874201108%_)))
                        (_%hd200875201112%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200874201108%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200876201115%_))
                        (let ((_%e200877201118%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200876201115%_))))
                          (let ((_%tl200879201125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200877201118%_)))
                                (_%hd200878201122%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200877201118%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200878201122%_))
                                (let ((_%e200880201128%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200878201122%_))))
                                  (if (equal? _%e200880201128%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200879201125%_))
                                          (let ((_%e200881201132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200879201125%_))))
                                            (let ((_%tl200883201139%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200881201132%_)))
                                                  (_%hd200882201136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200881201132%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200883201139%_))
                                                  (let ((_%e200884201142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200883201139%_))))
                                                    (let ((_%tl200886201149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200884201142%_)))
                                                          (_%hd200885201146%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200884201142%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200886201149%_))
                                                          (_%__kont201849201850%_
                                                           _%hd200885201146%_
                                                           _%hd200882201136%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200870200930%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200870200930%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200870200930%_)))
                                      (if (equal? _%e200880201128%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200879201125%_))
                                              (let ((_%e200897201047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200879201125%_))))
                                                (let ((_%tl200899201054%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200897201047%_)))
                                                      (_%hd200898201051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200897201047%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200899201054%_))
                                                      (let ((_%e200900201057%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200899201054%_))))
                (let ((_%tl200902201064%_
                       (let () (declare (not safe)) (##cdr _%e200900201057%_)))
                      (_%hd200901201061%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200900201057%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200902201064%_))
                      (let ((_%e200903201067%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200902201064%_))))
                        (let ((_%tl200905201074%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200903201067%_)))
                              (_%hd200904201071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200903201067%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200905201074%_))
                              (_%__kont201851201852%_
                               _%hd200904201071%_
                               _%hd200901201061%_
                               _%hd200898201051%_)
                              (let ()
                                (declare (not safe))
                                (_%g200870200930%_)))))
                      (let () (declare (not safe)) (_%g200870200930%_)))))
              (let () (declare (not safe)) (_%g200870200930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200870200930%_)))
                                          (if (equal? _%e200880201128%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200879201125%_))
                                                  (let ((_%e200916200961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200879201125%_))))
                                                    (let ((_%tl200918200968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200916200961%_)))
                                                          (_%hd200917200965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200916200961%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200918200968%_))
                                                          (let ((_%e200919200971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200918200968%_))))
                    (let ((_%tl200921200978%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200919200971%_)))
                          (_%hd200920200975%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200919200971%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200921200978%_))
                          (let ((_%e200922200981%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200921200978%_))))
                            (let ((_%tl200924200988%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200922200981%_)))
                                  (_%hd200923200985%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200922200981%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200924200988%_))
                                  (_%__kont201853201854%_
                                   _%hd200923200985%_
                                   _%hd200920200975%_
                                   _%hd200917200965%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200870200930%_)))))
                          (let () (declare (not safe)) (_%g200870200930%_)))))
                  (let () (declare (not safe)) (_%g200870200930%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200870200930%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200870200930%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200870200930%_)))))
                        (let () (declare (not safe)) (_%g200870200930%_)))))
                (let () (declare (not safe)) (_%g200870200930%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx201176%_)
        (let* ((_%g201180201200%_
                (lambda (_%g201181201196%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201181201196%_))))
               (_%g201179201271%_
                (lambda (_%g201181201204%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201181201204%_))
                      (let ((_%e201183201207%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201181201204%_))))
                        (let ((_%hd201184201211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201183201207%_)))
                              (_%tl201185201214%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201183201207%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201185201214%_))
                              (let ((_g202027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201185201214%_
                                        '0))))
                                (begin
                                  (let ((_g202028_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g202027_)
                                               (##vector-length _g202027_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g202028_ 2)))
                                        (error "Context expects 2 values"
                                               _g202028_)))
                                  (let ((_%target201186201217%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202027_ 0)))
                                        (_%tl201188201220%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g202027_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201188201220%_))
                                        (letrec ((_%loop201189201223%_
                                                  (lambda (_%hd201187201227%_
                                                           _%decl201193201230%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201187201227%_))
                                                        (let ((_%e201190201233%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201187201227%_))))
                  (let ((_%lp-hd201191201237%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201190201233%_)))
                        (_%lp-tl201192201240%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201190201233%_))))
                    (_%loop201189201223%_
                     _%lp-tl201192201240%_
                     (cons _%lp-hd201191201237%_ _%decl201193201230%_))))
                (let ((_%decl201194201243%_ (reverse _%decl201193201230%_)))
                  ((lambda (_%L201247%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp202029
                                  (lambda (_%g201262201265%_ _%g201263201268%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g201262201265%_)
                                          _%g201263201268%_))))
                             (declare (not safe))
                             (__foldr1 __tmp202029 '() _%L201247%_))))
                   _%decl201194201243%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201189201223%_
                                           _%target201186201217%_
                                           '()))
                                        (_%g201180201200%_
                                         _%g201181201204%_)))))
                              (_%g201180201200%_ _%g201181201204%_))))
                      (_%g201180201200%_ _%g201181201204%_)))))
          (_%g201179201271%_ _%$stx201176%_))))))
