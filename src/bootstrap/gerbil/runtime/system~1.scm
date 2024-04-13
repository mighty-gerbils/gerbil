(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g93600_|
    (gx#core-deserialize-mark
     '(0
       (args . _%args92912%_)
       (new-value . _%new-value92975%_)
       (the-var . _%the-var92848%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g93601_|
    (##structure
     gx#syntax-quote::t
     '%%set-dotted!
     #f
     (gx#current-expander-context)
     (list |[1]#_g93600_|)))
  (define |[1]#_g93602_|
    (##structure
     gx#syntax-quote::t
     'set!
     #f
     (gx#current-expander-context)
     (list |[1]#_g93600_|)))
  (define |[1]#_g93605_|
    (gx#core-deserialize-mark
     '(0
       (args . _%args93168%_)
       (new-value . _%new-value93231%_)
       (the-var . _%the-var93104%_))
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g93606_|
    (##structure
     gx#syntax-quote::t
     '%%set-dotted!
     #f
     (gx#current-expander-context)
     (list |[1]#_g93605_|)))
  (define |[1]#_g93607_|
    (##structure
     gx#syntax-quote::t
     'set!
     #f
     (gx#current-expander-context)
     (list |[1]#_g93605_|)))
  (begin
    (define |[:0:]#build-manifest|
      (let ((__obj93590
             (let ()
               (declare (not safe))
               (##structure |gerbil/core/more-sugar[1]#setq-macro::t| '#f))))
        (let ((__tmp93598
               (lambda (_%$stx92780%_)
                 (let* ((_%__stx9343593436%_ _%$stx92780%_)
                        (_%g9278792831%_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%__stx9343593436%_))))
                   (let ((_%__kont9343893439%_
                          (lambda (_%L93015%_ _%L93017%_)
                            (cons (gx#datum->syntax '#f 'build-manifest-set!)
                                  (cons _%L93015%_ '()))))
                         (_%__kont9344093441%_
                          (lambda (_%L92960%_ _%L92962%_)
                            (cons (gx#datum->syntax '#f 'build-manifest-set!)
                                  (cons _%L92960%_ '()))))
                         (_%__kont9344293443%_
                          (lambda (_%L92897%_ _%L92899%_)
                            (cons (gx#datum->syntax '#f '__build-manifest)
                                  (let ((__tmp93599
                                         (lambda (_%g9291492917%_
                                                  _%g9291592920%_)
                                           (cons _%g9291492917%_
                                                 _%g9291592920%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp93599 '() _%L92897%_)))))
                         (_%__kont9344693447%_
                          (lambda (_%L92838%_)
                            (gx#datum->syntax '#f '__build-manifest))))
                     (let* ((_%g9278692850%_
                             (lambda ()
                               (let ((_%L92838%_ _%__stx9343593436%_))
                                 (if (and (gx#identifier? _%L92838%_)
                                          (gx#free-identifier=?
                                           _%L92838%_
                                           (gx#datum->syntax
                                            '#f
                                            'build-manifest)))
                                     (_%__kont9344693447%_ _%L92838%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g9278792831%_))))))
                            (_%__match9351093511%_
                             (lambda (_%e9281392857%_
                                      _%hd9281492861%_
                                      _%tl9281592864%_
                                      _%__splice9344493445%_
                                      _%target9281692867%_
                                      _%tl9281892870%_)
                               (letrec ((_%loop9281992873%_
                                         (lambda (_%hd9281792877%_
                                                  _%args9282392880%_)
                                           (if (gx#stx-pair? _%hd9281792877%_)
                                               (let ((_%e9282092883%_
                                                      (gx#syntax-e
                                                       _%hd9281792877%_)))
                                                 (let ((_%lp-tl9282292890%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e9282092883%_)))
                                                       (_%lp-hd9282192887%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e9282092883%_))))
                                                   (_%loop9281992873%_
                                                    _%lp-tl9282292890%_
                                                    (cons _%lp-hd9282192887%_
                                                          _%args9282392880%_))))
                                               (let ((_%args9282492893%_
                                                      (reverse _%args9282392880%_)))
                                                 (let ((_%L92897%_
                                                        _%args9282492893%_)
                                                       (_%L92899%_
                                                        _%hd9281492861%_))
                                                   (if (and (gx#identifier?
                                                             _%L92899%_)
                                                            (gx#free-identifier=?
                                                             _%L92899%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'build-manifest)))
                                                       (_%__kont9344293443%_
                                                        _%L92897%_
                                                        _%L92899%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g9278692850%_)))))))))
                                 (_%loop9281992873%_
                                  _%target9281692867%_
                                  '())))))
                       (if (gx#stx-pair? _%__stx9343593436%_)
                           (let ((_%e9279192985%_
                                  (gx#syntax-e _%__stx9343593436%_)))
                             (let ((_%tl9279392992%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e9279192985%_)))
                                   (_%hd9279292989%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e9279192985%_))))
                               (if (gx#identifier? _%hd9279292989%_)
                                   (if (gx#free-identifier=?
                                        |[1]#_g93601_|
                                        _%hd9279292989%_)
                                       (if (gx#stx-pair? _%tl9279392992%_)
                                           (let ((_%e9279492995%_
                                                  (gx#syntax-e
                                                   _%tl9279392992%_)))
                                             (let ((_%tl9279693002%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e9279492995%_)))
                                                   (_%hd9279592999%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e9279492995%_))))
                                               (if (gx#stx-pair?
                                                    _%tl9279693002%_)
                                                   (let ((_%e9279793005%_
                                                          (gx#syntax-e
                                                           _%tl9279693002%_)))
                                                     (let ((_%tl9279993012%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e9279793005%_)))
                                                           (_%hd9279893009%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e9279793005%_))))
                                                       (if (gx#stx-null?
                                                            _%tl9279993012%_)
                                                           (_%__kont9343893439%_
                                                            _%hd9279893009%_
                                                            _%hd9279592999%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl9279392992%_)
                                                               (let ((_%__splice9344493445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice _%tl9279392992%_ '0)))
                         (let ((_%tl9281892870%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice9344493445%_ '1)))
                               (_%target9281692867%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice9344493445%_ '0))))
                           (if (gx#stx-null? _%tl9281892870%_)
                               (_%__match9351093511%_
                                _%e9279192985%_
                                _%hd9279292989%_
                                _%tl9279392992%_
                                _%__splice9344493445%_
                                _%target9281692867%_
                                _%tl9281892870%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g9278692850%_)))))
                       (let () (declare (not safe)) (_%g9278692850%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl9279392992%_)
                                                       (let ((_%__splice9344493445%_
                                                              (gx#syntax-split-splice
                                                               _%tl9279392992%_
                                                               '0)))
                                                         (let ((_%tl9281892870%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice9344493445%_ '1)))
                       (_%target9281692867%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice9344493445%_ '0))))
                   (if (gx#stx-null? _%tl9281892870%_)
                       (_%__match9351093511%_
                        _%e9279192985%_
                        _%hd9279292989%_
                        _%tl9279392992%_
                        _%__splice9344493445%_
                        _%target9281692867%_
                        _%tl9281892870%_)
                       (let () (declare (not safe)) (_%g9278692850%_)))))
               (let () (declare (not safe)) (_%g9278692850%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl9279392992%_)
                                               (let ((_%__splice9344493445%_
                                                      (gx#syntax-split-splice
                                                       _%tl9279392992%_
                                                       '0)))
                                                 (let ((_%tl9281892870%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice9344493445%_
                                                           '1)))
                                                       (_%target9281692867%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice9344493445%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl9281892870%_)
                                                       (_%__match9351093511%_
                                                        _%e9279192985%_
                                                        _%hd9279292989%_
                                                        _%tl9279392992%_
                                                        _%__splice9344493445%_
                                                        _%target9281692867%_
                                                        _%tl9281892870%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g9278692850%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g9278692850%_))))
                                       (if (gx#free-identifier=?
                                            |[1]#_g93602_|
                                            _%hd9279292989%_)
                                           (if (gx#stx-pair? _%tl9279392992%_)
                                               (let ((_%e9280592940%_
                                                      (gx#syntax-e
                                                       _%tl9279392992%_)))
                                                 (let ((_%tl9280792947%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e9280592940%_)))
                                                       (_%hd9280692944%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e9280592940%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl9280792947%_)
                                                       (let ((_%e9280892950%_
                                                              (gx#syntax-e
                                                               _%tl9280792947%_)))
                                                         (let ((_%tl9281092957%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e9280892950%_)))
                       (_%hd9280992954%_
                        (let () (declare (not safe)) (##car _%e9280892950%_))))
                   (if (gx#stx-null? _%tl9281092957%_)
                       (_%__kont9344093441%_ _%hd9280992954%_ _%hd9280692944%_)
                       (if (gx#stx-pair/null? _%tl9279392992%_)
                           (let ((_%__splice9344493445%_
                                  (gx#syntax-split-splice
                                   _%tl9279392992%_
                                   '0)))
                             (let ((_%tl9281892870%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice9344493445%_
                                       '1)))
                                   (_%target9281692867%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice9344493445%_
                                       '0))))
                               (if (gx#stx-null? _%tl9281892870%_)
                                   (_%__match9351093511%_
                                    _%e9279192985%_
                                    _%hd9279292989%_
                                    _%tl9279392992%_
                                    _%__splice9344493445%_
                                    _%target9281692867%_
                                    _%tl9281892870%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g9278692850%_)))))
                           (let () (declare (not safe)) (_%g9278692850%_))))))
               (if (gx#stx-pair/null? _%tl9279392992%_)
                   (let ((_%__splice9344493445%_
                          (gx#syntax-split-splice _%tl9279392992%_ '0)))
                     (let ((_%tl9281892870%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice9344493445%_ '1)))
                           (_%target9281692867%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice9344493445%_ '0))))
                       (if (gx#stx-null? _%tl9281892870%_)
                           (_%__match9351093511%_
                            _%e9279192985%_
                            _%hd9279292989%_
                            _%tl9279392992%_
                            _%__splice9344493445%_
                            _%target9281692867%_
                            _%tl9281892870%_)
                           (let () (declare (not safe)) (_%g9278692850%_)))))
                   (let () (declare (not safe)) (_%g9278692850%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%tl9279392992%_)
                                                   (let ((_%__splice9344493445%_
                                                          (gx#syntax-split-splice
                                                           _%tl9279392992%_
                                                           '0)))
                                                     (let ((_%tl9281892870%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice9344493445%_
                                                               '1)))
                                                           (_%target9281692867%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice9344493445%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl9281892870%_)
                                                           (_%__match9351093511%_
                                                            _%e9279192985%_
                                                            _%hd9279292989%_
                                                            _%tl9279392992%_
                                                            _%__splice9344493445%_
                                                            _%target9281692867%_
                                                            _%tl9281892870%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g9278692850%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g9278692850%_))))
                                           (if (gx#stx-pair/null?
                                                _%tl9279392992%_)
                                               (let ((_%__splice9344493445%_
                                                      (gx#syntax-split-splice
                                                       _%tl9279392992%_
                                                       '0)))
                                                 (let ((_%tl9281892870%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice9344493445%_
                                                           '1)))
                                                       (_%target9281692867%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice9344493445%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl9281892870%_)
                                                       (_%__match9351093511%_
                                                        _%e9279192985%_
                                                        _%hd9279292989%_
                                                        _%tl9279392992%_
                                                        _%__splice9344493445%_
                                                        _%target9281692867%_
                                                        _%tl9281892870%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g9278692850%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g9278692850%_)))))
                                   (if (gx#stx-pair/null? _%tl9279392992%_)
                                       (let ((_%__splice9344493445%_
                                              (gx#syntax-split-splice
                                               _%tl9279392992%_
                                               '0)))
                                         (let ((_%tl9281892870%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice9344493445%_
                                                   '1)))
                                               (_%target9281692867%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice9344493445%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl9281892870%_)
                                               (_%__match9351093511%_
                                                _%e9279192985%_
                                                _%hd9279292989%_
                                                _%tl9279392992%_
                                                _%__splice9344493445%_
                                                _%target9281692867%_
                                                _%tl9281892870%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g9278692850%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g9278692850%_))))))
                           (let ()
                             (declare (not safe))
                             (_%g9278692850%_)))))))))
          (declare (not safe))
          (##unchecked-structure-set! __obj93590 __tmp93598 '1 '#f '#f))
        __obj93590))
    (define |[:0:]#gerbil-greeting|
      (let ((__obj93591
             (let ()
               (declare (not safe))
               (##structure |gerbil/core/more-sugar[1]#setq-macro::t| '#f))))
        (let ((__tmp93603
               (lambda (_%$stx93037%_)
                 (let* ((_%__stx9351393514%_ _%$stx93037%_)
                        (_%g9304493088%_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%__stx9351393514%_))))
                   (let ((_%__kont9351693517%_
                          (lambda (_%L93271%_ _%L93273%_)
                            (cons (gx#datum->syntax '#f 'gerbil-greeting-set!)
                                  (cons _%L93271%_ '()))))
                         (_%__kont9351893519%_
                          (lambda (_%L93216%_ _%L93218%_)
                            (cons (gx#datum->syntax '#f 'gerbil-greeting-set!)
                                  (cons _%L93216%_ '()))))
                         (_%__kont9352093521%_
                          (lambda (_%L93153%_ _%L93155%_)
                            (cons (gx#datum->syntax '#f '__gerbil-greeting)
                                  (let ((__tmp93604
                                         (lambda (_%g9317093173%_
                                                  _%g9317193176%_)
                                           (cons _%g9317093173%_
                                                 _%g9317193176%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp93604 '() _%L93153%_)))))
                         (_%__kont9352493525%_
                          (lambda (_%L93095%_)
                            (gx#datum->syntax '#f '__gerbil-greeting))))
                     (let* ((_%g9304393106%_
                             (lambda ()
                               (let ((_%L93095%_ _%__stx9351393514%_))
                                 (if (and (gx#identifier? _%L93095%_)
                                          (gx#free-identifier=?
                                           _%L93095%_
                                           (gx#datum->syntax
                                            '#f
                                            'gerbil-greeting)))
                                     (_%__kont9352493525%_ _%L93095%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%g9304493088%_))))))
                            (_%__match9358893589%_
                             (lambda (_%e9307093113%_
                                      _%hd9307193117%_
                                      _%tl9307293120%_
                                      _%__splice9352293523%_
                                      _%target9307393123%_
                                      _%tl9307593126%_)
                               (letrec ((_%loop9307693129%_
                                         (lambda (_%hd9307493133%_
                                                  _%args9308093136%_)
                                           (if (gx#stx-pair? _%hd9307493133%_)
                                               (let ((_%e9307793139%_
                                                      (gx#syntax-e
                                                       _%hd9307493133%_)))
                                                 (let ((_%lp-tl9307993146%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e9307793139%_)))
                                                       (_%lp-hd9307893143%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e9307793139%_))))
                                                   (_%loop9307693129%_
                                                    _%lp-tl9307993146%_
                                                    (cons _%lp-hd9307893143%_
                                                          _%args9308093136%_))))
                                               (let ((_%args9308193149%_
                                                      (reverse _%args9308093136%_)))
                                                 (let ((_%L93153%_
                                                        _%args9308193149%_)
                                                       (_%L93155%_
                                                        _%hd9307193117%_))
                                                   (if (and (gx#identifier?
                                                             _%L93155%_)
                                                            (gx#free-identifier=?
                                                             _%L93155%_
                                                             (gx#datum->syntax
                                                              '#f
                                                              'gerbil-greeting)))
                                                       (_%__kont9352093521%_
                                                        _%L93153%_
                                                        _%L93155%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g9304393106%_)))))))))
                                 (_%loop9307693129%_
                                  _%target9307393123%_
                                  '())))))
                       (if (gx#stx-pair? _%__stx9351393514%_)
                           (let ((_%e9304893241%_
                                  (gx#syntax-e _%__stx9351393514%_)))
                             (let ((_%tl9305093248%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e9304893241%_)))
                                   (_%hd9304993245%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e9304893241%_))))
                               (if (gx#identifier? _%hd9304993245%_)
                                   (if (gx#free-identifier=?
                                        |[1]#_g93606_|
                                        _%hd9304993245%_)
                                       (if (gx#stx-pair? _%tl9305093248%_)
                                           (let ((_%e9305193251%_
                                                  (gx#syntax-e
                                                   _%tl9305093248%_)))
                                             (let ((_%tl9305393258%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e9305193251%_)))
                                                   (_%hd9305293255%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e9305193251%_))))
                                               (if (gx#stx-pair?
                                                    _%tl9305393258%_)
                                                   (let ((_%e9305493261%_
                                                          (gx#syntax-e
                                                           _%tl9305393258%_)))
                                                     (let ((_%tl9305693268%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e9305493261%_)))
                                                           (_%hd9305593265%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e9305493261%_))))
                                                       (if (gx#stx-null?
                                                            _%tl9305693268%_)
                                                           (_%__kont9351693517%_
                                                            _%hd9305593265%_
                                                            _%hd9305293255%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl9305093248%_)
                                                               (let ((_%__splice9352293523%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice _%tl9305093248%_ '0)))
                         (let ((_%tl9307593126%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice9352293523%_ '1)))
                               (_%target9307393123%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice9352293523%_ '0))))
                           (if (gx#stx-null? _%tl9307593126%_)
                               (_%__match9358893589%_
                                _%e9304893241%_
                                _%hd9304993245%_
                                _%tl9305093248%_
                                _%__splice9352293523%_
                                _%target9307393123%_
                                _%tl9307593126%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g9304393106%_)))))
                       (let () (declare (not safe)) (_%g9304393106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl9305093248%_)
                                                       (let ((_%__splice9352293523%_
                                                              (gx#syntax-split-splice
                                                               _%tl9305093248%_
                                                               '0)))
                                                         (let ((_%tl9307593126%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice9352293523%_ '1)))
                       (_%target9307393123%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice9352293523%_ '0))))
                   (if (gx#stx-null? _%tl9307593126%_)
                       (_%__match9358893589%_
                        _%e9304893241%_
                        _%hd9304993245%_
                        _%tl9305093248%_
                        _%__splice9352293523%_
                        _%target9307393123%_
                        _%tl9307593126%_)
                       (let () (declare (not safe)) (_%g9304393106%_)))))
               (let () (declare (not safe)) (_%g9304393106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl9305093248%_)
                                               (let ((_%__splice9352293523%_
                                                      (gx#syntax-split-splice
                                                       _%tl9305093248%_
                                                       '0)))
                                                 (let ((_%tl9307593126%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice9352293523%_
                                                           '1)))
                                                       (_%target9307393123%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice9352293523%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl9307593126%_)
                                                       (_%__match9358893589%_
                                                        _%e9304893241%_
                                                        _%hd9304993245%_
                                                        _%tl9305093248%_
                                                        _%__splice9352293523%_
                                                        _%target9307393123%_
                                                        _%tl9307593126%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g9304393106%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g9304393106%_))))
                                       (if (gx#free-identifier=?
                                            |[1]#_g93607_|
                                            _%hd9304993245%_)
                                           (if (gx#stx-pair? _%tl9305093248%_)
                                               (let ((_%e9306293196%_
                                                      (gx#syntax-e
                                                       _%tl9305093248%_)))
                                                 (let ((_%tl9306493203%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e9306293196%_)))
                                                       (_%hd9306393200%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e9306293196%_))))
                                                   (if (gx#stx-pair?
                                                        _%tl9306493203%_)
                                                       (let ((_%e9306593206%_
                                                              (gx#syntax-e
                                                               _%tl9306493203%_)))
                                                         (let ((_%tl9306793213%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e9306593206%_)))
                       (_%hd9306693210%_
                        (let () (declare (not safe)) (##car _%e9306593206%_))))
                   (if (gx#stx-null? _%tl9306793213%_)
                       (_%__kont9351893519%_ _%hd9306693210%_ _%hd9306393200%_)
                       (if (gx#stx-pair/null? _%tl9305093248%_)
                           (let ((_%__splice9352293523%_
                                  (gx#syntax-split-splice
                                   _%tl9305093248%_
                                   '0)))
                             (let ((_%tl9307593126%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice9352293523%_
                                       '1)))
                                   (_%target9307393123%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice9352293523%_
                                       '0))))
                               (if (gx#stx-null? _%tl9307593126%_)
                                   (_%__match9358893589%_
                                    _%e9304893241%_
                                    _%hd9304993245%_
                                    _%tl9305093248%_
                                    _%__splice9352293523%_
                                    _%target9307393123%_
                                    _%tl9307593126%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g9304393106%_)))))
                           (let () (declare (not safe)) (_%g9304393106%_))))))
               (if (gx#stx-pair/null? _%tl9305093248%_)
                   (let ((_%__splice9352293523%_
                          (gx#syntax-split-splice _%tl9305093248%_ '0)))
                     (let ((_%tl9307593126%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice9352293523%_ '1)))
                           (_%target9307393123%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice9352293523%_ '0))))
                       (if (gx#stx-null? _%tl9307593126%_)
                           (_%__match9358893589%_
                            _%e9304893241%_
                            _%hd9304993245%_
                            _%tl9305093248%_
                            _%__splice9352293523%_
                            _%target9307393123%_
                            _%tl9307593126%_)
                           (let () (declare (not safe)) (_%g9304393106%_)))))
                   (let () (declare (not safe)) (_%g9304393106%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _%tl9305093248%_)
                                                   (let ((_%__splice9352293523%_
                                                          (gx#syntax-split-splice
                                                           _%tl9305093248%_
                                                           '0)))
                                                     (let ((_%tl9307593126%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice9352293523%_
                                                               '1)))
                                                           (_%target9307393123%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice9352293523%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl9307593126%_)
                                                           (_%__match9358893589%_
                                                            _%e9304893241%_
                                                            _%hd9304993245%_
                                                            _%tl9305093248%_
                                                            _%__splice9352293523%_
                                                            _%target9307393123%_
                                                            _%tl9307593126%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g9304393106%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g9304393106%_))))
                                           (if (gx#stx-pair/null?
                                                _%tl9305093248%_)
                                               (let ((_%__splice9352293523%_
                                                      (gx#syntax-split-splice
                                                       _%tl9305093248%_
                                                       '0)))
                                                 (let ((_%tl9307593126%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice9352293523%_
                                                           '1)))
                                                       (_%target9307393123%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice9352293523%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl9307593126%_)
                                                       (_%__match9358893589%_
                                                        _%e9304893241%_
                                                        _%hd9304993245%_
                                                        _%tl9305093248%_
                                                        _%__splice9352293523%_
                                                        _%target9307393123%_
                                                        _%tl9307593126%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g9304393106%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g9304393106%_)))))
                                   (if (gx#stx-pair/null? _%tl9305093248%_)
                                       (let ((_%__splice9352293523%_
                                              (gx#syntax-split-splice
                                               _%tl9305093248%_
                                               '0)))
                                         (let ((_%tl9307593126%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice9352293523%_
                                                   '1)))
                                               (_%target9307393123%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice9352293523%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl9307593126%_)
                                               (_%__match9358893589%_
                                                _%e9304893241%_
                                                _%hd9304993245%_
                                                _%tl9305093248%_
                                                _%__splice9352293523%_
                                                _%target9307393123%_
                                                _%tl9307593126%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g9304393106%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g9304393106%_))))))
                           (let ()
                             (declare (not safe))
                             (_%g9304393106%_)))))))))
          (declare (not safe))
          (##unchecked-structure-set! __obj93591 __tmp93603 '1 '#f '#f))
        __obj93591))))
