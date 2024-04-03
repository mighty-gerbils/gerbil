(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g201170_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201184_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201186_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201188_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201190_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201203_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201205_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201207_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g201209_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx194726%_)
        (let* ((_%g194730194748%_
                (lambda (_%g194731194744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194731194744%_))))
               (_%g194729194803%_
                (lambda (_%g194731194752%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194731194752%_))
                      (let ((_%e194736194755%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194731194752%_))))
                        (let ((_%hd194735194759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194736194755%_)))
                              (_%tl194734194762%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194736194755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194734194762%_))
                              (let ((_%e194739194765%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194734194762%_))))
                                (let ((_%hd194738194769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194739194765%_)))
                                      (_%tl194737194772%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194739194765%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194737194772%_))
                                      (let ((_%e194742194775%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194737194772%_))))
                                        (let ((_%hd194741194779%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194742194775%_)))
                                              (_%tl194740194782%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194742194775%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194740194782%_))
                                              ((lambda (_%L194785%_
                                                        _%L194787%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194787%_))
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
                               (cons _%L194787%_ '()))
                         (cons _%L194785%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194730194748%_
                                                      _%g194731194752%_)))
                                               _%hd194741194779%_
                                               _%hd194738194769%_)
                                              (_%g194730194748%_
                                               _%g194731194752%_))))
                                      (_%g194730194748%_ _%g194731194752%_))))
                              (_%g194730194748%_ _%g194731194752%_))))
                      (_%g194730194748%_ _%g194731194752%_)))))
          (_%g194729194803%_ _%$stx194726%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx194807%_)
        (let* ((_%g194811194829%_
                (lambda (_%g194812194825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194812194825%_))))
               (_%g194810194884%_
                (lambda (_%g194812194833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194812194833%_))
                      (let ((_%e194817194836%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194812194833%_))))
                        (let ((_%hd194816194840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194817194836%_)))
                              (_%tl194815194843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194817194836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194815194843%_))
                              (let ((_%e194820194846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl194815194843%_))))
                                (let ((_%hd194819194850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194820194846%_)))
                                      (_%tl194818194853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194820194846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl194818194853%_))
                                      (let ((_%e194823194856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl194818194853%_))))
                                        (let ((_%hd194822194860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e194823194856%_)))
                                              (_%tl194821194863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e194823194856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl194821194863%_))
                                              ((lambda (_%L194866%_
                                                        _%L194868%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L194868%_))
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
                               (cons _%L194868%_ '()))
                         (cons _%L194866%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g194811194829%_
                                                      _%g194812194833%_)))
                                               _%hd194822194860%_
                                               _%hd194819194850%_)
                                              (_%g194811194829%_
                                               _%g194812194833%_))))
                                      (_%g194811194829%_ _%g194812194833%_))))
                              (_%g194811194829%_ _%g194812194833%_))))
                      (_%g194811194829%_ _%g194812194833%_)))))
          (_%g194810194884%_ _%$stx194807%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx194888%_)
        (let* ((_%g194892194921%_
                (lambda (_%g194893194917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194893194917%_))))
               (_%g194891195021%_
                (lambda (_%g194893194925%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194893194925%_))
                      (let ((_%e194898194928%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g194893194925%_))))
                        (let ((_%hd194897194932%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194898194928%_)))
                              (_%tl194896194935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194898194928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl194896194935%_))
                              (let ((_g201148_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl194896194935%_
                                        '0))))
                                (begin
                                  (let ((_g201149_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201148_)
                                               (##vector-length _g201148_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201149_ 2)))
                                        (error "Context expects 2 values"
                                               _g201149_)))
                                  (let ((_%target194899194938%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201148_ 0)))
                                        (_%tl194901194941%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201148_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194901194941%_))
                                        (letrec ((_%loop194902194944%_
                                                  (lambda (_%hd194900194948%_
                                                           _%type194906194951%_
                                                           _%symbol194907194953%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd194900194948%_))
                                                        (let ((_%e194903194956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd194900194948%_))))
                  (let ((_%lp-hd194904194960%_
                         (let ()
                           (declare (not safe))
                           (##car _%e194903194956%_)))
                        (_%lp-tl194905194963%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e194903194956%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd194904194960%_))
                        (let ((_%e194912194966%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd194904194960%_))))
                          (let ((_%hd194911194970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e194912194966%_)))
                                (_%tl194910194973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e194912194966%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl194910194973%_))
                                (let ((_%e194915194976%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl194910194973%_))))
                                  (let ((_%hd194914194980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e194915194976%_)))
                                        (_%tl194913194983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e194915194976%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl194913194983%_))
                                        (_%loop194902194944%_
                                         _%lp-tl194905194963%_
                                         (cons _%hd194914194980%_
                                               _%type194906194951%_)
                                         (cons _%hd194911194970%_
                                               _%symbol194907194953%_))
                                        (_%g194892194921%_
                                         _%g194893194925%_))))
                                (_%g194892194921%_ _%g194893194925%_))))
                        (_%g194892194921%_ _%g194893194925%_))))
                (let ((_%type194908194986%_ (reverse _%type194906194951%_))
                      (_%symbol194909194989%_
                       (reverse _%symbol194907194953%_)))
                  ((lambda (_%L194992%_ _%L194994%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L194992%_
                                _%L194994%_))
                             (let ((__tmp201150
                                    (lambda (_%g195009195013%_
                                             _%g195010195016%_
                                             _%g195011195018%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g195010195016%_
                                                        (cons _%g195009195013%_
                                                              '())))
                                            _%g195011195018%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201150
                                '()
                                _%L194992%_
                                _%L194994%_)))))
                   _%type194908194986%_
                   _%symbol194909194989%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop194902194944%_
                                           _%target194899194938%_
                                           '()
                                           '()))
                                        (_%g194892194921%_
                                         _%g194893194925%_)))))
                              (_%g194892194921%_ _%g194893194925%_))))
                      (_%g194892194921%_ _%g194893194925%_)))))
          (_%g194891195021%_ _%$stx194888%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx195026%_)
        (let* ((_%__stx200459200460%_ _%$stx195026%_)
               (_%g195031195073%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200459200460%_)))))
          (let ((_%__kont200462200463%_
                 (lambda (_%L195201%_ _%L195203%_ _%L195204%_ _%L195205%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195205%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195204%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195203%_ '()))
                                           (cons _%L195201%_ '())))))))
                (_%__kont200464200465%_
                 (lambda (_%L195120%_ _%L195122%_ _%L195123%_ _%L195124%_)
                   (cons _%L195124%_
                         (cons _%L195123%_
                               (cons _%L195122%_
                                     (cons _%L195120%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match200498200499%_
                   (lambda (_%e195039195151%_
                            _%hd195038195155%_
                            _%tl195037195158%_
                            _%e195042195161%_
                            _%hd195041195165%_
                            _%tl195040195168%_
                            _%e195045195171%_
                            _%hd195044195175%_
                            _%tl195043195178%_
                            _%e195048195181%_
                            _%hd195047195185%_
                            _%tl195046195188%_
                            _%e195051195191%_
                            _%hd195050195195%_
                            _%tl195049195198%_)
                     (let ((_%L195201%_ _%hd195050195195%_)
                           (_%L195203%_ _%hd195047195185%_)
                           (_%L195204%_ _%hd195044195175%_)
                           (_%L195205%_ _%hd195041195165%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195205%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195204%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L195203%_)))
                           (_%__kont200462200463%_
                            _%L195201%_
                            _%L195203%_
                            _%L195204%_
                            _%L195205%_)
                           (let ()
                             (declare (not safe))
                             (_%g195031195073%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200459200460%_))
                  (let ((_%e195039195151%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200459200460%_))))
                    (let ((_%tl195037195158%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e195039195151%_)))
                          (_%hd195038195155%_
                           (let ()
                             (declare (not safe))
                             (##car _%e195039195151%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl195037195158%_))
                          (let ((_%e195042195161%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl195037195158%_))))
                            (let ((_%tl195040195168%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e195042195161%_)))
                                  (_%hd195041195165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e195042195161%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl195040195168%_))
                                  (let ((_%e195045195171%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl195040195168%_))))
                                    (let ((_%tl195043195178%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e195045195171%_)))
                                          (_%hd195044195175%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e195045195171%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl195043195178%_))
                                          (let ((_%e195048195181%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl195043195178%_))))
                                            (let ((_%tl195046195188%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e195048195181%_)))
                                                  (_%hd195047195185%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e195048195181%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl195046195188%_))
                                                  (let ((_%e195051195191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl195046195188%_))))
                                                    (let ((_%tl195049195198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e195051195191%_)))
                                                          (_%hd195050195195%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e195051195191%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl195049195198%_))
                                                          (_%__match200498200499%_
                                                           _%e195039195151%_
                                                           _%hd195038195155%_
                                                           _%tl195037195158%_
                                                           _%e195042195161%_
                                                           _%hd195041195165%_
                                                           _%tl195040195168%_
                                                           _%e195045195171%_
                                                           _%hd195044195175%_
                                                           _%tl195043195178%_
                                                           _%e195048195181%_
                                                           _%hd195047195185%_
                                                           _%tl195046195188%_
                                                           _%e195051195191%_
                                                           _%hd195050195195%_
                                                           _%tl195049195198%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g195031195073%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195046195188%_))
                                                      (_%__kont200464200465%_
                                                       _%hd195047195185%_
                                                       _%hd195044195175%_
                                                       _%hd195041195165%_
                                                       _%hd195038195155%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g195031195073%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g195031195073%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g195031195073%_)))))
                          (let () (declare (not safe)) (_%g195031195073%_)))))
                  (let () (declare (not safe)) (_%g195031195073%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx195230%_)
        (let* ((_%g195234195269%_
                (lambda (_%g195235195265%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195235195265%_))))
               (_%g195233195388%_
                (lambda (_%g195235195273%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195235195273%_))
                      (let ((_%e195241195276%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195235195273%_))))
                        (let ((_%hd195240195280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195241195276%_)))
                              (_%tl195239195283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195241195276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl195239195283%_))
                              (let ((_g201151_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl195239195283%_
                                        '0))))
                                (begin
                                  (let ((_g201152_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201151_)
                                               (##vector-length _g201151_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201152_ 2)))
                                        (error "Context expects 2 values"
                                               _g201152_)))
                                  (let ((_%target195242195286%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201151_ 0)))
                                        (_%tl195244195289%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201151_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl195244195289%_))
                                        (letrec ((_%loop195245195292%_
                                                  (lambda (_%hd195243195296%_
                                                           _%symbol195249195299%_
                                                           _%method195250195301%_
                                                           _%type-t195251195303%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd195243195296%_))
                                                        (let ((_%e195246195306%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd195243195296%_))))
                  (let ((_%lp-hd195247195310%_
                         (let ()
                           (declare (not safe))
                           (##car _%e195246195306%_)))
                        (_%lp-tl195248195313%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e195246195306%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd195247195310%_))
                        (let ((_%e195257195316%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd195247195310%_))))
                          (let ((_%hd195256195320%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195257195316%_)))
                                (_%tl195255195323%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195257195316%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl195255195323%_))
                                (let ((_%e195260195326%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl195255195323%_))))
                                  (let ((_%hd195259195330%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195260195326%_)))
                                        (_%tl195258195333%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195260195326%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195258195333%_))
                                        (let ((_%e195263195336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195258195333%_))))
                                          (let ((_%hd195262195340%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195263195336%_)))
                                                (_%tl195261195343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195263195336%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195261195343%_))
                                                (_%loop195245195292%_
                                                 _%lp-tl195248195313%_
                                                 (cons _%hd195262195340%_
                                                       _%symbol195249195299%_)
                                                 (cons _%hd195259195330%_
                                                       _%method195250195301%_)
                                                 (cons _%hd195256195320%_
                                                       _%type-t195251195303%_))
                                                (_%g195234195269%_
                                                 _%g195235195273%_))))
                                        (_%g195234195269%_
                                         _%g195235195273%_))))
                                (_%g195234195269%_ _%g195235195273%_))))
                        (_%g195234195269%_ _%g195235195273%_))))
                (let ((_%symbol195252195346%_ (reverse _%symbol195249195299%_))
                      (_%method195253195349%_ (reverse _%method195250195301%_))
                      (_%type-t195254195351%_
                       (reverse _%type-t195251195303%_)))
                  ((lambda (_%L195354%_ _%L195356%_ _%L195357%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L195354%_
                                _%L195356%_
                                _%L195357%_))
                             (let ((__tmp201153
                                    (lambda (_%g195373195378%_
                                             _%g195374195381%_
                                             _%g195375195383%_
                                             _%g195376195385%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g195375195383%_
                                                        (cons _%g195374195381%_
                                                              (cons _%g195373195378%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g195376195385%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp201153
                                '()
                                _%L195354%_
                                _%L195356%_
                                _%L195357%_)))))
                   _%symbol195252195346%_
                   _%method195253195349%_
                   _%type-t195254195351%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop195245195292%_
                                           _%target195242195286%_
                                           '()
                                           '()
                                           '()))
                                        (_%g195234195269%_
                                         _%g195235195273%_)))))
                              (_%g195234195269%_ _%g195235195273%_))))
                      (_%g195234195269%_ _%g195235195273%_)))))
          (_%g195233195388%_ _%$stx195230%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx195393%_)
        (let* ((_%g195397195430%_
                (lambda (_%g195398195426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195398195426%_))))
               (_%g195396195544%_
                (lambda (_%g195398195434%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195398195434%_))
                      (let ((_%e195404195437%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195398195434%_))))
                        (let ((_%hd195403195441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195404195437%_)))
                              (_%tl195402195444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195404195437%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195402195444%_))
                              (let ((_%e195407195447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195402195444%_))))
                                (let ((_%hd195406195451%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195407195447%_)))
                                      (_%tl195405195454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195407195447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl195405195454%_))
                                      (let ((_g201154_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl195405195454%_
                                                '0))))
                                        (begin
                                          (let ((_g201155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201154_)
                                                       (##vector-length
                                                        _g201154_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201155_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201155_)))
                                          (let ((_%target195408195457%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201154_ 0)))
                                                (_%tl195410195460%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201154_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195410195460%_))
                                                (letrec ((_%loop195411195463%_
                                                          (lambda (_%hd195409195467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol195415195470%_
                           _%method195416195472%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd195409195467%_))
                        (let ((_%e195412195475%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd195409195467%_))))
                          (let ((_%lp-hd195413195479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e195412195475%_)))
                                (_%lp-tl195414195482%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e195412195475%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd195413195479%_))
                                (let ((_%e195421195485%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd195413195479%_))))
                                  (let ((_%hd195420195489%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e195421195485%_)))
                                        (_%tl195419195492%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e195421195485%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl195419195492%_))
                                        (let ((_%e195424195495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl195419195492%_))))
                                          (let ((_%hd195423195499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e195424195495%_)))
                                                (_%tl195422195502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e195424195495%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl195422195502%_))
                                                (_%loop195411195463%_
                                                 _%lp-tl195414195482%_
                                                 (cons _%hd195423195499%_
                                                       _%symbol195415195470%_)
                                                 (cons _%hd195420195489%_
                                                       _%method195416195472%_))
                                                (_%g195397195430%_
                                                 _%g195398195434%_))))
                                        (_%g195397195430%_
                                         _%g195398195434%_))))
                                (_%g195397195430%_ _%g195398195434%_))))
                        (let ((_%symbol195417195505%_
                               (reverse _%symbol195415195470%_))
                              (_%method195418195508%_
                               (reverse _%method195416195472%_)))
                          ((lambda (_%L195511%_ _%L195513%_ _%L195514%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L195511%_
                                        _%L195513%_))
                                     (let ((__tmp201156
                                            (lambda (_%g195532195536%_
                                                     _%g195533195539%_
                                                     _%g195534195541%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L195514%_
                                                                (cons _%g195533195539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g195532195536%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g195534195541%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp201156
                                        '()
                                        _%L195511%_
                                        _%L195513%_)))))
                           _%symbol195417195505%_
                           _%method195418195508%_
                           _%hd195406195451%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop195411195463%_
                                                   _%target195408195457%_
                                                   '()
                                                   '()))
                                                (_%g195397195430%_
                                                 _%g195398195434%_)))))
                                      (_%g195397195430%_ _%g195398195434%_))))
                              (_%g195397195430%_ _%g195398195434%_))))
                      (_%g195397195430%_ _%g195398195434%_)))))
          (_%g195396195544%_ _%$stx195393%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx195549%_)
        (let* ((_%g195553195567%_
                (lambda (_%g195554195563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195554195563%_))))
               (_%g195552195608%_
                (lambda (_%g195554195571%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195554195571%_))
                      (let ((_%e195558195574%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195554195571%_))))
                        (let ((_%hd195557195578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195558195574%_)))
                              (_%tl195556195581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195558195574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195556195581%_))
                              (let ((_%e195561195584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195556195581%_))))
                                (let ((_%hd195560195588%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195561195584%_)))
                                      (_%tl195559195591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195561195584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195559195591%_))
                                      ((lambda (_%L195594%_)
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
                                                           (cons _%L195594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195560195588%_)
                                      (_%g195553195567%_ _%g195554195571%_))))
                              (_%g195553195567%_ _%g195554195571%_))))
                      (_%g195553195567%_ _%g195554195571%_)))))
          (_%g195552195608%_ _%$stx195549%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx195612%_)
        (let* ((_%g195616195670%_
                (lambda (_%g195617195666%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195617195666%_))))
               (_%g195615195851%_
                (lambda (_%g195617195674%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195617195674%_))
                      (let ((_%e195631195677%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195617195674%_))))
                        (let ((_%hd195630195681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195631195677%_)))
                              (_%tl195629195684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195631195677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195629195684%_))
                              (let ((_%e195634195687%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195629195684%_))))
                                (let ((_%hd195633195691%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195634195687%_)))
                                      (_%tl195632195694%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195634195687%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195632195694%_))
                                      (let ((_%e195637195697%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195632195694%_))))
                                        (let ((_%hd195636195701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195637195697%_)))
                                              (_%tl195635195704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195637195697%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195635195704%_))
                                              (let ((_%e195640195707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195635195704%_))))
                                                (let ((_%hd195639195711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195640195707%_)))
                                                      (_%tl195638195714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195640195707%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195638195714%_))
                                                      (let ((_%e195643195717%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195638195714%_))))
                (let ((_%hd195642195721%_
                       (let () (declare (not safe)) (##car _%e195643195717%_)))
                      (_%tl195641195724%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195643195717%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195641195724%_))
                      (let ((_%e195646195727%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195641195724%_))))
                        (let ((_%hd195645195731%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195646195727%_)))
                              (_%tl195644195734%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195646195727%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195644195734%_))
                              (let ((_%e195649195737%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195644195734%_))))
                                (let ((_%hd195648195741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195649195737%_)))
                                      (_%tl195647195744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195649195737%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195647195744%_))
                                      (let ((_%e195652195747%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195647195744%_))))
                                        (let ((_%hd195651195751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195652195747%_)))
                                              (_%tl195650195754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195652195747%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195650195754%_))
                                              (let ((_%e195655195757%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195650195754%_))))
                                                (let ((_%hd195654195761%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e195655195757%_)))
                                                      (_%tl195653195764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e195655195757%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl195653195764%_))
                                                      (let ((_%e195658195767%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl195653195764%_))))
                (let ((_%hd195657195771%_
                       (let () (declare (not safe)) (##car _%e195658195767%_)))
                      (_%tl195656195774%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e195658195767%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl195656195774%_))
                      (let ((_%e195661195777%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl195656195774%_))))
                        (let ((_%hd195660195781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195661195777%_)))
                              (_%tl195659195784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195661195777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195659195784%_))
                              (let ((_%e195664195787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195659195784%_))))
                                (let ((_%hd195663195791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195664195787%_)))
                                      (_%tl195662195794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195664195787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195662195794%_))
                                      ((lambda (_%L195797%_
                                                _%L195799%_
                                                _%L195800%_
                                                _%L195801%_
                                                _%L195802%_
                                                _%L195803%_
                                                _%L195804%_
                                                _%L195805%_
                                                _%L195806%_
                                                _%L195807%_
                                                _%L195808%_)
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
                                                           (cons _%L195808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L195807%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L195806%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L195805%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L195804%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L195803%_ '()))
                                           (cons _%L195802%_
                                                 (cons _%L195801%_
                                                       (cons _%L195800%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L195799%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L195797%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd195663195791%_
                                       _%hd195660195781%_
                                       _%hd195657195771%_
                                       _%hd195654195761%_
                                       _%hd195651195751%_
                                       _%hd195648195741%_
                                       _%hd195645195731%_
                                       _%hd195642195721%_
                                       _%hd195639195711%_
                                       _%hd195636195701%_
                                       _%hd195633195691%_)
                                      (_%g195616195670%_ _%g195617195674%_))))
                              (_%g195616195670%_ _%g195617195674%_))))
                      (_%g195616195670%_ _%g195617195674%_))))
              (_%g195616195670%_ _%g195617195674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195616195670%_
                                               _%g195617195674%_))))
                                      (_%g195616195670%_ _%g195617195674%_))))
                              (_%g195616195670%_ _%g195617195674%_))))
                      (_%g195616195670%_ _%g195617195674%_))))
              (_%g195616195670%_ _%g195617195674%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195616195670%_
                                               _%g195617195674%_))))
                                      (_%g195616195670%_ _%g195617195674%_))))
                              (_%g195616195670%_ _%g195617195674%_))))
                      (_%g195616195670%_ _%g195617195674%_)))))
          (_%g195615195851%_ _%$stx195612%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx195855%_)
        (let* ((_%g195859195873%_
                (lambda (_%g195860195869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195860195869%_))))
               (_%g195858195914%_
                (lambda (_%g195860195877%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195860195877%_))
                      (let ((_%e195864195880%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195860195877%_))))
                        (let ((_%hd195863195884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195864195880%_)))
                              (_%tl195862195887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195864195880%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195862195887%_))
                              (let ((_%e195867195890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195862195887%_))))
                                (let ((_%hd195866195894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195867195890%_)))
                                      (_%tl195865195897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195867195890%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195865195897%_))
                                      ((lambda (_%L195900%_)
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
                                                           (cons _%L195900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195866195894%_)
                                      (_%g195859195873%_ _%g195860195877%_))))
                              (_%g195859195873%_ _%g195860195877%_))))
                      (_%g195859195873%_ _%g195860195877%_)))))
          (_%g195858195914%_ _%$stx195855%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx195918%_)
        (let* ((_%g195922195936%_
                (lambda (_%g195923195932%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195923195932%_))))
               (_%g195921195977%_
                (lambda (_%g195923195940%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195923195940%_))
                      (let ((_%e195927195943%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195923195940%_))))
                        (let ((_%hd195926195947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195927195943%_)))
                              (_%tl195925195950%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195927195943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195925195950%_))
                              (let ((_%e195930195953%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195925195950%_))))
                                (let ((_%hd195929195957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195930195953%_)))
                                      (_%tl195928195960%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195930195953%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl195928195960%_))
                                      ((lambda (_%L195963%_)
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
                                                           (cons _%L195963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd195929195957%_)
                                      (_%g195922195936%_ _%g195923195940%_))))
                              (_%g195922195936%_ _%g195923195940%_))))
                      (_%g195922195936%_ _%g195923195940%_)))))
          (_%g195921195977%_ _%$stx195918%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx195981%_)
        (let* ((_%g195985196007%_
                (lambda (_%g195986196003%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g195986196003%_))))
               (_%g195984196076%_
                (lambda (_%g195986196011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g195986196011%_))
                      (let ((_%e195992196014%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g195986196011%_))))
                        (let ((_%hd195991196018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e195992196014%_)))
                              (_%tl195990196021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e195992196014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl195990196021%_))
                              (let ((_%e195995196024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl195990196021%_))))
                                (let ((_%hd195994196028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e195995196024%_)))
                                      (_%tl195993196031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e195995196024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl195993196031%_))
                                      (let ((_%e195998196034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl195993196031%_))))
                                        (let ((_%hd195997196038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e195998196034%_)))
                                              (_%tl195996196041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e195998196034%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl195996196041%_))
                                              (let ((_%e196001196044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl195996196041%_))))
                                                (let ((_%hd196000196048%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196001196044%_)))
                                                      (_%tl195999196051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196001196044%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl195999196051%_))
                                                      ((lambda (_%L196054%_
                                                                _%L196056%_
                                                                _%L196057%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196057%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196056%_ '()))
                                   (cons _%L196054%_ '())))))
               _%hd196000196048%_
               _%hd195997196038%_
               _%hd195994196028%_)
              (_%g195985196007%_ _%g195986196011%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g195985196007%_
                                               _%g195986196011%_))))
                                      (_%g195985196007%_ _%g195986196011%_))))
                              (_%g195985196007%_ _%g195986196011%_))))
                      (_%g195985196007%_ _%g195986196011%_)))))
          (_%g195984196076%_ _%$stx195981%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx196080%_)
        (let* ((_%g196084196106%_
                (lambda (_%g196085196102%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196085196102%_))))
               (_%g196083196175%_
                (lambda (_%g196085196110%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196085196110%_))
                      (let ((_%e196091196113%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196085196110%_))))
                        (let ((_%hd196090196117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196091196113%_)))
                              (_%tl196089196120%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196091196113%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196089196120%_))
                              (let ((_%e196094196123%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196089196120%_))))
                                (let ((_%hd196093196127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196094196123%_)))
                                      (_%tl196092196130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196094196123%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196092196130%_))
                                      (let ((_%e196097196133%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196092196130%_))))
                                        (let ((_%hd196096196137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196097196133%_)))
                                              (_%tl196095196140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196097196133%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196095196140%_))
                                              (let ((_%e196100196143%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl196095196140%_))))
                                                (let ((_%hd196099196147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196100196143%_)))
                                                      (_%tl196098196150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196100196143%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196098196150%_))
                                                      ((lambda (_%L196153%_
                                                                _%L196155%_
                                                                _%L196156%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L196156%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L196155%_ '()))
                                   (cons _%L196153%_ '())))))
               _%hd196099196147%_
               _%hd196096196137%_
               _%hd196093196127%_)
              (_%g196084196106%_ _%g196085196110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196084196106%_
                                               _%g196085196110%_))))
                                      (_%g196084196106%_ _%g196085196110%_))))
                              (_%g196084196106%_ _%g196085196110%_))))
                      (_%g196084196106%_ _%g196085196110%_)))))
          (_%g196083196175%_ _%$stx196080%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx196179%_)
        (let* ((_%g196183196197%_
                (lambda (_%g196184196193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196184196193%_))))
               (_%g196182196238%_
                (lambda (_%g196184196201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196184196201%_))
                      (let ((_%e196188196204%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196184196201%_))))
                        (let ((_%hd196187196208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196188196204%_)))
                              (_%tl196186196211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196188196204%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196186196211%_))
                              (let ((_%e196191196214%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196186196211%_))))
                                (let ((_%hd196190196218%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196191196214%_)))
                                      (_%tl196189196221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196191196214%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196189196221%_))
                                      ((lambda (_%L196224%_)
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
                                                           (cons _%L196224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd196190196218%_)
                                      (_%g196183196197%_ _%g196184196201%_))))
                              (_%g196183196197%_ _%g196184196201%_))))
                      (_%g196183196197%_ _%g196184196201%_)))))
          (_%g196182196238%_ _%$stx196179%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx196242%_)
        (let* ((_%g196246196264%_
                (lambda (_%g196247196260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196247196260%_))))
               (_%g196245196319%_
                (lambda (_%g196247196268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196247196268%_))
                      (let ((_%e196252196271%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196247196268%_))))
                        (let ((_%hd196251196275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196252196271%_)))
                              (_%tl196250196278%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196252196271%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196250196278%_))
                              (let ((_%e196255196281%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196250196278%_))))
                                (let ((_%hd196254196285%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196255196281%_)))
                                      (_%tl196253196288%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196255196281%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196253196288%_))
                                      (let ((_%e196258196291%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196253196288%_))))
                                        (let ((_%hd196257196295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196258196291%_)))
                                              (_%tl196256196298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196258196291%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196256196298%_))
                                              ((lambda (_%L196301%_
                                                        _%L196303%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196303%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196301%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196257196295%_
                                               _%hd196254196285%_)
                                              (_%g196246196264%_
                                               _%g196247196268%_))))
                                      (_%g196246196264%_ _%g196247196268%_))))
                              (_%g196246196264%_ _%g196247196268%_))))
                      (_%g196246196264%_ _%g196247196268%_)))))
          (_%g196245196319%_ _%$stx196242%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx196323%_)
        (let* ((_%__stx200527200528%_ _%$stx196323%_)
               (_%g196330196391%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200527200528%_)))))
          (let ((_%__kont200530200531%_
                 (lambda (_%L196629%_ _%L196631%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196631%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196629%_ '()))
                                     '())))))
                (_%__kont200532200533%_
                 (lambda (_%L196568%_ _%L196570%_ _%L196571%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L196571%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L196570%_ '()))
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
                                 (cons _%L196568%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont200534200535%_
                 (lambda (_%L196492%_ _%L196494%_)
                   (cons _%L196494%_ (cons _%L196492%_ (cons '#f '())))))
                (_%__kont200536200537%_
                 (lambda (_%L196442%_ _%L196444%_ _%L196445%_)
                   (cons _%L196445%_
                         (cons _%L196444%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L196442%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200527200528%_))
                (let ((_%e196336196599%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200527200528%_))))
                  (let ((_%tl196334196606%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196336196599%_)))
                        (_%hd196335196603%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196336196599%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl196334196606%_))
                        (let ((_%e196339196609%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl196334196606%_))))
                          (let ((_%tl196337196616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196339196609%_)))
                                (_%hd196338196613%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196339196609%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196337196616%_))
                                (let ((_%e196342196619%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196337196616%_))))
                                  (let ((_%tl196340196626%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196342196619%_)))
                                        (_%hd196341196623%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196342196619%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196340196626%_))
                                        (_%__kont200530200531%_
                                         _%hd196341196623%_
                                         _%hd196338196613%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl196340196626%_))
                                            (let ((_%e196357196544%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl196340196626%_))))
                                              (let ((_%tl196355196551%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e196357196544%_)))
                                                    (_%hd196356196548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e196357196544%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd196356196548%_))
                                                    (let ((_%e196358196554%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd196356196548%_))))
                                                      (if (equal? _%e196358196554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl196355196551%_))
                      (let ((_%e196361196558%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl196355196551%_))))
                        (let ((_%tl196359196565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196361196558%_)))
                              (_%hd196360196562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196361196558%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196359196565%_))
                              (_%__kont200532200533%_
                               _%hd196360196562%_
                               _%hd196341196623%_
                               _%hd196338196613%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd196341196623%_))
                                  (let ((_%e196382196428%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196341196623%_))))
                                    (declare (not safe))
                                    (_%g196330196391%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g196330196391%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd196341196623%_))
                          (let ((_%e196382196428%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd196341196623%_))))
                            (if (equal? _%e196382196428%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196355196551%_))
                                    (_%__kont200536200537%_
                                     _%hd196356196548%_
                                     _%hd196338196613%_
                                     _%hd196335196603%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196330196391%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g196330196391%_))))
                          (let () (declare (not safe)) (_%g196330196391%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd196341196623%_))
                      (let ((_%e196382196428%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd196341196623%_))))
                        (if (equal? _%e196382196428%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl196355196551%_))
                                (_%__kont200536200537%_
                                 _%hd196356196548%_
                                 _%hd196338196613%_
                                 _%hd196335196603%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g196330196391%_)))
                            (let () (declare (not safe)) (_%g196330196391%_))))
                      (let () (declare (not safe)) (_%g196330196391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd196341196623%_))
                                                        (let ((_%e196382196428%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd196341196623%_))))
                  (if (equal? _%e196382196428%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl196355196551%_))
                          (_%__kont200536200537%_
                           _%hd196356196548%_
                           _%hd196338196613%_
                           _%hd196335196603%_)
                          (let () (declare (not safe)) (_%g196330196391%_)))
                      (let () (declare (not safe)) (_%g196330196391%_))))
                (let () (declare (not safe)) (_%g196330196391%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd196341196623%_))
                                                (let ((_%e196382196428%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd196341196623%_))))
                                                  (declare (not safe))
                                                  (_%g196330196391%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g196330196391%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl196337196616%_))
                                    (_%__kont200534200535%_
                                     _%hd196338196613%_
                                     _%hd196335196603%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g196330196391%_))))))
                        (let () (declare (not safe)) (_%g196330196391%_)))))
                (let () (declare (not safe)) (_%g196330196391%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx196650%_)
        (let* ((_%g196654196683%_
                (lambda (_%g196655196679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196655196679%_))))
               (_%g196653196792%_
                (lambda (_%g196655196687%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196655196687%_))
                      (let ((_%e196659196690%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196655196687%_))))
                        (let ((_%hd196658196694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196659196690%_)))
                              (_%tl196657196697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196659196690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196657196697%_))
                              (let ((_g201157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196657196697%_
                                        '0))))
                                (begin
                                  (let ((_g201158_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201157_)
                                               (##vector-length _g201157_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201158_ 2)))
                                        (error "Context expects 2 values"
                                               _g201158_)))
                                  (let ((_%target196660196700%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201157_ 0)))
                                        (_%tl196662196703%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201157_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196662196703%_))
                                        (letrec ((_%loop196663196706%_
                                                  (lambda (_%hd196661196710%_
                                                           _%clause196667196713%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196661196710%_))
                                                        (let ((_%e196664196716%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196661196710%_))))
                  (let ((_%lp-hd196665196720%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196664196716%_)))
                        (_%lp-tl196666196723%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196664196716%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd196665196720%_))
                        (let ((_g201159_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd196665196720%_
                                  '0))))
                          (begin
                            (let ((_g201160_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201159_)
                                         (##vector-length _g201159_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201160_ 2)))
                                  (error "Context expects 2 values"
                                         _g201160_)))
                            (let ((_%target196669196726%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201159_ 0)))
                                  (_%tl196671196729%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g201159_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl196671196729%_))
                                  (letrec ((_%loop196672196732%_
                                            (lambda (_%hd196670196736%_
                                                     _%clause196676196739%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd196670196736%_))
                                                  (let ((_%e196673196742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd196670196736%_))))
                                                    (let ((_%lp-hd196674196746%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196673196742%_)))
                                                          (_%lp-tl196675196749%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196673196742%_))))
                                                      (_%loop196672196732%_
                                                       _%lp-tl196675196749%_
                                                       (cons _%lp-hd196674196746%_
                                                             _%clause196676196739%_))))
                                                  (let ((_%clause196677196752%_
                                                         (reverse _%clause196676196739%_)))
                                                    (_%loop196663196706%_
                                                     _%lp-tl196666196723%_
                                                     (cons _%clause196677196752%_
                                                           _%clause196667196713%_)))))))
                                    (_%loop196672196732%_
                                     _%target196669196726%_
                                     '()))
                                  (_%g196654196683%_ _%g196655196687%_)))))
                        (_%g196654196683%_ _%g196655196687%_))))
                (let ((_%clause196668196756%_
                       (reverse _%clause196667196713%_)))
                  ((lambda (_%L196760%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp201161
                                              (lambda (_%g196775196780%_
                                                       _%g196776196783%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp201162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g196777196786%_ _%g196778196789%_)
                             (cons _%g196777196786%_ _%g196778196789%_))))
                      (declare (not safe))
                      (__foldr1 __tmp201162 '() _%g196775196780%_)))
              _%g196776196783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp201161
                                          '()
                                          _%L196760%_)))
                                 '())))
                   _%clause196668196756%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196663196706%_
                                           _%target196660196700%_
                                           '()))
                                        (_%g196654196683%_
                                         _%g196655196687%_)))))
                              (_%g196654196683%_ _%g196655196687%_))))
                      (_%g196654196683%_ _%g196655196687%_)))))
          (_%g196653196792%_ _%$stx196650%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx196798%_)
        (let* ((_%g196802196820%_
                (lambda (_%g196803196816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196803196816%_))))
               (_%g196801196875%_
                (lambda (_%g196803196824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196803196824%_))
                      (let ((_%e196808196827%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196803196824%_))))
                        (let ((_%hd196807196831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196808196827%_)))
                              (_%tl196806196834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196808196827%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196806196834%_))
                              (let ((_%e196811196837%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196806196834%_))))
                                (let ((_%hd196810196841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196811196837%_)))
                                      (_%tl196809196844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196811196837%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196809196844%_))
                                      (let ((_%e196814196847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196809196844%_))))
                                        (let ((_%hd196813196851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196814196847%_)))
                                              (_%tl196812196854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196814196847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196812196854%_))
                                              ((lambda (_%L196857%_
                                                        _%L196859%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196859%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196857%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196813196851%_
                                               _%hd196810196841%_)
                                              (_%g196802196820%_
                                               _%g196803196824%_))))
                                      (_%g196802196820%_ _%g196803196824%_))))
                              (_%g196802196820%_ _%g196803196824%_))))
                      (_%g196802196820%_ _%g196803196824%_)))))
          (_%g196801196875%_ _%$stx196798%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx196879%_)
        (let* ((_%g196883196901%_
                (lambda (_%g196884196897%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196884196897%_))))
               (_%g196882196956%_
                (lambda (_%g196884196905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196884196905%_))
                      (let ((_%e196889196908%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196884196905%_))))
                        (let ((_%hd196888196912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196889196908%_)))
                              (_%tl196887196915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196889196908%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196887196915%_))
                              (let ((_%e196892196918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl196887196915%_))))
                                (let ((_%hd196891196922%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196892196918%_)))
                                      (_%tl196890196925%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196892196918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196890196925%_))
                                      (let ((_%e196895196928%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl196890196925%_))))
                                        (let ((_%hd196894196932%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196895196928%_)))
                                              (_%tl196893196935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196895196928%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196893196935%_))
                                              ((lambda (_%L196938%_
                                                        _%L196940%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L196940%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L196938%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196894196932%_
                                               _%hd196891196922%_)
                                              (_%g196883196901%_
                                               _%g196884196905%_))))
                                      (_%g196883196901%_ _%g196884196905%_))))
                              (_%g196883196901%_ _%g196884196905%_))))
                      (_%g196883196901%_ _%g196884196905%_)))))
          (_%g196882196956%_ _%$stx196879%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx196960%_)
        (let* ((_%g196964196993%_
                (lambda (_%g196965196989%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196965196989%_))))
               (_%g196963197093%_
                (lambda (_%g196965196997%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196965196997%_))
                      (let ((_%e196970197000%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g196965196997%_))))
                        (let ((_%hd196969197004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196970197000%_)))
                              (_%tl196968197007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196970197000%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl196968197007%_))
                              (let ((_g201163_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl196968197007%_
                                        '0))))
                                (begin
                                  (let ((_g201164_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201163_)
                                               (##vector-length _g201163_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201164_ 2)))
                                        (error "Context expects 2 values"
                                               _g201164_)))
                                  (let ((_%target196971197010%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201163_ 0)))
                                        (_%tl196973197013%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201163_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196973197013%_))
                                        (letrec ((_%loop196974197016%_
                                                  (lambda (_%hd196972197020%_
                                                           _%rule196978197023%_
                                                           _%proc196979197025%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd196972197020%_))
                                                        (let ((_%e196975197028%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd196972197020%_))))
                  (let ((_%lp-hd196976197032%_
                         (let ()
                           (declare (not safe))
                           (##car _%e196975197028%_)))
                        (_%lp-tl196977197035%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e196975197028%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd196976197032%_))
                        (let ((_%e196984197038%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd196976197032%_))))
                          (let ((_%hd196983197042%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e196984197038%_)))
                                (_%tl196982197045%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e196984197038%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl196982197045%_))
                                (let ((_%e196987197048%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl196982197045%_))))
                                  (let ((_%hd196986197052%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e196987197048%_)))
                                        (_%tl196985197055%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e196987197048%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl196985197055%_))
                                        (_%loop196974197016%_
                                         _%lp-tl196977197035%_
                                         (cons _%hd196986197052%_
                                               _%rule196978197023%_)
                                         (cons _%hd196983197042%_
                                               _%proc196979197025%_))
                                        (_%g196964196993%_
                                         _%g196965196997%_))))
                                (_%g196964196993%_ _%g196965196997%_))))
                        (_%g196964196993%_ _%g196965196997%_))))
                (let ((_%rule196980197058%_ (reverse _%rule196978197023%_))
                      (_%proc196981197061%_ (reverse _%proc196979197025%_)))
                  ((lambda (_%L197064%_ _%L197066%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197064%_
                                _%L197066%_))
                             (let ((__tmp201165
                                    (lambda (_%g197081197085%_
                                             _%g197082197088%_
                                             _%g197083197090%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g197082197088%_
                                                        (cons _%g197081197085%_
                                                              '())))
                                            _%g197083197090%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp201165
                                '()
                                _%L197064%_
                                _%L197066%_)))))
                   _%rule196980197058%_
                   _%proc196981197061%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop196974197016%_
                                           _%target196971197010%_
                                           '()
                                           '()))
                                        (_%g196964196993%_
                                         _%g196965196997%_)))))
                              (_%g196964196993%_ _%g196965196997%_))))
                      (_%g196964196993%_ _%g196965196997%_)))))
          (_%g196963197093%_ _%$stx196960%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx197098%_)
        (let* ((_%g197102197120%_
                (lambda (_%g197103197116%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197103197116%_))))
               (_%g197101197175%_
                (lambda (_%g197103197124%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197103197124%_))
                      (let ((_%e197108197127%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197103197124%_))))
                        (let ((_%hd197107197131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197108197127%_)))
                              (_%tl197106197134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197108197127%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197106197134%_))
                              (let ((_%e197111197137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197106197134%_))))
                                (let ((_%hd197110197141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197111197137%_)))
                                      (_%tl197109197144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197111197137%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197109197144%_))
                                      (let ((_%e197114197147%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197109197144%_))))
                                        (let ((_%hd197113197151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197114197147%_)))
                                              (_%tl197112197154%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197114197147%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197112197154%_))
                                              ((lambda (_%L197157%_
                                                        _%L197159%_)
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
                                                   (cons _%L197159%_ '()))
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
                 (cons _%L197157%_ '())))
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
                                   (cons _%L197159%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd197113197151%_
                                               _%hd197110197141%_)
                                              (_%g197102197120%_
                                               _%g197103197124%_))))
                                      (_%g197102197120%_ _%g197103197124%_))))
                              (_%g197102197120%_ _%g197103197124%_))))
                      (_%g197102197120%_ _%g197103197124%_)))))
          (_%g197101197175%_ _%$stx197098%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx197179%_)
        (let* ((_%__stx200645200646%_ _%$stx197179%_)
               (_%g197184197209%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200645200646%_)))))
          (let ((_%__kont200648200649%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200650200651%_
                 (lambda (_%L197256%_ _%L197258%_ _%L197259%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L197259%_ (cons _%L197258%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L197256%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200645200646%_))
                (let ((_%e197188197285%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx200645200646%_))))
                  (let ((_%tl197186197292%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197188197285%_)))
                        (_%hd197187197289%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197188197285%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl197186197292%_))
                        (_%__kont200648200649%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197186197292%_))
                            (let ((_%e197197197226%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl197186197292%_))))
                              (let ((_%tl197195197233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197197197226%_)))
                                    (_%hd197196197230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197197197226%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197196197230%_))
                                    (let ((_%e197200197236%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd197196197230%_))))
                                      (let ((_%tl197198197243%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197200197236%_)))
                                            (_%hd197199197240%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197200197236%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197198197243%_))
                                            (let ((_%e197203197246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197198197243%_))))
                                              (let ((_%tl197201197253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197203197246%_)))
                                                    (_%hd197202197250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197203197246%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197201197253%_))
                                                    (_%__kont200650200651%_
                                                     _%tl197195197233%_
                                                     _%hd197202197250%_
                                                     _%hd197199197240%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197184197209%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197184197209%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197184197209%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g197184197209%_))))))
                (let () (declare (not safe)) (_%g197184197209%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx197303%_)
        (let* ((_%__stx200689200690%_ _%$stx197303%_)
               (_%g197308197339%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200689200690%_)))))
          (let ((_%__kont200692200693%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont200694200695%_
                 (lambda (_%L197406%_ _%L197408%_ _%L197409%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L197409%_
                                           (let ((__tmp201166
                                                  (lambda (_%g197429197432%_
                                                           _%g197430197435%_)
                                                    (cons _%g197429197432%_
                                                          _%g197430197435%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201166
                                              '()
                                              _%L197408%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L197406%_)
                                     '()))))))
            (let ((_%__match200732200733%_
                   (lambda (_%e197318197346%_
                            _%hd197317197350%_
                            _%tl197316197353%_
                            _%e197321197356%_
                            _%hd197320197360%_
                            _%tl197319197363%_
                            _%e197324197366%_
                            _%hd197323197370%_
                            _%tl197322197373%_
                            _%__splice200696200697%_
                            _%target197325197376%_
                            _%tl197327197379%_)
                     (letrec ((_%loop197328197382%_
                               (lambda (_%hd197326197386%_ _%sig197332197389%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd197326197386%_))
                                     (let ((_%e197329197392%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd197326197386%_))))
                                       (let ((_%lp-tl197331197399%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e197329197392%_)))
                                             (_%lp-hd197330197396%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e197329197392%_))))
                                         (_%loop197328197382%_
                                          _%lp-tl197331197399%_
                                          (cons _%lp-hd197330197396%_
                                                _%sig197332197389%_))))
                                     (let ((_%sig197333197402%_
                                            (reverse _%sig197332197389%_)))
                                       (_%__kont200694200695%_
                                        _%tl197319197363%_
                                        _%sig197333197402%_
                                        _%hd197323197370%_))))))
                       (_%loop197328197382%_ _%target197325197376%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200689200690%_))
                  (let ((_%e197312197445%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200689200690%_))))
                    (let ((_%tl197310197452%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197312197445%_)))
                          (_%hd197311197449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197312197445%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197310197452%_))
                          (_%__kont200692200693%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197310197452%_))
                              (let ((_%e197321197356%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197310197452%_))))
                                (let ((_%tl197319197363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197321197356%_)))
                                      (_%hd197320197360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197321197356%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197320197360%_))
                                      (let ((_%e197324197366%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197320197360%_))))
                                        (let ((_%tl197322197373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197324197366%_)))
                                              (_%hd197323197370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197324197366%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197322197373%_))
                                              (let ((_%__splice200696200697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197322197373%_
                                                        '0))))
                                                (let ((_%tl197327197379%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200696200697%_
                                                          '1)))
                                                      (_%target197325197376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200696200697%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197327197379%_))
                                                      (_%__match200732200733%_
                                                       _%e197312197445%_
                                                       _%hd197311197449%_
                                                       _%tl197310197452%_
                                                       _%e197321197356%_
                                                       _%hd197320197360%_
                                                       _%tl197319197363%_
                                                       _%e197324197366%_
                                                       _%hd197323197370%_
                                                       _%tl197322197373%_
                                                       _%__splice200696200697%_
                                                       _%target197325197376%_
                                                       _%tl197327197379%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197308197339%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197308197339%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197308197339%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197308197339%_))))))
                  (let () (declare (not safe)) (_%g197308197339%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx197464%_)
        (let* ((_%__stx200735200736%_ _%$stx197464%_)
               (_%g197469197516%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200735200736%_)))))
          (let ((_%__kont200738200739%_
                 (lambda (_%L197678%_ _%L197680%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L197680%_
                               (let ((__tmp201167
                                      (lambda (_%g197700197703%_
                                               _%g197701197706%_)
                                        (cons _%g197700197703%_
                                              _%g197701197706%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201167 '() _%L197678%_))))))
                (_%__kont200742200743%_
                 (lambda (_%L197573%_ _%L197575%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L197575%_
                               (let ((__tmp201168
                                      (lambda (_%g197592197595%_
                                               _%g197593197598%_)
                                        (cons _%g197592197595%_
                                              _%g197593197598%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp201168 '() _%L197573%_)))))))
            (let* ((_%__match200802200803%_
                    (lambda (_%e197498197523%_
                             _%hd197497197527%_
                             _%tl197496197530%_
                             _%e197501197533%_
                             _%hd197500197537%_
                             _%tl197499197540%_
                             _%__splice200744200745%_
                             _%target197502197543%_
                             _%tl197504197546%_)
                      (letrec ((_%loop197505197549%_
                                (lambda (_%hd197503197553%_
                                         _%sig197509197556%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197503197553%_))
                                      (let ((_%e197506197559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197503197553%_))))
                                        (let ((_%lp-tl197508197566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197506197559%_)))
                                              (_%lp-hd197507197563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197506197559%_))))
                                          (_%loop197505197549%_
                                           _%lp-tl197508197566%_
                                           (cons _%lp-hd197507197563%_
                                                 _%sig197509197556%_))))
                                      (let ((_%sig197510197569%_
                                             (reverse _%sig197509197556%_)))
                                        (_%__kont200742200743%_
                                         _%sig197510197569%_
                                         _%hd197500197537%_))))))
                        (_%loop197505197549%_ _%target197502197543%_ '()))))
                   (_%__match200794200795%_
                    (lambda (_%e197498197523%_
                             _%hd197497197527%_
                             _%tl197496197530%_
                             _%e197501197533%_
                             _%hd197500197537%_
                             _%tl197499197540%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl197499197540%_))
                          (let ((_%__splice200744200745%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl197499197540%_
                                    '0))))
                            (let ((_%tl197504197546%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200744200745%_
                                      '1)))
                                  (_%target197502197543%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice200744200745%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl197504197546%_))
                                  (_%__match200802200803%_
                                   _%e197498197523%_
                                   _%hd197497197527%_
                                   _%tl197496197530%_
                                   _%e197501197533%_
                                   _%hd197500197537%_
                                   _%tl197499197540%_
                                   _%__splice200744200745%_
                                   _%target197502197543%_
                                   _%tl197504197546%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g197469197516%_)))))
                          (let () (declare (not safe)) (_%g197469197516%_)))))
                   (_%__match200782200783%_
                    (lambda (_%e197475197608%_
                             _%hd197474197612%_
                             _%tl197473197615%_
                             _%e197478197618%_
                             _%hd197477197622%_
                             _%tl197476197625%_
                             _%e197481197628%_
                             _%hd197480197632%_
                             _%tl197479197635%_
                             _%e197484197638%_
                             _%hd197483197642%_
                             _%tl197482197645%_
                             _%__splice200740200741%_
                             _%target197485197648%_
                             _%tl197487197651%_)
                      (letrec ((_%loop197488197654%_
                                (lambda (_%hd197486197658%_
                                         _%sig197492197661%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd197486197658%_))
                                      (let ((_%e197489197664%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd197486197658%_))))
                                        (let ((_%lp-tl197491197671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197489197664%_)))
                                              (_%lp-hd197490197668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197489197664%_))))
                                          (_%loop197488197654%_
                                           _%lp-tl197491197671%_
                                           (cons _%lp-hd197490197668%_
                                                 _%sig197492197661%_))))
                                      (let ((_%sig197493197674%_
                                             (reverse _%sig197492197661%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197479197635%_))
                                            (_%__kont200738200739%_
                                             _%sig197493197674%_
                                             _%hd197477197622%_)
                                            (_%__match200794200795%_
                                             _%e197475197608%_
                                             _%hd197474197612%_
                                             _%tl197473197615%_
                                             _%e197478197618%_
                                             _%hd197477197622%_
                                             _%tl197476197625%_)))))))
                        (_%loop197488197654%_ _%target197485197648%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200735200736%_))
                  (let ((_%e197475197608%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200735200736%_))))
                    (let ((_%tl197473197615%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197475197608%_)))
                          (_%hd197474197612%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197475197608%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197473197615%_))
                          (let ((_%e197478197618%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197473197615%_))))
                            (let ((_%tl197476197625%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197478197618%_)))
                                  (_%hd197477197622%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197478197618%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197476197625%_))
                                  (let ((_%e197481197628%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197476197625%_))))
                                    (let ((_%tl197479197635%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197481197628%_)))
                                          (_%hd197480197632%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197481197628%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd197480197632%_))
                                          (let ((_%e197484197638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd197480197632%_))))
                                            (let ((_%tl197482197645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197484197638%_)))
                                                  (_%hd197483197642%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197484197638%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd197483197642%_))
                                                  (if (let ((__tmp201169
                                                             |gxc[1]#_g201170_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp201169
                                                         _%hd197483197642%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl197482197645%_))
                                                          (let ((_%__splice200740200741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197482197645%_ '0))))
                    (let ((_%tl197487197651%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200740200741%_ '1)))
                          (_%target197485197648%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200740200741%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197487197651%_))
                          (_%__match200782200783%_
                           _%e197475197608%_
                           _%hd197474197612%_
                           _%tl197473197615%_
                           _%e197478197618%_
                           _%hd197477197622%_
                           _%tl197476197625%_
                           _%e197481197628%_
                           _%hd197480197632%_
                           _%tl197479197635%_
                           _%e197484197638%_
                           _%hd197483197642%_
                           _%tl197482197645%_
                           _%__splice200740200741%_
                           _%target197485197648%_
                           _%tl197487197651%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197476197625%_))
                              (let ((_%__splice200744200745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197476197625%_
                                        '0))))
                                (let ((_%tl197504197546%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200744200745%_
                                          '1)))
                                      (_%target197502197543%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice200744200745%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl197504197546%_))
                                      (_%__match200802200803%_
                                       _%e197475197608%_
                                       _%hd197474197612%_
                                       _%tl197473197615%_
                                       _%e197478197618%_
                                       _%hd197477197622%_
                                       _%tl197476197625%_
                                       _%__splice200744200745%_
                                       _%target197502197543%_
                                       _%tl197504197546%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g197469197516%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197469197516%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl197476197625%_))
                      (let ((_%__splice200744200745%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl197476197625%_
                                '0))))
                        (let ((_%tl197504197546%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200744200745%_ '1)))
                              (_%target197502197543%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice200744200745%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl197504197546%_))
                              (_%__match200802200803%_
                               _%e197475197608%_
                               _%hd197474197612%_
                               _%tl197473197615%_
                               _%e197478197618%_
                               _%hd197477197622%_
                               _%tl197476197625%_
                               _%__splice200744200745%_
                               _%target197502197543%_
                               _%tl197504197546%_)
                              (let ()
                                (declare (not safe))
                                (_%g197469197516%_)))))
                      (let () (declare (not safe)) (_%g197469197516%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl197476197625%_))
                  (let ((_%__splice200744200745%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl197476197625%_ '0))))
                    (let ((_%tl197504197546%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200744200745%_ '1)))
                          (_%target197502197543%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice200744200745%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl197504197546%_))
                          (_%__match200802200803%_
                           _%e197475197608%_
                           _%hd197474197612%_
                           _%tl197473197615%_
                           _%e197478197618%_
                           _%hd197477197622%_
                           _%tl197476197625%_
                           _%__splice200744200745%_
                           _%target197502197543%_
                           _%tl197504197546%_)
                          (let () (declare (not safe)) (_%g197469197516%_)))))
                  (let () (declare (not safe)) (_%g197469197516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl197476197625%_))
                                                      (let ((_%__splice200744200745%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl197476197625%_ '0))))
                (let ((_%tl197504197546%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200744200745%_ '1)))
                      (_%target197502197543%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice200744200745%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl197504197546%_))
                      (_%__match200802200803%_
                       _%e197475197608%_
                       _%hd197474197612%_
                       _%tl197473197615%_
                       _%e197478197618%_
                       _%hd197477197622%_
                       _%tl197476197625%_
                       _%__splice200744200745%_
                       _%target197502197543%_
                       _%tl197504197546%_)
                      (let () (declare (not safe)) (_%g197469197516%_)))))
              (let () (declare (not safe)) (_%g197469197516%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl197476197625%_))
                                              (let ((_%__splice200744200745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl197476197625%_
                                                        '0))))
                                                (let ((_%tl197504197546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200744200745%_
                                                          '1)))
                                                      (_%target197502197543%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice200744200745%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197504197546%_))
                                                      (_%__match200802200803%_
                                                       _%e197475197608%_
                                                       _%hd197474197612%_
                                                       _%tl197473197615%_
                                                       _%e197478197618%_
                                                       _%hd197477197622%_
                                                       _%tl197476197625%_
                                                       _%__splice200744200745%_
                                                       _%target197502197543%_
                                                       _%tl197504197546%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197469197516%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197469197516%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl197476197625%_))
                                      (let ((_%__splice200744200745%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl197476197625%_
                                                '0))))
                                        (let ((_%tl197504197546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200744200745%_
                                                  '1)))
                                              (_%target197502197543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice200744200745%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197504197546%_))
                                              (_%__match200802200803%_
                                               _%e197475197608%_
                                               _%hd197474197612%_
                                               _%tl197473197615%_
                                               _%e197478197618%_
                                               _%hd197477197622%_
                                               _%tl197476197625%_
                                               _%__splice200744200745%_
                                               _%target197502197543%_
                                               _%tl197504197546%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197469197516%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197469197516%_))))))
                          (let () (declare (not safe)) (_%g197469197516%_)))))
                  (let () (declare (not safe)) (_%g197469197516%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx198794%_ _%id198796%_)
        (let ((_%proc198800%_
               (let ((__tmp201171
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198796%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201171))))
          (if (let () (declare (not safe)) (procedure? _%proc198800%_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx198794%_
                 _%id198796%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx198785%_ _%id198787%_)
        (let ((_%klass198791%_
               (let ((__tmp201172
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id198787%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp201172))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass198791%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx198785%_
                 _%id198787%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx198035%_ _%proc198037%_ _%sig198038%_)
        (letrec ((_%signature-arity198040%_
                  (lambda (_%args198717%_)
                    (let _%loop198720%_ ((_%rest198723%_ _%args198717%_)
                                         (_%count198725%_ '0))
                      (let* ((_%rest198726198737%_ _%rest198723%_)
                             (_%E198730198743%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest198726198737%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K198733198774%_
                               (lambda (_%rest198771%_)
                                 (let ((__tmp201173
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _%count198725%_ '1))))
                                   (declare (not safe))
                                   (_%loop198720%_
                                    _%rest198771%_
                                    __tmp201173))))
                              (_%K198732198763%_ (lambda () _%count198725%_))
                              (_%K198731198751%_
                               (lambda () (cons _%count198725%_ '()))))
                          (let ((_%try-match198728198767%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest198726198737%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198732198763%_))
                                       (let ()
                                         (declare (not safe))
                                         (_%K198731198751%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest198726198737%_))
                                (let* ((_%tl198735198778%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest198726198737%_)))
                                       (_%rest198782%_ _%tl198735198778%_))
                                  (declare (not safe))
                                  (_%K198733198774%_ _%rest198782%_))
                                (let ()
                                  (declare (not safe))
                                  (_%try-match198728198767%_)))))))))
                 (_%make-signature198042%_
                  (lambda (_%args198599%_
                           _%return198601%_
                           _%effect198602%_
                           _%unchecked198603%_)
                    (let ((__tmp201174
                           (lambda (_%g198604198606%_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _%ctx198035%_
                                _%g198604198606%_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp201174 _%args198599%_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _%ctx198035%_ _%return198601%_))
                    (if _%unchecked198603%_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _%ctx198035%_
                           _%unchecked198603%_))
                        '#!void)
                    (let ((_%arity198610%_
                           (let ((__tmp201175
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _%args198599%_))))
                             (declare (not safe))
                             (_%signature-arity198040%_ __tmp201175))))
                      (if _%effect198602%_
                          (let ((_%effect198613%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect198602%_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _%effect198613%_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect198613%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx198035%_
                                   _%proc198037%_
                                   _%effect198613%_))))
                          '#!void)
                      (cons _%arity198610%_
                            (cons (let* ((_%g198616198639%_
                                          (lambda (_%g198617198635%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g198617198635%_))))
                                         (_%g198615198713%_
                                          (lambda (_%g198617198643%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g198617198643%_))
                                                (let ((_%e198624198646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g198617198643%_))))
                                                  (let ((_%hd198623198650%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198624198646%_)))
                                                        (_%tl198622198653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198624198646%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198622198653%_))
                                                        (let ((_%e198627198656%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198622198653%_))))
                  (let ((_%hd198626198660%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198627198656%_)))
                        (_%tl198625198663%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198627198656%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl198625198663%_))
                        (let ((_%e198630198666%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198625198663%_))))
                          (let ((_%hd198629198670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198630198666%_)))
                                (_%tl198628198673%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198630198666%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198628198673%_))
                                (let ((_%e198633198676%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198628198673%_))))
                                  (let ((_%hd198632198680%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198633198676%_)))
                                        (_%tl198631198683%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198633198676%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198631198683%_))
                                        ((lambda (_%L198686%_
                                                  _%L198688%_
                                                  _%L198689%_
                                                  _%L198690%_)
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
                             (cons _%L198690%_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198689%_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L198688%_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L198686%_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd198632198680%_
                                         _%hd198629198670%_
                                         _%hd198626198660%_
                                         _%hd198623198650%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g198616198639%_
                                           _%g198617198643%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g198616198639%_ _%g198617198643%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g198616198639%_ _%g198617198643%_)))))
                (let ()
                  (declare (not safe))
                  (_%g198616198639%_ _%g198617198643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198616198639%_
                                                   _%g198617198643%_)))))
                                         (__tmp201176
                                          (list _%args198599%_
                                                _%return198601%_
                                                _%effect198602%_
                                                _%unchecked198603%_)))
                                    (declare (not safe))
                                    (_%g198615198713%_ __tmp201176))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _%ctx198035%_ _%proc198037%_))
          (let* ((_%__stx200813200814%_ _%sig198038%_)
                 (_%g198049198152%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200813200814%_)))))
            (let ((_%__kont200816200817%_
                   (lambda (_%L198580%_ _%L198582%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198042%_
                        _%L198582%_
                        _%L198580%_
                        '#f
                        '#f))))
                  (_%__kont200818200819%_
                   (lambda (_%L198531%_ _%L198533%_ _%L198534%_)
                     (let ()
                       (declare (not safe))
                       (_%make-signature198042%_
                        _%L198534%_
                        _%L198533%_
                        _%L198531%_
                        '#f))))
                  (_%__kont200820200821%_
                   (lambda (_%L198455%_ _%L198457%_ _%L198458%_)
                     (let ((__tmp201177
                            (let ((__tmp201178
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198037%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201178))))
                       (declare (not safe))
                       (_%make-signature198042%_
                        _%L198458%_
                        _%L198457%_
                        _%L198455%_
                        __tmp201177))))
                  (_%__kont200822200823%_
                   (lambda (_%L198361%_ _%L198363%_ _%L198364%_ _%L198365%_)
                     (let ((__tmp201179
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198361%_))))
                       (declare (not safe))
                       (_%make-signature198042%_
                        _%L198365%_
                        _%L198364%_
                        '#f
                        __tmp201179))))
                  (_%__kont200824200825%_
                   (lambda (_%L198268%_ _%L198270%_)
                     (let ((__tmp201180
                            (let ((__tmp201181
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%proc198037%_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp201181))))
                       (declare (not safe))
                       (_%make-signature198042%_
                        _%L198270%_
                        _%L198268%_
                        '#f
                        __tmp201180))))
                  (_%__kont200826200827%_
                   (lambda (_%L198203%_ _%L198205%_ _%L198206%_)
                     (let ((__tmp201182
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L198203%_))))
                       (declare (not safe))
                       (_%make-signature198042%_
                        _%L198206%_
                        _%L198205%_
                        '#f
                        __tmp201182)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200813200814%_))
                  (let ((_%e198055198560%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx200813200814%_))))
                    (let ((_%tl198053198567%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e198055198560%_)))
                          (_%hd198054198564%_
                           (let ()
                             (declare (not safe))
                             (##car _%e198055198560%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl198053198567%_))
                          (let ((_%e198058198570%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl198053198567%_))))
                            (let ((_%tl198056198577%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e198058198570%_)))
                                  (_%hd198057198574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e198058198570%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl198056198577%_))
                                  (_%__kont200816200817%_
                                   _%hd198057198574%_
                                   _%hd198054198564%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198056198577%_))
                                      (let ((_%e198070198507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198056198577%_))))
                                        (let ((_%tl198068198514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198070198507%_)))
                                              (_%hd198069198511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198070198507%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd198069198511%_))
                                              (let ((_%e198071198517%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd198069198511%_))))
                                                (if (equal? _%e198071198517%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl198068198514%_))
                                                        (let ((_%e198074198521%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl198068198514%_))))
                  (let ((_%tl198072198528%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198074198521%_)))
                        (_%hd198073198525%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198074198521%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl198072198528%_))
                        (_%__kont200818200819%_
                         _%hd198073198525%_
                         _%hd198057198574%_
                         _%hd198054198564%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198072198528%_))
                            (let ((_%e198093198441%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl198072198528%_))))
                              (let ((_%tl198091198448%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198093198441%_)))
                                    (_%hd198092198445%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198093198441%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd198092198445%_))
                                    (let ((_%e198094198451%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198092198445%_))))
                                      (if (equal? _%e198094198451%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198091198448%_))
                                              (_%__kont200820200821%_
                                               _%hd198073198525%_
                                               _%hd198057198574%_
                                               _%hd198054198564%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl198091198448%_))
                                                  (let ((_%e198118198351%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl198091198448%_))))
                                                    (let ((_%tl198116198358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e198118198351%_)))
                                                          (_%hd198117198355%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e198118198351%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl198116198358%_))
                                                          (_%__kont200822200823%_
                                                           _%hd198117198355%_
                                                           _%hd198073198525%_
                                                           _%hd198057198574%_
                                                           _%hd198054198564%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g198049198152%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g198049198152%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g198049198152%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g198049198152%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g198049198152%_))))))
                (let () (declare (not safe)) (_%g198049198152%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e198071198517%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl198068198514%_))
                                                            (_%__kont200824200825%_
                                                             _%hd198057198574%_
                                                             _%hd198054198564%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl198068198514%_))
                        (let ((_%e198146198193%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl198068198514%_))))
                          (let ((_%tl198144198200%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198146198193%_)))
                                (_%hd198145198197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198146198193%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl198144198200%_))
                                (_%__kont200826200827%_
                                 _%hd198145198197%_
                                 _%hd198057198574%_
                                 _%hd198054198564%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g198049198152%_)))))
                        (let () (declare (not safe)) (_%g198049198152%_))))
                (let () (declare (not safe)) (_%g198049198152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g198049198152%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g198049198152%_))))))
                          (let () (declare (not safe)) (_%g198049198152%_)))))
                  (let () (declare (not safe)) (_%g198049198152%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig197715%_)
        (let* ((_%g197718197784%_
                (lambda (_%g197719197780%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197719197780%_))))
               (_%g197717198031%_
                (lambda (_%g197719197788%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197719197788%_))
                      (let ((_%e197726197791%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197719197788%_))))
                        (let ((_%hd197725197795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197726197791%_)))
                              (_%tl197724197798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197726197791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197724197798%_))
                              (let ((_%e197729197801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197724197798%_))))
                                (let ((_%hd197728197805%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197729197801%_)))
                                      (_%tl197727197808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197729197801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd197728197805%_))
                                      (let ((_%e197730197811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd197728197805%_))))
                                        (if (equal? _%e197730197811%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197727197808%_))
                                                (let ((_%e197733197815%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl197727197808%_))))
                                                  (let ((_%hd197732197819%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197733197815%_)))
                                                        (_%tl197731197822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197733197815%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197732197819%_))
                                                        (let ((_%e197736197825%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197732197819%_))))
                  (let ((_%hd197735197829%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197736197825%_)))
                        (_%tl197734197832%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197736197825%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd197735197829%_))
                        (if (let ((__tmp201183 |gxc[1]#_g201184_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp201183
                               _%hd197735197829%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197734197832%_))
                                (let ((_%e197739197835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197734197832%_))))
                                  (let ((_%hd197738197839%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197739197835%_)))
                                        (_%tl197737197842%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197739197835%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197737197842%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197731197822%_))
                                            (let ((_%e197742197845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl197731197822%_))))
                                              (let ((_%hd197741197849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197742197845%_)))
                                                    (_%tl197740197852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197742197845%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd197741197849%_))
                                                    (let ((_%e197743197855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd197741197849%_))))
                                                      (if (equal? _%e197743197855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl197740197852%_))
                      (let ((_%e197746197859%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl197740197852%_))))
                        (let ((_%hd197745197863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197746197859%_)))
                              (_%tl197744197866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197746197859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197745197863%_))
                              (let ((_%e197749197869%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd197745197863%_))))
                                (let ((_%hd197748197873%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197749197869%_)))
                                      (_%tl197747197876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197749197869%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197748197873%_))
                                      (if (let ((__tmp201185
                                                 |gxc[1]#_g201186_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp201185
                                             _%hd197748197873%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197747197876%_))
                                              (let ((_%e197752197879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl197747197876%_))))
                                                (let ((_%hd197751197883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197752197879%_)))
                                                      (_%tl197750197886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197752197879%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197750197886%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197744197866%_))
                                                          (let ((_%e197755197889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl197744197866%_))))
                    (let ((_%hd197754197893%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197755197889%_)))
                          (_%tl197753197896%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197755197889%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd197754197893%_))
                          (let ((_%e197756197899%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197754197893%_))))
                            (if (equal? _%e197756197899%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197753197896%_))
                                    (let ((_%e197759197903%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl197753197896%_))))
                                      (let ((_%hd197758197907%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197759197903%_)))
                                            (_%tl197757197910%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197759197903%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd197758197907%_))
                                            (let ((_%e197762197913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd197758197907%_))))
                                              (let ((_%hd197761197917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197762197913%_)))
                                                    (_%tl197760197920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197762197913%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd197761197917%_))
                                                    (if (let ((__tmp201187
                                                               |gxc[1]#_g201188_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp201187
                                                           _%hd197761197917%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197760197920%_))
                                                            (let ((_%e197765197923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl197760197920%_))))
                      (let ((_%hd197764197927%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197765197923%_)))
                            (_%tl197763197930%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197765197923%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197763197930%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197757197910%_))
                                (let ((_%e197768197933%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197757197910%_))))
                                  (let ((_%hd197767197937%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197768197933%_)))
                                        (_%tl197766197940%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197768197933%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd197767197937%_))
                                        (let ((_%e197769197943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd197767197937%_))))
                                          (if (equal? _%e197769197943%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197766197940%_))
                                                  (let ((_%e197772197947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197766197940%_))))
                                                    (let ((_%hd197771197951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197772197947%_)))
                                                          (_%tl197770197954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197772197947%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197771197951%_))
                                                          (let ((_%e197775197957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd197771197951%_))))
                    (let ((_%hd197774197961%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197775197957%_)))
                          (_%tl197773197964%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197775197957%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197774197961%_))
                          (if (let ((__tmp201189 |gxc[1]#_g201190_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp201189
                                 _%hd197774197961%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197773197964%_))
                                  (let ((_%e197778197967%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197773197964%_))))
                                    (let ((_%hd197777197971%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197778197967%_)))
                                          (_%tl197776197974%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197778197967%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197776197974%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197770197954%_))
                                              ((lambda (_%L197977%_
                                                        _%L197979%_
                                                        _%L197980%_
                                                        _%L197981%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _%L197977%_))
                                                     (cons _%L197977%_
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
                                                 (cons _%L197980%_ '()))
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#f))
                                               _%hd197777197971%_
                                               _%hd197764197927%_
                                               _%hd197751197883%_
                                               _%hd197738197839%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g197718197784%_
                                                 _%g197719197788%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197718197784%_
                                             _%g197719197788%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197718197784%_ _%g197719197788%_)))
                              (let ()
                                (declare (not safe))
                                (_%g197718197784%_ _%g197719197788%_)))
                          (let ()
                            (declare (not safe))
                            (_%g197718197784%_ _%g197719197788%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197718197784%_ _%g197719197788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g197718197784%_
                                                     _%g197719197788%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g197718197784%_
                                                 _%g197719197788%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197718197784%_
                                           _%g197719197788%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197718197784%_ _%g197719197788%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197718197784%_ _%g197719197788%_)))))
                    (let ()
                      (declare (not safe))
                      (_%g197718197784%_ _%g197719197788%_)))
                (let ()
                  (declare (not safe))
                  (_%g197718197784%_ _%g197719197788%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197718197784%_
                                                       _%g197719197788%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197718197784%_
                                               _%g197719197788%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197718197784%_ _%g197719197788%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g197718197784%_ _%g197719197788%_))))
                          (let ()
                            (declare (not safe))
                            (_%g197718197784%_ _%g197719197788%_)))))
                  (let ()
                    (declare (not safe))
                    (_%g197718197784%_ _%g197719197788%_)))
              (let ()
                (declare (not safe))
                (_%g197718197784%_ _%g197719197788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g197718197784%_
                                                 _%g197719197788%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197718197784%_
                                             _%g197719197788%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197718197784%_
                                         _%g197719197788%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197718197784%_ _%g197719197788%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197718197784%_ _%g197719197788%_)))
                  (let ()
                    (declare (not safe))
                    (_%g197718197784%_ _%g197719197788%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197718197784%_
                                                       _%g197719197788%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197718197784%_
                                               _%g197719197788%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197718197784%_
                                           _%g197719197788%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g197718197784%_ _%g197719197788%_)))
                            (let ()
                              (declare (not safe))
                              (_%g197718197784%_ _%g197719197788%_)))
                        (let ()
                          (declare (not safe))
                          (_%g197718197784%_ _%g197719197788%_)))))
                (let ()
                  (declare (not safe))
                  (_%g197718197784%_ _%g197719197788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197718197784%_
                                                   _%g197719197788%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197718197784%_
                                               _%g197719197788%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g197718197784%_
                                         _%g197719197788%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g197718197784%_ _%g197719197788%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g197718197784%_ _%g197719197788%_))))))
          (declare (not safe))
          (_%g197717198031%_ _%sig197715%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx198803%_)
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
                      (let ((_%e198812198831%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198807198828%_))))
                        (let ((_%hd198811198835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198812198831%_)))
                              (_%tl198810198838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198812198831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198810198838%_))
                              (let ((_%e198815198841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198810198838%_))))
                                (let ((_%hd198814198845%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198815198841%_)))
                                      (_%tl198813198848%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198815198841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198813198848%_))
                                      (let ((_%e198818198851%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198813198848%_))))
                                        (let ((_%hd198817198855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198818198851%_)))
                                              (_%tl198816198858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198818198851%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198816198858%_))
                                              ((lambda (_%L198861%_
                                                        _%L198863%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198863%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L198861%_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _%stx198803%_
                                                          _%L198863%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _%stx198803%_
                                                          _%L198861%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L198863%_
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
                                                   (cons _%L198861%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g198806198824%_
                                                      _%g198807198828%_)))
                                               _%hd198817198855%_
                                               _%hd198814198845%_)
                                              (_%g198806198824%_
                                               _%g198807198828%_))))
                                      (_%g198806198824%_ _%g198807198828%_))))
                              (_%g198806198824%_ _%g198807198828%_))))
                      (_%g198806198824%_ _%g198807198828%_)))))
          (_%g198805198879%_ _%stx198803%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx198883%_)
        (let* ((_%g198886198910%_
                (lambda (_%g198887198906%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198887198906%_))))
               (_%g198885199193%_
                (lambda (_%g198887198914%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198887198914%_))
                      (let ((_%e198892198917%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198887198914%_))))
                        (let ((_%hd198891198921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198892198917%_)))
                              (_%tl198890198924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198892198917%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198890198924%_))
                              (let ((_%e198895198927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198890198924%_))))
                                (let ((_%hd198894198931%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198895198927%_)))
                                      (_%tl198893198934%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198895198927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198893198934%_))
                                      (let ((_g201191_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198893198934%_
                                                '0))))
                                        (begin
                                          (let ((_g201192_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201191_)
                                                       (##vector-length
                                                        _g201191_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201192_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201192_)))
                                          (let ((_%target198896198937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201191_ 0)))
                                                (_%tl198898198940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201191_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198898198940%_))
                                                (letrec ((_%loop198899198943%_
                                                          (lambda (_%hd198897198947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature198903198950%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198897198947%_))
                        (let ((_%e198900198953%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd198897198947%_))))
                          (let ((_%lp-hd198901198957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198900198953%_)))
                                (_%lp-tl198902198960%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198900198953%_))))
                            (_%loop198899198943%_
                             _%lp-tl198902198960%_
                             (cons _%lp-hd198901198957%_
                                   _%signature198903198950%_))))
                        (let ((_%signature198904198963%_
                               (reverse _%signature198903198950%_)))
                          ((lambda (_%L198967%_ _%L198969%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L198969%_))
                                 (let* ((_%g198987199002%_
                                         (lambda (_%g198988198998%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g198988198998%_))))
                                        (_%g198986199181%_
                                         (lambda (_%g198988199006%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g198988199006%_))
                                               (let ((_%e198993199009%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g198988199006%_))))
                                                 (let ((_%hd198992199013%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e198993199009%_)))
                                                       (_%tl198991199016%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e198993199009%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl198991199016%_))
                                                       (let ((_%e198996199019%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl198991199016%_))))
                 (let ((_%hd198995199023%_
                        (let ()
                          (declare (not safe))
                          (##car _%e198996199019%_)))
                       (_%tl198994199026%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e198996199019%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl198994199026%_))
                       ((lambda (_%L199029%_ _%L199031%_)
                          (let ()
                            (let* ((_%g199047199055%_
                                    (lambda (_%g199048199051%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199048199051%_))))
                                   (_%g199046199177%_
                                    (lambda (_%g199048199059%_)
                                      ((lambda (_%L199062%_)
                                         (let ()
                                           (let* ((_%unchecked199075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (|gxc[1]#signature->unchecked-signature|
                                                      _%L199029%_)))
                                                  (_%g199078199086%_
                                                   (lambda (_%g199079199082%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g199079199082%_))))
                                                  (_%g199077199109%_
                                                   (lambda (_%g199079199090%_)
                                                     ((lambda (_%L199093%_)
                                                        (let ()
                                                          (let ()
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin))
                          (cons _%L199062%_ (cons _%L199093%_ '()))))))
              _%g199079199090%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g199077199109%_
                                              (if _%unchecked199075%_
                                                  (let* ((_%g199113199128%_
                                                          (lambda (_%g199114199124%_)
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g199114199124%_))))
                                                         (_%g199112199173%_
                                                          (lambda (_%g199114199132%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%g199114199132%_))
                        (let ((_%e199119199135%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%g199114199132%_))))
                          (let ((_%hd199118199139%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199119199135%_)))
                                (_%tl199117199142%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199119199135%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199117199142%_))
                                (let ((_%e199122199145%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199117199142%_))))
                                  (let ((_%hd199121199149%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199122199145%_)))
                                        (_%tl199120199152%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199122199145%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199120199152%_))
                                        ((lambda (_%L199155%_ _%L199157%_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type))
                                                   (cons _%L199157%_
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199031%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons _%L199155%_ '())))))
                       '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd199121199149%_
                                         _%hd199118199139%_)
                                        (_%g199113199128%_
                                         _%g199114199132%_))))
                                (_%g199113199128%_ _%g199114199132%_))))
                        (_%g199113199128%_ _%g199114199132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g199112199173%_
                                                     _%unchecked199075%_))
                                                  '(begin))))))
                                       _%g199048199059%_))))
                              (_%g199046199177%_
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'declare-type))
                                     (cons _%L198969%_
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!primitive-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199031%_ '()))
                     (cons '#f (cons 'signature: (cons _%L199029%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                        _%hd198995199023%_
                        _%hd198992199013%_)
                       (_%g198987199002%_ _%g198988199006%_))))
               (_%g198987199002%_ _%g198988199006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g198987199002%_
                                                _%g198988199006%_)))))
                                   (_%g198986199181%_
                                    (let ((__tmp201193
                                           (let ((__tmp201194
                                                  (lambda (_%g199184199187%_
                                                           _%g199185199190%_)
                                                    (cons _%g199184199187%_
                                                          _%g199185199190%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp201194
                                              '()
                                              _%L198967%_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _%stx198883%_
                                       _%L198969%_
                                       __tmp201193))))
                                 (_%g198886198910%_ _%g198887198914%_)))
                           _%signature198904198963%_
                           _%hd198894198931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop198899198943%_
                                                   _%target198896198937%_
                                                   '()))
                                                (_%g198886198910%_
                                                 _%g198887198914%_)))))
                                      (_%g198886198910%_ _%g198887198914%_))))
                              (_%g198886198910%_ _%g198887198914%_))))
                      (_%g198886198910%_ _%g198887198914%_)))))
          (_%g198885199193%_ _%stx198883%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx199198%_)
        (let* ((_%g199201199225%_
                (lambda (_%g199202199221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199202199221%_))))
               (_%g199200200039%_
                (lambda (_%g199202199229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199202199229%_))
                      (let ((_%e199207199232%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199202199229%_))))
                        (let ((_%hd199206199236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199207199232%_)))
                              (_%tl199205199239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199207199232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199205199239%_))
                              (let ((_%e199210199242%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199205199239%_))))
                                (let ((_%hd199209199246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199210199242%_)))
                                      (_%tl199208199249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199210199242%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl199208199249%_))
                                      (let ((_g201195_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl199208199249%_
                                                '0))))
                                        (begin
                                          (let ((_g201196_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201195_)
                                                       (##vector-length
                                                        _g201195_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201196_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201196_)))
                                          (let ((_%target199211199252%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g201195_ 0)))
                                                (_%tl199213199255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g201195_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199213199255%_))
                                                (letrec ((_%loop199214199258%_
                                                          (lambda (_%hd199212199262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature199218199265%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd199212199262%_))
                        (let ((_%e199215199268%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd199212199262%_))))
                          (let ((_%lp-hd199216199272%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199215199268%_)))
                                (_%lp-tl199217199275%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199215199268%_))))
                            (_%loop199214199258%_
                             _%lp-tl199217199275%_
                             (cons _%lp-hd199216199272%_
                                   _%case-signature199218199265%_))))
                        (let ((_%case-signature199219199278%_
                               (reverse _%case-signature199218199265%_)))
                          ((lambda (_%L199282%_ _%L199284%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L199284%_))
                                 (let* ((_%signatures199315%_
                                         (map (lambda (_%g199301199303%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (|gxc[1]#parse-signature|
                                                   _%stx199198%_
                                                   _%L199284%_
                                                   _%g199301199303%_)))
                                              (let ((__tmp201197
                                                     (lambda (_%g199306199309%_
                                                              _%g199307199312%_)
                                                       (cons _%g199306199309%_
                                                             _%g199307199312%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp201197
                                                 '()
                                                 _%L199282%_))))
                                        (_%g199318199344%_
                                         (lambda (_%g199319199340%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g199319199340%_))))
                                        (_%g199317200035%_
                                         (lambda (_%g199319199348%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g199319199348%_))
                                               (let ((_g201198_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g199319199348%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g201199_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g201198_)
                        (##vector-length _g201198_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g201199_ 2)))
                 (error "Context expects 2 values" _g201199_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target199322199351%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201198_
                                                             0)))
                                                         (_%tl199324199354%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g201198_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199324199354%_))
                                                         (letrec ((_%loop199325199357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd199323199361%_
                                    _%sig199329199364%_
                                    _%arity199330199366%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd199323199361%_))
                                 (let ((_%e199326199369%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd199323199361%_))))
                                   (let ((_%lp-hd199327199373%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199326199369%_)))
                                         (_%lp-tl199328199376%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199326199369%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd199327199373%_))
                                         (let ((_%e199335199379%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd199327199373%_))))
                                           (let ((_%hd199334199383%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199335199379%_)))
                                                 (_%tl199333199386%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199335199379%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199333199386%_))
                                                 (let ((_%e199338199389%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199333199386%_))))
                                                   (let ((_%hd199337199393%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199338199389%_)))
                                                         (_%tl199336199396%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199338199389%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199336199396%_))
                                                         (_%loop199325199357%_
                                                          _%lp-tl199328199376%_
                                                          (cons _%hd199337199393%_
                                                                _%sig199329199364%_)
                                                          (cons _%hd199334199383%_
                                                                _%arity199330199366%_))
                                                         (_%g199318199344%_
                                                          _%g199319199348%_))))
                                                 (_%g199318199344%_
                                                  _%g199319199348%_))))
                                         (_%g199318199344%_
                                          _%g199319199348%_))))
                                 (let ((_%sig199331199399%_
                                        (reverse _%sig199329199364%_))
                                       (_%arity199332199402%_
                                        (reverse _%arity199330199366%_)))
                                   ((lambda (_%L199405%_ _%L199407%_)
                                      (let ()
                                        (let* ((_%g199424199432%_
                                                (lambda (_%g199425199428%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g199425199428%_))))
                                               (_%g199423200020%_
                                                (lambda (_%g199425199436%_)
                                                  ((lambda (_%L199439%_)
                                                     (let ()
                                                       (let* ((_%g199452199460%_
                                                               (lambda (_%g199453199456%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g199453199456%_))))
                      (_%g199451199482%_
                       (lambda (_%g199453199464%_)
                         ((lambda (_%L199467%_)
                            (let ()
                              (let ()
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'begin))
                                      (cons _%L199439%_
                                            (cons _%L199467%_ '()))))))
                          _%g199453199464%_))))
                 (_%g199451199482%_
                  (let ((_g201200_
                         (let _%loop199486%_ ((_%rest199489%_
                                               _%signatures199315%_)
                                              (_%unchecked-proc199491%_ '#f)
                                              (_%unchecked-clauses199492%_
                                               '()))
                           (let* ((_%rest199493199501%_ _%rest199489%_)
                                  (_%else199495199513%_
                                   (lambda ()
                                     (values _%unchecked-proc199491%_
                                             (reverse!
                                              _%unchecked-clauses199492%_))))
                                  (_%K199497199885%_
                                   (lambda (_%rest199517%_ _%hd199519%_)
                                     (let* ((_%g199521199594%_
                                             (lambda (_%g199522199590%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g199522199590%_))))
                                            (_%g199520199881%_
                                             (lambda (_%g199522199598%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g199522199598%_))
                                                   (let ((_%e199530199601%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g199522199598%_))))
                                                     (let ((_%hd199529199605%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199530199601%_)))
                                                           (_%tl199528199608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199530199601%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl199528199608%_))
                                                           (let ((_%e199533199611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl199528199608%_))))
                     (let ((_%hd199532199615%_
                            (let ()
                              (declare (not safe))
                              (##car _%e199533199611%_)))
                           (_%tl199531199618%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e199533199611%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%hd199532199615%_))
                           (let ((_%e199536199621%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%hd199532199615%_))))
                             (let ((_%hd199535199625%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199536199621%_)))
                                   (_%tl199534199628%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199536199621%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl199534199628%_))
                                   (let ((_%e199539199631%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl199534199628%_))))
                                     (let ((_%hd199538199635%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199539199631%_)))
                                           (_%tl199537199638%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199539199631%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-datum?
                                              _%hd199538199635%_))
                                           (let ((_%e199540199641%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%hd199538199635%_))))
                                             (if (equal? _%e199540199641%_
                                                         'arguments:)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199537199638%_))
                                                     (let ((_%e199543199645%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-e
                                                               _%tl199537199638%_))))
                                                       (let ((_%hd199542199649%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e199543199645%_)))
                     (_%tl199541199652%_
                      (let () (declare (not safe)) (##cdr _%e199543199645%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%hd199542199649%_))
                     (let ((_%e199546199655%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%hd199542199649%_))))
                       (let ((_%hd199545199659%_
                              (let ()
                                (declare (not safe))
                                (##car _%e199546199655%_)))
                             (_%tl199544199662%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e199546199655%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%hd199545199659%_))
                             (if (let ((__tmp201202 |gxc[1]#_g201203_|))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    __tmp201202
                                    _%hd199545199659%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199544199662%_))
                                     (let ((_%e199549199665%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199544199662%_))))
                                       (let ((_%hd199548199669%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199549199665%_)))
                                             (_%tl199547199672%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199549199665%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%tl199547199672%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199541199652%_))
                                                 (let ((_%e199552199675%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl199541199652%_))))
                                                   (let ((_%hd199551199679%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199552199675%_)))
                                                         (_%tl199550199682%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199552199675%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-datum?
                                                            _%hd199551199679%_))
                                                         (let ((_%e199553199685%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd199551199679%_))))
                   (if (equal? _%e199553199685%_ 'return:)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%tl199550199682%_))
                           (let ((_%e199556199689%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-e _%tl199550199682%_))))
                             (let ((_%hd199555199693%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e199556199689%_)))
                                   (_%tl199554199696%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e199556199689%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%hd199555199693%_))
                                   (let ((_%e199559199699%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%hd199555199693%_))))
                                     (let ((_%hd199558199703%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e199559199699%_)))
                                           (_%tl199557199706%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e199559199699%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%hd199558199703%_))
                                           (if (let ((__tmp201204
                                                      |gxc[1]#_g201205_|))
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  __tmp201204
                                                  _%hd199558199703%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl199557199706%_))
                                                   (let ((_%e199562199709%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl199557199706%_))))
                                                     (let ((_%hd199561199713%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e199562199709%_)))
                                                           (_%tl199560199716%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e199562199709%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%tl199560199716%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%tl199554199696%_))
                       (let ((_%e199565199719%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl199554199696%_))))
                         (let ((_%hd199564199723%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199565199719%_)))
                               (_%tl199563199726%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199565199719%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd199564199723%_))
                               (let ((_%e199566199729%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd199564199723%_))))
                                 (if (equal? _%e199566199729%_ 'effect:)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl199563199726%_))
                                         (let ((_%e199569199733%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%tl199563199726%_))))
                                           (let ((_%hd199568199737%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e199569199733%_)))
                                                 (_%tl199567199740%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e199569199733%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd199568199737%_))
                                                 (let ((_%e199572199743%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%hd199568199737%_))))
                                                   (let ((_%hd199571199747%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199572199743%_)))
                                                         (_%tl199570199750%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199572199743%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd199571199747%_))
                                                         (if (let ((__tmp201206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            |gxc[1]#_g201207_|))
                       (declare (not safe))
                       (gx#free-identifier=? __tmp201206 _%hd199571199747%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl199570199750%_))
                         (let ((_%e199575199753%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl199570199750%_))))
                           (let ((_%hd199574199757%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e199575199753%_)))
                                 (_%tl199573199760%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e199575199753%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl199573199760%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl199567199740%_))
                                     (let ((_%e199578199763%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl199567199740%_))))
                                       (let ((_%hd199577199767%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199578199763%_)))
                                             (_%tl199576199770%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199578199763%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-datum?
                                                _%hd199577199767%_))
                                             (let ((_%e199579199773%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%hd199577199767%_))))
                                               (if (equal? _%e199579199773%_
                                                           'unchecked:)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl199576199770%_))
                                                       (let ((_%e199582199777%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl199576199770%_))))
                 (let ((_%hd199581199781%_
                        (let ()
                          (declare (not safe))
                          (##car _%e199582199777%_)))
                       (_%tl199580199784%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e199582199777%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd199581199781%_))
                       (let ((_%e199585199787%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd199581199781%_))))
                         (let ((_%hd199584199791%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e199585199787%_)))
                               (_%tl199583199794%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e199585199787%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#identifier? _%hd199584199791%_))
                               (if (let ((__tmp201208 |gxc[1]#_g201209_|))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      __tmp201208
                                      _%hd199584199791%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%tl199583199794%_))
                                       (let ((_%e199588199797%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#syntax-e
                                                 _%tl199583199794%_))))
                                         (let ((_%hd199587199801%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199588199797%_)))
                                               (_%tl199586199804%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199588199797%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl199586199804%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl199580199784%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl199531199618%_))
                                                       ((lambda (_%L199807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%L199809%_
                         _%L199810%_
                         _%L199811%_
                         _%L199812%_)
                  (let ((_%clause199873%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0
                                  '#f
                                  'make-!primitive-lambda))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199812%_ '()))
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
                                       (cons _%L199810%_ '()))
                                 '())))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%unchecked199875%_
                         (let () (declare (not safe)) (gx#stx-e _%L199807%_))))
                    (_%loop199486%_
                     _%rest199517%_
                     (let ((_%$e199877%_ _%unchecked199875%_))
                       (if _%$e199877%_ _%$e199877%_ _%unchecked-proc199491%_))
                     (cons _%clause199873%_ _%unchecked-clauses199492%_))))
                _%hd199587199801%_
                _%hd199574199757%_
                _%hd199561199713%_
                _%hd199548199669%_
                _%hd199529199605%_)
               (_%g199521199594%_ _%g199522199598%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199521199594%_
                                                    _%g199522199598%_))
                                               (_%g199521199594%_
                                                _%g199522199598%_))))
                                       (_%g199521199594%_ _%g199522199598%_))
                                   (_%g199521199594%_ _%g199522199598%_))
                               (_%g199521199594%_ _%g199522199598%_))))
                       (_%g199521199594%_ _%g199522199598%_))))
               (_%g199521199594%_ _%g199522199598%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199521199594%_
                                                    _%g199522199598%_)))
                                             (_%g199521199594%_
                                              _%g199522199598%_))))
                                     (_%g199521199594%_ _%g199522199598%_))
                                 (_%g199521199594%_ _%g199522199598%_))))
                         (_%g199521199594%_ _%g199522199598%_))
                     (_%g199521199594%_ _%g199522199598%_))
                 (_%g199521199594%_ _%g199522199598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199521199594%_
                                                  _%g199522199598%_))))
                                         (_%g199521199594%_ _%g199522199598%_))
                                     (_%g199521199594%_ _%g199522199598%_)))
                               (_%g199521199594%_ _%g199522199598%_))))
                       (_%g199521199594%_ _%g199522199598%_))
                   (_%g199521199594%_ _%g199522199598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199521199594%_
                                                    _%g199522199598%_))
                                               (_%g199521199594%_
                                                _%g199522199598%_))
                                           (_%g199521199594%_
                                            _%g199522199598%_))))
                                   (_%g199521199594%_ _%g199522199598%_))))
                           (_%g199521199594%_ _%g199522199598%_))
                       (_%g199521199594%_ _%g199522199598%_)))
                 (_%g199521199594%_ _%g199522199598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g199521199594%_
                                                  _%g199522199598%_))
                                             (_%g199521199594%_
                                              _%g199522199598%_))))
                                     (_%g199521199594%_ _%g199522199598%_))
                                 (_%g199521199594%_ _%g199522199598%_))
                             (_%g199521199594%_ _%g199522199598%_))))
                     (_%g199521199594%_ _%g199522199598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g199521199594%_
                                                      _%g199522199598%_))
                                                 (_%g199521199594%_
                                                  _%g199522199598%_)))
                                           (_%g199521199594%_
                                            _%g199522199598%_))))
                                   (_%g199521199594%_ _%g199522199598%_))))
                           (_%g199521199594%_ _%g199522199598%_))))
                   (_%g199521199594%_ _%g199522199598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g199521199594%_
                                                    _%g199522199598%_)))))
                                       (_%g199520199881%_ _%hd199519%_)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest199493199501%_))
                                 (let ((_%hd199498199889%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest199493199501%_)))
                                       (_%tl199499199892%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest199493199501%_))))
                                   (let* ((_%hd199895%_ _%hd199498199889%_)
                                          (_%rest199898%_ _%tl199499199892%_))
                                     (_%K199497199885%_
                                      _%rest199898%_
                                      _%hd199895%_)))
                                 (_%else199495199513%_))))))
                    (begin
                      (let ((_g201201_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201200_)
                                   (##vector-length _g201200_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201201_ 2)))
                            (error "Context expects 2 values" _g201201_)))
                      (let ((_%unchecked-proc199901%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201200_ 0)))
                            (_%unchecked-clauses199903%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201200_ 1))))
                        (if _%unchecked-proc199901%_
                            (let* ((_%g199905199929%_
                                    (lambda (_%g199906199925%_)
                                      (let ()
                                        (declare (not safe))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g199906199925%_))))
                                   (_%g199904200016%_
                                    (lambda (_%g199906199933%_)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%g199906199933%_))
                                          (let ((_%e199911199936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%g199906199933%_))))
                                            (let ((_%hd199910199940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199911199936%_)))
                                                  (_%tl199909199943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199911199936%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199909199943%_))
                                                  (let ((_%e199914199946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl199909199943%_))))
                                                    (let ((_%hd199913199950%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199914199946%_)))
                                                          (_%tl199912199953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199914199946%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%hd199913199950%_))
                                                          (let ((_g201210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%hd199913199950%_ '0))))
                    (begin
                      (let ((_g201211_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201210_)
                                   (##vector-length _g201210_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201211_ 2)))
                            (error "Context expects 2 values" _g201211_)))
                      (let ((_%target199915199956%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201210_ 0)))
                            (_%tl199917199959%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _g201210_ 1))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199917199959%_))
                            (letrec ((_%loop199918199962%_
                                      (lambda (_%hd199916199966%_
                                               _%clause199922199969%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd199916199966%_))
                                            (let ((_%e199919199972%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd199916199966%_))))
                                              (let ((_%lp-hd199920199976%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199919199972%_)))
                                                    (_%lp-tl199921199979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199919199972%_))))
                                                (_%loop199918199962%_
                                                 _%lp-tl199921199979%_
                                                 (cons _%lp-hd199920199976%_
                                                       _%clause199922199969%_))))
                                            (let ((_%clause199923199982%_
                                                   (reverse _%clause199922199969%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199912199953%_))
                                                  ((lambda (_%L199986%_
                                                            _%L199988%_)
                                                     (let ()
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L199988%_
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
                                                   (let ((__tmp201212
                                                          (lambda (_%g200007200010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g200008200013%_)
                    (cons _%g200007200010%_ _%g200008200013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp201212
                                                      '()
                                                      _%L199986%_)))
                                             '()))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%clause199923199982%_
                                                   _%hd199910199940%_)
                                                  (_%g199905199929%_
                                                   _%g199906199933%_)))))))
                              (_%loop199918199962%_
                               _%target199915199956%_
                               '()))
                            (_%g199905199929%_ _%g199906199933%_)))))
                  (_%g199905199929%_ _%g199906199933%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g199905199929%_
                                                   _%g199906199933%_))))
                                          (_%g199905199929%_
                                           _%g199906199933%_)))))
                              (_%g199904200016%_
                               (list _%unchecked-proc199901%_
                                     _%unchecked-clauses199903%_)))
                            '(begin)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g199425199436%_))))
                                          (_%g199423200020%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'declare-type))
                                                 (cons _%L199284%_
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
                                            _%L199405%_
                                            _%L199407%_))
                                         (let ((__tmp201213
                                                (lambda (_%g200023200027%_
                                                         _%g200024200030%_
                                                         _%g200025200032%_)
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%g200024200030%_ '()))
                            (cons '#f
                                  (cons 'signature:
                                        (cons _%g200023200027%_ '())))))
                _%g200025200032%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldr2
                                            __tmp201213
                                            '()
                                            _%L199405%_
                                            _%L199407%_))))
                                 '()))
                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig199331199399%_
                                    _%arity199332199402%_))))))
                   (_%loop199325199357%_ _%target199322199351%_ '() '()))
                 (_%g199318199344%_ _%g199319199348%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g199318199344%_
                                                _%g199319199348%_)))))
                                   (_%g199317200035%_ _%signatures199315%_))
                                 (_%g199201199225%_ _%g199202199229%_)))
                           _%case-signature199219199278%_
                           _%hd199209199246%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop199214199258%_
                                                   _%target199211199252%_
                                                   '()))
                                                (_%g199201199225%_
                                                 _%g199202199229%_)))))
                                      (_%g199201199225%_ _%g199202199229%_))))
                              (_%g199201199225%_ _%g199202199229%_))))
                      (_%g199201199225%_ _%g199202199229%_)))))
          (_%g199200200039%_ _%stx199198%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx200047%_)
        (let* ((_%__stx201029201030%_ _%$stx200047%_)
               (_%g200053200113%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201029201030%_)))))
          (let ((_%__kont201032201033%_
                 (lambda (_%L200335%_ _%L200337%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200337%_ '()))
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
                                                       (cons _%L200337%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200335%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201034201035%_
                 (lambda (_%L200260%_ _%L200262%_ _%L200263%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200263%_ '()))
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
                                                       (cons _%L200263%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200262%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200260%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont201036201037%_
                 (lambda (_%L200174%_ _%L200176%_ _%L200177%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L200177%_ '()))
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
                                                       (cons _%L200177%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L200176%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L200174%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201029201030%_))
                (let ((_%e200059200291%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx201029201030%_))))
                  (let ((_%tl200057200298%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200059200291%_)))
                        (_%hd200058200295%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200059200291%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200057200298%_))
                        (let ((_%e200062200301%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200057200298%_))))
                          (let ((_%tl200060200308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200062200301%_)))
                                (_%hd200061200305%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200062200301%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd200061200305%_))
                                (let ((_%e200063200311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200061200305%_))))
                                  (if (equal? _%e200063200311%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200060200308%_))
                                          (let ((_%e200066200315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl200060200308%_))))
                                            (let ((_%tl200064200322%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200066200315%_)))
                                                  (_%hd200065200319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200066200315%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200064200322%_))
                                                  (let ((_%e200069200325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200064200322%_))))
                                                    (let ((_%tl200067200332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200069200325%_)))
                                                          (_%hd200068200329%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200069200325%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200067200332%_))
                                                          (_%__kont201032201033%_
                                                           _%hd200068200329%_
                                                           _%hd200065200319%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200053200113%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200053200113%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200053200113%_)))
                                      (if (equal? _%e200063200311%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200060200308%_))
                                              (let ((_%e200082200230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200060200308%_))))
                                                (let ((_%tl200080200237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200082200230%_)))
                                                      (_%hd200081200234%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200082200230%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200080200237%_))
                                                      (let ((_%e200085200240%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl200080200237%_))))
                (let ((_%tl200083200247%_
                       (let () (declare (not safe)) (##cdr _%e200085200240%_)))
                      (_%hd200084200244%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200085200240%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200083200247%_))
                      (let ((_%e200088200250%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200083200247%_))))
                        (let ((_%tl200086200257%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200088200250%_)))
                              (_%hd200087200254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200088200250%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200086200257%_))
                              (_%__kont201034201035%_
                               _%hd200087200254%_
                               _%hd200084200244%_
                               _%hd200081200234%_)
                              (let ()
                                (declare (not safe))
                                (_%g200053200113%_)))))
                      (let () (declare (not safe)) (_%g200053200113%_)))))
              (let () (declare (not safe)) (_%g200053200113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200053200113%_)))
                                          (if (equal? _%e200063200311%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200060200308%_))
                                                  (let ((_%e200101200144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200060200308%_))))
                                                    (let ((_%tl200099200151%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200101200144%_)))
                                                          (_%hd200100200148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200101200144%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200099200151%_))
                                                          (let ((_%e200104200154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200099200151%_))))
                    (let ((_%tl200102200161%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200104200154%_)))
                          (_%hd200103200158%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200104200154%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200102200161%_))
                          (let ((_%e200107200164%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200102200161%_))))
                            (let ((_%tl200105200171%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200107200164%_)))
                                  (_%hd200106200168%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200107200164%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200105200171%_))
                                  (_%__kont201036201037%_
                                   _%hd200106200168%_
                                   _%hd200103200158%_
                                   _%hd200100200148%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200053200113%_)))))
                          (let () (declare (not safe)) (_%g200053200113%_)))))
                  (let () (declare (not safe)) (_%g200053200113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200053200113%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200053200113%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g200053200113%_)))))
                        (let () (declare (not safe)) (_%g200053200113%_)))))
                (let () (declare (not safe)) (_%g200053200113%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx200359%_)
        (let* ((_%g200363200383%_
                (lambda (_%g200364200379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200364200379%_))))
               (_%g200362200454%_
                (lambda (_%g200364200387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200364200387%_))
                      (let ((_%e200368200390%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200364200387%_))))
                        (let ((_%hd200367200394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200368200390%_)))
                              (_%tl200366200397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200368200390%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200366200397%_))
                              (let ((_g201214_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200366200397%_
                                        '0))))
                                (begin
                                  (let ((_g201215_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g201214_)
                                               (##vector-length _g201214_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g201215_ 2)))
                                        (error "Context expects 2 values"
                                               _g201215_)))
                                  (let ((_%target200369200400%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201214_ 0)))
                                        (_%tl200371200403%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g201214_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200371200403%_))
                                        (letrec ((_%loop200372200406%_
                                                  (lambda (_%hd200370200410%_
                                                           _%decl200376200413%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200370200410%_))
                                                        (let ((_%e200373200416%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200370200410%_))))
                  (let ((_%lp-hd200374200420%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200373200416%_)))
                        (_%lp-tl200375200423%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200373200416%_))))
                    (_%loop200372200406%_
                     _%lp-tl200375200423%_
                     (cons _%lp-hd200374200420%_ _%decl200376200413%_))))
                (let ((_%decl200377200426%_ (reverse _%decl200376200413%_)))
                  ((lambda (_%L200430%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp201216
                                  (lambda (_%g200445200448%_ _%g200446200451%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g200445200448%_)
                                          _%g200446200451%_))))
                             (declare (not safe))
                             (__foldr1 __tmp201216 '() _%L200430%_))))
                   _%decl200377200426%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop200372200406%_
                                           _%target200369200400%_
                                           '()))
                                        (_%g200363200383%_
                                         _%g200364200387%_)))))
                              (_%g200363200383%_ _%g200364200387%_))))
                      (_%g200363200383%_ _%g200364200387%_)))))
          (_%g200362200454%_ _%$stx200359%_))))))
