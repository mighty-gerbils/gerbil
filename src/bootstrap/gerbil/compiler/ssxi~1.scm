(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g210291_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210298_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210300_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210302_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210304_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210306_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210318_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210320_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210322_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210324_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210326_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx203709%_)
        (let* ((_%g203713203731%_
                (lambda (_%g203714203727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203714203727%_))))
               (_%g203712203786%_
                (lambda (_%g203714203735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203714203735%_))
                      (let ((_%e203717203738%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203714203735%_))))
                        (let ((_%hd203718203742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203717203738%_)))
                              (_%tl203719203745%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203717203738%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203719203745%_))
                              (let ((_%e203720203748%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203719203745%_))))
                                (let ((_%hd203721203752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203720203748%_)))
                                      (_%tl203722203755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203720203748%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203722203755%_))
                                      (let ((_%e203723203758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203722203755%_))))
                                        (let ((_%hd203724203762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203723203758%_)))
                                              (_%tl203725203765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203723203758%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203725203765%_))
                                              ((lambda (_%L203768%_
                                                        _%L203770%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203770%_))
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
                               (cons _%L203770%_ '()))
                         (cons _%L203768%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203713203731%_
                                                      _%g203714203735%_)))
                                               _%hd203724203762%_
                                               _%hd203721203752%_)
                                              (_%g203713203731%_
                                               _%g203714203735%_))))
                                      (_%g203713203731%_ _%g203714203735%_))))
                              (_%g203713203731%_ _%g203714203735%_))))
                      (_%g203713203731%_ _%g203714203735%_)))))
          (_%g203712203786%_ _%$stx203709%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx203790%_)
        (let* ((_%g203794203812%_
                (lambda (_%g203795203808%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203795203808%_))))
               (_%g203793203867%_
                (lambda (_%g203795203816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203795203816%_))
                      (let ((_%e203798203819%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203795203816%_))))
                        (let ((_%hd203799203823%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203798203819%_)))
                              (_%tl203800203826%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203798203819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203800203826%_))
                              (let ((_%e203801203829%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203800203826%_))))
                                (let ((_%hd203802203833%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203801203829%_)))
                                      (_%tl203803203836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203801203829%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203803203836%_))
                                      (let ((_%e203804203839%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203803203836%_))))
                                        (let ((_%hd203805203843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203804203839%_)))
                                              (_%tl203806203846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203804203839%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203806203846%_))
                                              ((lambda (_%L203849%_
                                                        _%L203851%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203851%_))
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
                               (cons _%L203851%_ '()))
                         (cons _%L203849%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203794203812%_
                                                      _%g203795203816%_)))
                                               _%hd203805203843%_
                                               _%hd203802203833%_)
                                              (_%g203794203812%_
                                               _%g203795203816%_))))
                                      (_%g203794203812%_ _%g203795203816%_))))
                              (_%g203794203812%_ _%g203795203816%_))))
                      (_%g203794203812%_ _%g203795203816%_)))))
          (_%g203793203867%_ _%$stx203790%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx203871%_)
        (let* ((_%g203875203904%_
                (lambda (_%g203876203900%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203876203900%_))))
               (_%g203874204004%_
                (lambda (_%g203876203908%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203876203908%_))
                      (let ((_%e203879203911%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203876203908%_))))
                        (let ((_%hd203880203915%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203879203911%_)))
                              (_%tl203881203918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203879203911%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203881203918%_))
                              (let ((_g210269_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203881203918%_
                                        '0))))
                                (begin
                                  (let ((_g210270_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210269_)
                                               (##values-length _g210269_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210270_ 2)))
                                        (error "Context expects 2 values"
                                               _g210270_)))
                                  (let ((_%target203882203921%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210269_ 0)))
                                        (_%tl203884203924%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210269_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203884203924%_))
                                        (letrec ((_%loop203885203927%_
                                                  (lambda (_%hd203883203931%_
                                                           _%type203889203934%_
                                                           _%symbol203890203936%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203883203931%_))
                                                        (let ((_%e203886203939%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203883203931%_))))
                  (let ((_%lp-hd203887203943%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203886203939%_)))
                        (_%lp-tl203888203946%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203886203939%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203887203943%_))
                        (let ((_%e203893203949%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203887203943%_))))
                          (let ((_%hd203894203953%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203893203949%_)))
                                (_%tl203895203956%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203893203949%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203895203956%_))
                                (let ((_%e203896203959%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203895203956%_))))
                                  (let ((_%hd203897203963%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203896203959%_)))
                                        (_%tl203898203966%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203896203959%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203898203966%_))
                                        (_%loop203885203927%_
                                         _%lp-tl203888203946%_
                                         (cons _%hd203897203963%_
                                               _%type203889203934%_)
                                         (cons _%hd203894203953%_
                                               _%symbol203890203936%_))
                                        (_%g203875203904%_
                                         _%g203876203908%_))))
                                (_%g203875203904%_ _%g203876203908%_))))
                        (_%g203875203904%_ _%g203876203908%_))))
                (let ((_%type203891203969%_ (reverse _%type203889203934%_))
                      (_%symbol203892203972%_
                       (reverse _%symbol203890203936%_)))
                  ((lambda (_%L203975%_ _%L203977%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203975%_
                                _%L203977%_))
                             (let ((__tmp210271
                                    (lambda (_%g203992203996%_
                                             _%g203993203999%_
                                             _%g203994204001%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g203993203999%_
                                                        (cons _%g203992203996%_
                                                              '())))
                                            _%g203994204001%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210271
                                '()
                                _%L203975%_
                                _%L203977%_)))))
                   _%type203891203969%_
                   _%symbol203892203972%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203885203927%_
                                           _%target203882203921%_
                                           '()
                                           '()))
                                        (_%g203875203904%_
                                         _%g203876203908%_)))))
                              (_%g203875203904%_ _%g203876203908%_))))
                      (_%g203875203904%_ _%g203876203908%_)))))
          (_%g203874204004%_ _%$stx203871%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx204009%_)
        (let* ((_%__stx209580209581%_ _%$stx204009%_)
               (_%g204014204056%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209580209581%_)))))
          (let ((_%__kont209583209584%_
                 (lambda (_%L204184%_ _%L204186%_ _%L204187%_ _%L204188%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204188%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204187%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204186%_ '()))
                                           (cons _%L204184%_ '())))))))
                (_%__kont209585209586%_
                 (lambda (_%L204103%_ _%L204105%_ _%L204106%_ _%L204107%_)
                   (cons _%L204107%_
                         (cons _%L204106%_
                               (cons _%L204105%_
                                     (cons _%L204103%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match209619209620%_
                   (lambda (_%e204020204134%_
                            _%hd204021204138%_
                            _%tl204022204141%_
                            _%e204023204144%_
                            _%hd204024204148%_
                            _%tl204025204151%_
                            _%e204026204154%_
                            _%hd204027204158%_
                            _%tl204028204161%_
                            _%e204029204164%_
                            _%hd204030204168%_
                            _%tl204031204171%_
                            _%e204032204174%_
                            _%hd204033204178%_
                            _%tl204034204181%_)
                     (let ((_%L204184%_ _%hd204033204178%_)
                           (_%L204186%_ _%hd204030204168%_)
                           (_%L204187%_ _%hd204027204158%_)
                           (_%L204188%_ _%hd204024204148%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204188%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204187%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204186%_)))
                           (_%__kont209583209584%_
                            _%L204184%_
                            _%L204186%_
                            _%L204187%_
                            _%L204188%_)
                           (let ()
                             (declare (not safe))
                             (_%g204014204056%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209580209581%_))
                  (let ((_%e204020204134%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209580209581%_))))
                    (let ((_%tl204022204141%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204020204134%_)))
                          (_%hd204021204138%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204020204134%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204022204141%_))
                          (let ((_%e204023204144%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204022204141%_))))
                            (let ((_%tl204025204151%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204023204144%_)))
                                  (_%hd204024204148%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204023204144%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204025204151%_))
                                  (let ((_%e204026204154%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204025204151%_))))
                                    (let ((_%tl204028204161%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204026204154%_)))
                                          (_%hd204027204158%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204026204154%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204028204161%_))
                                          (let ((_%e204029204164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl204028204161%_))))
                                            (let ((_%tl204031204171%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204029204164%_)))
                                                  (_%hd204030204168%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204029204164%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204031204171%_))
                                                  (let ((_%e204032204174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204031204171%_))))
                                                    (let ((_%tl204034204181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204032204174%_)))
                                                          (_%hd204033204178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204032204174%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204034204181%_))
                                                          (_%__match209619209620%_
                                                           _%e204020204134%_
                                                           _%hd204021204138%_
                                                           _%tl204022204141%_
                                                           _%e204023204144%_
                                                           _%hd204024204148%_
                                                           _%tl204025204151%_
                                                           _%e204026204154%_
                                                           _%hd204027204158%_
                                                           _%tl204028204161%_
                                                           _%e204029204164%_
                                                           _%hd204030204168%_
                                                           _%tl204031204171%_
                                                           _%e204032204174%_
                                                           _%hd204033204178%_
                                                           _%tl204034204181%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204014204056%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204031204171%_))
                                                      (_%__kont209585209586%_
                                                       _%hd204030204168%_
                                                       _%hd204027204158%_
                                                       _%hd204024204148%_
                                                       _%hd204021204138%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204014204056%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204014204056%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204014204056%_)))))
                          (let () (declare (not safe)) (_%g204014204056%_)))))
                  (let () (declare (not safe)) (_%g204014204056%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx204213%_)
        (let* ((_%g204217204252%_
                (lambda (_%g204218204248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204218204248%_))))
               (_%g204216204371%_
                (lambda (_%g204218204256%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204218204256%_))
                      (let ((_%e204222204259%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204218204256%_))))
                        (let ((_%hd204223204263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204222204259%_)))
                              (_%tl204224204266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204222204259%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204224204266%_))
                              (let ((_g210272_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204224204266%_
                                        '0))))
                                (begin
                                  (let ((_g210273_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210272_)
                                               (##values-length _g210272_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210273_ 2)))
                                        (error "Context expects 2 values"
                                               _g210273_)))
                                  (let ((_%target204225204269%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210272_ 0)))
                                        (_%tl204227204272%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210272_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204227204272%_))
                                        (letrec ((_%loop204228204275%_
                                                  (lambda (_%hd204226204279%_
                                                           _%symbol204232204282%_
                                                           _%method204233204284%_
                                                           _%type-t204234204286%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204226204279%_))
                                                        (let ((_%e204229204289%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204226204279%_))))
                  (let ((_%lp-hd204230204293%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204229204289%_)))
                        (_%lp-tl204231204296%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204229204289%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204230204293%_))
                        (let ((_%e204238204299%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204230204293%_))))
                          (let ((_%hd204239204303%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204238204299%_)))
                                (_%tl204240204306%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204238204299%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204240204306%_))
                                (let ((_%e204241204309%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204240204306%_))))
                                  (let ((_%hd204242204313%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204241204309%_)))
                                        (_%tl204243204316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204241204309%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204243204316%_))
                                        (let ((_%e204244204319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204243204316%_))))
                                          (let ((_%hd204245204323%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204244204319%_)))
                                                (_%tl204246204326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204244204319%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204246204326%_))
                                                (_%loop204228204275%_
                                                 _%lp-tl204231204296%_
                                                 (cons _%hd204245204323%_
                                                       _%symbol204232204282%_)
                                                 (cons _%hd204242204313%_
                                                       _%method204233204284%_)
                                                 (cons _%hd204239204303%_
                                                       _%type-t204234204286%_))
                                                (_%g204217204252%_
                                                 _%g204218204256%_))))
                                        (_%g204217204252%_
                                         _%g204218204256%_))))
                                (_%g204217204252%_ _%g204218204256%_))))
                        (_%g204217204252%_ _%g204218204256%_))))
                (let ((_%symbol204235204329%_ (reverse _%symbol204232204282%_))
                      (_%method204236204332%_ (reverse _%method204233204284%_))
                      (_%type-t204237204334%_
                       (reverse _%type-t204234204286%_)))
                  ((lambda (_%L204337%_ _%L204339%_ _%L204340%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204337%_
                                _%L204339%_
                                _%L204340%_))
                             (let ((__tmp210274
                                    (lambda (_%g204356204361%_
                                             _%g204357204364%_
                                             _%g204358204366%_
                                             _%g204359204368%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g204358204366%_
                                                        (cons _%g204357204364%_
                                                              (cons _%g204356204361%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g204359204368%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp210274
                                '()
                                _%L204337%_
                                _%L204339%_
                                _%L204340%_)))))
                   _%symbol204235204329%_
                   _%method204236204332%_
                   _%type-t204237204334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204228204275%_
                                           _%target204225204269%_
                                           '()
                                           '()
                                           '()))
                                        (_%g204217204252%_
                                         _%g204218204256%_)))))
                              (_%g204217204252%_ _%g204218204256%_))))
                      (_%g204217204252%_ _%g204218204256%_)))))
          (_%g204216204371%_ _%$stx204213%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx204376%_)
        (let* ((_%g204380204413%_
                (lambda (_%g204381204409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204381204409%_))))
               (_%g204379204527%_
                (lambda (_%g204381204417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204381204417%_))
                      (let ((_%e204385204420%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204381204417%_))))
                        (let ((_%hd204386204424%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204385204420%_)))
                              (_%tl204387204427%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204385204420%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204387204427%_))
                              (let ((_%e204388204430%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204387204427%_))))
                                (let ((_%hd204389204434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204388204430%_)))
                                      (_%tl204390204437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204388204430%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204390204437%_))
                                      (let ((_g210275_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204390204437%_
                                                '0))))
                                        (begin
                                          (let ((_g210276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210275_)
                                                       (##values-length
                                                        _g210275_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210276_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210276_)))
                                          (let ((_%target204391204440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210275_ 0)))
                                                (_%tl204393204443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210275_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204393204443%_))
                                                (letrec ((_%loop204394204446%_
                                                          (lambda (_%hd204392204450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol204398204453%_
                           _%method204399204455%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204392204450%_))
                        (let ((_%e204395204458%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204392204450%_))))
                          (let ((_%lp-hd204396204462%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204395204458%_)))
                                (_%lp-tl204397204465%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204395204458%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd204396204462%_))
                                (let ((_%e204402204468%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd204396204462%_))))
                                  (let ((_%hd204403204472%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204402204468%_)))
                                        (_%tl204404204475%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204402204468%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204404204475%_))
                                        (let ((_%e204405204478%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204404204475%_))))
                                          (let ((_%hd204406204482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204405204478%_)))
                                                (_%tl204407204485%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204405204478%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204407204485%_))
                                                (_%loop204394204446%_
                                                 _%lp-tl204397204465%_
                                                 (cons _%hd204406204482%_
                                                       _%symbol204398204453%_)
                                                 (cons _%hd204403204472%_
                                                       _%method204399204455%_))
                                                (_%g204380204413%_
                                                 _%g204381204417%_))))
                                        (_%g204380204413%_
                                         _%g204381204417%_))))
                                (_%g204380204413%_ _%g204381204417%_))))
                        (let ((_%symbol204400204488%_
                               (reverse _%symbol204398204453%_))
                              (_%method204401204491%_
                               (reverse _%method204399204455%_)))
                          ((lambda (_%L204494%_ _%L204496%_ _%L204497%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L204494%_
                                        _%L204496%_))
                                     (let ((__tmp210277
                                            (lambda (_%g204515204519%_
                                                     _%g204516204522%_
                                                     _%g204517204524%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L204497%_
                                                                (cons _%g204516204522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g204515204519%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g204517204524%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp210277
                                        '()
                                        _%L204494%_
                                        _%L204496%_)))))
                           _%symbol204400204488%_
                           _%method204401204491%_
                           _%hd204389204434%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204394204446%_
                                                   _%target204391204440%_
                                                   '()
                                                   '()))
                                                (_%g204380204413%_
                                                 _%g204381204417%_)))))
                                      (_%g204380204413%_ _%g204381204417%_))))
                              (_%g204380204413%_ _%g204381204417%_))))
                      (_%g204380204413%_ _%g204381204417%_)))))
          (_%g204379204527%_ _%$stx204376%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx204532%_)
        (let* ((_%g204536204550%_
                (lambda (_%g204537204546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204537204546%_))))
               (_%g204535204591%_
                (lambda (_%g204537204554%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204537204554%_))
                      (let ((_%e204539204557%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204537204554%_))))
                        (let ((_%hd204540204561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204539204557%_)))
                              (_%tl204541204564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204539204557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204541204564%_))
                              (let ((_%e204542204567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204541204564%_))))
                                (let ((_%hd204543204571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204542204567%_)))
                                      (_%tl204544204574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204542204567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204544204574%_))
                                      ((lambda (_%L204577%_)
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
                                                           (cons _%L204577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204543204571%_)
                                      (_%g204536204550%_ _%g204537204554%_))))
                              (_%g204536204550%_ _%g204537204554%_))))
                      (_%g204536204550%_ _%g204537204554%_)))))
          (_%g204535204591%_ _%$stx204532%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx204595%_)
        (let* ((_%g204599204653%_
                (lambda (_%g204600204649%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204600204649%_))))
               (_%g204598204834%_
                (lambda (_%g204600204657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204600204657%_))
                      (let ((_%e204612204660%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204600204657%_))))
                        (let ((_%hd204613204664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204612204660%_)))
                              (_%tl204614204667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204612204660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204614204667%_))
                              (let ((_%e204615204670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204614204667%_))))
                                (let ((_%hd204616204674%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204615204670%_)))
                                      (_%tl204617204677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204615204670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204617204677%_))
                                      (let ((_%e204618204680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204617204677%_))))
                                        (let ((_%hd204619204684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204618204680%_)))
                                              (_%tl204620204687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204618204680%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204620204687%_))
                                              (let ((_%e204621204690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204620204687%_))))
                                                (let ((_%hd204622204694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204621204690%_)))
                                                      (_%tl204623204697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204621204690%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204623204697%_))
                                                      (let ((_%e204624204700%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204623204697%_))))
                (let ((_%hd204625204704%_
                       (let () (declare (not safe)) (##car _%e204624204700%_)))
                      (_%tl204626204707%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204624204700%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204626204707%_))
                      (let ((_%e204627204710%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204626204707%_))))
                        (let ((_%hd204628204714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204627204710%_)))
                              (_%tl204629204717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204627204710%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204629204717%_))
                              (let ((_%e204630204720%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204629204717%_))))
                                (let ((_%hd204631204724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204630204720%_)))
                                      (_%tl204632204727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204630204720%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204632204727%_))
                                      (let ((_%e204633204730%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204632204727%_))))
                                        (let ((_%hd204634204734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204633204730%_)))
                                              (_%tl204635204737%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204633204730%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204635204737%_))
                                              (let ((_%e204636204740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204635204737%_))))
                                                (let ((_%hd204637204744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204636204740%_)))
                                                      (_%tl204638204747%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204636204740%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204638204747%_))
                                                      (let ((_%e204639204750%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204638204747%_))))
                (let ((_%hd204640204754%_
                       (let () (declare (not safe)) (##car _%e204639204750%_)))
                      (_%tl204641204757%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204639204750%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204641204757%_))
                      (let ((_%e204642204760%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204641204757%_))))
                        (let ((_%hd204643204764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204642204760%_)))
                              (_%tl204644204767%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204642204760%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204644204767%_))
                              (let ((_%e204645204770%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204644204767%_))))
                                (let ((_%hd204646204774%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204645204770%_)))
                                      (_%tl204647204777%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204645204770%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204647204777%_))
                                      ((lambda (_%L204780%_
                                                _%L204782%_
                                                _%L204783%_
                                                _%L204784%_
                                                _%L204785%_
                                                _%L204786%_
                                                _%L204787%_
                                                _%L204788%_
                                                _%L204789%_
                                                _%L204790%_
                                                _%L204791%_)
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
                                                           (cons _%L204791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204790%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204789%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204788%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204787%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204786%_ '()))
                                           (cons _%L204785%_
                                                 (cons _%L204784%_
                                                       (cons _%L204783%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204782%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204780%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd204646204774%_
                                       _%hd204643204764%_
                                       _%hd204640204754%_
                                       _%hd204637204744%_
                                       _%hd204634204734%_
                                       _%hd204631204724%_
                                       _%hd204628204714%_
                                       _%hd204625204704%_
                                       _%hd204622204694%_
                                       _%hd204619204684%_
                                       _%hd204616204674%_)
                                      (_%g204599204653%_ _%g204600204657%_))))
                              (_%g204599204653%_ _%g204600204657%_))))
                      (_%g204599204653%_ _%g204600204657%_))))
              (_%g204599204653%_ _%g204600204657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204599204653%_
                                               _%g204600204657%_))))
                                      (_%g204599204653%_ _%g204600204657%_))))
                              (_%g204599204653%_ _%g204600204657%_))))
                      (_%g204599204653%_ _%g204600204657%_))))
              (_%g204599204653%_ _%g204600204657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204599204653%_
                                               _%g204600204657%_))))
                                      (_%g204599204653%_ _%g204600204657%_))))
                              (_%g204599204653%_ _%g204600204657%_))))
                      (_%g204599204653%_ _%g204600204657%_)))))
          (_%g204598204834%_ _%$stx204595%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx204838%_)
        (let* ((_%g204842204856%_
                (lambda (_%g204843204852%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204843204852%_))))
               (_%g204841204897%_
                (lambda (_%g204843204860%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204843204860%_))
                      (let ((_%e204845204863%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204843204860%_))))
                        (let ((_%hd204846204867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204845204863%_)))
                              (_%tl204847204870%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204845204863%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204847204870%_))
                              (let ((_%e204848204873%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204847204870%_))))
                                (let ((_%hd204849204877%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204848204873%_)))
                                      (_%tl204850204880%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204848204873%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204850204880%_))
                                      ((lambda (_%L204883%_)
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
                                                           (cons _%L204883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204849204877%_)
                                      (_%g204842204856%_ _%g204843204860%_))))
                              (_%g204842204856%_ _%g204843204860%_))))
                      (_%g204842204856%_ _%g204843204860%_)))))
          (_%g204841204897%_ _%$stx204838%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx204901%_)
        (let* ((_%g204905204919%_
                (lambda (_%g204906204915%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204906204915%_))))
               (_%g204904204960%_
                (lambda (_%g204906204923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204906204923%_))
                      (let ((_%e204908204926%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204906204923%_))))
                        (let ((_%hd204909204930%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204908204926%_)))
                              (_%tl204910204933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204908204926%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204910204933%_))
                              (let ((_%e204911204936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204910204933%_))))
                                (let ((_%hd204912204940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204911204936%_)))
                                      (_%tl204913204943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204911204936%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204913204943%_))
                                      ((lambda (_%L204946%_)
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
                                                           (cons _%L204946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204912204940%_)
                                      (_%g204905204919%_ _%g204906204923%_))))
                              (_%g204905204919%_ _%g204906204923%_))))
                      (_%g204905204919%_ _%g204906204923%_)))))
          (_%g204904204960%_ _%$stx204901%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx204964%_)
        (let* ((_%g204968204990%_
                (lambda (_%g204969204986%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204969204986%_))))
               (_%g204967205059%_
                (lambda (_%g204969204994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204969204994%_))
                      (let ((_%e204973204997%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204969204994%_))))
                        (let ((_%hd204974205001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204973204997%_)))
                              (_%tl204975205004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204973204997%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204975205004%_))
                              (let ((_%e204976205007%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204975205004%_))))
                                (let ((_%hd204977205011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204976205007%_)))
                                      (_%tl204978205014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204976205007%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204978205014%_))
                                      (let ((_%e204979205017%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204978205014%_))))
                                        (let ((_%hd204980205021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204979205017%_)))
                                              (_%tl204981205024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204979205017%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204981205024%_))
                                              (let ((_%e204982205027%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204981205024%_))))
                                                (let ((_%hd204983205031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204982205027%_)))
                                                      (_%tl204984205034%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204982205027%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204984205034%_))
                                                      ((lambda (_%L205037%_
                                                                _%L205039%_
                                                                _%L205040%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205040%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205039%_ '()))
                                   (cons _%L205037%_ '())))))
               _%hd204983205031%_
               _%hd204980205021%_
               _%hd204977205011%_)
              (_%g204968204990%_ _%g204969204994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204968204990%_
                                               _%g204969204994%_))))
                                      (_%g204968204990%_ _%g204969204994%_))))
                              (_%g204968204990%_ _%g204969204994%_))))
                      (_%g204968204990%_ _%g204969204994%_)))))
          (_%g204967205059%_ _%$stx204964%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx205063%_)
        (let* ((_%g205067205089%_
                (lambda (_%g205068205085%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205068205085%_))))
               (_%g205066205158%_
                (lambda (_%g205068205093%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205068205093%_))
                      (let ((_%e205072205096%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205068205093%_))))
                        (let ((_%hd205073205100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205072205096%_)))
                              (_%tl205074205103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205072205096%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205074205103%_))
                              (let ((_%e205075205106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205074205103%_))))
                                (let ((_%hd205076205110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205075205106%_)))
                                      (_%tl205077205113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205075205106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205077205113%_))
                                      (let ((_%e205078205116%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205077205113%_))))
                                        (let ((_%hd205079205120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205078205116%_)))
                                              (_%tl205080205123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205078205116%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205080205123%_))
                                              (let ((_%e205081205126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205080205123%_))))
                                                (let ((_%hd205082205130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205081205126%_)))
                                                      (_%tl205083205133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205081205126%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205083205133%_))
                                                      ((lambda (_%L205136%_
                                                                _%L205138%_
                                                                _%L205139%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205139%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205138%_ '()))
                                   (cons _%L205136%_ '())))))
               _%hd205082205130%_
               _%hd205079205120%_
               _%hd205076205110%_)
              (_%g205067205089%_ _%g205068205093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205067205089%_
                                               _%g205068205093%_))))
                                      (_%g205067205089%_ _%g205068205093%_))))
                              (_%g205067205089%_ _%g205068205093%_))))
                      (_%g205067205089%_ _%g205068205093%_)))))
          (_%g205066205158%_ _%$stx205063%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx205162%_)
        (let* ((_%g205166205180%_
                (lambda (_%g205167205176%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205167205176%_))))
               (_%g205165205221%_
                (lambda (_%g205167205184%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205167205184%_))
                      (let ((_%e205169205187%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205167205184%_))))
                        (let ((_%hd205170205191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205169205187%_)))
                              (_%tl205171205194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205169205187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205171205194%_))
                              (let ((_%e205172205197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205171205194%_))))
                                (let ((_%hd205173205201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205172205197%_)))
                                      (_%tl205174205204%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205172205197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205174205204%_))
                                      ((lambda (_%L205207%_)
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
                                                           (cons _%L205207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205173205201%_)
                                      (_%g205166205180%_ _%g205167205184%_))))
                              (_%g205166205180%_ _%g205167205184%_))))
                      (_%g205166205180%_ _%g205167205184%_)))))
          (_%g205165205221%_ _%$stx205162%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx205225%_)
        (let* ((_%g205229205247%_
                (lambda (_%g205230205243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205230205243%_))))
               (_%g205228205302%_
                (lambda (_%g205230205251%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205230205251%_))
                      (let ((_%e205233205254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205230205251%_))))
                        (let ((_%hd205234205258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205233205254%_)))
                              (_%tl205235205261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205233205254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205235205261%_))
                              (let ((_%e205236205264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205235205261%_))))
                                (let ((_%hd205237205268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205236205264%_)))
                                      (_%tl205238205271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205236205264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205238205271%_))
                                      (let ((_%e205239205274%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205238205271%_))))
                                        (let ((_%hd205240205278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205239205274%_)))
                                              (_%tl205241205281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205239205274%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205241205281%_))
                                              ((lambda (_%L205284%_
                                                        _%L205286%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205286%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205284%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205240205278%_
                                               _%hd205237205268%_)
                                              (_%g205229205247%_
                                               _%g205230205251%_))))
                                      (_%g205229205247%_ _%g205230205251%_))))
                              (_%g205229205247%_ _%g205230205251%_))))
                      (_%g205229205247%_ _%g205230205251%_)))))
          (_%g205228205302%_ _%$stx205225%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx205306%_)
        (let* ((_%__stx209648209649%_ _%$stx205306%_)
               (_%g205313205374%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209648209649%_)))))
          (let ((_%__kont209651209652%_
                 (lambda (_%L205612%_ _%L205614%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205614%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205612%_ '()))
                                     '())))))
                (_%__kont209653209654%_
                 (lambda (_%L205551%_ _%L205553%_ _%L205554%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205554%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205553%_ '()))
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
                                 (cons _%L205551%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont209655209656%_
                 (lambda (_%L205475%_ _%L205477%_)
                   (cons _%L205477%_ (cons _%L205475%_ (cons '#f '())))))
                (_%__kont209657209658%_
                 (lambda (_%L205425%_ _%L205427%_ _%L205428%_)
                   (cons _%L205428%_
                         (cons _%L205427%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L205425%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209648209649%_))
                (let ((_%e205317205582%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209648209649%_))))
                  (let ((_%tl205319205589%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205317205582%_)))
                        (_%hd205318205586%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205317205582%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205319205589%_))
                        (let ((_%e205320205592%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205319205589%_))))
                          (let ((_%tl205322205599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205320205592%_)))
                                (_%hd205321205596%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205320205592%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205322205599%_))
                                (let ((_%e205323205602%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205322205599%_))))
                                  (let ((_%tl205325205609%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205323205602%_)))
                                        (_%hd205324205606%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205323205602%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205325205609%_))
                                        (_%__kont209651209652%_
                                         _%hd205324205606%_
                                         _%hd205321205596%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205325205609%_))
                                            (let ((_%e205338205527%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205325205609%_))))
                                              (let ((_%tl205340205534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205338205527%_)))
                                                    (_%hd205339205531%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205338205527%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205339205531%_))
                                                    (let ((_%e205341205537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205339205531%_))))
                                                      (if (equal? _%e205341205537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205340205534%_))
                      (let ((_%e205342205541%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205340205534%_))))
                        (let ((_%tl205344205548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205342205541%_)))
                              (_%hd205343205545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205342205541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205344205548%_))
                              (_%__kont209653209654%_
                               _%hd205343205545%_
                               _%hd205324205606%_
                               _%hd205321205596%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd205324205606%_))
                                  (let ((_%e205365205411%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205324205606%_))))
                                    (declare (not safe))
                                    (_%g205313205374%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g205313205374%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205324205606%_))
                          (let ((_%e205365205411%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205324205606%_))))
                            (if (equal? _%e205365205411%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205340205534%_))
                                    (_%__kont209657209658%_
                                     _%hd205339205531%_
                                     _%hd205321205596%_
                                     _%hd205318205586%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205313205374%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g205313205374%_))))
                          (let () (declare (not safe)) (_%g205313205374%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205324205606%_))
                      (let ((_%e205365205411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205324205606%_))))
                        (if (equal? _%e205365205411%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205340205534%_))
                                (_%__kont209657209658%_
                                 _%hd205339205531%_
                                 _%hd205321205596%_
                                 _%hd205318205586%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205313205374%_)))
                            (let () (declare (not safe)) (_%g205313205374%_))))
                      (let () (declare (not safe)) (_%g205313205374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd205324205606%_))
                                                        (let ((_%e205365205411%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd205324205606%_))))
                  (if (equal? _%e205365205411%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205340205534%_))
                          (_%__kont209657209658%_
                           _%hd205339205531%_
                           _%hd205321205596%_
                           _%hd205318205586%_)
                          (let () (declare (not safe)) (_%g205313205374%_)))
                      (let () (declare (not safe)) (_%g205313205374%_))))
                (let () (declare (not safe)) (_%g205313205374%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd205324205606%_))
                                                (let ((_%e205365205411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd205324205606%_))))
                                                  (declare (not safe))
                                                  (_%g205313205374%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g205313205374%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205322205599%_))
                                    (_%__kont209655209656%_
                                     _%hd205321205596%_
                                     _%hd205318205586%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205313205374%_))))))
                        (let () (declare (not safe)) (_%g205313205374%_)))))
                (let () (declare (not safe)) (_%g205313205374%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx205633%_)
        (let* ((_%g205637205666%_
                (lambda (_%g205638205662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205638205662%_))))
               (_%g205636205775%_
                (lambda (_%g205638205670%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205638205670%_))
                      (let ((_%e205640205673%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205638205670%_))))
                        (let ((_%hd205641205677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205640205673%_)))
                              (_%tl205642205680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205640205673%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205642205680%_))
                              (let ((_g210278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205642205680%_
                                        '0))))
                                (begin
                                  (let ((_g210279_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210278_)
                                               (##values-length _g210278_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210279_ 2)))
                                        (error "Context expects 2 values"
                                               _g210279_)))
                                  (let ((_%target205643205683%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210278_ 0)))
                                        (_%tl205645205686%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210278_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205645205686%_))
                                        (letrec ((_%loop205646205689%_
                                                  (lambda (_%hd205644205693%_
                                                           _%clause205650205696%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205644205693%_))
                                                        (let ((_%e205647205699%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205644205693%_))))
                  (let ((_%lp-hd205648205703%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205647205699%_)))
                        (_%lp-tl205649205706%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205647205699%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd205648205703%_))
                        (let ((_g210280_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd205648205703%_
                                  '0))))
                          (begin
                            (let ((_g210281_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g210280_)
                                         (##values-length _g210280_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g210281_ 2)))
                                  (error "Context expects 2 values"
                                         _g210281_)))
                            (let ((_%target205652205709%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210280_ 0)))
                                  (_%tl205654205712%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210280_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205654205712%_))
                                  (letrec ((_%loop205655205715%_
                                            (lambda (_%hd205653205719%_
                                                     _%clause205659205722%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd205653205719%_))
                                                  (let ((_%e205656205725%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd205653205719%_))))
                                                    (let ((_%lp-hd205657205729%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205656205725%_)))
                                                          (_%lp-tl205658205732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205656205725%_))))
                                                      (_%loop205655205715%_
                                                       _%lp-tl205658205732%_
                                                       (cons _%lp-hd205657205729%_
                                                             _%clause205659205722%_))))
                                                  (let ((_%clause205660205735%_
                                                         (reverse _%clause205659205722%_)))
                                                    (_%loop205646205689%_
                                                     _%lp-tl205649205706%_
                                                     (cons _%clause205660205735%_
                                                           _%clause205650205696%_)))))))
                                    (_%loop205655205715%_
                                     _%target205652205709%_
                                     '()))
                                  (_%g205637205666%_ _%g205638205670%_)))))
                        (_%g205637205666%_ _%g205638205670%_))))
                (let ((_%clause205651205739%_
                       (reverse _%clause205650205696%_)))
                  ((lambda (_%L205743%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp210282
                                              (lambda (_%g205758205763%_
                                                       _%g205759205766%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp210283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g205760205769%_ _%g205761205772%_)
                             (cons _%g205760205769%_ _%g205761205772%_))))
                      (declare (not safe))
                      (__foldr1 __tmp210283 '() _%g205758205763%_)))
              _%g205759205766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp210282
                                          '()
                                          _%L205743%_)))
                                 '())))
                   _%clause205651205739%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205646205689%_
                                           _%target205643205683%_
                                           '()))
                                        (_%g205637205666%_
                                         _%g205638205670%_)))))
                              (_%g205637205666%_ _%g205638205670%_))))
                      (_%g205637205666%_ _%g205638205670%_)))))
          (_%g205636205775%_ _%$stx205633%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx205781%_)
        (let* ((_%g205785205803%_
                (lambda (_%g205786205799%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205786205799%_))))
               (_%g205784205858%_
                (lambda (_%g205786205807%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205786205807%_))
                      (let ((_%e205789205810%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205786205807%_))))
                        (let ((_%hd205790205814%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205789205810%_)))
                              (_%tl205791205817%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205789205810%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205791205817%_))
                              (let ((_%e205792205820%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205791205817%_))))
                                (let ((_%hd205793205824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205792205820%_)))
                                      (_%tl205794205827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205792205820%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205794205827%_))
                                      (let ((_%e205795205830%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205794205827%_))))
                                        (let ((_%hd205796205834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205795205830%_)))
                                              (_%tl205797205837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205795205830%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205797205837%_))
                                              ((lambda (_%L205840%_
                                                        _%L205842%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205842%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205840%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205796205834%_
                                               _%hd205793205824%_)
                                              (_%g205785205803%_
                                               _%g205786205807%_))))
                                      (_%g205785205803%_ _%g205786205807%_))))
                              (_%g205785205803%_ _%g205786205807%_))))
                      (_%g205785205803%_ _%g205786205807%_)))))
          (_%g205784205858%_ _%$stx205781%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx205862%_)
        (let* ((_%g205866205884%_
                (lambda (_%g205867205880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205867205880%_))))
               (_%g205865205939%_
                (lambda (_%g205867205888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205867205888%_))
                      (let ((_%e205870205891%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205867205888%_))))
                        (let ((_%hd205871205895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205870205891%_)))
                              (_%tl205872205898%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205870205891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205872205898%_))
                              (let ((_%e205873205901%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205872205898%_))))
                                (let ((_%hd205874205905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205873205901%_)))
                                      (_%tl205875205908%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205873205901%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205875205908%_))
                                      (let ((_%e205876205911%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205875205908%_))))
                                        (let ((_%hd205877205915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205876205911%_)))
                                              (_%tl205878205918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205876205911%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205878205918%_))
                                              ((lambda (_%L205921%_
                                                        _%L205923%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205923%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205921%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205877205915%_
                                               _%hd205874205905%_)
                                              (_%g205866205884%_
                                               _%g205867205888%_))))
                                      (_%g205866205884%_ _%g205867205888%_))))
                              (_%g205866205884%_ _%g205867205888%_))))
                      (_%g205866205884%_ _%g205867205888%_)))))
          (_%g205865205939%_ _%$stx205862%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx205943%_)
        (let* ((_%g205947205976%_
                (lambda (_%g205948205972%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205948205972%_))))
               (_%g205946206076%_
                (lambda (_%g205948205980%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205948205980%_))
                      (let ((_%e205951205983%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205948205980%_))))
                        (let ((_%hd205952205987%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205951205983%_)))
                              (_%tl205953205990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205951205983%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205953205990%_))
                              (let ((_g210284_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205953205990%_
                                        '0))))
                                (begin
                                  (let ((_g210285_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210284_)
                                               (##values-length _g210284_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210285_ 2)))
                                        (error "Context expects 2 values"
                                               _g210285_)))
                                  (let ((_%target205954205993%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210284_ 0)))
                                        (_%tl205956205996%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210284_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205956205996%_))
                                        (letrec ((_%loop205957205999%_
                                                  (lambda (_%hd205955206003%_
                                                           _%rule205961206006%_
                                                           _%proc205962206008%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205955206003%_))
                                                        (let ((_%e205958206011%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205955206003%_))))
                  (let ((_%lp-hd205959206015%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205958206011%_)))
                        (_%lp-tl205960206018%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205958206011%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd205959206015%_))
                        (let ((_%e205965206021%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd205959206015%_))))
                          (let ((_%hd205966206025%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205965206021%_)))
                                (_%tl205967206028%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205965206021%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205967206028%_))
                                (let ((_%e205968206031%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205967206028%_))))
                                  (let ((_%hd205969206035%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205968206031%_)))
                                        (_%tl205970206038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205968206031%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205970206038%_))
                                        (_%loop205957205999%_
                                         _%lp-tl205960206018%_
                                         (cons _%hd205969206035%_
                                               _%rule205961206006%_)
                                         (cons _%hd205966206025%_
                                               _%proc205962206008%_))
                                        (_%g205947205976%_
                                         _%g205948205980%_))))
                                (_%g205947205976%_ _%g205948205980%_))))
                        (_%g205947205976%_ _%g205948205980%_))))
                (let ((_%rule205963206041%_ (reverse _%rule205961206006%_))
                      (_%proc205964206044%_ (reverse _%proc205962206008%_)))
                  ((lambda (_%L206047%_ _%L206049%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L206047%_
                                _%L206049%_))
                             (let ((__tmp210286
                                    (lambda (_%g206064206068%_
                                             _%g206065206071%_
                                             _%g206066206073%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g206065206071%_
                                                        (cons _%g206064206068%_
                                                              '())))
                                            _%g206066206073%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210286
                                '()
                                _%L206047%_
                                _%L206049%_)))))
                   _%rule205963206041%_
                   _%proc205964206044%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205957205999%_
                                           _%target205954205993%_
                                           '()
                                           '()))
                                        (_%g205947205976%_
                                         _%g205948205980%_)))))
                              (_%g205947205976%_ _%g205948205980%_))))
                      (_%g205947205976%_ _%g205948205980%_)))))
          (_%g205946206076%_ _%$stx205943%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx206081%_)
        (let* ((_%g206085206103%_
                (lambda (_%g206086206099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206086206099%_))))
               (_%g206084206158%_
                (lambda (_%g206086206107%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206086206107%_))
                      (let ((_%e206089206110%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206086206107%_))))
                        (let ((_%hd206090206114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206089206110%_)))
                              (_%tl206091206117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206089206110%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206091206117%_))
                              (let ((_%e206092206120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206091206117%_))))
                                (let ((_%hd206093206124%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206092206120%_)))
                                      (_%tl206094206127%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206092206120%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206094206127%_))
                                      (let ((_%e206095206130%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206094206127%_))))
                                        (let ((_%hd206096206134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206095206130%_)))
                                              (_%tl206097206137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206095206130%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206097206137%_))
                                              ((lambda (_%L206140%_
                                                        _%L206142%_)
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
                                                   (cons _%L206142%_ '()))
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
                 (cons _%L206140%_ '())))
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
                                   (cons _%L206142%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206096206134%_
                                               _%hd206093206124%_)
                                              (_%g206085206103%_
                                               _%g206086206107%_))))
                                      (_%g206085206103%_ _%g206086206107%_))))
                              (_%g206085206103%_ _%g206086206107%_))))
                      (_%g206085206103%_ _%g206086206107%_)))))
          (_%g206084206158%_ _%$stx206081%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx206162%_)
        (let* ((_%__stx209766209767%_ _%$stx206162%_)
               (_%g206167206192%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209766209767%_)))))
          (let ((_%__kont209769209770%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209771209772%_
                 (lambda (_%L206239%_ _%L206241%_ _%L206242%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L206242%_ (cons _%L206241%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L206239%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209766209767%_))
                (let ((_%e206169206268%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209766209767%_))))
                  (let ((_%tl206171206275%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206169206268%_)))
                        (_%hd206170206272%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206169206268%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206171206275%_))
                        (_%__kont209769209770%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206171206275%_))
                            (let ((_%e206178206209%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206171206275%_))))
                              (let ((_%tl206180206216%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206178206209%_)))
                                    (_%hd206179206213%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206178206209%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd206179206213%_))
                                    (let ((_%e206181206219%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd206179206213%_))))
                                      (let ((_%tl206183206226%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206181206219%_)))
                                            (_%hd206182206223%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206181206219%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206183206226%_))
                                            (let ((_%e206184206229%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206183206226%_))))
                                              (let ((_%tl206186206236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206184206229%_)))
                                                    (_%hd206185206233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206184206229%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206186206236%_))
                                                    (_%__kont209771209772%_
                                                     _%tl206180206216%_
                                                     _%hd206185206233%_
                                                     _%hd206182206223%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206167206192%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g206167206192%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206167206192%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206167206192%_))))))
                (let () (declare (not safe)) (_%g206167206192%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx206286%_)
        (let* ((_%__stx209810209811%_ _%$stx206286%_)
               (_%g206291206322%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209810209811%_)))))
          (let ((_%__kont209813209814%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209815209816%_
                 (lambda (_%L206389%_ _%L206391%_ _%L206392%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L206392%_
                                           (let ((__tmp210287
                                                  (lambda (_%g206412206415%_
                                                           _%g206413206418%_)
                                                    (cons _%g206412206415%_
                                                          _%g206413206418%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp210287
                                              '()
                                              _%L206391%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L206389%_)
                                     '()))))))
            (let ((_%__match209853209854%_
                   (lambda (_%e206299206329%_
                            _%hd206300206333%_
                            _%tl206301206336%_
                            _%e206302206339%_
                            _%hd206303206343%_
                            _%tl206304206346%_
                            _%e206305206349%_
                            _%hd206306206353%_
                            _%tl206307206356%_
                            _%__splice209817209818%_
                            _%target206308206359%_
                            _%tl206310206362%_)
                     (letrec ((_%loop206311206365%_
                               (lambda (_%hd206309206369%_ _%sig206315206372%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd206309206369%_))
                                     (let ((_%e206312206375%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd206309206369%_))))
                                       (let ((_%lp-tl206314206382%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206312206375%_)))
                                             (_%lp-hd206313206379%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206312206375%_))))
                                         (_%loop206311206365%_
                                          _%lp-tl206314206382%_
                                          (cons _%lp-hd206313206379%_
                                                _%sig206315206372%_))))
                                     (let ((_%sig206316206385%_
                                            (reverse _%sig206315206372%_)))
                                       (_%__kont209815209816%_
                                        _%tl206304206346%_
                                        _%sig206316206385%_
                                        _%hd206306206353%_))))))
                       (_%loop206311206365%_ _%target206308206359%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209810209811%_))
                  (let ((_%e206293206428%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209810209811%_))))
                    (let ((_%tl206295206435%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206293206428%_)))
                          (_%hd206294206432%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206293206428%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206295206435%_))
                          (_%__kont209813209814%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206295206435%_))
                              (let ((_%e206302206339%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206295206435%_))))
                                (let ((_%tl206304206346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206302206339%_)))
                                      (_%hd206303206343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206302206339%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206303206343%_))
                                      (let ((_%e206305206349%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206303206343%_))))
                                        (let ((_%tl206307206356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206305206349%_)))
                                              (_%hd206306206353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206305206349%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206307206356%_))
                                              (let ((_%__splice209817209818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl206307206356%_
                                                        '0))))
                                                (let ((_%tl206310206362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209817209818%_
                                                          '1)))
                                                      (_%target206308206359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209817209818%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206310206362%_))
                                                      (_%__match209853209854%_
                                                       _%e206293206428%_
                                                       _%hd206294206432%_
                                                       _%tl206295206435%_
                                                       _%e206302206339%_
                                                       _%hd206303206343%_
                                                       _%tl206304206346%_
                                                       _%e206305206349%_
                                                       _%hd206306206353%_
                                                       _%tl206307206356%_
                                                       _%__splice209817209818%_
                                                       _%target206308206359%_
                                                       _%tl206310206362%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206291206322%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206291206322%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206291206322%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206291206322%_))))))
                  (let () (declare (not safe)) (_%g206291206322%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx206447%_)
        (let* ((_%__stx209856209857%_ _%$stx206447%_)
               (_%g206452206499%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209856209857%_)))))
          (let ((_%__kont209859209860%_
                 (lambda (_%L206661%_ _%L206663%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L206663%_
                               (let ((__tmp210288
                                      (lambda (_%g206683206686%_
                                               _%g206684206689%_)
                                        (cons _%g206683206686%_
                                              _%g206684206689%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210288 '() _%L206661%_))))))
                (_%__kont209863209864%_
                 (lambda (_%L206556%_ _%L206558%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L206558%_
                               (let ((__tmp210289
                                      (lambda (_%g206575206578%_
                                               _%g206576206581%_)
                                        (cons _%g206575206578%_
                                              _%g206576206581%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210289 '() _%L206556%_)))))))
            (let* ((_%__match209923209924%_
                    (lambda (_%e206479206506%_
                             _%hd206480206510%_
                             _%tl206481206513%_
                             _%e206482206516%_
                             _%hd206483206520%_
                             _%tl206484206523%_
                             _%__splice209865209866%_
                             _%target206485206526%_
                             _%tl206487206529%_)
                      (letrec ((_%loop206488206532%_
                                (lambda (_%hd206486206536%_
                                         _%sig206492206539%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206486206536%_))
                                      (let ((_%e206489206542%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206486206536%_))))
                                        (let ((_%lp-tl206491206549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206489206542%_)))
                                              (_%lp-hd206490206546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206489206542%_))))
                                          (_%loop206488206532%_
                                           _%lp-tl206491206549%_
                                           (cons _%lp-hd206490206546%_
                                                 _%sig206492206539%_))))
                                      (let ((_%sig206493206552%_
                                             (reverse _%sig206492206539%_)))
                                        (_%__kont209863209864%_
                                         _%sig206493206552%_
                                         _%hd206483206520%_))))))
                        (_%loop206488206532%_ _%target206485206526%_ '()))))
                   (_%__match209915209916%_
                    (lambda (_%e206479206506%_
                             _%hd206480206510%_
                             _%tl206481206513%_
                             _%e206482206516%_
                             _%hd206483206520%_
                             _%tl206484206523%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl206484206523%_))
                          (let ((_%__splice209865209866%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl206484206523%_
                                    '0))))
                            (let ((_%tl206487206529%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209865209866%_
                                      '1)))
                                  (_%target206485206526%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209865209866%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206487206529%_))
                                  (_%__match209923209924%_
                                   _%e206479206506%_
                                   _%hd206480206510%_
                                   _%tl206481206513%_
                                   _%e206482206516%_
                                   _%hd206483206520%_
                                   _%tl206484206523%_
                                   _%__splice209865209866%_
                                   _%target206485206526%_
                                   _%tl206487206529%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206452206499%_)))))
                          (let () (declare (not safe)) (_%g206452206499%_)))))
                   (_%__match209903209904%_
                    (lambda (_%e206456206591%_
                             _%hd206457206595%_
                             _%tl206458206598%_
                             _%e206459206601%_
                             _%hd206460206605%_
                             _%tl206461206608%_
                             _%e206462206611%_
                             _%hd206463206615%_
                             _%tl206464206618%_
                             _%e206465206621%_
                             _%hd206466206625%_
                             _%tl206467206628%_
                             _%__splice209861209862%_
                             _%target206468206631%_
                             _%tl206470206634%_)
                      (letrec ((_%loop206471206637%_
                                (lambda (_%hd206469206641%_
                                         _%sig206475206644%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206469206641%_))
                                      (let ((_%e206472206647%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206469206641%_))))
                                        (let ((_%lp-tl206474206654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206472206647%_)))
                                              (_%lp-hd206473206651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206472206647%_))))
                                          (_%loop206471206637%_
                                           _%lp-tl206474206654%_
                                           (cons _%lp-hd206473206651%_
                                                 _%sig206475206644%_))))
                                      (let ((_%sig206476206657%_
                                             (reverse _%sig206475206644%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206464206618%_))
                                            (_%__kont209859209860%_
                                             _%sig206476206657%_
                                             _%hd206460206605%_)
                                            (_%__match209915209916%_
                                             _%e206456206591%_
                                             _%hd206457206595%_
                                             _%tl206458206598%_
                                             _%e206459206601%_
                                             _%hd206460206605%_
                                             _%tl206461206608%_)))))))
                        (_%loop206471206637%_ _%target206468206631%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209856209857%_))
                  (let ((_%e206456206591%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209856209857%_))))
                    (let ((_%tl206458206598%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206456206591%_)))
                          (_%hd206457206595%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206456206591%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206458206598%_))
                          (let ((_%e206459206601%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206458206598%_))))
                            (let ((_%tl206461206608%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206459206601%_)))
                                  (_%hd206460206605%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206459206601%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206461206608%_))
                                  (let ((_%e206462206611%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206461206608%_))))
                                    (let ((_%tl206464206618%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206462206611%_)))
                                          (_%hd206463206615%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206462206611%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd206463206615%_))
                                          (let ((_%e206465206621%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd206463206615%_))))
                                            (let ((_%tl206467206628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206465206621%_)))
                                                  (_%hd206466206625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206465206621%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd206466206625%_))
                                                  (if (let ((__tmp210290
                                                             |gxc[1]#_g210291_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp210290
                                                         _%hd206466206625%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl206467206628%_))
                                                          (let ((_%__splice209861209862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl206467206628%_ '0))))
                    (let ((_%tl206470206634%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209861209862%_ '1)))
                          (_%target206468206631%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209861209862%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206470206634%_))
                          (_%__match209903209904%_
                           _%e206456206591%_
                           _%hd206457206595%_
                           _%tl206458206598%_
                           _%e206459206601%_
                           _%hd206460206605%_
                           _%tl206461206608%_
                           _%e206462206611%_
                           _%hd206463206615%_
                           _%tl206464206618%_
                           _%e206465206621%_
                           _%hd206466206625%_
                           _%tl206467206628%_
                           _%__splice209861209862%_
                           _%target206468206631%_
                           _%tl206470206634%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206461206608%_))
                              (let ((_%__splice209865209866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206461206608%_
                                        '0))))
                                (let ((_%tl206487206529%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209865209866%_
                                          '1)))
                                      (_%target206485206526%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209865209866%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206487206529%_))
                                      (_%__match209923209924%_
                                       _%e206456206591%_
                                       _%hd206457206595%_
                                       _%tl206458206598%_
                                       _%e206459206601%_
                                       _%hd206460206605%_
                                       _%tl206461206608%_
                                       _%__splice209865209866%_
                                       _%target206485206526%_
                                       _%tl206487206529%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g206452206499%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206452206499%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl206461206608%_))
                      (let ((_%__splice209865209866%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl206461206608%_
                                '0))))
                        (let ((_%tl206487206529%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209865209866%_ '1)))
                              (_%target206485206526%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209865209866%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206487206529%_))
                              (_%__match209923209924%_
                               _%e206456206591%_
                               _%hd206457206595%_
                               _%tl206458206598%_
                               _%e206459206601%_
                               _%hd206460206605%_
                               _%tl206461206608%_
                               _%__splice209865209866%_
                               _%target206485206526%_
                               _%tl206487206529%_)
                              (let ()
                                (declare (not safe))
                                (_%g206452206499%_)))))
                      (let () (declare (not safe)) (_%g206452206499%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl206461206608%_))
                  (let ((_%__splice209865209866%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl206461206608%_ '0))))
                    (let ((_%tl206487206529%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209865209866%_ '1)))
                          (_%target206485206526%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209865209866%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206487206529%_))
                          (_%__match209923209924%_
                           _%e206456206591%_
                           _%hd206457206595%_
                           _%tl206458206598%_
                           _%e206459206601%_
                           _%hd206460206605%_
                           _%tl206461206608%_
                           _%__splice209865209866%_
                           _%target206485206526%_
                           _%tl206487206529%_)
                          (let () (declare (not safe)) (_%g206452206499%_)))))
                  (let () (declare (not safe)) (_%g206452206499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl206461206608%_))
                                                      (let ((_%__splice209865209866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl206461206608%_ '0))))
                (let ((_%tl206487206529%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209865209866%_ '1)))
                      (_%target206485206526%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209865209866%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206487206529%_))
                      (_%__match209923209924%_
                       _%e206456206591%_
                       _%hd206457206595%_
                       _%tl206458206598%_
                       _%e206459206601%_
                       _%hd206460206605%_
                       _%tl206461206608%_
                       _%__splice209865209866%_
                       _%target206485206526%_
                       _%tl206487206529%_)
                      (let () (declare (not safe)) (_%g206452206499%_)))))
              (let () (declare (not safe)) (_%g206452206499%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206461206608%_))
                                              (let ((_%__splice209865209866%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl206461206608%_
                                                        '0))))
                                                (let ((_%tl206487206529%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209865209866%_
                                                          '1)))
                                                      (_%target206485206526%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209865209866%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206487206529%_))
                                                      (_%__match209923209924%_
                                                       _%e206456206591%_
                                                       _%hd206457206595%_
                                                       _%tl206458206598%_
                                                       _%e206459206601%_
                                                       _%hd206460206605%_
                                                       _%tl206461206608%_
                                                       _%__splice209865209866%_
                                                       _%target206485206526%_
                                                       _%tl206487206529%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206452206499%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206452206499%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206461206608%_))
                                      (let ((_%__splice209865209866%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206461206608%_
                                                '0))))
                                        (let ((_%tl206487206529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209865209866%_
                                                  '1)))
                                              (_%target206485206526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209865209866%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206487206529%_))
                                              (_%__match209923209924%_
                                               _%e206456206591%_
                                               _%hd206457206595%_
                                               _%tl206458206598%_
                                               _%e206459206601%_
                                               _%hd206460206605%_
                                               _%tl206461206608%_
                                               _%__splice209865209866%_
                                               _%target206485206526%_
                                               _%tl206487206529%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g206452206499%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206452206499%_))))))
                          (let () (declare (not safe)) (_%g206452206499%_)))))
                  (let () (declare (not safe)) (_%g206452206499%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx207846%_ _%id207848%_)
        (let ((_%proc207852%_
               (let ((__tmp210292
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207848%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210292))))
          (if (procedure? _%proc207852%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx207846%_
                 _%id207848%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx207837%_ _%id207839%_)
        (let ((_%klass207843%_
               (let ((__tmp210293
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207839%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210293))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass207843%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx207837%_
                 _%id207839%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx207087%_ _%proc207089%_ _%sig207090%_)
        (letrec ((_%signature-arity207092%_
                  (lambda (_%args207769%_)
                    (let _%loop207772%_ ((_%rest207775%_ _%args207769%_)
                                         (_%count207777%_ '0))
                      (let* ((_%rest207778207789%_ _%rest207775%_)
                             (_%E207782207795%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest207778207789%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K207785207826%_
                               (lambda (_%rest207823%_)
                                 (_%loop207772%_
                                  _%rest207823%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count207777%_ '1)))))
                              (_%K207784207815%_ (lambda () _%count207777%_))
                              (_%K207783207803%_
                               (lambda () (cons _%count207777%_ '()))))
                          (let ((_%try-match207780207819%_
                                 (lambda ()
                                   (if (null? _%rest207778207789%_)
                                       (_%K207784207815%_)
                                       (_%K207783207803%_)))))
                            (if (pair? _%rest207778207789%_)
                                (let* ((_%tl207787207830%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest207778207789%_)))
                                       (_%rest207834%_ _%tl207787207830%_))
                                  (_%K207785207826%_ _%rest207834%_))
                                (_%try-match207780207819%_))))))))
                 (_%make-signature207094%_
                  (lambda (_%args207651%_
                           _%return207653%_
                           _%effect207654%_
                           _%unchecked207655%_)
                    (let ((__tmp210294
                           (lambda (_%g207656207658%_)
                             (|gxc[1]#verify-class!|
                              _%ctx207087%_
                              _%g207656207658%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp210294 _%args207651%_))
                    (|gxc[1]#verify-class!| _%ctx207087%_ _%return207653%_)
                    (if _%unchecked207655%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx207087%_
                         _%unchecked207655%_)
                        '#!void)
                    (let ((_%arity207662%_
                           (_%signature-arity207092%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args207651%_)))))
                      (if _%effect207654%_
                          (let ((_%effect207665%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect207654%_))))
                            (if (and (list? _%effect207665%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect207665%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx207087%_
                                   _%proc207089%_
                                   _%effect207665%_))))
                          '#!void)
                      (cons _%arity207662%_
                            (cons (let* ((_%g207668207691%_
                                          (lambda (_%g207669207687%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g207669207687%_))))
                                         (_%g207667207765%_
                                          (lambda (_%g207669207695%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g207669207695%_))
                                                (let ((_%e207674207698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g207669207695%_))))
                                                  (let ((_%hd207675207702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207674207698%_)))
                                                        (_%tl207676207705%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207674207698%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207676207705%_))
                                                        (let ((_%e207677207708%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207676207705%_))))
                  (let ((_%hd207678207712%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207677207708%_)))
                        (_%tl207679207715%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207677207708%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207679207715%_))
                        (let ((_%e207680207718%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207679207715%_))))
                          (let ((_%hd207681207722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207680207718%_)))
                                (_%tl207682207725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207680207718%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207682207725%_))
                                (let ((_%e207683207728%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207682207725%_))))
                                  (let ((_%hd207684207732%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207683207728%_)))
                                        (_%tl207685207735%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207683207728%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207685207735%_))
                                        ((lambda (_%L207738%_
                                                  _%L207740%_
                                                  _%L207741%_
                                                  _%L207742%_)
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
                           (cons _%L207742%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L207741%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L207740%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207738%_ '()))
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
                                         _%hd207684207732%_
                                         _%hd207681207722%_
                                         _%hd207678207712%_
                                         _%hd207675207702%_)
                                        (_%g207668207691%_
                                         _%g207669207695%_))))
                                (_%g207668207691%_ _%g207669207695%_))))
                        (_%g207668207691%_ _%g207669207695%_))))
                (_%g207668207691%_ _%g207669207695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207668207691%_
                                                 _%g207669207695%_)))))
                                    (_%g207667207765%_
                                     (list _%args207651%_
                                           _%return207653%_
                                           _%effect207654%_
                                           _%unchecked207655%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx207087%_ _%proc207089%_)
          (let* ((_%__stx209934209935%_ _%sig207090%_)
                 (_%g207101207204%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx209934209935%_)))))
            (let ((_%__kont209937209938%_
                   (lambda (_%L207632%_ _%L207634%_)
                     (_%make-signature207094%_
                      _%L207634%_
                      _%L207632%_
                      '#f
                      '#f)))
                  (_%__kont209939209940%_
                   (lambda (_%L207583%_ _%L207585%_ _%L207586%_)
                     (_%make-signature207094%_
                      _%L207586%_
                      _%L207585%_
                      _%L207583%_
                      '#f)))
                  (_%__kont209941209942%_
                   (lambda (_%L207507%_ _%L207509%_ _%L207510%_)
                     (_%make-signature207094%_
                      _%L207510%_
                      _%L207509%_
                      _%L207507%_
                      (let ((__tmp210295
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207089%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210295)))))
                  (_%__kont209943209944%_
                   (lambda (_%L207413%_ _%L207415%_ _%L207416%_ _%L207417%_)
                     (_%make-signature207094%_
                      _%L207417%_
                      _%L207416%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207413%_)))))
                  (_%__kont209945209946%_
                   (lambda (_%L207320%_ _%L207322%_)
                     (_%make-signature207094%_
                      _%L207322%_
                      _%L207320%_
                      '#f
                      (let ((__tmp210296
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207089%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210296)))))
                  (_%__kont209947209948%_
                   (lambda (_%L207255%_ _%L207257%_ _%L207258%_)
                     (_%make-signature207094%_
                      _%L207258%_
                      _%L207257%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207255%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209934209935%_))
                  (let ((_%e207105207612%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209934209935%_))))
                    (let ((_%tl207107207619%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207105207612%_)))
                          (_%hd207106207616%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207105207612%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207107207619%_))
                          (let ((_%e207108207622%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207107207619%_))))
                            (let ((_%tl207110207629%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207108207622%_)))
                                  (_%hd207109207626%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207108207622%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207110207629%_))
                                  (_%__kont209937209938%_
                                   _%hd207109207626%_
                                   _%hd207106207616%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207110207629%_))
                                      (let ((_%e207120207559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207110207629%_))))
                                        (let ((_%tl207122207566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207120207559%_)))
                                              (_%hd207121207563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207120207559%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd207121207563%_))
                                              (let ((_%e207123207569%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207121207563%_))))
                                                (if (equal? _%e207123207569%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207122207566%_))
                                                        (let ((_%e207124207573%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207122207566%_))))
                  (let ((_%tl207126207580%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207124207573%_)))
                        (_%hd207125207577%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207124207573%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207126207580%_))
                        (_%__kont209939209940%_
                         _%hd207125207577%_
                         _%hd207109207626%_
                         _%hd207106207616%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207126207580%_))
                            (let ((_%e207143207493%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207126207580%_))))
                              (let ((_%tl207145207500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207143207493%_)))
                                    (_%hd207144207497%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207143207493%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd207144207497%_))
                                    (let ((_%e207146207503%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd207144207497%_))))
                                      (if (equal? _%e207146207503%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207145207500%_))
                                              (_%__kont209941209942%_
                                               _%hd207125207577%_
                                               _%hd207109207626%_
                                               _%hd207106207616%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207145207500%_))
                                                  (let ((_%e207168207403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207145207500%_))))
                                                    (let ((_%tl207170207410%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207168207403%_)))
                                                          (_%hd207169207407%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207168207403%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207170207410%_))
                                                          (_%__kont209943209944%_
                                                           _%hd207169207407%_
                                                           _%hd207125207577%_
                                                           _%hd207109207626%_
                                                           _%hd207106207616%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207101207204%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207101207204%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207101207204%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207101207204%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g207101207204%_))))))
                (let () (declare (not safe)) (_%g207101207204%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e207123207569%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl207122207566%_))
                                                            (_%__kont209945209946%_
                                                             _%hd207109207626%_
                                                             _%hd207106207616%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl207122207566%_))
                        (let ((_%e207196207245%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207122207566%_))))
                          (let ((_%tl207198207252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207196207245%_)))
                                (_%hd207197207249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207196207245%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207198207252%_))
                                (_%__kont209947209948%_
                                 _%hd207197207249%_
                                 _%hd207109207626%_
                                 _%hd207106207616%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207101207204%_)))))
                        (let () (declare (not safe)) (_%g207101207204%_))))
                (let () (declare (not safe)) (_%g207101207204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207101207204%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207101207204%_))))))
                          (let () (declare (not safe)) (_%g207101207204%_)))))
                  (let () (declare (not safe)) (_%g207101207204%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig206698%_)
        (let* ((_%g206701206781%_
                (lambda (_%g206702206777%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206702206777%_))))
               (_%g206700207083%_
                (lambda (_%g206702206785%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206702206785%_))
                      (let ((_%e206708206788%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206702206785%_))))
                        (let ((_%hd206709206792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206708206788%_)))
                              (_%tl206710206795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206708206788%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206710206795%_))
                              (let ((_%e206711206798%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206710206795%_))))
                                (let ((_%hd206712206802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206711206798%_)))
                                      (_%tl206713206805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206711206798%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd206712206802%_))
                                      (let ((_%e206714206808%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd206712206802%_))))
                                        (if (equal? _%e206714206808%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206713206805%_))
                                                (let ((_%e206715206812%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206713206805%_))))
                                                  (let ((_%hd206716206816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206715206812%_)))
                                                        (_%tl206717206819%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206715206812%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206716206816%_))
                                                        (let ((_%e206718206822%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206716206816%_))))
                  (let ((_%hd206719206826%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206718206822%_)))
                        (_%tl206720206829%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206718206822%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd206719206826%_))
                        (if (let ((__tmp210297 |gxc[1]#_g210298_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp210297
                               _%hd206719206826%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206720206829%_))
                                (let ((_%e206721206832%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206720206829%_))))
                                  (let ((_%hd206722206836%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206721206832%_)))
                                        (_%tl206723206839%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206721206832%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206723206839%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206717206819%_))
                                            (let ((_%e206724206842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206717206819%_))))
                                              (let ((_%hd206725206846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206724206842%_)))
                                                    (_%tl206726206849%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206724206842%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd206725206846%_))
                                                    (let ((_%e206727206852%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd206725206846%_))))
                                                      (if (equal? _%e206727206852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206726206849%_))
                      (let ((_%e206728206856%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206726206849%_))))
                        (let ((_%hd206729206860%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206728206856%_)))
                              (_%tl206730206863%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206728206856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd206729206860%_))
                              (let ((_%e206731206866%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd206729206860%_))))
                                (let ((_%hd206732206870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206731206866%_)))
                                      (_%tl206733206873%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206731206866%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd206732206870%_))
                                      (if (let ((__tmp210299
                                                 |gxc[1]#_g210300_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp210299
                                             _%hd206732206870%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206733206873%_))
                                              (let ((_%e206734206876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206733206873%_))))
                                                (let ((_%hd206735206880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206734206876%_)))
                                                      (_%tl206736206883%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206734206876%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206736206883%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206730206863%_))
                                                          (let ((_%e206737206886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206730206863%_))))
                    (let ((_%hd206738206890%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206737206886%_)))
                          (_%tl206739206893%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206737206886%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd206738206890%_))
                          (let ((_%e206740206896%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd206738206890%_))))
                            (if (equal? _%e206740206896%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl206739206893%_))
                                    (let ((_%e206741206900%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl206739206893%_))))
                                      (let ((_%hd206742206904%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206741206900%_)))
                                            (_%tl206743206907%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206741206900%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd206742206904%_))
                                            (let ((_%e206744206910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd206742206904%_))))
                                              (let ((_%hd206745206914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206744206910%_)))
                                                    (_%tl206746206917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206744206910%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd206745206914%_))
                                                    (if (let ((__tmp210301
                                                               |gxc[1]#_g210302_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp210301
                                                           _%hd206745206914%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl206746206917%_))
                                                            (let ((_%e206747206920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl206746206917%_))))
                      (let ((_%hd206748206924%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206747206920%_)))
                            (_%tl206749206927%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206747206920%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl206749206927%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206743206907%_))
                                (let ((_%e206750206930%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206743206907%_))))
                                  (let ((_%hd206751206934%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206750206930%_)))
                                        (_%tl206752206937%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206750206930%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd206751206934%_))
                                        (let ((_%e206753206940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd206751206934%_))))
                                          (if (equal? _%e206753206940%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206752206937%_))
                                                  (let ((_%e206754206944%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206752206937%_))))
                                                    (let ((_%hd206755206948%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206754206944%_)))
                                                          (_%tl206756206951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206754206944%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd206755206948%_))
                                                          (let ((_%e206757206954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd206755206948%_))))
                    (let ((_%hd206758206958%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206757206954%_)))
                          (_%tl206759206961%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206757206954%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd206758206958%_))
                          (if (let ((__tmp210303 |gxc[1]#_g210304_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp210303
                                 _%hd206758206958%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206759206961%_))
                                  (let ((_%e206760206964%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206759206961%_))))
                                    (let ((_%hd206761206968%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206760206964%_)))
                                          (_%tl206762206971%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206760206964%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206762206971%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206756206951%_))
                                              (let ((_%e206763206974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206756206951%_))))
                                                (let ((_%hd206764206978%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206763206974%_)))
                                                      (_%tl206765206981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206763206974%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd206764206978%_))
                                                      (let ((_%e206766206984%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd206764206978%_))))
                (if (equal? _%e206766206984%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206765206981%_))
                        (let ((_%e206767206988%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206765206981%_))))
                          (let ((_%hd206768206992%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206767206988%_)))
                                (_%tl206769206995%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206767206988%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd206768206992%_))
                                (let ((_%e206770206998%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd206768206992%_))))
                                  (let ((_%hd206771207002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206770206998%_)))
                                        (_%tl206772207005%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206770206998%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd206771207002%_))
                                        (if (let ((__tmp210305
                                                   |gxc[1]#_g210306_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp210305
                                               _%hd206771207002%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206772207005%_))
                                                (let ((_%e206773207008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206772207005%_))))
                                                  (let ((_%hd206774207012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206773207008%_)))
                                                        (_%tl206775207015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206773207008%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206775207015%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206769206995%_))
                                                            ((lambda (_%L207018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L207020%_
                              _%L207021%_
                              _%L207022%_
                              _%L207023%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L207020%_))
                           (cons _%L207020%_
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
                       (cons _%L207022%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207018%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd206774207012%_
                     _%hd206761206968%_
                     _%hd206748206924%_
                     _%hd206735206880%_
                     _%hd206722206836%_)
                    (_%g206701206781%_ _%g206702206785%_))
                (_%g206701206781%_ _%g206702206785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206701206781%_
                                                 _%g206702206785%_))
                                            (_%g206701206781%_
                                             _%g206702206785%_))
                                        (_%g206701206781%_
                                         _%g206702206785%_))))
                                (_%g206701206781%_ _%g206702206785%_))))
                        (_%g206701206781%_ _%g206702206785%_))
                    (_%g206701206781%_ _%g206702206785%_)))
              (_%g206701206781%_ _%g206702206785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206701206781%_
                                               _%g206702206785%_))
                                          (_%g206701206781%_
                                           _%g206702206785%_))))
                                  (_%g206701206781%_ _%g206702206785%_))
                              (_%g206701206781%_ _%g206702206785%_))
                          (_%g206701206781%_ _%g206702206785%_))))
                  (_%g206701206781%_ _%g206702206785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g206701206781%_
                                                   _%g206702206785%_))
                                              (_%g206701206781%_
                                               _%g206702206785%_)))
                                        (_%g206701206781%_
                                         _%g206702206785%_))))
                                (_%g206701206781%_ _%g206702206785%_))
                            (_%g206701206781%_ _%g206702206785%_))))
                    (_%g206701206781%_ _%g206702206785%_))
                (_%g206701206781%_ _%g206702206785%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206701206781%_
                                                     _%g206702206785%_))))
                                            (_%g206701206781%_
                                             _%g206702206785%_))))
                                    (_%g206701206781%_ _%g206702206785%_))
                                (_%g206701206781%_ _%g206702206785%_)))
                          (_%g206701206781%_ _%g206702206785%_))))
                  (_%g206701206781%_ _%g206702206785%_))
              (_%g206701206781%_ _%g206702206785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206701206781%_
                                               _%g206702206785%_))
                                          (_%g206701206781%_
                                           _%g206702206785%_))
                                      (_%g206701206781%_ _%g206702206785%_))))
                              (_%g206701206781%_ _%g206702206785%_))))
                      (_%g206701206781%_ _%g206702206785%_))
                  (_%g206701206781%_ _%g206702206785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206701206781%_
                                                     _%g206702206785%_))))
                                            (_%g206701206781%_
                                             _%g206702206785%_))
                                        (_%g206701206781%_
                                         _%g206702206785%_))))
                                (_%g206701206781%_ _%g206702206785%_))
                            (_%g206701206781%_ _%g206702206785%_))
                        (_%g206701206781%_ _%g206702206785%_))))
                (_%g206701206781%_ _%g206702206785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206701206781%_
                                                 _%g206702206785%_))
                                            (_%g206701206781%_
                                             _%g206702206785%_)))
                                      (_%g206701206781%_ _%g206702206785%_))))
                              (_%g206701206781%_ _%g206702206785%_))))
                      (_%g206701206781%_ _%g206702206785%_)))))
          (_%g206700207083%_ _%sig206698%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx207855%_)
        (let* ((_%g207858207876%_
                (lambda (_%g207859207872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207859207872%_))))
               (_%g207857207931%_
                (lambda (_%g207859207880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207859207880%_))
                      (let ((_%e207862207883%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207859207880%_))))
                        (let ((_%hd207863207887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207862207883%_)))
                              (_%tl207864207890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207862207883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207864207890%_))
                              (let ((_%e207865207893%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207864207890%_))))
                                (let ((_%hd207866207897%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207865207893%_)))
                                      (_%tl207867207900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207865207893%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207867207900%_))
                                      (let ((_%e207868207903%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207867207900%_))))
                                        (let ((_%hd207869207907%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207868207903%_)))
                                              (_%tl207870207910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207868207903%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207870207910%_))
                                              ((lambda (_%L207913%_
                                                        _%L207915%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207915%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207913%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx207855%_
                                                        _%L207915%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx207855%_
                                                        _%L207913%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L207915%_
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
                                                   (cons _%L207913%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207858207876%_
                                                      _%g207859207880%_)))
                                               _%hd207869207907%_
                                               _%hd207866207897%_)
                                              (_%g207858207876%_
                                               _%g207859207880%_))))
                                      (_%g207858207876%_ _%g207859207880%_))))
                              (_%g207858207876%_ _%g207859207880%_))))
                      (_%g207858207876%_ _%g207859207880%_)))))
          (_%g207857207931%_ _%stx207855%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx207935%_)
        (let* ((_%g207938207962%_
                (lambda (_%g207939207958%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207939207958%_))))
               (_%g207937208245%_
                (lambda (_%g207939207966%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207939207966%_))
                      (let ((_%e207942207969%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207939207966%_))))
                        (let ((_%hd207943207973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207942207969%_)))
                              (_%tl207944207976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207942207969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207944207976%_))
                              (let ((_%e207945207979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207944207976%_))))
                                (let ((_%hd207946207983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207945207979%_)))
                                      (_%tl207947207986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207945207979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207947207986%_))
                                      (let ((_g210307_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207947207986%_
                                                '0))))
                                        (begin
                                          (let ((_g210308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210307_)
                                                       (##values-length
                                                        _g210307_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210308_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210308_)))
                                          (let ((_%target207948207989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210307_ 0)))
                                                (_%tl207950207992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210307_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207950207992%_))
                                                (letrec ((_%loop207951207995%_
                                                          (lambda (_%hd207949207999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature207955208002%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207949207999%_))
                        (let ((_%e207952208005%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207949207999%_))))
                          (let ((_%lp-hd207953208009%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207952208005%_)))
                                (_%lp-tl207954208012%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207952208005%_))))
                            (_%loop207951207995%_
                             _%lp-tl207954208012%_
                             (cons _%lp-hd207953208009%_
                                   _%signature207955208002%_))))
                        (let ((_%signature207956208015%_
                               (reverse _%signature207955208002%_)))
                          ((lambda (_%L208019%_ _%L208021%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208021%_))
                                 (let* ((_%g208039208054%_
                                         (lambda (_%g208040208050%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208040208050%_))))
                                        (_%g208038208233%_
                                         (lambda (_%g208040208058%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208040208058%_))
                                               (let ((_%e208043208061%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208040208058%_))))
                                                 (let ((_%hd208044208065%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208043208061%_)))
                                                       (_%tl208045208068%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208043208061%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208045208068%_))
                                                       (let ((_%e208046208071%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208045208068%_))))
                 (let ((_%hd208047208075%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208046208071%_)))
                       (_%tl208048208078%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208046208071%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl208048208078%_))
                       ((lambda (_%L208081%_ _%L208083%_)
                          (let* ((_%g208099208107%_
                                  (lambda (_%g208100208103%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g208100208103%_))))
                                 (_%g208098208229%_
                                  (lambda (_%g208100208111%_)
                                    ((lambda (_%L208114%_)
                                       (let* ((_%unchecked208127%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L208081%_))
                                              (_%g208130208138%_
                                               (lambda (_%g208131208134%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g208131208134%_))))
                                              (_%g208129208161%_
                                               (lambda (_%g208131208142%_)
                                                 ((lambda (_%L208145%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L208114%_
                                                                (cons _%L208145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g208131208142%_))))
                                         (_%g208129208161%_
                                          (if _%unchecked208127%_
                                              (let* ((_%g208165208180%_
                                                      (lambda (_%g208166208176%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g208166208176%_))))
                                                     (_%g208164208225%_
                                                      (lambda (_%g208166208184%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g208166208184%_))
                                                            (let ((_%e208169208187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g208166208184%_))))
                      (let ((_%hd208170208191%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208169208187%_)))
                            (_%tl208171208194%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208169208187%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208171208194%_))
                            (let ((_%e208172208197%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl208171208194%_))))
                              (let ((_%hd208173208201%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208172208197%_)))
                                    (_%tl208174208204%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208172208197%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208174208204%_))
                                    ((lambda (_%L208207%_ _%L208209%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L208209%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208083%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L208207%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd208173208201%_
                                     _%hd208170208191%_)
                                    (_%g208165208180%_ _%g208166208184%_))))
                            (_%g208165208180%_ _%g208166208184%_))))
                    (_%g208165208180%_ _%g208166208184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g208164208225%_
                                                 _%unchecked208127%_))
                                              '(begin)))))
                                     _%g208100208111%_))))
                            (_%g208098208229%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L208021%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L208083%_ '()))
                   (cons '#f (cons 'signature: (cons _%L208081%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd208047208075%_
                        _%hd208044208065%_)
                       (_%g208039208054%_ _%g208040208058%_))))
               (_%g208039208054%_ _%g208040208058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208039208054%_
                                                _%g208040208058%_)))))
                                   (_%g208038208233%_
                                    (|gxc[1]#parse-signature|
                                     _%stx207935%_
                                     _%L208021%_
                                     (let ((__tmp210309
                                            (lambda (_%g208236208239%_
                                                     _%g208237208242%_)
                                              (cons _%g208236208239%_
                                                    _%g208237208242%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp210309
                                        '()
                                        _%L208019%_)))))
                                 (_%g207938207962%_ _%g207939207966%_)))
                           _%signature207956208015%_
                           _%hd207946207983%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207951207995%_
                                                   _%target207948207989%_
                                                   '()))
                                                (_%g207938207962%_
                                                 _%g207939207966%_)))))
                                      (_%g207938207962%_ _%g207939207966%_))))
                              (_%g207938207962%_ _%g207939207966%_))))
                      (_%g207938207962%_ _%g207939207966%_)))))
          (_%g207937208245%_ _%stx207935%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx208250%_)
        (let* ((_%g208253208277%_
                (lambda (_%g208254208273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208254208273%_))))
               (_%g208252209160%_
                (lambda (_%g208254208281%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208254208281%_))
                      (let ((_%e208257208284%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208254208281%_))))
                        (let ((_%hd208258208288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208257208284%_)))
                              (_%tl208259208291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208257208284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208259208291%_))
                              (let ((_%e208260208294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208259208291%_))))
                                (let ((_%hd208261208298%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208260208294%_)))
                                      (_%tl208262208301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208260208294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208262208301%_))
                                      (let ((_g210310_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208262208301%_
                                                '0))))
                                        (begin
                                          (let ((_g210311_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210310_)
                                                       (##values-length
                                                        _g210310_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210311_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210311_)))
                                          (let ((_%target208263208304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210310_ 0)))
                                                (_%tl208265208307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210310_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208265208307%_))
                                                (letrec ((_%loop208266208310%_
                                                          (lambda (_%hd208264208314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature208270208317%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208264208314%_))
                        (let ((_%e208267208320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208264208314%_))))
                          (let ((_%lp-hd208268208324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208267208320%_)))
                                (_%lp-tl208269208327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208267208320%_))))
                            (_%loop208266208310%_
                             _%lp-tl208269208327%_
                             (cons _%lp-hd208268208324%_
                                   _%case-signature208270208317%_))))
                        (let ((_%case-signature208271208330%_
                               (reverse _%case-signature208270208317%_)))
                          ((lambda (_%L208334%_ _%L208336%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208336%_))
                                 (let* ((_%signatures208367%_
                                         (map (lambda (_%g208353208355%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx208250%_
                                                 _%L208336%_
                                                 _%g208353208355%_))
                                              (let ((__tmp210312
                                                     (lambda (_%g208358208361%_
                                                              _%g208359208364%_)
                                                       (cons _%g208358208361%_
                                                             _%g208359208364%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp210312
                                                 '()
                                                 _%L208334%_))))
                                        (_%g208370208396%_
                                         (lambda (_%g208371208392%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208371208392%_))))
                                        (_%g208369209156%_
                                         (lambda (_%g208371208400%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g208371208400%_))
                                               (let ((_g210313_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g208371208400%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g210314_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g210313_)
                        (##values-length _g210313_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g210314_ 2)))
                 (error "Context expects 2 values" _g210314_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target208374208403%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210313_
                                                             0)))
                                                         (_%tl208376208406%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210313_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208376208406%_))
                                                         (letrec ((_%loop208377208409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd208375208413%_
                                    _%sig208381208416%_
                                    _%arity208382208418%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208375208413%_))
                                 (let ((_%e208378208421%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208375208413%_))))
                                   (let ((_%lp-hd208379208425%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208378208421%_)))
                                         (_%lp-tl208380208428%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208378208421%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd208379208425%_))
                                         (let ((_%e208385208431%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd208379208425%_))))
                                           (let ((_%hd208386208435%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208385208431%_)))
                                                 (_%tl208387208438%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208385208431%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208387208438%_))
                                                 (let ((_%e208388208441%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208387208438%_))))
                                                   (let ((_%hd208389208445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208388208441%_)))
                                                         (_%tl208390208448%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208388208441%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208390208448%_))
                                                         (_%loop208377208409%_
                                                          _%lp-tl208380208428%_
                                                          (cons _%hd208389208445%_
                                                                _%sig208381208416%_)
                                                          (cons _%hd208386208435%_
                                                                _%arity208382208418%_))
                                                         (_%g208370208396%_
                                                          _%g208371208400%_))))
                                                 (_%g208370208396%_
                                                  _%g208371208400%_))))
                                         (_%g208370208396%_
                                          _%g208371208400%_))))
                                 (let ((_%sig208383208451%_
                                        (reverse _%sig208381208416%_))
                                       (_%arity208384208454%_
                                        (reverse _%arity208382208418%_)))
                                   ((lambda (_%L208457%_ _%L208459%_)
                                      (let* ((_%g208476208484%_
                                              (lambda (_%g208477208480%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g208477208480%_))))
                                             (_%g208475209141%_
                                              (lambda (_%g208477208488%_)
                                                ((lambda (_%L208491%_)
                                                   (let* ((_%g208504208512%_
                                                           (lambda (_%g208505208508%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g208505208508%_))))
                  (_%g208503208534%_
                   (lambda (_%g208505208516%_)
                     ((lambda (_%L208519%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L208491%_ (cons _%L208519%_ '()))))
                      _%g208505208516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208503208534%_
                                                      (let ((_g210315_
                                                             (let _%loop208538%_ ((_%rest208541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures208367%_)
                                          (_%unchecked-proc208543%_ '#f)
                                          (_%unchecked-clauses208544%_ '()))
                       (let* ((_%rest208545208553%_ _%rest208541%_)
                              (_%else208547208565%_
                               (lambda ()
                                 (values _%unchecked-proc208543%_
                                         (reverse!
                                          _%unchecked-clauses208544%_))))
                              (_%K208549209006%_
                               (lambda (_%rest208569%_ _%hd208571%_)
                                 (let* ((_%g208573208660%_
                                         (lambda (_%g208574208656%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208574208656%_))))
                                        (_%g208572209002%_
                                         (lambda (_%g208574208664%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208574208664%_))
                                               (let ((_%e208581208667%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208574208664%_))))
                                                 (let ((_%hd208582208671%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208581208667%_)))
                                                       (_%tl208583208674%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208581208667%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208583208674%_))
                                                       (let ((_%e208584208677%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208583208674%_))))
                 (let ((_%hd208585208681%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208584208677%_)))
                       (_%tl208586208684%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208584208677%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd208585208681%_))
                       (let ((_%e208587208687%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd208585208681%_))))
                         (let ((_%hd208588208691%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208587208687%_)))
                               (_%tl208589208694%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208587208687%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl208589208694%_))
                               (let ((_%e208590208697%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl208589208694%_))))
                                 (let ((_%hd208591208701%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208590208697%_)))
                                       (_%tl208592208704%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208590208697%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd208591208701%_))
                                       (let ((_%e208593208707%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208591208701%_))))
                                         (if (equal? _%e208593208707%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208592208704%_))
                                                 (let ((_%e208594208711%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208592208704%_))))
                                                   (let ((_%hd208595208715%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208594208711%_)))
                                                         (_%tl208596208718%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208594208711%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd208595208715%_))
                                                         (let ((_%e208597208721%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd208595208715%_))))
                   (let ((_%hd208598208725%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208597208721%_)))
                         (_%tl208599208728%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208597208721%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd208598208725%_))
                         (if (let ((__tmp210317 |gxc[1]#_g210318_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp210317
                                _%hd208598208725%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208599208728%_))
                                 (let ((_%e208600208731%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208599208728%_))))
                                   (let ((_%hd208601208735%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208600208731%_)))
                                         (_%tl208602208738%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208600208731%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl208602208738%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208596208718%_))
                                             (let ((_%e208603208741%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl208596208718%_))))
                                               (let ((_%hd208604208745%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208603208741%_)))
                                                     (_%tl208605208748%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208603208741%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd208604208745%_))
                                                     (let ((_%e208606208751%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd208604208745%_))))
                                                       (if (equal? _%e208606208751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl208605208748%_))
                       (let ((_%e208607208755%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl208605208748%_))))
                         (let ((_%hd208608208759%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208607208755%_)))
                               (_%tl208609208762%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208607208755%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd208608208759%_))
                               (let ((_%e208610208765%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd208608208759%_))))
                                 (let ((_%hd208611208769%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208610208765%_)))
                                       (_%tl208612208772%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208610208765%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd208611208769%_))
                                       (if (let ((__tmp210319
                                                  |gxc[1]#_g210320_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp210319
                                              _%hd208611208769%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208612208772%_))
                                               (let ((_%e208613208775%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208612208772%_))))
                                                 (let ((_%hd208614208779%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208613208775%_)))
                                                       (_%tl208615208782%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208613208775%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl208615208782%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl208609208762%_))
                                                           (let ((_%e208616208785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl208609208762%_))))
                     (let ((_%hd208617208789%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208616208785%_)))
                           (_%tl208618208792%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208616208785%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd208617208789%_))
                           (let ((_%e208619208795%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd208617208789%_))))
                             (if (equal? _%e208619208795%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl208618208792%_))
                                     (let ((_%e208620208799%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl208618208792%_))))
                                       (let ((_%hd208621208803%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e208620208799%_)))
                                             (_%tl208622208806%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e208620208799%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd208621208803%_))
                                             (let ((_%e208623208809%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd208621208803%_))))
                                               (let ((_%hd208624208813%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208623208809%_)))
                                                     (_%tl208625208816%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208623208809%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd208624208813%_))
                                                     (if (let ((__tmp210321
                                                                |gxc[1]#_g210322_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp210321
                                                            _%hd208624208813%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl208625208816%_))
                     (let ((_%e208626208819%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl208625208816%_))))
                       (let ((_%hd208627208823%_
                              (let ()
                                (declare (not safe))
                                (##car _%e208626208819%_)))
                             (_%tl208628208826%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e208626208819%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl208628208826%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208622208806%_))
                                 (let ((_%e208629208829%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208622208806%_))))
                                   (let ((_%hd208630208833%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208629208829%_)))
                                         (_%tl208631208836%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208629208829%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd208630208833%_))
                                         (let ((_%e208632208839%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd208630208833%_))))
                                           (if (equal? _%e208632208839%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl208631208836%_))
                                                   (let ((_%e208633208843%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl208631208836%_))))
                                                     (let ((_%hd208634208847%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e208633208843%_)))
                                                           (_%tl208635208850%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e208633208843%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd208634208847%_))
                                                           (let ((_%e208636208853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd208634208847%_))))
                     (let ((_%hd208637208857%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208636208853%_)))
                           (_%tl208638208860%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208636208853%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd208637208857%_))
                           (if (let ((__tmp210323 |gxc[1]#_g210324_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp210323
                                  _%hd208637208857%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl208638208860%_))
                                   (let ((_%e208639208863%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl208638208860%_))))
                                     (let ((_%hd208640208867%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e208639208863%_)))
                                           (_%tl208641208870%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e208639208863%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl208641208870%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208635208850%_))
                                               (let ((_%e208642208873%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208635208850%_))))
                                                 (let ((_%hd208643208877%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208642208873%_)))
                                                       (_%tl208644208880%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208642208873%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd208643208877%_))
                                                       (let ((_%e208645208883%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd208643208877%_))))
                 (if (equal? _%e208645208883%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl208644208880%_))
                         (let ((_%e208646208887%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl208644208880%_))))
                           (let ((_%hd208647208891%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208646208887%_)))
                                 (_%tl208648208894%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208646208887%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208647208891%_))
                                 (let ((_%e208649208897%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208647208891%_))))
                                   (let ((_%hd208650208901%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208649208897%_)))
                                         (_%tl208651208904%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208649208897%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd208650208901%_))
                                         (if (let ((__tmp210325
                                                    |gxc[1]#_g210326_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp210325
                                                _%hd208650208901%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208651208904%_))
                                                 (let ((_%e208652208907%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208651208904%_))))
                                                   (let ((_%hd208653208911%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208652208907%_)))
                                                         (_%tl208654208914%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208652208907%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208654208914%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl208648208894%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl208586208684%_))
                         ((lambda (_%L208917%_
                                   _%L208919%_
                                   _%L208920%_
                                   _%L208921%_
                                   _%L208922%_
                                   _%L208923%_)
                            (let ((_%clause208994%_
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
                                                     (cons _%L208923%_ '()))
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
                                                 (cons _%L208921%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208917%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked208996%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L208919%_))))
                              (_%loop208538%_
                               _%rest208569%_
                               (let ((_%$e208998%_ _%unchecked208996%_))
                                 (if _%$e208998%_
                                     _%$e208998%_
                                     _%unchecked-proc208543%_))
                               (cons _%clause208994%_
                                     _%unchecked-clauses208544%_))))
                          _%hd208653208911%_
                          _%hd208640208867%_
                          _%hd208627208823%_
                          _%hd208614208779%_
                          _%hd208601208735%_
                          _%hd208582208671%_)
                         (_%g208573208660%_ _%g208574208664%_))
                     (_%g208573208660%_ _%g208574208664%_))
                 (_%g208573208660%_ _%g208574208664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208573208660%_
                                                  _%g208574208664%_))
                                             (_%g208573208660%_
                                              _%g208574208664%_))
                                         (_%g208573208660%_
                                          _%g208574208664%_))))
                                 (_%g208573208660%_ _%g208574208664%_))))
                         (_%g208573208660%_ _%g208574208664%_))
                     (_%g208573208660%_ _%g208574208664%_)))
               (_%g208573208660%_ _%g208574208664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208573208660%_
                                                _%g208574208664%_))
                                           (_%g208573208660%_
                                            _%g208574208664%_))))
                                   (_%g208573208660%_ _%g208574208664%_))
                               (_%g208573208660%_ _%g208574208664%_))
                           (_%g208573208660%_ _%g208574208664%_))))
                   (_%g208573208660%_ _%g208574208664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g208573208660%_
                                                    _%g208574208664%_))
                                               (_%g208573208660%_
                                                _%g208574208664%_)))
                                         (_%g208573208660%_
                                          _%g208574208664%_))))
                                 (_%g208573208660%_ _%g208574208664%_))
                             (_%g208573208660%_ _%g208574208664%_))))
                     (_%g208573208660%_ _%g208574208664%_))
                 (_%g208573208660%_ _%g208574208664%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208573208660%_
                                                      _%g208574208664%_))))
                                             (_%g208573208660%_
                                              _%g208574208664%_))))
                                     (_%g208573208660%_ _%g208574208664%_))
                                 (_%g208573208660%_ _%g208574208664%_)))
                           (_%g208573208660%_ _%g208574208664%_))))
                   (_%g208573208660%_ _%g208574208664%_))
               (_%g208573208660%_ _%g208574208664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208573208660%_
                                                _%g208574208664%_))
                                           (_%g208573208660%_
                                            _%g208574208664%_))
                                       (_%g208573208660%_ _%g208574208664%_))))
                               (_%g208573208660%_ _%g208574208664%_))))
                       (_%g208573208660%_ _%g208574208664%_))
                   (_%g208573208660%_ _%g208574208664%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208573208660%_
                                                      _%g208574208664%_))))
                                             (_%g208573208660%_
                                              _%g208574208664%_))
                                         (_%g208573208660%_
                                          _%g208574208664%_))))
                                 (_%g208573208660%_ _%g208574208664%_))
                             (_%g208573208660%_ _%g208574208664%_))
                         (_%g208573208660%_ _%g208574208664%_))))
                 (_%g208573208660%_ _%g208574208664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208573208660%_
                                                  _%g208574208664%_))
                                             (_%g208573208660%_
                                              _%g208574208664%_)))
                                       (_%g208573208660%_ _%g208574208664%_))))
                               (_%g208573208660%_ _%g208574208664%_))))
                       (_%g208573208660%_ _%g208574208664%_))))
               (_%g208573208660%_ _%g208574208664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208573208660%_
                                                _%g208574208664%_)))))
                                   (_%g208572209002%_ _%hd208571%_)))))
                         (if (pair? _%rest208545208553%_)
                             (let ((_%hd208550209010%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest208545208553%_)))
                                   (_%tl208551209013%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest208545208553%_))))
                               (let* ((_%hd209016%_ _%hd208550209010%_)
                                      (_%rest209019%_ _%tl208551209013%_))
                                 (_%K208549209006%_
                                  _%rest209019%_
                                  _%hd209016%_)))
                             (_%else208547208565%_))))))
                (begin
                  (let ((_g210316_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210315_)
                               (##values-length _g210315_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210316_ 2)))
                        (error "Context expects 2 values" _g210316_)))
                  (let ((_%unchecked-proc209022%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210315_ 0)))
                        (_%unchecked-clauses209024%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210315_ 1))))
                    (if _%unchecked-proc209022%_
                        (let* ((_%g209026209050%_
                                (lambda (_%g209027209046%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g209027209046%_))))
                               (_%g209025209137%_
                                (lambda (_%g209027209054%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g209027209054%_))
                                      (let ((_%e209030209057%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g209027209054%_))))
                                        (let ((_%hd209031209061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209030209057%_)))
                                              (_%tl209032209064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209030209057%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209032209064%_))
                                              (let ((_%e209033209067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209032209064%_))))
                                                (let ((_%hd209034209071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209033209067%_)))
                                                      (_%tl209035209074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209033209067%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd209034209071%_))
                                                      (let ((_g210327_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd209034209071%_ '0))))
                (begin
                  (let ((_g210328_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210327_)
                               (##values-length _g210327_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210328_ 2)))
                        (error "Context expects 2 values" _g210328_)))
                  (let ((_%target209036209077%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210327_ 0)))
                        (_%tl209038209080%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210327_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl209038209080%_))
                        (letrec ((_%loop209039209083%_
                                  (lambda (_%hd209037209087%_
                                           _%clause209043209090%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd209037209087%_))
                                        (let ((_%e209040209093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd209037209087%_))))
                                          (let ((_%lp-hd209041209097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209040209093%_)))
                                                (_%lp-tl209042209100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209040209093%_))))
                                            (_%loop209039209083%_
                                             _%lp-tl209042209100%_
                                             (cons _%lp-hd209041209097%_
                                                   _%clause209043209090%_))))
                                        (let ((_%clause209044209103%_
                                               (reverse _%clause209043209090%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209035209074%_))
                                              ((lambda (_%L209107%_
                                                        _%L209109%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L209109%_
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
                                             (let ((__tmp210329
                                                    (lambda (_%g209128209131%_
                                                             _%g209129209134%_)
                                                      (cons _%g209128209131%_
                                                            _%g209129209134%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp210329
                                                '()
                                                _%L209107%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause209044209103%_
                                               _%hd209031209061%_)
                                              (_%g209026209050%_
                                               _%g209027209054%_)))))))
                          (_%loop209039209083%_ _%target209036209077%_ '()))
                        (_%g209026209050%_ _%g209027209054%_)))))
              (_%g209026209050%_ _%g209027209054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g209026209050%_
                                               _%g209027209054%_))))
                                      (_%g209026209050%_ _%g209027209054%_)))))
                          (_%g209025209137%_
                           (list _%unchecked-proc209022%_
                                 _%unchecked-clauses209024%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g208477208488%_))))
                                        (_%g208475209141%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L208336%_
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
                                          _%L208457%_
                                          _%L208459%_))
                                       (let ((__tmp210330
                                              (lambda (_%g209144209148%_
                                                       _%g209145209151%_
                                                       _%g209146209153%_)
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
                                (cons _%g209145209151%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g209144209148%_ '())))))
              _%g209146209153%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp210330
                                          '()
                                          _%L208457%_
                                          _%L208459%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig208383208451%_
                                    _%arity208384208454%_))))))
                   (_%loop208377208409%_ _%target208374208403%_ '() '()))
                 (_%g208370208396%_ _%g208371208400%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208370208396%_
                                                _%g208371208400%_)))))
                                   (_%g208369209156%_ _%signatures208367%_))
                                 (_%g208253208277%_ _%g208254208281%_)))
                           _%case-signature208271208330%_
                           _%hd208261208298%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208266208310%_
                                                   _%target208263208304%_
                                                   '()))
                                                (_%g208253208277%_
                                                 _%g208254208281%_)))))
                                      (_%g208253208277%_ _%g208254208281%_))))
                              (_%g208253208277%_ _%g208254208281%_))))
                      (_%g208253208277%_ _%g208254208281%_)))))
          (_%g208252209160%_ _%stx208250%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx209168%_)
        (let* ((_%__stx210150210151%_ _%$stx209168%_)
               (_%g209174209234%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210150210151%_)))))
          (let ((_%__kont210153210154%_
                 (lambda (_%L209456%_ _%L209458%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209458%_ '()))
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
                                                       (cons _%L209458%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209456%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210155210156%_
                 (lambda (_%L209381%_ _%L209383%_ _%L209384%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209384%_ '()))
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
                                                       (cons _%L209384%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209383%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209381%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210157210158%_
                 (lambda (_%L209295%_ _%L209297%_ _%L209298%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209298%_ '()))
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
                                                       (cons _%L209298%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209297%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209295%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx210150210151%_))
                (let ((_%e209178209412%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx210150210151%_))))
                  (let ((_%tl209180209419%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209178209412%_)))
                        (_%hd209179209416%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209178209412%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl209180209419%_))
                        (let ((_%e209181209422%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl209180209419%_))))
                          (let ((_%tl209183209429%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209181209422%_)))
                                (_%hd209182209426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209181209422%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd209182209426%_))
                                (let ((_%e209184209432%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd209182209426%_))))
                                  (if (equal? _%e209184209432%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl209183209429%_))
                                          (let ((_%e209185209436%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl209183209429%_))))
                                            (let ((_%tl209187209443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e209185209436%_)))
                                                  (_%hd209186209440%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e209185209436%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209187209443%_))
                                                  (let ((_%e209188209446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209187209443%_))))
                                                    (let ((_%tl209190209453%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209188209446%_)))
                                                          (_%hd209189209450%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209188209446%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl209190209453%_))
                                                          (_%__kont210153210154%_
                                                           _%hd209189209450%_
                                                           _%hd209186209440%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g209174209234%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209174209234%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g209174209234%_)))
                                      (if (equal? _%e209184209432%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209183209429%_))
                                              (let ((_%e209201209351%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209183209429%_))))
                                                (let ((_%tl209203209358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209201209351%_)))
                                                      (_%hd209202209355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209201209351%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl209203209358%_))
                                                      (let ((_%e209204209361%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl209203209358%_))))
                (let ((_%tl209206209368%_
                       (let () (declare (not safe)) (##cdr _%e209204209361%_)))
                      (_%hd209205209365%_
                       (let ()
                         (declare (not safe))
                         (##car _%e209204209361%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl209206209368%_))
                      (let ((_%e209207209371%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl209206209368%_))))
                        (let ((_%tl209209209378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209207209371%_)))
                              (_%hd209208209375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209207209371%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl209209209378%_))
                              (_%__kont210155210156%_
                               _%hd209208209375%_
                               _%hd209205209365%_
                               _%hd209202209355%_)
                              (let ()
                                (declare (not safe))
                                (_%g209174209234%_)))))
                      (let () (declare (not safe)) (_%g209174209234%_)))))
              (let () (declare (not safe)) (_%g209174209234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g209174209234%_)))
                                          (if (equal? _%e209184209432%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209183209429%_))
                                                  (let ((_%e209220209265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209183209429%_))))
                                                    (let ((_%tl209222209272%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209220209265%_)))
                                                          (_%hd209221209269%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209220209265%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl209222209272%_))
                                                          (let ((_%e209223209275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl209222209272%_))))
                    (let ((_%tl209225209282%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209223209275%_)))
                          (_%hd209224209279%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209223209275%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209225209282%_))
                          (let ((_%e209226209285%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209225209282%_))))
                            (let ((_%tl209228209292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209226209285%_)))
                                  (_%hd209227209289%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209226209285%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209228209292%_))
                                  (_%__kont210157210158%_
                                   _%hd209227209289%_
                                   _%hd209224209279%_
                                   _%hd209221209269%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g209174209234%_)))))
                          (let () (declare (not safe)) (_%g209174209234%_)))))
                  (let () (declare (not safe)) (_%g209174209234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209174209234%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g209174209234%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g209174209234%_)))))
                        (let () (declare (not safe)) (_%g209174209234%_)))))
                (let () (declare (not safe)) (_%g209174209234%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx209480%_)
        (let* ((_%g209484209504%_
                (lambda (_%g209485209500%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209485209500%_))))
               (_%g209483209575%_
                (lambda (_%g209485209508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209485209508%_))
                      (let ((_%e209487209511%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209485209508%_))))
                        (let ((_%hd209488209515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209487209511%_)))
                              (_%tl209489209518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209487209511%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209489209518%_))
                              (let ((_g210331_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209489209518%_
                                        '0))))
                                (begin
                                  (let ((_g210332_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210331_)
                                               (##values-length _g210331_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210332_ 2)))
                                        (error "Context expects 2 values"
                                               _g210332_)))
                                  (let ((_%target209490209521%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210331_ 0)))
                                        (_%tl209492209524%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210331_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209492209524%_))
                                        (letrec ((_%loop209493209527%_
                                                  (lambda (_%hd209491209531%_
                                                           _%decl209497209534%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209491209531%_))
                                                        (let ((_%e209494209537%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209491209531%_))))
                  (let ((_%lp-hd209495209541%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209494209537%_)))
                        (_%lp-tl209496209544%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209494209537%_))))
                    (_%loop209493209527%_
                     _%lp-tl209496209544%_
                     (cons _%lp-hd209495209541%_ _%decl209497209534%_))))
                (let ((_%decl209498209547%_ (reverse _%decl209497209534%_)))
                  ((lambda (_%L209551%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp210333
                                  (lambda (_%g209566209569%_ _%g209567209572%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g209566209569%_)
                                          _%g209567209572%_))))
                             (declare (not safe))
                             (__foldr1 __tmp210333 '() _%L209551%_))))
                   _%decl209498209547%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209493209527%_
                                           _%target209490209521%_
                                           '()))
                                        (_%g209484209504%_
                                         _%g209485209508%_)))))
                              (_%g209484209504%_ _%g209485209508%_))))
                      (_%g209484209504%_ _%g209485209508%_)))))
          (_%g209483209575%_ _%$stx209480%_))))))
