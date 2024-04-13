(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g207600_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207607_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207609_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207611_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207613_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207615_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207627_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207629_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207631_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207633_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g207635_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx201018%_)
        (let* ((_%g201022201040%_
                (lambda (_%g201023201036%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201023201036%_))))
               (_%g201021201095%_
                (lambda (_%g201023201044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201023201044%_))
                      (let ((_%e201026201047%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201023201044%_))))
                        (let ((_%hd201027201051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201026201047%_)))
                              (_%tl201028201054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201026201047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201028201054%_))
                              (let ((_%e201029201057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201028201054%_))))
                                (let ((_%hd201030201061%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201029201057%_)))
                                      (_%tl201031201064%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201029201057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201031201064%_))
                                      (let ((_%e201032201067%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201031201064%_))))
                                        (let ((_%hd201033201071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201032201067%_)))
                                              (_%tl201034201074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201032201067%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201034201074%_))
                                              ((lambda (_%L201077%_
                                                        _%L201079%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L201079%_))
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
                               (cons _%L201079%_ '()))
                         (cons _%L201077%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201022201040%_
                                                      _%g201023201044%_)))
                                               _%hd201033201071%_
                                               _%hd201030201061%_)
                                              (_%g201022201040%_
                                               _%g201023201044%_))))
                                      (_%g201022201040%_ _%g201023201044%_))))
                              (_%g201022201040%_ _%g201023201044%_))))
                      (_%g201022201040%_ _%g201023201044%_)))))
          (_%g201021201095%_ _%$stx201018%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx201099%_)
        (let* ((_%g201103201121%_
                (lambda (_%g201104201117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201104201117%_))))
               (_%g201102201176%_
                (lambda (_%g201104201125%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201104201125%_))
                      (let ((_%e201107201128%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201104201125%_))))
                        (let ((_%hd201108201132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201107201128%_)))
                              (_%tl201109201135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201107201128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201109201135%_))
                              (let ((_%e201110201138%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201109201135%_))))
                                (let ((_%hd201111201142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201110201138%_)))
                                      (_%tl201112201145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201110201138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201112201145%_))
                                      (let ((_%e201113201148%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201112201145%_))))
                                        (let ((_%hd201114201152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201113201148%_)))
                                              (_%tl201115201155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201113201148%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201115201155%_))
                                              ((lambda (_%L201158%_
                                                        _%L201160%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L201160%_))
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
                               (cons _%L201160%_ '()))
                         (cons _%L201158%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201103201121%_
                                                      _%g201104201125%_)))
                                               _%hd201114201152%_
                                               _%hd201111201142%_)
                                              (_%g201103201121%_
                                               _%g201104201125%_))))
                                      (_%g201103201121%_ _%g201104201125%_))))
                              (_%g201103201121%_ _%g201104201125%_))))
                      (_%g201103201121%_ _%g201104201125%_)))))
          (_%g201102201176%_ _%$stx201099%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx201180%_)
        (let* ((_%g201184201213%_
                (lambda (_%g201185201209%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201185201209%_))))
               (_%g201183201313%_
                (lambda (_%g201185201217%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201185201217%_))
                      (let ((_%e201188201220%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201185201217%_))))
                        (let ((_%hd201189201224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201188201220%_)))
                              (_%tl201190201227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201188201220%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201190201227%_))
                              (let ((_g207578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201190201227%_
                                        '0))))
                                (begin
                                  (let ((_g207579_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207578_)
                                               (##vector-length _g207578_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207579_ 2)))
                                        (error "Context expects 2 values"
                                               _g207579_)))
                                  (let ((_%target201191201230%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207578_ 0)))
                                        (_%tl201193201233%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207578_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201193201233%_))
                                        (letrec ((_%loop201194201236%_
                                                  (lambda (_%hd201192201240%_
                                                           _%type201198201243%_
                                                           _%symbol201199201245%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201192201240%_))
                                                        (let ((_%e201195201248%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201192201240%_))))
                  (let ((_%lp-hd201196201252%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201195201248%_)))
                        (_%lp-tl201197201255%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201195201248%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201196201252%_))
                        (let ((_%e201202201258%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201196201252%_))))
                          (let ((_%hd201203201262%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201202201258%_)))
                                (_%tl201204201265%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201202201258%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201204201265%_))
                                (let ((_%e201205201268%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201204201265%_))))
                                  (let ((_%hd201206201272%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201205201268%_)))
                                        (_%tl201207201275%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201205201268%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201207201275%_))
                                        (_%loop201194201236%_
                                         _%lp-tl201197201255%_
                                         (cons _%hd201206201272%_
                                               _%type201198201243%_)
                                         (cons _%hd201203201262%_
                                               _%symbol201199201245%_))
                                        (_%g201184201213%_
                                         _%g201185201217%_))))
                                (_%g201184201213%_ _%g201185201217%_))))
                        (_%g201184201213%_ _%g201185201217%_))))
                (let ((_%type201200201278%_ (reverse _%type201198201243%_))
                      (_%symbol201201201281%_
                       (reverse _%symbol201199201245%_)))
                  ((lambda (_%L201284%_ _%L201286%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201284%_
                                _%L201286%_))
                             (let ((__tmp207580
                                    (lambda (_%g201301201305%_
                                             _%g201302201308%_
                                             _%g201303201310%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g201302201308%_
                                                        (cons _%g201301201305%_
                                                              '())))
                                            _%g201303201310%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207580
                                '()
                                _%L201284%_
                                _%L201286%_)))))
                   _%type201200201278%_
                   _%symbol201201201281%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201194201236%_
                                           _%target201191201230%_
                                           '()
                                           '()))
                                        (_%g201184201213%_
                                         _%g201185201217%_)))))
                              (_%g201184201213%_ _%g201185201217%_))))
                      (_%g201184201213%_ _%g201185201217%_)))))
          (_%g201183201313%_ _%$stx201180%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx201318%_)
        (let* ((_%__stx206889206890%_ _%$stx201318%_)
               (_%g201323201365%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206889206890%_)))))
          (let ((_%__kont206892206893%_
                 (lambda (_%L201493%_ _%L201495%_ _%L201496%_ _%L201497%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L201497%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L201496%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L201495%_ '()))
                                           (cons _%L201493%_ '())))))))
                (_%__kont206894206895%_
                 (lambda (_%L201412%_ _%L201414%_ _%L201415%_ _%L201416%_)
                   (cons _%L201416%_
                         (cons _%L201415%_
                               (cons _%L201414%_
                                     (cons _%L201412%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match206928206929%_
                   (lambda (_%e201329201443%_
                            _%hd201330201447%_
                            _%tl201331201450%_
                            _%e201332201453%_
                            _%hd201333201457%_
                            _%tl201334201460%_
                            _%e201335201463%_
                            _%hd201336201467%_
                            _%tl201337201470%_
                            _%e201338201473%_
                            _%hd201339201477%_
                            _%tl201340201480%_
                            _%e201341201483%_
                            _%hd201342201487%_
                            _%tl201343201490%_)
                     (let ((_%L201493%_ _%hd201342201487%_)
                           (_%L201495%_ _%hd201339201477%_)
                           (_%L201496%_ _%hd201336201467%_)
                           (_%L201497%_ _%hd201333201457%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201497%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201496%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L201495%_)))
                           (_%__kont206892206893%_
                            _%L201493%_
                            _%L201495%_
                            _%L201496%_
                            _%L201497%_)
                           (let ()
                             (declare (not safe))
                             (_%g201323201365%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206889206890%_))
                  (let ((_%e201329201443%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx206889206890%_))))
                    (let ((_%tl201331201450%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201329201443%_)))
                          (_%hd201330201447%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201329201443%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201331201450%_))
                          (let ((_%e201332201453%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201331201450%_))))
                            (let ((_%tl201334201460%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201332201453%_)))
                                  (_%hd201333201457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201332201453%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl201334201460%_))
                                  (let ((_%e201335201463%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl201334201460%_))))
                                    (let ((_%tl201337201470%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e201335201463%_)))
                                          (_%hd201336201467%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e201335201463%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl201337201470%_))
                                          (let ((_%e201338201473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl201337201470%_))))
                                            (let ((_%tl201340201480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e201338201473%_)))
                                                  (_%hd201339201477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e201338201473%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201340201480%_))
                                                  (let ((_%e201341201483%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201340201480%_))))
                                                    (let ((_%tl201343201490%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201341201483%_)))
                                                          (_%hd201342201487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201341201483%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201343201490%_))
                                                          (_%__match206928206929%_
                                                           _%e201329201443%_
                                                           _%hd201330201447%_
                                                           _%tl201331201450%_
                                                           _%e201332201453%_
                                                           _%hd201333201457%_
                                                           _%tl201334201460%_
                                                           _%e201335201463%_
                                                           _%hd201336201467%_
                                                           _%tl201337201470%_
                                                           _%e201338201473%_
                                                           _%hd201339201477%_
                                                           _%tl201340201480%_
                                                           _%e201341201483%_
                                                           _%hd201342201487%_
                                                           _%tl201343201490%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g201323201365%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl201340201480%_))
                                                      (_%__kont206894206895%_
                                                       _%hd201339201477%_
                                                       _%hd201336201467%_
                                                       _%hd201333201457%_
                                                       _%hd201330201447%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g201323201365%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g201323201365%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g201323201365%_)))))
                          (let () (declare (not safe)) (_%g201323201365%_)))))
                  (let () (declare (not safe)) (_%g201323201365%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx201522%_)
        (let* ((_%g201526201561%_
                (lambda (_%g201527201557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201527201557%_))))
               (_%g201525201680%_
                (lambda (_%g201527201565%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201527201565%_))
                      (let ((_%e201531201568%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201527201565%_))))
                        (let ((_%hd201532201572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201531201568%_)))
                              (_%tl201533201575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201531201568%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl201533201575%_))
                              (let ((_g207581_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl201533201575%_
                                        '0))))
                                (begin
                                  (let ((_g207582_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207581_)
                                               (##vector-length _g207581_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207582_ 2)))
                                        (error "Context expects 2 values"
                                               _g207582_)))
                                  (let ((_%target201534201578%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207581_ 0)))
                                        (_%tl201536201581%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207581_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201536201581%_))
                                        (letrec ((_%loop201537201584%_
                                                  (lambda (_%hd201535201588%_
                                                           _%symbol201541201591%_
                                                           _%method201542201593%_
                                                           _%type-t201543201595%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd201535201588%_))
                                                        (let ((_%e201538201598%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd201535201588%_))))
                  (let ((_%lp-hd201539201602%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201538201598%_)))
                        (_%lp-tl201540201605%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201538201598%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd201539201602%_))
                        (let ((_%e201547201608%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd201539201602%_))))
                          (let ((_%hd201548201612%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201547201608%_)))
                                (_%tl201549201615%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201547201608%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201549201615%_))
                                (let ((_%e201550201618%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201549201615%_))))
                                  (let ((_%hd201551201622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201550201618%_)))
                                        (_%tl201552201625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201550201618%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201552201625%_))
                                        (let ((_%e201553201628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201552201625%_))))
                                          (let ((_%hd201554201632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201553201628%_)))
                                                (_%tl201555201635%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201553201628%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201555201635%_))
                                                (_%loop201537201584%_
                                                 _%lp-tl201540201605%_
                                                 (cons _%hd201554201632%_
                                                       _%symbol201541201591%_)
                                                 (cons _%hd201551201622%_
                                                       _%method201542201593%_)
                                                 (cons _%hd201548201612%_
                                                       _%type-t201543201595%_))
                                                (_%g201526201561%_
                                                 _%g201527201565%_))))
                                        (_%g201526201561%_
                                         _%g201527201565%_))))
                                (_%g201526201561%_ _%g201527201565%_))))
                        (_%g201526201561%_ _%g201527201565%_))))
                (let ((_%symbol201544201638%_ (reverse _%symbol201541201591%_))
                      (_%method201545201641%_ (reverse _%method201542201593%_))
                      (_%type-t201546201643%_
                       (reverse _%type-t201543201595%_)))
                  ((lambda (_%L201646%_ _%L201648%_ _%L201649%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L201646%_
                                _%L201648%_
                                _%L201649%_))
                             (let ((__tmp207583
                                    (lambda (_%g201665201670%_
                                             _%g201666201673%_
                                             _%g201667201675%_
                                             _%g201668201677%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g201667201675%_
                                                        (cons _%g201666201673%_
                                                              (cons _%g201665201670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g201668201677%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp207583
                                '()
                                _%L201646%_
                                _%L201648%_
                                _%L201649%_)))))
                   _%symbol201544201638%_
                   _%method201545201641%_
                   _%type-t201546201643%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop201537201584%_
                                           _%target201534201578%_
                                           '()
                                           '()
                                           '()))
                                        (_%g201526201561%_
                                         _%g201527201565%_)))))
                              (_%g201526201561%_ _%g201527201565%_))))
                      (_%g201526201561%_ _%g201527201565%_)))))
          (_%g201525201680%_ _%$stx201522%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx201685%_)
        (let* ((_%g201689201722%_
                (lambda (_%g201690201718%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201690201718%_))))
               (_%g201688201836%_
                (lambda (_%g201690201726%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201690201726%_))
                      (let ((_%e201694201729%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201690201726%_))))
                        (let ((_%hd201695201733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201694201729%_)))
                              (_%tl201696201736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201694201729%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201696201736%_))
                              (let ((_%e201697201739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201696201736%_))))
                                (let ((_%hd201698201743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201697201739%_)))
                                      (_%tl201699201746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201697201739%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201699201746%_))
                                      (let ((_g207584_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201699201746%_
                                                '0))))
                                        (begin
                                          (let ((_g207585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207584_)
                                                       (##vector-length
                                                        _g207584_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207585_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207585_)))
                                          (let ((_%target201700201749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207584_ 0)))
                                                (_%tl201702201752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207584_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201702201752%_))
                                                (letrec ((_%loop201703201755%_
                                                          (lambda (_%hd201701201759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol201707201762%_
                           _%method201708201764%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201701201759%_))
                        (let ((_%e201704201767%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201701201759%_))))
                          (let ((_%lp-hd201705201771%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201704201767%_)))
                                (_%lp-tl201706201774%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201704201767%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd201705201771%_))
                                (let ((_%e201711201777%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd201705201771%_))))
                                  (let ((_%hd201712201781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201711201777%_)))
                                        (_%tl201713201784%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201711201777%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201713201784%_))
                                        (let ((_%e201714201787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl201713201784%_))))
                                          (let ((_%hd201715201791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201714201787%_)))
                                                (_%tl201716201794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201714201787%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201716201794%_))
                                                (_%loop201703201755%_
                                                 _%lp-tl201706201774%_
                                                 (cons _%hd201715201791%_
                                                       _%symbol201707201762%_)
                                                 (cons _%hd201712201781%_
                                                       _%method201708201764%_))
                                                (_%g201689201722%_
                                                 _%g201690201726%_))))
                                        (_%g201689201722%_
                                         _%g201690201726%_))))
                                (_%g201689201722%_ _%g201690201726%_))))
                        (let ((_%symbol201709201797%_
                               (reverse _%symbol201707201762%_))
                              (_%method201710201800%_
                               (reverse _%method201708201764%_)))
                          ((lambda (_%L201803%_ _%L201805%_ _%L201806%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L201803%_
                                        _%L201805%_))
                                     (let ((__tmp207586
                                            (lambda (_%g201824201828%_
                                                     _%g201825201831%_
                                                     _%g201826201833%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L201806%_
                                                                (cons _%g201825201831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g201824201828%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g201826201833%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp207586
                                        '()
                                        _%L201803%_
                                        _%L201805%_)))))
                           _%symbol201709201797%_
                           _%method201710201800%_
                           _%hd201698201743%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201703201755%_
                                                   _%target201700201749%_
                                                   '()
                                                   '()))
                                                (_%g201689201722%_
                                                 _%g201690201726%_)))))
                                      (_%g201689201722%_ _%g201690201726%_))))
                              (_%g201689201722%_ _%g201690201726%_))))
                      (_%g201689201722%_ _%g201690201726%_)))))
          (_%g201688201836%_ _%$stx201685%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx201841%_)
        (let* ((_%g201845201859%_
                (lambda (_%g201846201855%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201846201855%_))))
               (_%g201844201900%_
                (lambda (_%g201846201863%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201846201863%_))
                      (let ((_%e201848201866%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201846201863%_))))
                        (let ((_%hd201849201870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201848201866%_)))
                              (_%tl201850201873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201848201866%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201850201873%_))
                              (let ((_%e201851201876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201850201873%_))))
                                (let ((_%hd201852201880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201851201876%_)))
                                      (_%tl201853201883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201851201876%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201853201883%_))
                                      ((lambda (_%L201886%_)
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
                                                           (cons _%L201886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd201852201880%_)
                                      (_%g201845201859%_ _%g201846201863%_))))
                              (_%g201845201859%_ _%g201846201863%_))))
                      (_%g201845201859%_ _%g201846201863%_)))))
          (_%g201844201900%_ _%$stx201841%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx201904%_)
        (let* ((_%g201908201962%_
                (lambda (_%g201909201958%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201909201958%_))))
               (_%g201907202143%_
                (lambda (_%g201909201966%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201909201966%_))
                      (let ((_%e201921201969%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201909201966%_))))
                        (let ((_%hd201922201973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201921201969%_)))
                              (_%tl201923201976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201921201969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201923201976%_))
                              (let ((_%e201924201979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201923201976%_))))
                                (let ((_%hd201925201983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201924201979%_)))
                                      (_%tl201926201986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201924201979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201926201986%_))
                                      (let ((_%e201927201989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201926201986%_))))
                                        (let ((_%hd201928201993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201927201989%_)))
                                              (_%tl201929201996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201927201989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201929201996%_))
                                              (let ((_%e201930201999%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201929201996%_))))
                                                (let ((_%hd201931202003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201930201999%_)))
                                                      (_%tl201932202006%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201930201999%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201932202006%_))
                                                      (let ((_%e201933202009%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201932202006%_))))
                (let ((_%hd201934202013%_
                       (let () (declare (not safe)) (##car _%e201933202009%_)))
                      (_%tl201935202016%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201933202009%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201935202016%_))
                      (let ((_%e201936202019%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201935202016%_))))
                        (let ((_%hd201937202023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201936202019%_)))
                              (_%tl201938202026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201936202019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201938202026%_))
                              (let ((_%e201939202029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201938202026%_))))
                                (let ((_%hd201940202033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201939202029%_)))
                                      (_%tl201941202036%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201939202029%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201941202036%_))
                                      (let ((_%e201942202039%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201941202036%_))))
                                        (let ((_%hd201943202043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201942202039%_)))
                                              (_%tl201944202046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201942202039%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl201944202046%_))
                                              (let ((_%e201945202049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl201944202046%_))))
                                                (let ((_%hd201946202053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201945202049%_)))
                                                      (_%tl201947202056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201945202049%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl201947202056%_))
                                                      (let ((_%e201948202059%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl201947202056%_))))
                (let ((_%hd201949202063%_
                       (let () (declare (not safe)) (##car _%e201948202059%_)))
                      (_%tl201950202066%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201948202059%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl201950202066%_))
                      (let ((_%e201951202069%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl201950202066%_))))
                        (let ((_%hd201952202073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201951202069%_)))
                              (_%tl201953202076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201951202069%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201953202076%_))
                              (let ((_%e201954202079%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201953202076%_))))
                                (let ((_%hd201955202083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201954202079%_)))
                                      (_%tl201956202086%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201954202079%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl201956202086%_))
                                      ((lambda (_%L202089%_
                                                _%L202091%_
                                                _%L202092%_
                                                _%L202093%_
                                                _%L202094%_
                                                _%L202095%_
                                                _%L202096%_
                                                _%L202097%_
                                                _%L202098%_
                                                _%L202099%_
                                                _%L202100%_)
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
                                                           (cons _%L202100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L202099%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L202098%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202097%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202096%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L202095%_ '()))
                                           (cons _%L202094%_
                                                 (cons _%L202093%_
                                                       (cons _%L202092%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202091%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L202089%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd201955202083%_
                                       _%hd201952202073%_
                                       _%hd201949202063%_
                                       _%hd201946202053%_
                                       _%hd201943202043%_
                                       _%hd201940202033%_
                                       _%hd201937202023%_
                                       _%hd201934202013%_
                                       _%hd201931202003%_
                                       _%hd201928201993%_
                                       _%hd201925201983%_)
                                      (_%g201908201962%_ _%g201909201966%_))))
                              (_%g201908201962%_ _%g201909201966%_))))
                      (_%g201908201962%_ _%g201909201966%_))))
              (_%g201908201962%_ _%g201909201966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201908201962%_
                                               _%g201909201966%_))))
                                      (_%g201908201962%_ _%g201909201966%_))))
                              (_%g201908201962%_ _%g201909201966%_))))
                      (_%g201908201962%_ _%g201909201966%_))))
              (_%g201908201962%_ _%g201909201966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201908201962%_
                                               _%g201909201966%_))))
                                      (_%g201908201962%_ _%g201909201966%_))))
                              (_%g201908201962%_ _%g201909201966%_))))
                      (_%g201908201962%_ _%g201909201966%_)))))
          (_%g201907202143%_ _%$stx201904%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx202147%_)
        (let* ((_%g202151202165%_
                (lambda (_%g202152202161%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202152202161%_))))
               (_%g202150202206%_
                (lambda (_%g202152202169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202152202169%_))
                      (let ((_%e202154202172%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202152202169%_))))
                        (let ((_%hd202155202176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202154202172%_)))
                              (_%tl202156202179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202154202172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202156202179%_))
                              (let ((_%e202157202182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202156202179%_))))
                                (let ((_%hd202158202186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202157202182%_)))
                                      (_%tl202159202189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202157202182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202159202189%_))
                                      ((lambda (_%L202192%_)
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
                                                           (cons _%L202192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202158202186%_)
                                      (_%g202151202165%_ _%g202152202169%_))))
                              (_%g202151202165%_ _%g202152202169%_))))
                      (_%g202151202165%_ _%g202152202169%_)))))
          (_%g202150202206%_ _%$stx202147%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx202210%_)
        (let* ((_%g202214202228%_
                (lambda (_%g202215202224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202215202224%_))))
               (_%g202213202269%_
                (lambda (_%g202215202232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202215202232%_))
                      (let ((_%e202217202235%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202215202232%_))))
                        (let ((_%hd202218202239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202217202235%_)))
                              (_%tl202219202242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202217202235%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202219202242%_))
                              (let ((_%e202220202245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202219202242%_))))
                                (let ((_%hd202221202249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202220202245%_)))
                                      (_%tl202222202252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202220202245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202222202252%_))
                                      ((lambda (_%L202255%_)
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
                                                           (cons _%L202255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202221202249%_)
                                      (_%g202214202228%_ _%g202215202232%_))))
                              (_%g202214202228%_ _%g202215202232%_))))
                      (_%g202214202228%_ _%g202215202232%_)))))
          (_%g202213202269%_ _%$stx202210%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx202273%_)
        (let* ((_%g202277202299%_
                (lambda (_%g202278202295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202278202295%_))))
               (_%g202276202368%_
                (lambda (_%g202278202303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202278202303%_))
                      (let ((_%e202282202306%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202278202303%_))))
                        (let ((_%hd202283202310%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202282202306%_)))
                              (_%tl202284202313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202282202306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202284202313%_))
                              (let ((_%e202285202316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202284202313%_))))
                                (let ((_%hd202286202320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202285202316%_)))
                                      (_%tl202287202323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202285202316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202287202323%_))
                                      (let ((_%e202288202326%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202287202323%_))))
                                        (let ((_%hd202289202330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202288202326%_)))
                                              (_%tl202290202333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202288202326%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202290202333%_))
                                              (let ((_%e202291202336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202290202333%_))))
                                                (let ((_%hd202292202340%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202291202336%_)))
                                                      (_%tl202293202343%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202291202336%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202293202343%_))
                                                      ((lambda (_%L202346%_
                                                                _%L202348%_
                                                                _%L202349%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202349%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202348%_ '()))
                                   (cons _%L202346%_ '())))))
               _%hd202292202340%_
               _%hd202289202330%_
               _%hd202286202320%_)
              (_%g202277202299%_ _%g202278202303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202277202299%_
                                               _%g202278202303%_))))
                                      (_%g202277202299%_ _%g202278202303%_))))
                              (_%g202277202299%_ _%g202278202303%_))))
                      (_%g202277202299%_ _%g202278202303%_)))))
          (_%g202276202368%_ _%$stx202273%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx202372%_)
        (let* ((_%g202376202398%_
                (lambda (_%g202377202394%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202377202394%_))))
               (_%g202375202467%_
                (lambda (_%g202377202402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202377202402%_))
                      (let ((_%e202381202405%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202377202402%_))))
                        (let ((_%hd202382202409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202381202405%_)))
                              (_%tl202383202412%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202381202405%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202383202412%_))
                              (let ((_%e202384202415%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202383202412%_))))
                                (let ((_%hd202385202419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202384202415%_)))
                                      (_%tl202386202422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202384202415%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202386202422%_))
                                      (let ((_%e202387202425%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202386202422%_))))
                                        (let ((_%hd202388202429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202387202425%_)))
                                              (_%tl202389202432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202387202425%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202389202432%_))
                                              (let ((_%e202390202435%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202389202432%_))))
                                                (let ((_%hd202391202439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202390202435%_)))
                                                      (_%tl202392202442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202390202435%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202392202442%_))
                                                      ((lambda (_%L202445%_
                                                                _%L202447%_
                                                                _%L202448%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L202448%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L202447%_ '()))
                                   (cons _%L202445%_ '())))))
               _%hd202391202439%_
               _%hd202388202429%_
               _%hd202385202419%_)
              (_%g202376202398%_ _%g202377202402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202376202398%_
                                               _%g202377202402%_))))
                                      (_%g202376202398%_ _%g202377202402%_))))
                              (_%g202376202398%_ _%g202377202402%_))))
                      (_%g202376202398%_ _%g202377202402%_)))))
          (_%g202375202467%_ _%$stx202372%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx202471%_)
        (let* ((_%g202475202489%_
                (lambda (_%g202476202485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202476202485%_))))
               (_%g202474202530%_
                (lambda (_%g202476202493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202476202493%_))
                      (let ((_%e202478202496%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202476202493%_))))
                        (let ((_%hd202479202500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202478202496%_)))
                              (_%tl202480202503%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202478202496%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202480202503%_))
                              (let ((_%e202481202506%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202480202503%_))))
                                (let ((_%hd202482202510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202481202506%_)))
                                      (_%tl202483202513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202481202506%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl202483202513%_))
                                      ((lambda (_%L202516%_)
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
                                                           (cons _%L202516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd202482202510%_)
                                      (_%g202475202489%_ _%g202476202493%_))))
                              (_%g202475202489%_ _%g202476202493%_))))
                      (_%g202475202489%_ _%g202476202493%_)))))
          (_%g202474202530%_ _%$stx202471%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx202534%_)
        (let* ((_%g202538202556%_
                (lambda (_%g202539202552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202539202552%_))))
               (_%g202537202611%_
                (lambda (_%g202539202560%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202539202560%_))
                      (let ((_%e202542202563%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202539202560%_))))
                        (let ((_%hd202543202567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202542202563%_)))
                              (_%tl202544202570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202542202563%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202544202570%_))
                              (let ((_%e202545202573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202544202570%_))))
                                (let ((_%hd202546202577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202545202573%_)))
                                      (_%tl202547202580%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202545202573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202547202580%_))
                                      (let ((_%e202548202583%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl202547202580%_))))
                                        (let ((_%hd202549202587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202548202583%_)))
                                              (_%tl202550202590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202548202583%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202550202590%_))
                                              ((lambda (_%L202593%_
                                                        _%L202595%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L202595%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L202593%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd202549202587%_
                                               _%hd202546202577%_)
                                              (_%g202538202556%_
                                               _%g202539202560%_))))
                                      (_%g202538202556%_ _%g202539202560%_))))
                              (_%g202538202556%_ _%g202539202560%_))))
                      (_%g202538202556%_ _%g202539202560%_)))))
          (_%g202537202611%_ _%$stx202534%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx202615%_)
        (let* ((_%__stx206957206958%_ _%$stx202615%_)
               (_%g202622202683%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206957206958%_)))))
          (let ((_%__kont206960206961%_
                 (lambda (_%L202921%_ _%L202923%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202923%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202921%_ '()))
                                     '())))))
                (_%__kont206962206963%_
                 (lambda (_%L202860%_ _%L202862%_ _%L202863%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L202863%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L202862%_ '()))
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
                                 (cons _%L202860%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont206964206965%_
                 (lambda (_%L202784%_ _%L202786%_)
                   (cons _%L202786%_ (cons _%L202784%_ (cons '#f '())))))
                (_%__kont206966206967%_
                 (lambda (_%L202734%_ _%L202736%_ _%L202737%_)
                   (cons _%L202737%_
                         (cons _%L202736%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L202734%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx206957206958%_))
                (let ((_%e202626202891%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx206957206958%_))))
                  (let ((_%tl202628202898%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202626202891%_)))
                        (_%hd202627202895%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202626202891%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl202628202898%_))
                        (let ((_%e202629202901%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl202628202898%_))))
                          (let ((_%tl202631202908%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202629202901%_)))
                                (_%hd202630202905%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202629202901%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl202631202908%_))
                                (let ((_%e202632202911%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl202631202908%_))))
                                  (let ((_%tl202634202918%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e202632202911%_)))
                                        (_%hd202633202915%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e202632202911%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202634202918%_))
                                        (_%__kont206960206961%_
                                         _%hd202633202915%_
                                         _%hd202630202905%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202634202918%_))
                                            (let ((_%e202647202836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl202634202918%_))))
                                              (let ((_%tl202649202843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202647202836%_)))
                                                    (_%hd202648202840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202647202836%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd202648202840%_))
                                                    (let ((_%e202650202846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd202648202840%_))))
                                                      (if (equal? _%e202650202846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl202649202843%_))
                      (let ((_%e202651202850%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl202649202843%_))))
                        (let ((_%tl202653202857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202651202850%_)))
                              (_%hd202652202854%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202651202850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202653202857%_))
                              (_%__kont206962206963%_
                               _%hd202652202854%_
                               _%hd202633202915%_
                               _%hd202630202905%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd202633202915%_))
                                  (let ((_%e202674202720%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202633202915%_))))
                                    (declare (not safe))
                                    (_%g202622202683%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202622202683%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd202633202915%_))
                          (let ((_%e202674202720%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd202633202915%_))))
                            (if (equal? _%e202674202720%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202649202843%_))
                                    (_%__kont206966206967%_
                                     _%hd202648202840%_
                                     _%hd202630202905%_
                                     _%hd202627202895%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202622202683%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202622202683%_))))
                          (let () (declare (not safe)) (_%g202622202683%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd202633202915%_))
                      (let ((_%e202674202720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd202633202915%_))))
                        (if (equal? _%e202674202720%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202649202843%_))
                                (_%__kont206966206967%_
                                 _%hd202648202840%_
                                 _%hd202630202905%_
                                 _%hd202627202895%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g202622202683%_)))
                            (let () (declare (not safe)) (_%g202622202683%_))))
                      (let () (declare (not safe)) (_%g202622202683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd202633202915%_))
                                                        (let ((_%e202674202720%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd202633202915%_))))
                  (if (equal? _%e202674202720%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202649202843%_))
                          (_%__kont206966206967%_
                           _%hd202648202840%_
                           _%hd202630202905%_
                           _%hd202627202895%_)
                          (let () (declare (not safe)) (_%g202622202683%_)))
                      (let () (declare (not safe)) (_%g202622202683%_))))
                (let () (declare (not safe)) (_%g202622202683%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd202633202915%_))
                                                (let ((_%e202674202720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202633202915%_))))
                                                  (declare (not safe))
                                                  (_%g202622202683%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202622202683%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202631202908%_))
                                    (_%__kont206964206965%_
                                     _%hd202630202905%_
                                     _%hd202627202895%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g202622202683%_))))))
                        (let () (declare (not safe)) (_%g202622202683%_)))))
                (let () (declare (not safe)) (_%g202622202683%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx202942%_)
        (let* ((_%g202946202975%_
                (lambda (_%g202947202971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202947202971%_))))
               (_%g202945203084%_
                (lambda (_%g202947202979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202947202979%_))
                      (let ((_%e202949202982%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202947202979%_))))
                        (let ((_%hd202950202986%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202949202982%_)))
                              (_%tl202951202989%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202949202982%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl202951202989%_))
                              (let ((_g207587_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl202951202989%_
                                        '0))))
                                (begin
                                  (let ((_g207588_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207587_)
                                               (##vector-length _g207587_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207588_ 2)))
                                        (error "Context expects 2 values"
                                               _g207588_)))
                                  (let ((_%target202952202992%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207587_ 0)))
                                        (_%tl202954202995%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207587_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl202954202995%_))
                                        (letrec ((_%loop202955202998%_
                                                  (lambda (_%hd202953203002%_
                                                           _%clause202959203005%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd202953203002%_))
                                                        (let ((_%e202956203008%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd202953203002%_))))
                  (let ((_%lp-hd202957203012%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202956203008%_)))
                        (_%lp-tl202958203015%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202956203008%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd202957203012%_))
                        (let ((_g207589_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd202957203012%_
                                  '0))))
                          (begin
                            (let ((_g207590_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g207589_)
                                         (##vector-length _g207589_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g207590_ 2)))
                                  (error "Context expects 2 values"
                                         _g207590_)))
                            (let ((_%target202961203018%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207589_ 0)))
                                  (_%tl202963203021%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g207589_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl202963203021%_))
                                  (letrec ((_%loop202964203024%_
                                            (lambda (_%hd202962203028%_
                                                     _%clause202968203031%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202962203028%_))
                                                  (let ((_%e202965203034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd202962203028%_))))
                                                    (let ((_%lp-hd202966203038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202965203034%_)))
                                                          (_%lp-tl202967203041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202965203034%_))))
                                                      (_%loop202964203024%_
                                                       _%lp-tl202967203041%_
                                                       (cons _%lp-hd202966203038%_
                                                             _%clause202968203031%_))))
                                                  (let ((_%clause202969203044%_
                                                         (reverse _%clause202968203031%_)))
                                                    (_%loop202955202998%_
                                                     _%lp-tl202958203015%_
                                                     (cons _%clause202969203044%_
                                                           _%clause202959203005%_)))))))
                                    (_%loop202964203024%_
                                     _%target202961203018%_
                                     '()))
                                  (_%g202946202975%_ _%g202947202979%_)))))
                        (_%g202946202975%_ _%g202947202979%_))))
                (let ((_%clause202960203048%_
                       (reverse _%clause202959203005%_)))
                  ((lambda (_%L203052%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp207591
                                              (lambda (_%g203067203072%_
                                                       _%g203068203075%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp207592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g203069203078%_ _%g203070203081%_)
                             (cons _%g203069203078%_ _%g203070203081%_))))
                      (declare (not safe))
                      (__foldr1 __tmp207592 '() _%g203067203072%_)))
              _%g203068203075%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp207591
                                          '()
                                          _%L203052%_)))
                                 '())))
                   _%clause202960203048%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop202955202998%_
                                           _%target202952202992%_
                                           '()))
                                        (_%g202946202975%_
                                         _%g202947202979%_)))))
                              (_%g202946202975%_ _%g202947202979%_))))
                      (_%g202946202975%_ _%g202947202979%_)))))
          (_%g202945203084%_ _%$stx202942%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx203090%_)
        (let* ((_%g203094203112%_
                (lambda (_%g203095203108%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203095203108%_))))
               (_%g203093203167%_
                (lambda (_%g203095203116%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203095203116%_))
                      (let ((_%e203098203119%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203095203116%_))))
                        (let ((_%hd203099203123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203098203119%_)))
                              (_%tl203100203126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203098203119%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203100203126%_))
                              (let ((_%e203101203129%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203100203126%_))))
                                (let ((_%hd203102203133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203101203129%_)))
                                      (_%tl203103203136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203101203129%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203103203136%_))
                                      (let ((_%e203104203139%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203103203136%_))))
                                        (let ((_%hd203105203143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203104203139%_)))
                                              (_%tl203106203146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203104203139%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203106203146%_))
                                              ((lambda (_%L203149%_
                                                        _%L203151%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203151%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203149%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203105203143%_
                                               _%hd203102203133%_)
                                              (_%g203094203112%_
                                               _%g203095203116%_))))
                                      (_%g203094203112%_ _%g203095203116%_))))
                              (_%g203094203112%_ _%g203095203116%_))))
                      (_%g203094203112%_ _%g203095203116%_)))))
          (_%g203093203167%_ _%$stx203090%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx203171%_)
        (let* ((_%g203175203193%_
                (lambda (_%g203176203189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203176203189%_))))
               (_%g203174203248%_
                (lambda (_%g203176203197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203176203197%_))
                      (let ((_%e203179203200%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203176203197%_))))
                        (let ((_%hd203180203204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203179203200%_)))
                              (_%tl203181203207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203179203200%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203181203207%_))
                              (let ((_%e203182203210%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203181203207%_))))
                                (let ((_%hd203183203214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203182203210%_)))
                                      (_%tl203184203217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203182203210%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203184203217%_))
                                      (let ((_%e203185203220%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203184203217%_))))
                                        (let ((_%hd203186203224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203185203220%_)))
                                              (_%tl203187203227%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203185203220%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203187203227%_))
                                              ((lambda (_%L203230%_
                                                        _%L203232%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203232%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L203230%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203186203224%_
                                               _%hd203183203214%_)
                                              (_%g203175203193%_
                                               _%g203176203197%_))))
                                      (_%g203175203193%_ _%g203176203197%_))))
                              (_%g203175203193%_ _%g203176203197%_))))
                      (_%g203175203193%_ _%g203176203197%_)))))
          (_%g203174203248%_ _%$stx203171%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx203252%_)
        (let* ((_%g203256203285%_
                (lambda (_%g203257203281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203257203281%_))))
               (_%g203255203385%_
                (lambda (_%g203257203289%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203257203289%_))
                      (let ((_%e203260203292%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203257203289%_))))
                        (let ((_%hd203261203296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203260203292%_)))
                              (_%tl203262203299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203260203292%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203262203299%_))
                              (let ((_g207593_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203262203299%_
                                        '0))))
                                (begin
                                  (let ((_g207594_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207593_)
                                               (##vector-length _g207593_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207594_ 2)))
                                        (error "Context expects 2 values"
                                               _g207594_)))
                                  (let ((_%target203263203302%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207593_ 0)))
                                        (_%tl203265203305%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207593_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203265203305%_))
                                        (letrec ((_%loop203266203308%_
                                                  (lambda (_%hd203264203312%_
                                                           _%rule203270203315%_
                                                           _%proc203271203317%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203264203312%_))
                                                        (let ((_%e203267203320%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203264203312%_))))
                  (let ((_%lp-hd203268203324%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203267203320%_)))
                        (_%lp-tl203269203327%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203267203320%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203268203324%_))
                        (let ((_%e203274203330%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203268203324%_))))
                          (let ((_%hd203275203334%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203274203330%_)))
                                (_%tl203276203337%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203274203330%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203276203337%_))
                                (let ((_%e203277203340%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203276203337%_))))
                                  (let ((_%hd203278203344%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203277203340%_)))
                                        (_%tl203279203347%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203277203340%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203279203347%_))
                                        (_%loop203266203308%_
                                         _%lp-tl203269203327%_
                                         (cons _%hd203278203344%_
                                               _%rule203270203315%_)
                                         (cons _%hd203275203334%_
                                               _%proc203271203317%_))
                                        (_%g203256203285%_
                                         _%g203257203289%_))))
                                (_%g203256203285%_ _%g203257203289%_))))
                        (_%g203256203285%_ _%g203257203289%_))))
                (let ((_%rule203272203350%_ (reverse _%rule203270203315%_))
                      (_%proc203273203353%_ (reverse _%proc203271203317%_)))
                  ((lambda (_%L203356%_ _%L203358%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203356%_
                                _%L203358%_))
                             (let ((__tmp207595
                                    (lambda (_%g203373203377%_
                                             _%g203374203380%_
                                             _%g203375203382%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g203374203380%_
                                                        (cons _%g203373203377%_
                                                              '())))
                                            _%g203375203382%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp207595
                                '()
                                _%L203356%_
                                _%L203358%_)))))
                   _%rule203272203350%_
                   _%proc203273203353%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203266203308%_
                                           _%target203263203302%_
                                           '()
                                           '()))
                                        (_%g203256203285%_
                                         _%g203257203289%_)))))
                              (_%g203256203285%_ _%g203257203289%_))))
                      (_%g203256203285%_ _%g203257203289%_)))))
          (_%g203255203385%_ _%$stx203252%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx203390%_)
        (let* ((_%g203394203412%_
                (lambda (_%g203395203408%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203395203408%_))))
               (_%g203393203467%_
                (lambda (_%g203395203416%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203395203416%_))
                      (let ((_%e203398203419%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203395203416%_))))
                        (let ((_%hd203399203423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203398203419%_)))
                              (_%tl203400203426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203398203419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203400203426%_))
                              (let ((_%e203401203429%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203400203426%_))))
                                (let ((_%hd203402203433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203401203429%_)))
                                      (_%tl203403203436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203401203429%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203403203436%_))
                                      (let ((_%e203404203439%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203403203436%_))))
                                        (let ((_%hd203405203443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203404203439%_)))
                                              (_%tl203406203446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203404203439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203406203446%_))
                                              ((lambda (_%L203449%_
                                                        _%L203451%_)
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
                                                   (cons _%L203451%_ '()))
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
                 (cons _%L203449%_ '())))
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
                                   (cons _%L203451%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd203405203443%_
                                               _%hd203402203433%_)
                                              (_%g203394203412%_
                                               _%g203395203416%_))))
                                      (_%g203394203412%_ _%g203395203416%_))))
                              (_%g203394203412%_ _%g203395203416%_))))
                      (_%g203394203412%_ _%g203395203416%_)))))
          (_%g203393203467%_ _%$stx203390%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx203471%_)
        (let* ((_%__stx207075207076%_ _%$stx203471%_)
               (_%g203476203501%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207075207076%_)))))
          (let ((_%__kont207078207079%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont207080207081%_
                 (lambda (_%L203548%_ _%L203550%_ _%L203551%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L203551%_ (cons _%L203550%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L203548%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207075207076%_))
                (let ((_%e203478203577%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207075207076%_))))
                  (let ((_%tl203480203584%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203478203577%_)))
                        (_%hd203479203581%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203478203577%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl203480203584%_))
                        (_%__kont207078207079%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203480203584%_))
                            (let ((_%e203487203518%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl203480203584%_))))
                              (let ((_%tl203489203525%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203487203518%_)))
                                    (_%hd203488203522%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203487203518%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd203488203522%_))
                                    (let ((_%e203490203528%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd203488203522%_))))
                                      (let ((_%tl203492203535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203490203528%_)))
                                            (_%hd203491203532%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203490203528%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203492203535%_))
                                            (let ((_%e203493203538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl203492203535%_))))
                                              (let ((_%tl203495203545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203493203538%_)))
                                                    (_%hd203494203542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203493203538%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203495203545%_))
                                                    (_%__kont207080207081%_
                                                     _%tl203489203525%_
                                                     _%hd203494203542%_
                                                     _%hd203491203532%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g203476203501%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g203476203501%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g203476203501%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g203476203501%_))))))
                (let () (declare (not safe)) (_%g203476203501%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx203595%_)
        (let* ((_%__stx207119207120%_ _%$stx203595%_)
               (_%g203600203631%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207119207120%_)))))
          (let ((_%__kont207122207123%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont207124207125%_
                 (lambda (_%L203698%_ _%L203700%_ _%L203701%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L203701%_
                                           (let ((__tmp207596
                                                  (lambda (_%g203721203724%_
                                                           _%g203722203727%_)
                                                    (cons _%g203721203724%_
                                                          _%g203722203727%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp207596
                                              '()
                                              _%L203700%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L203698%_)
                                     '()))))))
            (let ((_%__match207162207163%_
                   (lambda (_%e203608203638%_
                            _%hd203609203642%_
                            _%tl203610203645%_
                            _%e203611203648%_
                            _%hd203612203652%_
                            _%tl203613203655%_
                            _%e203614203658%_
                            _%hd203615203662%_
                            _%tl203616203665%_
                            _%__splice207126207127%_
                            _%target203617203668%_
                            _%tl203619203671%_)
                     (letrec ((_%loop203620203674%_
                               (lambda (_%hd203618203678%_ _%sig203624203681%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd203618203678%_))
                                     (let ((_%e203621203684%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd203618203678%_))))
                                       (let ((_%lp-tl203623203691%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e203621203684%_)))
                                             (_%lp-hd203622203688%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e203621203684%_))))
                                         (_%loop203620203674%_
                                          _%lp-tl203623203691%_
                                          (cons _%lp-hd203622203688%_
                                                _%sig203624203681%_))))
                                     (let ((_%sig203625203694%_
                                            (reverse _%sig203624203681%_)))
                                       (_%__kont207124207125%_
                                        _%tl203613203655%_
                                        _%sig203625203694%_
                                        _%hd203615203662%_))))))
                       (_%loop203620203674%_ _%target203617203668%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207119207120%_))
                  (let ((_%e203602203737%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207119207120%_))))
                    (let ((_%tl203604203744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203602203737%_)))
                          (_%hd203603203741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203602203737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203604203744%_))
                          (_%__kont207122207123%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203604203744%_))
                              (let ((_%e203611203648%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203604203744%_))))
                                (let ((_%tl203613203655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203611203648%_)))
                                      (_%hd203612203652%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203611203648%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203612203652%_))
                                      (let ((_%e203614203658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203612203652%_))))
                                        (let ((_%tl203616203665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203614203658%_)))
                                              (_%hd203615203662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203614203658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203616203665%_))
                                              (let ((_%__splice207126207127%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203616203665%_
                                                        '0))))
                                                (let ((_%tl203619203671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207126207127%_
                                                          '1)))
                                                      (_%target203617203668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207126207127%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203619203671%_))
                                                      (_%__match207162207163%_
                                                       _%e203602203737%_
                                                       _%hd203603203741%_
                                                       _%tl203604203744%_
                                                       _%e203611203648%_
                                                       _%hd203612203652%_
                                                       _%tl203613203655%_
                                                       _%e203614203658%_
                                                       _%hd203615203662%_
                                                       _%tl203616203665%_
                                                       _%__splice207126207127%_
                                                       _%target203617203668%_
                                                       _%tl203619203671%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203600203631%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203600203631%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203600203631%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203600203631%_))))))
                  (let () (declare (not safe)) (_%g203600203631%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx203756%_)
        (let* ((_%__stx207165207166%_ _%$stx203756%_)
               (_%g203761203808%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207165207166%_)))))
          (let ((_%__kont207168207169%_
                 (lambda (_%L203970%_ _%L203972%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L203972%_
                               (let ((__tmp207597
                                      (lambda (_%g203992203995%_
                                               _%g203993203998%_)
                                        (cons _%g203992203995%_
                                              _%g203993203998%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207597 '() _%L203970%_))))))
                (_%__kont207172207173%_
                 (lambda (_%L203865%_ _%L203867%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L203867%_
                               (let ((__tmp207598
                                      (lambda (_%g203884203887%_
                                               _%g203885203890%_)
                                        (cons _%g203884203887%_
                                              _%g203885203890%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp207598 '() _%L203865%_)))))))
            (let* ((_%__match207232207233%_
                    (lambda (_%e203788203815%_
                             _%hd203789203819%_
                             _%tl203790203822%_
                             _%e203791203825%_
                             _%hd203792203829%_
                             _%tl203793203832%_
                             _%__splice207174207175%_
                             _%target203794203835%_
                             _%tl203796203838%_)
                      (letrec ((_%loop203797203841%_
                                (lambda (_%hd203795203845%_
                                         _%sig203801203848%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203795203845%_))
                                      (let ((_%e203798203851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203795203845%_))))
                                        (let ((_%lp-tl203800203858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203798203851%_)))
                                              (_%lp-hd203799203855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203798203851%_))))
                                          (_%loop203797203841%_
                                           _%lp-tl203800203858%_
                                           (cons _%lp-hd203799203855%_
                                                 _%sig203801203848%_))))
                                      (let ((_%sig203802203861%_
                                             (reverse _%sig203801203848%_)))
                                        (_%__kont207172207173%_
                                         _%sig203802203861%_
                                         _%hd203792203829%_))))))
                        (_%loop203797203841%_ _%target203794203835%_ '()))))
                   (_%__match207224207225%_
                    (lambda (_%e203788203815%_
                             _%hd203789203819%_
                             _%tl203790203822%_
                             _%e203791203825%_
                             _%hd203792203829%_
                             _%tl203793203832%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl203793203832%_))
                          (let ((_%__splice207174207175%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl203793203832%_
                                    '0))))
                            (let ((_%tl203796203838%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice207174207175%_
                                      '1)))
                                  (_%target203794203835%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice207174207175%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203796203838%_))
                                  (_%__match207232207233%_
                                   _%e203788203815%_
                                   _%hd203789203819%_
                                   _%tl203790203822%_
                                   _%e203791203825%_
                                   _%hd203792203829%_
                                   _%tl203793203832%_
                                   _%__splice207174207175%_
                                   _%target203794203835%_
                                   _%tl203796203838%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g203761203808%_)))))
                          (let () (declare (not safe)) (_%g203761203808%_)))))
                   (_%__match207212207213%_
                    (lambda (_%e203765203900%_
                             _%hd203766203904%_
                             _%tl203767203907%_
                             _%e203768203910%_
                             _%hd203769203914%_
                             _%tl203770203917%_
                             _%e203771203920%_
                             _%hd203772203924%_
                             _%tl203773203927%_
                             _%e203774203930%_
                             _%hd203775203934%_
                             _%tl203776203937%_
                             _%__splice207170207171%_
                             _%target203777203940%_
                             _%tl203779203943%_)
                      (letrec ((_%loop203780203946%_
                                (lambda (_%hd203778203950%_
                                         _%sig203784203953%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd203778203950%_))
                                      (let ((_%e203781203956%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd203778203950%_))))
                                        (let ((_%lp-tl203783203963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203781203956%_)))
                                              (_%lp-hd203782203960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203781203956%_))))
                                          (_%loop203780203946%_
                                           _%lp-tl203783203963%_
                                           (cons _%lp-hd203782203960%_
                                                 _%sig203784203953%_))))
                                      (let ((_%sig203785203966%_
                                             (reverse _%sig203784203953%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203773203927%_))
                                            (_%__kont207168207169%_
                                             _%sig203785203966%_
                                             _%hd203769203914%_)
                                            (_%__match207224207225%_
                                             _%e203765203900%_
                                             _%hd203766203904%_
                                             _%tl203767203907%_
                                             _%e203768203910%_
                                             _%hd203769203914%_
                                             _%tl203770203917%_)))))))
                        (_%loop203780203946%_ _%target203777203940%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207165207166%_))
                  (let ((_%e203765203900%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207165207166%_))))
                    (let ((_%tl203767203907%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203765203900%_)))
                          (_%hd203766203904%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203765203900%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203767203907%_))
                          (let ((_%e203768203910%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203767203907%_))))
                            (let ((_%tl203770203917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203768203910%_)))
                                  (_%hd203769203914%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203768203910%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl203770203917%_))
                                  (let ((_%e203771203920%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl203770203917%_))))
                                    (let ((_%tl203773203927%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203771203920%_)))
                                          (_%hd203772203924%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203771203920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd203772203924%_))
                                          (let ((_%e203774203930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd203772203924%_))))
                                            (let ((_%tl203776203937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203774203930%_)))
                                                  (_%hd203775203934%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203774203930%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd203775203934%_))
                                                  (if (let ((__tmp207599
                                                             |gxc[1]#_g207600_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp207599
                                                         _%hd203775203934%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl203776203937%_))
                                                          (let ((_%__splice207170207171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203776203937%_ '0))))
                    (let ((_%tl203779203943%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207170207171%_ '1)))
                          (_%target203777203940%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207170207171%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203779203943%_))
                          (_%__match207212207213%_
                           _%e203765203900%_
                           _%hd203766203904%_
                           _%tl203767203907%_
                           _%e203768203910%_
                           _%hd203769203914%_
                           _%tl203770203917%_
                           _%e203771203920%_
                           _%hd203772203924%_
                           _%tl203773203927%_
                           _%e203774203930%_
                           _%hd203775203934%_
                           _%tl203776203937%_
                           _%__splice207170207171%_
                           _%target203777203940%_
                           _%tl203779203943%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203770203917%_))
                              (let ((_%__splice207174207175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203770203917%_
                                        '0))))
                                (let ((_%tl203796203838%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice207174207175%_
                                          '1)))
                                      (_%target203794203835%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice207174207175%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203796203838%_))
                                      (_%__match207232207233%_
                                       _%e203765203900%_
                                       _%hd203766203904%_
                                       _%tl203767203907%_
                                       _%e203768203910%_
                                       _%hd203769203914%_
                                       _%tl203770203917%_
                                       _%__splice207174207175%_
                                       _%target203794203835%_
                                       _%tl203796203838%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g203761203808%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g203761203808%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl203770203917%_))
                      (let ((_%__splice207174207175%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl203770203917%_
                                '0))))
                        (let ((_%tl203796203838%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207174207175%_ '1)))
                              (_%target203794203835%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice207174207175%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203796203838%_))
                              (_%__match207232207233%_
                               _%e203765203900%_
                               _%hd203766203904%_
                               _%tl203767203907%_
                               _%e203768203910%_
                               _%hd203769203914%_
                               _%tl203770203917%_
                               _%__splice207174207175%_
                               _%target203794203835%_
                               _%tl203796203838%_)
                              (let ()
                                (declare (not safe))
                                (_%g203761203808%_)))))
                      (let () (declare (not safe)) (_%g203761203808%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl203770203917%_))
                  (let ((_%__splice207174207175%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl203770203917%_ '0))))
                    (let ((_%tl203796203838%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207174207175%_ '1)))
                          (_%target203794203835%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice207174207175%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203796203838%_))
                          (_%__match207232207233%_
                           _%e203765203900%_
                           _%hd203766203904%_
                           _%tl203767203907%_
                           _%e203768203910%_
                           _%hd203769203914%_
                           _%tl203770203917%_
                           _%__splice207174207175%_
                           _%target203794203835%_
                           _%tl203796203838%_)
                          (let () (declare (not safe)) (_%g203761203808%_)))))
                  (let () (declare (not safe)) (_%g203761203808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl203770203917%_))
                                                      (let ((_%__splice207174207175%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl203770203917%_ '0))))
                (let ((_%tl203796203838%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice207174207175%_ '1)))
                      (_%target203794203835%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice207174207175%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203796203838%_))
                      (_%__match207232207233%_
                       _%e203765203900%_
                       _%hd203766203904%_
                       _%tl203767203907%_
                       _%e203768203910%_
                       _%hd203769203914%_
                       _%tl203770203917%_
                       _%__splice207174207175%_
                       _%target203794203835%_
                       _%tl203796203838%_)
                      (let () (declare (not safe)) (_%g203761203808%_)))))
              (let () (declare (not safe)) (_%g203761203808%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl203770203917%_))
                                              (let ((_%__splice207174207175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl203770203917%_
                                                        '0))))
                                                (let ((_%tl203796203838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207174207175%_
                                                          '1)))
                                                      (_%target203794203835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice207174207175%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203796203838%_))
                                                      (_%__match207232207233%_
                                                       _%e203765203900%_
                                                       _%hd203766203904%_
                                                       _%tl203767203907%_
                                                       _%e203768203910%_
                                                       _%hd203769203914%_
                                                       _%tl203770203917%_
                                                       _%__splice207174207175%_
                                                       _%target203794203835%_
                                                       _%tl203796203838%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g203761203808%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203761203808%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl203770203917%_))
                                      (let ((_%__splice207174207175%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl203770203917%_
                                                '0))))
                                        (let ((_%tl203796203838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207174207175%_
                                                  '1)))
                                              (_%target203794203835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice207174207175%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203796203838%_))
                                              (_%__match207232207233%_
                                               _%e203765203900%_
                                               _%hd203766203904%_
                                               _%tl203767203907%_
                                               _%e203768203910%_
                                               _%hd203769203914%_
                                               _%tl203770203917%_
                                               _%__splice207174207175%_
                                               _%target203794203835%_
                                               _%tl203796203838%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g203761203808%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g203761203808%_))))))
                          (let () (declare (not safe)) (_%g203761203808%_)))))
                  (let () (declare (not safe)) (_%g203761203808%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx205155%_ _%id205157%_)
        (let ((_%proc205161%_
               (let ((__tmp207601
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id205157%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207601))))
          (if (procedure? _%proc205161%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx205155%_
                 _%id205157%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx205146%_ _%id205148%_)
        (let ((_%klass205152%_
               (let ((__tmp207602
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id205148%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp207602))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass205152%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx205146%_
                 _%id205148%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx204396%_ _%proc204398%_ _%sig204399%_)
        (letrec ((_%signature-arity204401%_
                  (lambda (_%args205078%_)
                    (let _%loop205081%_ ((_%rest205084%_ _%args205078%_)
                                         (_%count205086%_ '0))
                      (let* ((_%rest205087205098%_ _%rest205084%_)
                             (_%E205091205104%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest205087205098%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K205094205135%_
                               (lambda (_%rest205132%_)
                                 (_%loop205081%_
                                  _%rest205132%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count205086%_ '1)))))
                              (_%K205093205124%_ (lambda () _%count205086%_))
                              (_%K205092205112%_
                               (lambda () (cons _%count205086%_ '()))))
                          (let ((_%try-match205089205128%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest205087205098%_))
                                       (_%K205093205124%_)
                                       (_%K205092205112%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest205087205098%_))
                                (let* ((_%tl205096205139%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest205087205098%_)))
                                       (_%rest205143%_ _%tl205096205139%_))
                                  (_%K205094205135%_ _%rest205143%_))
                                (_%try-match205089205128%_))))))))
                 (_%make-signature204403%_
                  (lambda (_%args204960%_
                           _%return204962%_
                           _%effect204963%_
                           _%unchecked204964%_)
                    (let ((__tmp207603
                           (lambda (_%g204965204967%_)
                             (|gxc[1]#verify-class!|
                              _%ctx204396%_
                              _%g204965204967%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp207603 _%args204960%_))
                    (|gxc[1]#verify-class!| _%ctx204396%_ _%return204962%_)
                    (if _%unchecked204964%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx204396%_
                         _%unchecked204964%_)
                        '#!void)
                    (let ((_%arity204971%_
                           (_%signature-arity204401%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args204960%_)))))
                      (if _%effect204963%_
                          (let ((_%effect204974%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect204963%_))))
                            (if (and (list? _%effect204974%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect204974%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx204396%_
                                   _%proc204398%_
                                   _%effect204974%_))))
                          '#!void)
                      (cons _%arity204971%_
                            (cons (let* ((_%g204977205000%_
                                          (lambda (_%g204978204996%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g204978204996%_))))
                                         (_%g204976205074%_
                                          (lambda (_%g204978205004%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g204978205004%_))
                                                (let ((_%e204983205007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g204978205004%_))))
                                                  (let ((_%hd204984205011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204983205007%_)))
                                                        (_%tl204985205014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204983205007%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204985205014%_))
                                                        (let ((_%e204986205017%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204985205014%_))))
                  (let ((_%hd204987205021%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204986205017%_)))
                        (_%tl204988205024%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204986205017%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204988205024%_))
                        (let ((_%e204989205027%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204988205024%_))))
                          (let ((_%hd204990205031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204989205027%_)))
                                (_%tl204991205034%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204989205027%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204991205034%_))
                                (let ((_%e204992205037%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204991205034%_))))
                                  (let ((_%hd204993205041%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204992205037%_)))
                                        (_%tl204994205044%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204992205037%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204994205044%_))
                                        ((lambda (_%L205047%_
                                                  _%L205049%_
                                                  _%L205050%_
                                                  _%L205051%_)
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
                           (cons _%L205051%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L205050%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L205049%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L205047%_ '()))
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
                                         _%hd204993205041%_
                                         _%hd204990205031%_
                                         _%hd204987205021%_
                                         _%hd204984205011%_)
                                        (_%g204977205000%_
                                         _%g204978205004%_))))
                                (_%g204977205000%_ _%g204978205004%_))))
                        (_%g204977205000%_ _%g204978205004%_))))
                (_%g204977205000%_ _%g204978205004%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204977205000%_
                                                 _%g204978205004%_)))))
                                    (_%g204976205074%_
                                     (list _%args204960%_
                                           _%return204962%_
                                           _%effect204963%_
                                           _%unchecked204964%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx204396%_ _%proc204398%_)
          (let* ((_%__stx207243207244%_ _%sig204399%_)
                 (_%g204410204513%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx207243207244%_)))))
            (let ((_%__kont207246207247%_
                   (lambda (_%L204941%_ _%L204943%_)
                     (_%make-signature204403%_
                      _%L204943%_
                      _%L204941%_
                      '#f
                      '#f)))
                  (_%__kont207248207249%_
                   (lambda (_%L204892%_ _%L204894%_ _%L204895%_)
                     (_%make-signature204403%_
                      _%L204895%_
                      _%L204894%_
                      _%L204892%_
                      '#f)))
                  (_%__kont207250207251%_
                   (lambda (_%L204816%_ _%L204818%_ _%L204819%_)
                     (_%make-signature204403%_
                      _%L204819%_
                      _%L204818%_
                      _%L204816%_
                      (let ((__tmp207604
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204398%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207604)))))
                  (_%__kont207252207253%_
                   (lambda (_%L204722%_ _%L204724%_ _%L204725%_ _%L204726%_)
                     (_%make-signature204403%_
                      _%L204726%_
                      _%L204725%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204722%_)))))
                  (_%__kont207254207255%_
                   (lambda (_%L204629%_ _%L204631%_)
                     (_%make-signature204403%_
                      _%L204631%_
                      _%L204629%_
                      '#f
                      (let ((__tmp207605
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc204398%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp207605)))))
                  (_%__kont207256207257%_
                   (lambda (_%L204564%_ _%L204566%_ _%L204567%_)
                     (_%make-signature204403%_
                      _%L204567%_
                      _%L204566%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L204564%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx207243207244%_))
                  (let ((_%e204414204921%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx207243207244%_))))
                    (let ((_%tl204416204928%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204414204921%_)))
                          (_%hd204415204925%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204414204921%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204416204928%_))
                          (let ((_%e204417204931%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204416204928%_))))
                            (let ((_%tl204419204938%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204417204931%_)))
                                  (_%hd204418204935%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204417204931%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl204419204938%_))
                                  (_%__kont207246207247%_
                                   _%hd204418204935%_
                                   _%hd204415204925%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204419204938%_))
                                      (let ((_%e204429204868%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204419204938%_))))
                                        (let ((_%tl204431204875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204429204868%_)))
                                              (_%hd204430204872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204429204868%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd204430204872%_))
                                              (let ((_%e204432204878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204430204872%_))))
                                                (if (equal? _%e204432204878%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl204431204875%_))
                                                        (let ((_%e204433204882%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl204431204875%_))))
                  (let ((_%tl204435204889%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204433204882%_)))
                        (_%hd204434204886%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204433204882%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl204435204889%_))
                        (_%__kont207248207249%_
                         _%hd204434204886%_
                         _%hd204418204935%_
                         _%hd204415204925%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl204435204889%_))
                            (let ((_%e204452204802%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl204435204889%_))))
                              (let ((_%tl204454204809%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e204452204802%_)))
                                    (_%hd204453204806%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e204452204802%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd204453204806%_))
                                    (let ((_%e204455204812%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd204453204806%_))))
                                      (if (equal? _%e204455204812%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204454204809%_))
                                              (_%__kont207250207251%_
                                               _%hd204434204886%_
                                               _%hd204418204935%_
                                               _%hd204415204925%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204454204809%_))
                                                  (let ((_%e204477204712%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204454204809%_))))
                                                    (let ((_%tl204479204719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204477204712%_)))
                                                          (_%hd204478204716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204477204712%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204479204719%_))
                                                          (_%__kont207252207253%_
                                                           _%hd204478204716%_
                                                           _%hd204434204886%_
                                                           _%hd204418204935%_
                                                           _%hd204415204925%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204410204513%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g204410204513%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204410204513%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g204410204513%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g204410204513%_))))))
                (let () (declare (not safe)) (_%g204410204513%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e204432204878%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204431204875%_))
                                                            (_%__kont207254207255%_
                                                             _%hd204418204935%_
                                                             _%hd204415204925%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl204431204875%_))
                        (let ((_%e204505204554%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204431204875%_))))
                          (let ((_%tl204507204561%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204505204554%_)))
                                (_%hd204506204558%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204505204554%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl204507204561%_))
                                (_%__kont207256207257%_
                                 _%hd204506204558%_
                                 _%hd204418204935%_
                                 _%hd204415204925%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g204410204513%_)))))
                        (let () (declare (not safe)) (_%g204410204513%_))))
                (let () (declare (not safe)) (_%g204410204513%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204410204513%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204410204513%_))))))
                          (let () (declare (not safe)) (_%g204410204513%_)))))
                  (let () (declare (not safe)) (_%g204410204513%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig204007%_)
        (let* ((_%g204010204090%_
                (lambda (_%g204011204086%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204011204086%_))))
               (_%g204009204392%_
                (lambda (_%g204011204094%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204011204094%_))
                      (let ((_%e204017204097%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204011204094%_))))
                        (let ((_%hd204018204101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204017204097%_)))
                              (_%tl204019204104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204017204097%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204019204104%_))
                              (let ((_%e204020204107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204019204104%_))))
                                (let ((_%hd204021204111%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204020204107%_)))
                                      (_%tl204022204114%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204020204107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd204021204111%_))
                                      (let ((_%e204023204117%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204021204111%_))))
                                        (if (equal? _%e204023204117%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204022204114%_))
                                                (let ((_%e204024204121%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl204022204114%_))))
                                                  (let ((_%hd204025204125%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204024204121%_)))
                                                        (_%tl204026204128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204024204121%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204025204125%_))
                                                        (let ((_%e204027204131%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204025204125%_))))
                  (let ((_%hd204028204135%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204027204131%_)))
                        (_%tl204029204138%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204027204131%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd204028204135%_))
                        (if (let ((__tmp207606 |gxc[1]#_g207607_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp207606
                               _%hd204028204135%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204029204138%_))
                                (let ((_%e204030204141%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204029204138%_))))
                                  (let ((_%hd204031204145%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204030204141%_)))
                                        (_%tl204032204148%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204030204141%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204032204148%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204026204128%_))
                                            (let ((_%e204033204151%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl204026204128%_))))
                                              (let ((_%hd204034204155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204033204151%_)))
                                                    (_%tl204035204158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204033204151%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd204034204155%_))
                                                    (let ((_%e204036204161%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd204034204155%_))))
                                                      (if (equal? _%e204036204161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204035204158%_))
                      (let ((_%e204037204165%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204035204158%_))))
                        (let ((_%hd204038204169%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204037204165%_)))
                              (_%tl204039204172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204037204165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd204038204169%_))
                              (let ((_%e204040204175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd204038204169%_))))
                                (let ((_%hd204041204179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204040204175%_)))
                                      (_%tl204042204182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204040204175%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd204041204179%_))
                                      (if (let ((__tmp207608
                                                 |gxc[1]#_g207609_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp207608
                                             _%hd204041204179%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204042204182%_))
                                              (let ((_%e204043204185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204042204182%_))))
                                                (let ((_%hd204044204189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204043204185%_)))
                                                      (_%tl204045204192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204043204185%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204045204192%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl204039204172%_))
                                                          (let ((_%e204046204195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl204039204172%_))))
                    (let ((_%hd204047204199%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204046204195%_)))
                          (_%tl204048204202%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204046204195%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd204047204199%_))
                          (let ((_%e204049204205%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd204047204199%_))))
                            (if (equal? _%e204049204205%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl204048204202%_))
                                    (let ((_%e204050204209%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl204048204202%_))))
                                      (let ((_%hd204051204213%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e204050204209%_)))
                                            (_%tl204052204216%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e204050204209%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd204051204213%_))
                                            (let ((_%e204053204219%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd204051204213%_))))
                                              (let ((_%hd204054204223%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204053204219%_)))
                                                    (_%tl204055204226%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204053204219%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd204054204223%_))
                                                    (if (let ((__tmp207610
                                                               |gxc[1]#_g207611_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp207610
                                                           _%hd204054204223%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl204055204226%_))
                                                            (let ((_%e204056204229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl204055204226%_))))
                      (let ((_%hd204057204233%_
                             (let ()
                               (declare (not safe))
                               (##car _%e204056204229%_)))
                            (_%tl204058204236%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e204056204229%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl204058204236%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204052204216%_))
                                (let ((_%e204059204239%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204052204216%_))))
                                  (let ((_%hd204060204243%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204059204239%_)))
                                        (_%tl204061204246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204059204239%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd204060204243%_))
                                        (let ((_%e204062204249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd204060204243%_))))
                                          (if (equal? _%e204062204249%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204061204246%_))
                                                  (let ((_%e204063204253%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204061204246%_))))
                                                    (let ((_%hd204064204257%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204063204253%_)))
                                                          (_%tl204065204260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204063204253%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd204064204257%_))
                                                          (let ((_%e204066204263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd204064204257%_))))
                    (let ((_%hd204067204267%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204066204263%_)))
                          (_%tl204068204270%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204066204263%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd204067204267%_))
                          (if (let ((__tmp207612 |gxc[1]#_g207613_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp207612
                                 _%hd204067204267%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204068204270%_))
                                  (let ((_%e204069204273%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204068204270%_))))
                                    (let ((_%hd204070204277%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204069204273%_)))
                                          (_%tl204071204280%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204069204273%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204071204280%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204065204260%_))
                                              (let ((_%e204072204283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204065204260%_))))
                                                (let ((_%hd204073204287%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204072204283%_)))
                                                      (_%tl204074204290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204072204283%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd204073204287%_))
                                                      (let ((_%e204075204293%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd204073204287%_))))
                (if (equal? _%e204075204293%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl204074204290%_))
                        (let ((_%e204076204297%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl204074204290%_))))
                          (let ((_%hd204077204301%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204076204297%_)))
                                (_%tl204078204304%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204076204297%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd204077204301%_))
                                (let ((_%e204079204307%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd204077204301%_))))
                                  (let ((_%hd204080204311%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204079204307%_)))
                                        (_%tl204081204314%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204079204307%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd204080204311%_))
                                        (if (let ((__tmp207614
                                                   |gxc[1]#_g207615_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp207614
                                               _%hd204080204311%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl204081204314%_))
                                                (let ((_%e204082204317%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl204081204314%_))))
                                                  (let ((_%hd204083204321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e204082204317%_)))
                                                        (_%tl204084204324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e204082204317%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl204084204324%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl204078204304%_))
                                                            ((lambda (_%L204327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L204329%_
                              _%L204330%_
                              _%L204331%_
                              _%L204332%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L204329%_))
                           (cons _%L204329%_
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
                       (cons _%L204331%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L204327%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd204083204321%_
                     _%hd204070204277%_
                     _%hd204057204233%_
                     _%hd204044204189%_
                     _%hd204031204145%_)
                    (_%g204010204090%_ _%g204011204094%_))
                (_%g204010204090%_ _%g204011204094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204010204090%_
                                                 _%g204011204094%_))
                                            (_%g204010204090%_
                                             _%g204011204094%_))
                                        (_%g204010204090%_
                                         _%g204011204094%_))))
                                (_%g204010204090%_ _%g204011204094%_))))
                        (_%g204010204090%_ _%g204011204094%_))
                    (_%g204010204090%_ _%g204011204094%_)))
              (_%g204010204090%_ _%g204011204094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204010204090%_
                                               _%g204011204094%_))
                                          (_%g204010204090%_
                                           _%g204011204094%_))))
                                  (_%g204010204090%_ _%g204011204094%_))
                              (_%g204010204090%_ _%g204011204094%_))
                          (_%g204010204090%_ _%g204011204094%_))))
                  (_%g204010204090%_ _%g204011204094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g204010204090%_
                                                   _%g204011204094%_))
                                              (_%g204010204090%_
                                               _%g204011204094%_)))
                                        (_%g204010204090%_
                                         _%g204011204094%_))))
                                (_%g204010204090%_ _%g204011204094%_))
                            (_%g204010204090%_ _%g204011204094%_))))
                    (_%g204010204090%_ _%g204011204094%_))
                (_%g204010204090%_ _%g204011204094%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g204010204090%_
                                                     _%g204011204094%_))))
                                            (_%g204010204090%_
                                             _%g204011204094%_))))
                                    (_%g204010204090%_ _%g204011204094%_))
                                (_%g204010204090%_ _%g204011204094%_)))
                          (_%g204010204090%_ _%g204011204094%_))))
                  (_%g204010204090%_ _%g204011204094%_))
              (_%g204010204090%_ _%g204011204094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204010204090%_
                                               _%g204011204094%_))
                                          (_%g204010204090%_
                                           _%g204011204094%_))
                                      (_%g204010204090%_ _%g204011204094%_))))
                              (_%g204010204090%_ _%g204011204094%_))))
                      (_%g204010204090%_ _%g204011204094%_))
                  (_%g204010204090%_ _%g204011204094%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g204010204090%_
                                                     _%g204011204094%_))))
                                            (_%g204010204090%_
                                             _%g204011204094%_))
                                        (_%g204010204090%_
                                         _%g204011204094%_))))
                                (_%g204010204090%_ _%g204011204094%_))
                            (_%g204010204090%_ _%g204011204094%_))
                        (_%g204010204090%_ _%g204011204094%_))))
                (_%g204010204090%_ _%g204011204094%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g204010204090%_
                                                 _%g204011204094%_))
                                            (_%g204010204090%_
                                             _%g204011204094%_)))
                                      (_%g204010204090%_ _%g204011204094%_))))
                              (_%g204010204090%_ _%g204011204094%_))))
                      (_%g204010204090%_ _%g204011204094%_)))))
          (_%g204009204392%_ _%sig204007%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx205164%_)
        (let* ((_%g205167205185%_
                (lambda (_%g205168205181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205168205181%_))))
               (_%g205166205240%_
                (lambda (_%g205168205189%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205168205189%_))
                      (let ((_%e205171205192%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205168205189%_))))
                        (let ((_%hd205172205196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205171205192%_)))
                              (_%tl205173205199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205171205192%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205173205199%_))
                              (let ((_%e205174205202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205173205199%_))))
                                (let ((_%hd205175205206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205174205202%_)))
                                      (_%tl205176205209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205174205202%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205176205209%_))
                                      (let ((_%e205177205212%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205176205209%_))))
                                        (let ((_%hd205178205216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205177205212%_)))
                                              (_%tl205179205219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205177205212%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205179205219%_))
                                              ((lambda (_%L205222%_
                                                        _%L205224%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L205224%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L205222%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx205164%_
                                                        _%L205224%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx205164%_
                                                        _%L205222%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L205224%_
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
                                                   (cons _%L205222%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205167205185%_
                                                      _%g205168205189%_)))
                                               _%hd205178205216%_
                                               _%hd205175205206%_)
                                              (_%g205167205185%_
                                               _%g205168205189%_))))
                                      (_%g205167205185%_ _%g205168205189%_))))
                              (_%g205167205185%_ _%g205168205189%_))))
                      (_%g205167205185%_ _%g205168205189%_)))))
          (_%g205166205240%_ _%stx205164%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx205244%_)
        (let* ((_%g205247205271%_
                (lambda (_%g205248205267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205248205267%_))))
               (_%g205246205554%_
                (lambda (_%g205248205275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205248205275%_))
                      (let ((_%e205251205278%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205248205275%_))))
                        (let ((_%hd205252205282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205251205278%_)))
                              (_%tl205253205285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205251205278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205253205285%_))
                              (let ((_%e205254205288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205253205285%_))))
                                (let ((_%hd205255205292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205254205288%_)))
                                      (_%tl205256205295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205254205288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205256205295%_))
                                      (let ((_g207616_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205256205295%_
                                                '0))))
                                        (begin
                                          (let ((_g207617_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207616_)
                                                       (##vector-length
                                                        _g207616_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207617_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207617_)))
                                          (let ((_%target205257205298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207616_ 0)))
                                                (_%tl205259205301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207616_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205259205301%_))
                                                (letrec ((_%loop205260205304%_
                                                          (lambda (_%hd205258205308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature205264205311%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205258205308%_))
                        (let ((_%e205261205314%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205258205308%_))))
                          (let ((_%lp-hd205262205318%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205261205314%_)))
                                (_%lp-tl205263205321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205261205314%_))))
                            (_%loop205260205304%_
                             _%lp-tl205263205321%_
                             (cons _%lp-hd205262205318%_
                                   _%signature205264205311%_))))
                        (let ((_%signature205265205324%_
                               (reverse _%signature205264205311%_)))
                          ((lambda (_%L205328%_ _%L205330%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205330%_))
                                 (let* ((_%g205348205363%_
                                         (lambda (_%g205349205359%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205349205359%_))))
                                        (_%g205347205542%_
                                         (lambda (_%g205349205367%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205349205367%_))
                                               (let ((_%e205352205370%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205349205367%_))))
                                                 (let ((_%hd205353205374%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205352205370%_)))
                                                       (_%tl205354205377%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205352205370%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205354205377%_))
                                                       (let ((_%e205355205380%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205354205377%_))))
                 (let ((_%hd205356205384%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205355205380%_)))
                       (_%tl205357205387%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205355205380%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl205357205387%_))
                       ((lambda (_%L205390%_ _%L205392%_)
                          (let* ((_%g205408205416%_
                                  (lambda (_%g205409205412%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g205409205412%_))))
                                 (_%g205407205538%_
                                  (lambda (_%g205409205420%_)
                                    ((lambda (_%L205423%_)
                                       (let* ((_%unchecked205436%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L205390%_))
                                              (_%g205439205447%_
                                               (lambda (_%g205440205443%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g205440205443%_))))
                                              (_%g205438205470%_
                                               (lambda (_%g205440205451%_)
                                                 ((lambda (_%L205454%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L205423%_
                                                                (cons _%L205454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g205440205451%_))))
                                         (_%g205438205470%_
                                          (if _%unchecked205436%_
                                              (let* ((_%g205474205489%_
                                                      (lambda (_%g205475205485%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g205475205485%_))))
                                                     (_%g205473205534%_
                                                      (lambda (_%g205475205493%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g205475205493%_))
                                                            (let ((_%e205478205496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g205475205493%_))))
                      (let ((_%hd205479205500%_
                             (let ()
                               (declare (not safe))
                               (##car _%e205478205496%_)))
                            (_%tl205480205503%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e205478205496%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl205480205503%_))
                            (let ((_%e205481205506%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl205480205503%_))))
                              (let ((_%hd205482205510%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e205481205506%_)))
                                    (_%tl205483205513%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e205481205506%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205483205513%_))
                                    ((lambda (_%L205516%_ _%L205518%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L205518%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205392%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L205516%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd205482205510%_
                                     _%hd205479205500%_)
                                    (_%g205474205489%_ _%g205475205493%_))))
                            (_%g205474205489%_ _%g205475205493%_))))
                    (_%g205474205489%_ _%g205475205493%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g205473205534%_
                                                 _%unchecked205436%_))
                                              '(begin)))))
                                     _%g205409205420%_))))
                            (_%g205407205538%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L205330%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L205392%_ '()))
                   (cons '#f (cons 'signature: (cons _%L205390%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd205356205384%_
                        _%hd205353205374%_)
                       (_%g205348205363%_ _%g205349205367%_))))
               (_%g205348205363%_ _%g205349205367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205348205363%_
                                                _%g205349205367%_)))))
                                   (_%g205347205542%_
                                    (|gxc[1]#parse-signature|
                                     _%stx205244%_
                                     _%L205330%_
                                     (let ((__tmp207618
                                            (lambda (_%g205545205548%_
                                                     _%g205546205551%_)
                                              (cons _%g205545205548%_
                                                    _%g205546205551%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp207618
                                        '()
                                        _%L205328%_)))))
                                 (_%g205247205271%_ _%g205248205275%_)))
                           _%signature205265205324%_
                           _%hd205255205292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205260205304%_
                                                   _%target205257205298%_
                                                   '()))
                                                (_%g205247205271%_
                                                 _%g205248205275%_)))))
                                      (_%g205247205271%_ _%g205248205275%_))))
                              (_%g205247205271%_ _%g205248205275%_))))
                      (_%g205247205271%_ _%g205248205275%_)))))
          (_%g205246205554%_ _%stx205244%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx205559%_)
        (let* ((_%g205562205586%_
                (lambda (_%g205563205582%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205563205582%_))))
               (_%g205561206469%_
                (lambda (_%g205563205590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205563205590%_))
                      (let ((_%e205566205593%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205563205590%_))))
                        (let ((_%hd205567205597%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205566205593%_)))
                              (_%tl205568205600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205566205593%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205568205600%_))
                              (let ((_%e205569205603%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205568205600%_))))
                                (let ((_%hd205570205607%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205569205603%_)))
                                      (_%tl205571205610%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205569205603%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl205571205610%_))
                                      (let ((_g207619_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl205571205610%_
                                                '0))))
                                        (begin
                                          (let ((_g207620_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g207619_)
                                                       (##vector-length
                                                        _g207619_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g207620_ 2)))
                                                (error "Context expects 2 values"
                                                       _g207620_)))
                                          (let ((_%target205572205613%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g207619_ 0)))
                                                (_%tl205574205616%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g207619_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl205574205616%_))
                                                (letrec ((_%loop205575205619%_
                                                          (lambda (_%hd205573205623%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature205579205626%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd205573205623%_))
                        (let ((_%e205576205629%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd205573205623%_))))
                          (let ((_%lp-hd205577205633%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205576205629%_)))
                                (_%lp-tl205578205636%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205576205629%_))))
                            (_%loop205575205619%_
                             _%lp-tl205578205636%_
                             (cons _%lp-hd205577205633%_
                                   _%case-signature205579205626%_))))
                        (let ((_%case-signature205580205639%_
                               (reverse _%case-signature205579205626%_)))
                          ((lambda (_%L205643%_ _%L205645%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L205645%_))
                                 (let* ((_%signatures205676%_
                                         (map (lambda (_%g205662205664%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx205559%_
                                                 _%L205645%_
                                                 _%g205662205664%_))
                                              (let ((__tmp207621
                                                     (lambda (_%g205667205670%_
                                                              _%g205668205673%_)
                                                       (cons _%g205667205670%_
                                                             _%g205668205673%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp207621
                                                 '()
                                                 _%L205643%_))))
                                        (_%g205679205705%_
                                         (lambda (_%g205680205701%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205680205701%_))))
                                        (_%g205678206465%_
                                         (lambda (_%g205680205709%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g205680205709%_))
                                               (let ((_g207622_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g205680205709%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g207623_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g207622_)
                        (##vector-length _g207622_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g207623_ 2)))
                 (error "Context expects 2 values" _g207623_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target205683205712%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207622_
                                                             0)))
                                                         (_%tl205685205715%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g207622_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205685205715%_))
                                                         (letrec ((_%loop205686205718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd205684205722%_
                                    _%sig205690205725%_
                                    _%arity205691205727%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205684205722%_))
                                 (let ((_%e205687205730%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205684205722%_))))
                                   (let ((_%lp-hd205688205734%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205687205730%_)))
                                         (_%lp-tl205689205737%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205687205730%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd205688205734%_))
                                         (let ((_%e205694205740%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd205688205734%_))))
                                           (let ((_%hd205695205744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e205694205740%_)))
                                                 (_%tl205696205747%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e205694205740%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205696205747%_))
                                                 (let ((_%e205697205750%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205696205747%_))))
                                                   (let ((_%hd205698205754%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205697205750%_)))
                                                         (_%tl205699205757%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205697205750%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205699205757%_))
                                                         (_%loop205686205718%_
                                                          _%lp-tl205689205737%_
                                                          (cons _%hd205698205754%_
                                                                _%sig205690205725%_)
                                                          (cons _%hd205695205744%_
                                                                _%arity205691205727%_))
                                                         (_%g205679205705%_
                                                          _%g205680205709%_))))
                                                 (_%g205679205705%_
                                                  _%g205680205709%_))))
                                         (_%g205679205705%_
                                          _%g205680205709%_))))
                                 (let ((_%sig205692205760%_
                                        (reverse _%sig205690205725%_))
                                       (_%arity205693205763%_
                                        (reverse _%arity205691205727%_)))
                                   ((lambda (_%L205766%_ _%L205768%_)
                                      (let* ((_%g205785205793%_
                                              (lambda (_%g205786205789%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g205786205789%_))))
                                             (_%g205784206450%_
                                              (lambda (_%g205786205797%_)
                                                ((lambda (_%L205800%_)
                                                   (let* ((_%g205813205821%_
                                                           (lambda (_%g205814205817%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g205814205817%_))))
                  (_%g205812205843%_
                   (lambda (_%g205814205825%_)
                     ((lambda (_%L205828%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L205800%_ (cons _%L205828%_ '()))))
                      _%g205814205825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205812205843%_
                                                      (let ((_g207624_
                                                             (let _%loop205847%_ ((_%rest205850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures205676%_)
                                          (_%unchecked-proc205852%_ '#f)
                                          (_%unchecked-clauses205853%_ '()))
                       (let* ((_%rest205854205862%_ _%rest205850%_)
                              (_%else205856205874%_
                               (lambda ()
                                 (values _%unchecked-proc205852%_
                                         (reverse!
                                          _%unchecked-clauses205853%_))))
                              (_%K205858206315%_
                               (lambda (_%rest205878%_ _%hd205880%_)
                                 (let* ((_%g205882205969%_
                                         (lambda (_%g205883205965%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g205883205965%_))))
                                        (_%g205881206311%_
                                         (lambda (_%g205883205973%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g205883205973%_))
                                               (let ((_%e205890205976%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g205883205973%_))))
                                                 (let ((_%hd205891205980%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205890205976%_)))
                                                       (_%tl205892205983%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205890205976%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl205892205983%_))
                                                       (let ((_%e205893205986%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl205892205983%_))))
                 (let ((_%hd205894205990%_
                        (let ()
                          (declare (not safe))
                          (##car _%e205893205986%_)))
                       (_%tl205895205993%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e205893205986%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd205894205990%_))
                       (let ((_%e205896205996%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd205894205990%_))))
                         (let ((_%hd205897206000%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205896205996%_)))
                               (_%tl205898206003%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205896205996%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl205898206003%_))
                               (let ((_%e205899206006%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl205898206003%_))))
                                 (let ((_%hd205900206010%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205899206006%_)))
                                       (_%tl205901206013%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205899206006%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd205900206010%_))
                                       (let ((_%e205902206016%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd205900206010%_))))
                                         (if (equal? _%e205902206016%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205901206013%_))
                                                 (let ((_%e205903206020%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205901206013%_))))
                                                   (let ((_%hd205904206024%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205903206020%_)))
                                                         (_%tl205905206027%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205903206020%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd205904206024%_))
                                                         (let ((_%e205906206030%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd205904206024%_))))
                   (let ((_%hd205907206034%_
                          (let ()
                            (declare (not safe))
                            (##car _%e205906206030%_)))
                         (_%tl205908206037%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e205906206030%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd205907206034%_))
                         (if (let ((__tmp207626 |gxc[1]#_g207627_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp207626
                                _%hd205907206034%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205908206037%_))
                                 (let ((_%e205909206040%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205908206037%_))))
                                   (let ((_%hd205910206044%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205909206040%_)))
                                         (_%tl205911206047%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205909206040%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl205911206047%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl205905206027%_))
                                             (let ((_%e205912206050%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl205905206027%_))))
                                               (let ((_%hd205913206054%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205912206050%_)))
                                                     (_%tl205914206057%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205912206050%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd205913206054%_))
                                                     (let ((_%e205915206060%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd205913206054%_))))
                                                       (if (equal? _%e205915206060%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl205914206057%_))
                       (let ((_%e205916206064%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl205914206057%_))))
                         (let ((_%hd205917206068%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e205916206064%_)))
                               (_%tl205918206071%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e205916206064%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd205917206068%_))
                               (let ((_%e205919206074%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd205917206068%_))))
                                 (let ((_%hd205920206078%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e205919206074%_)))
                                       (_%tl205921206081%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e205919206074%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd205920206078%_))
                                       (if (let ((__tmp207628
                                                  |gxc[1]#_g207629_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp207628
                                              _%hd205920206078%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205921206081%_))
                                               (let ((_%e205922206084%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205921206081%_))))
                                                 (let ((_%hd205923206088%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205922206084%_)))
                                                       (_%tl205924206091%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205922206084%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl205924206091%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl205918206071%_))
                                                           (let ((_%e205925206094%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl205918206071%_))))
                     (let ((_%hd205926206098%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205925206094%_)))
                           (_%tl205927206101%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205925206094%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd205926206098%_))
                           (let ((_%e205928206104%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd205926206098%_))))
                             (if (equal? _%e205928206104%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl205927206101%_))
                                     (let ((_%e205929206108%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl205927206101%_))))
                                       (let ((_%hd205930206112%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e205929206108%_)))
                                             (_%tl205931206115%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e205929206108%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd205930206112%_))
                                             (let ((_%e205932206118%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd205930206112%_))))
                                               (let ((_%hd205933206122%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e205932206118%_)))
                                                     (_%tl205934206125%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e205932206118%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd205933206122%_))
                                                     (if (let ((__tmp207630
                                                                |gxc[1]#_g207631_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp207630
                                                            _%hd205933206122%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl205934206125%_))
                     (let ((_%e205935206128%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl205934206125%_))))
                       (let ((_%hd205936206132%_
                              (let ()
                                (declare (not safe))
                                (##car _%e205935206128%_)))
                             (_%tl205937206135%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e205935206128%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl205937206135%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl205931206115%_))
                                 (let ((_%e205938206138%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl205931206115%_))))
                                   (let ((_%hd205939206142%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205938206138%_)))
                                         (_%tl205940206145%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205938206138%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd205939206142%_))
                                         (let ((_%e205941206148%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd205939206142%_))))
                                           (if (equal? _%e205941206148%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl205940206145%_))
                                                   (let ((_%e205942206152%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl205940206145%_))))
                                                     (let ((_%hd205943206156%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e205942206152%_)))
                                                           (_%tl205944206159%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e205942206152%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd205943206156%_))
                                                           (let ((_%e205945206162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd205943206156%_))))
                     (let ((_%hd205946206166%_
                            (let ()
                              (declare (not safe))
                              (##car _%e205945206162%_)))
                           (_%tl205947206169%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e205945206162%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd205946206166%_))
                           (if (let ((__tmp207632 |gxc[1]#_g207633_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp207632
                                  _%hd205946206166%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl205947206169%_))
                                   (let ((_%e205948206172%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl205947206169%_))))
                                     (let ((_%hd205949206176%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e205948206172%_)))
                                           (_%tl205950206179%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e205948206172%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl205950206179%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl205944206159%_))
                                               (let ((_%e205951206182%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl205944206159%_))))
                                                 (let ((_%hd205952206186%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e205951206182%_)))
                                                       (_%tl205953206189%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e205951206182%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd205952206186%_))
                                                       (let ((_%e205954206192%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd205952206186%_))))
                 (if (equal? _%e205954206192%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl205953206189%_))
                         (let ((_%e205955206196%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl205953206189%_))))
                           (let ((_%hd205956206200%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e205955206196%_)))
                                 (_%tl205957206203%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e205955206196%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd205956206200%_))
                                 (let ((_%e205958206206%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd205956206200%_))))
                                   (let ((_%hd205959206210%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e205958206206%_)))
                                         (_%tl205960206213%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e205958206206%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd205959206210%_))
                                         (if (let ((__tmp207634
                                                    |gxc[1]#_g207635_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp207634
                                                _%hd205959206210%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl205960206213%_))
                                                 (let ((_%e205961206216%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl205960206213%_))))
                                                   (let ((_%hd205962206220%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e205961206216%_)))
                                                         (_%tl205963206223%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e205961206216%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl205963206223%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl205957206203%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl205895205993%_))
                         ((lambda (_%L206226%_
                                   _%L206228%_
                                   _%L206229%_
                                   _%L206230%_
                                   _%L206231%_
                                   _%L206232%_)
                            (let ((_%clause206303%_
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
                                                     (cons _%L206232%_ '()))
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
                                                 (cons _%L206230%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206226%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked206305%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L206228%_))))
                              (_%loop205847%_
                               _%rest205878%_
                               (let ((_%$e206307%_ _%unchecked206305%_))
                                 (if _%$e206307%_
                                     _%$e206307%_
                                     _%unchecked-proc205852%_))
                               (cons _%clause206303%_
                                     _%unchecked-clauses205853%_))))
                          _%hd205962206220%_
                          _%hd205949206176%_
                          _%hd205936206132%_
                          _%hd205923206088%_
                          _%hd205910206044%_
                          _%hd205891205980%_)
                         (_%g205882205969%_ _%g205883205973%_))
                     (_%g205882205969%_ _%g205883205973%_))
                 (_%g205882205969%_ _%g205883205973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205882205969%_
                                                  _%g205883205973%_))
                                             (_%g205882205969%_
                                              _%g205883205973%_))
                                         (_%g205882205969%_
                                          _%g205883205973%_))))
                                 (_%g205882205969%_ _%g205883205973%_))))
                         (_%g205882205969%_ _%g205883205973%_))
                     (_%g205882205969%_ _%g205883205973%_)))
               (_%g205882205969%_ _%g205883205973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205882205969%_
                                                _%g205883205973%_))
                                           (_%g205882205969%_
                                            _%g205883205973%_))))
                                   (_%g205882205969%_ _%g205883205973%_))
                               (_%g205882205969%_ _%g205883205973%_))
                           (_%g205882205969%_ _%g205883205973%_))))
                   (_%g205882205969%_ _%g205883205973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g205882205969%_
                                                    _%g205883205973%_))
                                               (_%g205882205969%_
                                                _%g205883205973%_)))
                                         (_%g205882205969%_
                                          _%g205883205973%_))))
                                 (_%g205882205969%_ _%g205883205973%_))
                             (_%g205882205969%_ _%g205883205973%_))))
                     (_%g205882205969%_ _%g205883205973%_))
                 (_%g205882205969%_ _%g205883205973%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205882205969%_
                                                      _%g205883205973%_))))
                                             (_%g205882205969%_
                                              _%g205883205973%_))))
                                     (_%g205882205969%_ _%g205883205973%_))
                                 (_%g205882205969%_ _%g205883205973%_)))
                           (_%g205882205969%_ _%g205883205973%_))))
                   (_%g205882205969%_ _%g205883205973%_))
               (_%g205882205969%_ _%g205883205973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205882205969%_
                                                _%g205883205973%_))
                                           (_%g205882205969%_
                                            _%g205883205973%_))
                                       (_%g205882205969%_ _%g205883205973%_))))
                               (_%g205882205969%_ _%g205883205973%_))))
                       (_%g205882205969%_ _%g205883205973%_))
                   (_%g205882205969%_ _%g205883205973%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g205882205969%_
                                                      _%g205883205973%_))))
                                             (_%g205882205969%_
                                              _%g205883205973%_))
                                         (_%g205882205969%_
                                          _%g205883205973%_))))
                                 (_%g205882205969%_ _%g205883205973%_))
                             (_%g205882205969%_ _%g205883205973%_))
                         (_%g205882205969%_ _%g205883205973%_))))
                 (_%g205882205969%_ _%g205883205973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g205882205969%_
                                                  _%g205883205973%_))
                                             (_%g205882205969%_
                                              _%g205883205973%_)))
                                       (_%g205882205969%_ _%g205883205973%_))))
                               (_%g205882205969%_ _%g205883205973%_))))
                       (_%g205882205969%_ _%g205883205973%_))))
               (_%g205882205969%_ _%g205883205973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205882205969%_
                                                _%g205883205973%_)))))
                                   (_%g205881206311%_ _%hd205880%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest205854205862%_))
                             (let ((_%hd205859206319%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest205854205862%_)))
                                   (_%tl205860206322%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest205854205862%_))))
                               (let* ((_%hd206325%_ _%hd205859206319%_)
                                      (_%rest206328%_ _%tl205860206322%_))
                                 (_%K205858206315%_
                                  _%rest206328%_
                                  _%hd206325%_)))
                             (_%else205856205874%_))))))
                (begin
                  (let ((_g207625_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207624_)
                               (##vector-length _g207624_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207625_ 2)))
                        (error "Context expects 2 values" _g207625_)))
                  (let ((_%unchecked-proc206331%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207624_ 0)))
                        (_%unchecked-clauses206333%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207624_ 1))))
                    (if _%unchecked-proc206331%_
                        (let* ((_%g206335206359%_
                                (lambda (_%g206336206355%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g206336206355%_))))
                               (_%g206334206446%_
                                (lambda (_%g206336206363%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g206336206363%_))
                                      (let ((_%e206339206366%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g206336206363%_))))
                                        (let ((_%hd206340206370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206339206366%_)))
                                              (_%tl206341206373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206339206366%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206341206373%_))
                                              (let ((_%e206342206376%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206341206373%_))))
                                                (let ((_%hd206343206380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206342206376%_)))
                                                      (_%tl206344206383%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206342206376%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd206343206380%_))
                                                      (let ((_g207636_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd206343206380%_ '0))))
                (begin
                  (let ((_g207637_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g207636_)
                               (##vector-length _g207636_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g207637_ 2)))
                        (error "Context expects 2 values" _g207637_)))
                  (let ((_%target206345206386%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207636_ 0)))
                        (_%tl206347206389%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g207636_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206347206389%_))
                        (letrec ((_%loop206348206392%_
                                  (lambda (_%hd206346206396%_
                                           _%clause206352206399%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd206346206396%_))
                                        (let ((_%e206349206402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd206346206396%_))))
                                          (let ((_%lp-hd206350206406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e206349206402%_)))
                                                (_%lp-tl206351206409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e206349206402%_))))
                                            (_%loop206348206392%_
                                             _%lp-tl206351206409%_
                                             (cons _%lp-hd206350206406%_
                                                   _%clause206352206399%_))))
                                        (let ((_%clause206353206412%_
                                               (reverse _%clause206352206399%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206344206383%_))
                                              ((lambda (_%L206416%_
                                                        _%L206418%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L206418%_
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
                                             (let ((__tmp207638
                                                    (lambda (_%g206437206440%_
                                                             _%g206438206443%_)
                                                      (cons _%g206437206440%_
                                                            _%g206438206443%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp207638
                                                '()
                                                _%L206416%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause206353206412%_
                                               _%hd206340206370%_)
                                              (_%g206335206359%_
                                               _%g206336206363%_)))))))
                          (_%loop206348206392%_ _%target206345206386%_ '()))
                        (_%g206335206359%_ _%g206336206363%_)))))
              (_%g206335206359%_ _%g206336206363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206335206359%_
                                               _%g206336206363%_))))
                                      (_%g206335206359%_ _%g206336206363%_)))))
                          (_%g206334206446%_
                           (list _%unchecked-proc206331%_
                                 _%unchecked-clauses206333%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g205786205797%_))))
                                        (_%g205784206450%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L205645%_
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
                                          _%L205766%_
                                          _%L205768%_))
                                       (let ((__tmp207639
                                              (lambda (_%g206453206457%_
                                                       _%g206454206460%_
                                                       _%g206455206462%_)
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
                                (cons _%g206454206460%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g206453206457%_ '())))))
              _%g206455206462%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp207639
                                          '()
                                          _%L205766%_
                                          _%L205768%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig205692205760%_
                                    _%arity205693205763%_))))))
                   (_%loop205686205718%_ _%target205683205712%_ '() '()))
                 (_%g205679205705%_ _%g205680205709%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g205679205705%_
                                                _%g205680205709%_)))))
                                   (_%g205678206465%_ _%signatures205676%_))
                                 (_%g205562205586%_ _%g205563205590%_)))
                           _%case-signature205580205639%_
                           _%hd205570205607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop205575205619%_
                                                   _%target205572205613%_
                                                   '()))
                                                (_%g205562205586%_
                                                 _%g205563205590%_)))))
                                      (_%g205562205586%_ _%g205563205590%_))))
                              (_%g205562205586%_ _%g205563205590%_))))
                      (_%g205562205586%_ _%g205563205590%_)))))
          (_%g205561206469%_ _%stx205559%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx206477%_)
        (let* ((_%__stx207459207460%_ _%$stx206477%_)
               (_%g206483206543%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx207459207460%_)))))
          (let ((_%__kont207462207463%_
                 (lambda (_%L206765%_ _%L206767%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206767%_ '()))
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
                                                       (cons _%L206767%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206765%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207464207465%_
                 (lambda (_%L206690%_ _%L206692%_ _%L206693%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206693%_ '()))
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
                                                       (cons _%L206693%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206692%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206690%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont207466207467%_
                 (lambda (_%L206604%_ _%L206606%_ _%L206607%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L206607%_ '()))
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
                                                       (cons _%L206607%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L206606%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L206604%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx207459207460%_))
                (let ((_%e206487206721%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx207459207460%_))))
                  (let ((_%tl206489206728%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206487206721%_)))
                        (_%hd206488206725%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206487206721%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206489206728%_))
                        (let ((_%e206490206731%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206489206728%_))))
                          (let ((_%tl206492206738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206490206731%_)))
                                (_%hd206491206735%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206490206731%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd206491206735%_))
                                (let ((_%e206493206741%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd206491206735%_))))
                                  (if (equal? _%e206493206741%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl206492206738%_))
                                          (let ((_%e206494206745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl206492206738%_))))
                                            (let ((_%tl206496206752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206494206745%_)))
                                                  (_%hd206495206749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206494206745%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206496206752%_))
                                                  (let ((_%e206497206755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206496206752%_))))
                                                    (let ((_%tl206499206762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206497206755%_)))
                                                          (_%hd206498206759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206497206755%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl206499206762%_))
                                                          (_%__kont207462207463%_
                                                           _%hd206498206759%_
                                                           _%hd206495206749%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g206483206543%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206483206543%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g206483206543%_)))
                                      (if (equal? _%e206493206741%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206492206738%_))
                                              (let ((_%e206510206660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206492206738%_))))
                                                (let ((_%tl206512206667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206510206660%_)))
                                                      (_%hd206511206664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206510206660%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl206512206667%_))
                                                      (let ((_%e206513206670%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl206512206667%_))))
                (let ((_%tl206515206677%_
                       (let () (declare (not safe)) (##cdr _%e206513206670%_)))
                      (_%hd206514206674%_
                       (let ()
                         (declare (not safe))
                         (##car _%e206513206670%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206515206677%_))
                      (let ((_%e206516206680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206515206677%_))))
                        (let ((_%tl206518206687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206516206680%_)))
                              (_%hd206517206684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206516206680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206518206687%_))
                              (_%__kont207464207465%_
                               _%hd206517206684%_
                               _%hd206514206674%_
                               _%hd206511206664%_)
                              (let ()
                                (declare (not safe))
                                (_%g206483206543%_)))))
                      (let () (declare (not safe)) (_%g206483206543%_)))))
              (let () (declare (not safe)) (_%g206483206543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g206483206543%_)))
                                          (if (equal? _%e206493206741%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206492206738%_))
                                                  (let ((_%e206529206574%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206492206738%_))))
                                                    (let ((_%tl206531206581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206529206574%_)))
                                                          (_%hd206530206578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206529206574%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206531206581%_))
                                                          (let ((_%e206532206584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206531206581%_))))
                    (let ((_%tl206534206591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206532206584%_)))
                          (_%hd206533206588%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206532206584%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206534206591%_))
                          (let ((_%e206535206594%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206534206591%_))))
                            (let ((_%tl206537206601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206535206594%_)))
                                  (_%hd206536206598%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206535206594%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206537206601%_))
                                  (_%__kont207466207467%_
                                   _%hd206536206598%_
                                   _%hd206533206588%_
                                   _%hd206530206578%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206483206543%_)))))
                          (let () (declare (not safe)) (_%g206483206543%_)))))
                  (let () (declare (not safe)) (_%g206483206543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g206483206543%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206483206543%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g206483206543%_)))))
                        (let () (declare (not safe)) (_%g206483206543%_)))))
                (let () (declare (not safe)) (_%g206483206543%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx206789%_)
        (let* ((_%g206793206813%_
                (lambda (_%g206794206809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206794206809%_))))
               (_%g206792206884%_
                (lambda (_%g206794206817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206794206817%_))
                      (let ((_%e206796206820%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206794206817%_))))
                        (let ((_%hd206797206824%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206796206820%_)))
                              (_%tl206798206827%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206796206820%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206798206827%_))
                              (let ((_g207640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206798206827%_
                                        '0))))
                                (begin
                                  (let ((_g207641_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g207640_)
                                               (##vector-length _g207640_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g207641_ 2)))
                                        (error "Context expects 2 values"
                                               _g207641_)))
                                  (let ((_%target206799206830%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207640_ 0)))
                                        (_%tl206801206833%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g207640_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206801206833%_))
                                        (letrec ((_%loop206802206836%_
                                                  (lambda (_%hd206800206840%_
                                                           _%decl206806206843%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206800206840%_))
                                                        (let ((_%e206803206846%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206800206840%_))))
                  (let ((_%lp-hd206804206850%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206803206846%_)))
                        (_%lp-tl206805206853%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206803206846%_))))
                    (_%loop206802206836%_
                     _%lp-tl206805206853%_
                     (cons _%lp-hd206804206850%_ _%decl206806206843%_))))
                (let ((_%decl206807206856%_ (reverse _%decl206806206843%_)))
                  ((lambda (_%L206860%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp207642
                                  (lambda (_%g206875206878%_ _%g206876206881%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g206875206878%_)
                                          _%g206876206881%_))))
                             (declare (not safe))
                             (__foldr1 __tmp207642 '() _%L206860%_))))
                   _%decl206807206856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop206802206836%_
                                           _%target206799206830%_
                                           '()))
                                        (_%g206793206813%_
                                         _%g206794206817%_)))))
                              (_%g206793206813%_ _%g206794206817%_))))
                      (_%g206793206813%_ _%g206794206817%_)))))
          (_%g206792206884%_ _%$stx206789%_))))))
