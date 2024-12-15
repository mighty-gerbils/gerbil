(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g210285_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210292_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210294_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210296_|
    (##structure
     gx#syntax-quote::t
     'quote
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
  (define |gxc[1]#_g210312_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210314_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g210316_|
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
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx203703%_)
        (let* ((_%g203707203725%_
                (lambda (_%g203708203721%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203708203721%_))))
               (_%g203706203780%_
                (lambda (_%g203708203729%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203708203729%_))
                      (let ((_%e203711203732%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203708203729%_))))
                        (let ((_%hd203712203736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203711203732%_)))
                              (_%tl203713203739%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203711203732%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203713203739%_))
                              (let ((_%e203714203742%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203713203739%_))))
                                (let ((_%hd203715203746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203714203742%_)))
                                      (_%tl203716203749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203714203742%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203716203749%_))
                                      (let ((_%e203717203752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203716203749%_))))
                                        (let ((_%hd203718203756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203717203752%_)))
                                              (_%tl203719203759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203717203752%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203719203759%_))
                                              ((lambda (_%L203762%_
                                                        _%L203764%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203764%_))
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
                               (cons _%L203764%_ '()))
                         (cons _%L203762%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203707203725%_
                                                      _%g203708203729%_)))
                                               _%hd203718203756%_
                                               _%hd203715203746%_)
                                              (_%g203707203725%_
                                               _%g203708203729%_))))
                                      (_%g203707203725%_ _%g203708203729%_))))
                              (_%g203707203725%_ _%g203708203729%_))))
                      (_%g203707203725%_ _%g203708203729%_)))))
          (_%g203706203780%_ _%$stx203703%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx203784%_)
        (let* ((_%g203788203806%_
                (lambda (_%g203789203802%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203789203802%_))))
               (_%g203787203861%_
                (lambda (_%g203789203810%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203789203810%_))
                      (let ((_%e203792203813%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203789203810%_))))
                        (let ((_%hd203793203817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203792203813%_)))
                              (_%tl203794203820%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203792203813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl203794203820%_))
                              (let ((_%e203795203823%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl203794203820%_))))
                                (let ((_%hd203796203827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203795203823%_)))
                                      (_%tl203797203830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203795203823%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203797203830%_))
                                      (let ((_%e203798203833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl203797203830%_))))
                                        (let ((_%hd203799203837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203798203833%_)))
                                              (_%tl203800203840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203798203833%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203800203840%_))
                                              ((lambda (_%L203843%_
                                                        _%L203845%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L203845%_))
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
                               (cons _%L203845%_ '()))
                         (cons _%L203843%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g203788203806%_
                                                      _%g203789203810%_)))
                                               _%hd203799203837%_
                                               _%hd203796203827%_)
                                              (_%g203788203806%_
                                               _%g203789203810%_))))
                                      (_%g203788203806%_ _%g203789203810%_))))
                              (_%g203788203806%_ _%g203789203810%_))))
                      (_%g203788203806%_ _%g203789203810%_)))))
          (_%g203787203861%_ _%$stx203784%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx203865%_)
        (let* ((_%g203869203898%_
                (lambda (_%g203870203894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203870203894%_))))
               (_%g203868203998%_
                (lambda (_%g203870203902%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203870203902%_))
                      (let ((_%e203873203905%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203870203902%_))))
                        (let ((_%hd203874203909%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203873203905%_)))
                              (_%tl203875203912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203873203905%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203875203912%_))
                              (let ((_g210263_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203875203912%_
                                        '0))))
                                (begin
                                  (let ((_g210264_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210263_)
                                               (##values-length _g210263_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210264_ 2)))
                                        (error "Context expects 2 values"
                                               _g210264_)))
                                  (let ((_%target203876203915%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210263_ 0)))
                                        (_%tl203878203918%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210263_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203878203918%_))
                                        (letrec ((_%loop203879203921%_
                                                  (lambda (_%hd203877203925%_
                                                           _%type203883203928%_
                                                           _%symbol203884203930%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203877203925%_))
                                                        (let ((_%e203880203933%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203877203925%_))))
                  (let ((_%lp-hd203881203937%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203880203933%_)))
                        (_%lp-tl203882203940%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203880203933%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203881203937%_))
                        (let ((_%e203887203943%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd203881203937%_))))
                          (let ((_%hd203888203947%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203887203943%_)))
                                (_%tl203889203950%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203887203943%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl203889203950%_))
                                (let ((_%e203890203953%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl203889203950%_))))
                                  (let ((_%hd203891203957%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e203890203953%_)))
                                        (_%tl203892203960%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e203890203953%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203892203960%_))
                                        (_%loop203879203921%_
                                         _%lp-tl203882203940%_
                                         (cons _%hd203891203957%_
                                               _%type203883203928%_)
                                         (cons _%hd203888203947%_
                                               _%symbol203884203930%_))
                                        (_%g203869203898%_
                                         _%g203870203902%_))))
                                (_%g203869203898%_ _%g203870203902%_))))
                        (_%g203869203898%_ _%g203870203902%_))))
                (let ((_%type203885203963%_ (reverse _%type203883203928%_))
                      (_%symbol203886203966%_
                       (reverse _%symbol203884203930%_)))
                  ((lambda (_%L203969%_ _%L203971%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L203969%_
                                _%L203971%_))
                             (let ((__tmp210265
                                    (lambda (_%g203986203990%_
                                             _%g203987203993%_
                                             _%g203988203995%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g203987203993%_
                                                        (cons _%g203986203990%_
                                                              '())))
                                            _%g203988203995%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210265
                                '()
                                _%L203969%_
                                _%L203971%_)))))
                   _%type203885203963%_
                   _%symbol203886203966%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203879203921%_
                                           _%target203876203915%_
                                           '()
                                           '()))
                                        (_%g203869203898%_
                                         _%g203870203902%_)))))
                              (_%g203869203898%_ _%g203870203902%_))))
                      (_%g203869203898%_ _%g203870203902%_)))))
          (_%g203868203998%_ _%$stx203865%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx204003%_)
        (let* ((_%__stx209574209575%_ _%$stx204003%_)
               (_%g204008204050%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209574209575%_)))))
          (let ((_%__kont209577209578%_
                 (lambda (_%L204178%_ _%L204180%_ _%L204181%_ _%L204182%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204182%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204181%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204180%_ '()))
                                           (cons _%L204178%_ '())))))))
                (_%__kont209579209580%_
                 (lambda (_%L204097%_ _%L204099%_ _%L204100%_ _%L204101%_)
                   (cons _%L204101%_
                         (cons _%L204100%_
                               (cons _%L204099%_
                                     (cons _%L204097%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match209613209614%_
                   (lambda (_%e204014204128%_
                            _%hd204015204132%_
                            _%tl204016204135%_
                            _%e204017204138%_
                            _%hd204018204142%_
                            _%tl204019204145%_
                            _%e204020204148%_
                            _%hd204021204152%_
                            _%tl204022204155%_
                            _%e204023204158%_
                            _%hd204024204162%_
                            _%tl204025204165%_
                            _%e204026204168%_
                            _%hd204027204172%_
                            _%tl204028204175%_)
                     (let ((_%L204178%_ _%hd204027204172%_)
                           (_%L204180%_ _%hd204024204162%_)
                           (_%L204181%_ _%hd204021204152%_)
                           (_%L204182%_ _%hd204018204142%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204182%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204181%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L204180%_)))
                           (_%__kont209577209578%_
                            _%L204178%_
                            _%L204180%_
                            _%L204181%_
                            _%L204182%_)
                           (let ()
                             (declare (not safe))
                             (_%g204008204050%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209574209575%_))
                  (let ((_%e204014204128%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209574209575%_))))
                    (let ((_%tl204016204135%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204014204128%_)))
                          (_%hd204015204132%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204014204128%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204016204135%_))
                          (let ((_%e204017204138%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl204016204135%_))))
                            (let ((_%tl204019204145%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204017204138%_)))
                                  (_%hd204018204142%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204017204138%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204019204145%_))
                                  (let ((_%e204020204148%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl204019204145%_))))
                                    (let ((_%tl204022204155%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204020204148%_)))
                                          (_%hd204021204152%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204020204148%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl204022204155%_))
                                          (let ((_%e204023204158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl204022204155%_))))
                                            (let ((_%tl204025204165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e204023204158%_)))
                                                  (_%hd204024204162%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e204023204158%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl204025204165%_))
                                                  (let ((_%e204026204168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl204025204165%_))))
                                                    (let ((_%tl204028204175%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e204026204168%_)))
                                                          (_%hd204027204172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e204026204168%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl204028204175%_))
                                                          (_%__match209613209614%_
                                                           _%e204014204128%_
                                                           _%hd204015204132%_
                                                           _%tl204016204135%_
                                                           _%e204017204138%_
                                                           _%hd204018204142%_
                                                           _%tl204019204145%_
                                                           _%e204020204148%_
                                                           _%hd204021204152%_
                                                           _%tl204022204155%_
                                                           _%e204023204158%_
                                                           _%hd204024204162%_
                                                           _%tl204025204165%_
                                                           _%e204026204168%_
                                                           _%hd204027204172%_
                                                           _%tl204028204175%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g204008204050%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204025204165%_))
                                                      (_%__kont209579209580%_
                                                       _%hd204024204162%_
                                                       _%hd204021204152%_
                                                       _%hd204018204142%_
                                                       _%hd204015204132%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204008204050%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g204008204050%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g204008204050%_)))))
                          (let () (declare (not safe)) (_%g204008204050%_)))))
                  (let () (declare (not safe)) (_%g204008204050%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx204207%_)
        (let* ((_%g204211204246%_
                (lambda (_%g204212204242%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204212204242%_))))
               (_%g204210204365%_
                (lambda (_%g204212204250%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204212204250%_))
                      (let ((_%e204216204253%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204212204250%_))))
                        (let ((_%hd204217204257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204216204253%_)))
                              (_%tl204218204260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204216204253%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl204218204260%_))
                              (let ((_g210266_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl204218204260%_
                                        '0))))
                                (begin
                                  (let ((_g210267_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210266_)
                                               (##values-length _g210266_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210267_ 2)))
                                        (error "Context expects 2 values"
                                               _g210267_)))
                                  (let ((_%target204219204263%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210266_ 0)))
                                        (_%tl204221204266%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210266_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl204221204266%_))
                                        (letrec ((_%loop204222204269%_
                                                  (lambda (_%hd204220204273%_
                                                           _%symbol204226204276%_
                                                           _%method204227204278%_
                                                           _%type-t204228204280%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd204220204273%_))
                                                        (let ((_%e204223204283%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd204220204273%_))))
                  (let ((_%lp-hd204224204287%_
                         (let ()
                           (declare (not safe))
                           (##car _%e204223204283%_)))
                        (_%lp-tl204225204290%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e204223204283%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd204224204287%_))
                        (let ((_%e204232204293%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd204224204287%_))))
                          (let ((_%hd204233204297%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204232204293%_)))
                                (_%tl204234204300%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204232204293%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl204234204300%_))
                                (let ((_%e204235204303%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl204234204300%_))))
                                  (let ((_%hd204236204307%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204235204303%_)))
                                        (_%tl204237204310%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204235204303%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204237204310%_))
                                        (let ((_%e204238204313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204237204310%_))))
                                          (let ((_%hd204239204317%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204238204313%_)))
                                                (_%tl204240204320%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204238204313%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204240204320%_))
                                                (_%loop204222204269%_
                                                 _%lp-tl204225204290%_
                                                 (cons _%hd204239204317%_
                                                       _%symbol204226204276%_)
                                                 (cons _%hd204236204307%_
                                                       _%method204227204278%_)
                                                 (cons _%hd204233204297%_
                                                       _%type-t204228204280%_))
                                                (_%g204211204246%_
                                                 _%g204212204250%_))))
                                        (_%g204211204246%_
                                         _%g204212204250%_))))
                                (_%g204211204246%_ _%g204212204250%_))))
                        (_%g204211204246%_ _%g204212204250%_))))
                (let ((_%symbol204229204323%_ (reverse _%symbol204226204276%_))
                      (_%method204230204326%_ (reverse _%method204227204278%_))
                      (_%type-t204231204328%_
                       (reverse _%type-t204228204280%_)))
                  ((lambda (_%L204331%_ _%L204333%_ _%L204334%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L204331%_
                                _%L204333%_
                                _%L204334%_))
                             (let ((__tmp210268
                                    (lambda (_%g204350204355%_
                                             _%g204351204358%_
                                             _%g204352204360%_
                                             _%g204353204362%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g204352204360%_
                                                        (cons _%g204351204358%_
                                                              (cons _%g204350204355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g204353204362%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp210268
                                '()
                                _%L204331%_
                                _%L204333%_
                                _%L204334%_)))))
                   _%symbol204229204323%_
                   _%method204230204326%_
                   _%type-t204231204328%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop204222204269%_
                                           _%target204219204263%_
                                           '()
                                           '()
                                           '()))
                                        (_%g204211204246%_
                                         _%g204212204250%_)))))
                              (_%g204211204246%_ _%g204212204250%_))))
                      (_%g204211204246%_ _%g204212204250%_)))))
          (_%g204210204365%_ _%$stx204207%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx204370%_)
        (let* ((_%g204374204407%_
                (lambda (_%g204375204403%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204375204403%_))))
               (_%g204373204521%_
                (lambda (_%g204375204411%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204375204411%_))
                      (let ((_%e204379204414%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204375204411%_))))
                        (let ((_%hd204380204418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204379204414%_)))
                              (_%tl204381204421%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204379204414%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204381204421%_))
                              (let ((_%e204382204424%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204381204421%_))))
                                (let ((_%hd204383204428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204382204424%_)))
                                      (_%tl204384204431%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204382204424%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl204384204431%_))
                                      (let ((_g210269_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl204384204431%_
                                                '0))))
                                        (begin
                                          (let ((_g210270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210269_)
                                                       (##values-length
                                                        _g210269_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210270_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210270_)))
                                          (let ((_%target204385204434%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210269_ 0)))
                                                (_%tl204387204437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210269_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204387204437%_))
                                                (letrec ((_%loop204388204440%_
                                                          (lambda (_%hd204386204444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol204392204447%_
                           _%method204393204449%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd204386204444%_))
                        (let ((_%e204389204452%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd204386204444%_))))
                          (let ((_%lp-hd204390204456%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204389204452%_)))
                                (_%lp-tl204391204459%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204389204452%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd204390204456%_))
                                (let ((_%e204396204462%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd204390204456%_))))
                                  (let ((_%hd204397204466%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204396204462%_)))
                                        (_%tl204398204469%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204396204462%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl204398204469%_))
                                        (let ((_%e204399204472%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl204398204469%_))))
                                          (let ((_%hd204400204476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204399204472%_)))
                                                (_%tl204401204479%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204399204472%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204401204479%_))
                                                (_%loop204388204440%_
                                                 _%lp-tl204391204459%_
                                                 (cons _%hd204400204476%_
                                                       _%symbol204392204447%_)
                                                 (cons _%hd204397204466%_
                                                       _%method204393204449%_))
                                                (_%g204374204407%_
                                                 _%g204375204411%_))))
                                        (_%g204374204407%_
                                         _%g204375204411%_))))
                                (_%g204374204407%_ _%g204375204411%_))))
                        (let ((_%symbol204394204482%_
                               (reverse _%symbol204392204447%_))
                              (_%method204395204485%_
                               (reverse _%method204393204449%_)))
                          ((lambda (_%L204488%_ _%L204490%_ _%L204491%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L204488%_
                                        _%L204490%_))
                                     (let ((__tmp210271
                                            (lambda (_%g204509204513%_
                                                     _%g204510204516%_
                                                     _%g204511204518%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L204491%_
                                                                (cons _%g204510204516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g204509204513%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g204511204518%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp210271
                                        '()
                                        _%L204488%_
                                        _%L204490%_)))))
                           _%symbol204394204482%_
                           _%method204395204485%_
                           _%hd204383204428%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop204388204440%_
                                                   _%target204385204434%_
                                                   '()
                                                   '()))
                                                (_%g204374204407%_
                                                 _%g204375204411%_)))))
                                      (_%g204374204407%_ _%g204375204411%_))))
                              (_%g204374204407%_ _%g204375204411%_))))
                      (_%g204374204407%_ _%g204375204411%_)))))
          (_%g204373204521%_ _%$stx204370%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx204526%_)
        (let* ((_%g204530204544%_
                (lambda (_%g204531204540%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204531204540%_))))
               (_%g204529204585%_
                (lambda (_%g204531204548%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204531204548%_))
                      (let ((_%e204533204551%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204531204548%_))))
                        (let ((_%hd204534204555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204533204551%_)))
                              (_%tl204535204558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204533204551%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204535204558%_))
                              (let ((_%e204536204561%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204535204558%_))))
                                (let ((_%hd204537204565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204536204561%_)))
                                      (_%tl204538204568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204536204561%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204538204568%_))
                                      ((lambda (_%L204571%_)
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
                                                           (cons _%L204571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204537204565%_)
                                      (_%g204530204544%_ _%g204531204548%_))))
                              (_%g204530204544%_ _%g204531204548%_))))
                      (_%g204530204544%_ _%g204531204548%_)))))
          (_%g204529204585%_ _%$stx204526%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx204589%_)
        (let* ((_%g204593204647%_
                (lambda (_%g204594204643%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204594204643%_))))
               (_%g204592204828%_
                (lambda (_%g204594204651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204594204651%_))
                      (let ((_%e204606204654%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204594204651%_))))
                        (let ((_%hd204607204658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204606204654%_)))
                              (_%tl204608204661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204606204654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204608204661%_))
                              (let ((_%e204609204664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204608204661%_))))
                                (let ((_%hd204610204668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204609204664%_)))
                                      (_%tl204611204671%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204609204664%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204611204671%_))
                                      (let ((_%e204612204674%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204611204671%_))))
                                        (let ((_%hd204613204678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204612204674%_)))
                                              (_%tl204614204681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204612204674%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204614204681%_))
                                              (let ((_%e204615204684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204614204681%_))))
                                                (let ((_%hd204616204688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204615204684%_)))
                                                      (_%tl204617204691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204615204684%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204617204691%_))
                                                      (let ((_%e204618204694%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204617204691%_))))
                (let ((_%hd204619204698%_
                       (let () (declare (not safe)) (##car _%e204618204694%_)))
                      (_%tl204620204701%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204618204694%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204620204701%_))
                      (let ((_%e204621204704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204620204701%_))))
                        (let ((_%hd204622204708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204621204704%_)))
                              (_%tl204623204711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204621204704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204623204711%_))
                              (let ((_%e204624204714%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204623204711%_))))
                                (let ((_%hd204625204718%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204624204714%_)))
                                      (_%tl204626204721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204624204714%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204626204721%_))
                                      (let ((_%e204627204724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204626204721%_))))
                                        (let ((_%hd204628204728%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204627204724%_)))
                                              (_%tl204629204731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204627204724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204629204731%_))
                                              (let ((_%e204630204734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204629204731%_))))
                                                (let ((_%hd204631204738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204630204734%_)))
                                                      (_%tl204632204741%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204630204734%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl204632204741%_))
                                                      (let ((_%e204633204744%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl204632204741%_))))
                (let ((_%hd204634204748%_
                       (let () (declare (not safe)) (##car _%e204633204744%_)))
                      (_%tl204635204751%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e204633204744%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl204635204751%_))
                      (let ((_%e204636204754%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl204635204751%_))))
                        (let ((_%hd204637204758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204636204754%_)))
                              (_%tl204638204761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204636204754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204638204761%_))
                              (let ((_%e204639204764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204638204761%_))))
                                (let ((_%hd204640204768%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204639204764%_)))
                                      (_%tl204641204771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204639204764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204641204771%_))
                                      ((lambda (_%L204774%_
                                                _%L204776%_
                                                _%L204777%_
                                                _%L204778%_
                                                _%L204779%_
                                                _%L204780%_
                                                _%L204781%_
                                                _%L204782%_
                                                _%L204783%_
                                                _%L204784%_
                                                _%L204785%_)
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
                                                           (cons _%L204785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L204784%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L204783%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L204782%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L204781%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L204780%_ '()))
                                           (cons _%L204779%_
                                                 (cons _%L204778%_
                                                       (cons _%L204777%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L204776%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L204774%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd204640204768%_
                                       _%hd204637204758%_
                                       _%hd204634204748%_
                                       _%hd204631204738%_
                                       _%hd204628204728%_
                                       _%hd204625204718%_
                                       _%hd204622204708%_
                                       _%hd204619204698%_
                                       _%hd204616204688%_
                                       _%hd204613204678%_
                                       _%hd204610204668%_)
                                      (_%g204593204647%_ _%g204594204651%_))))
                              (_%g204593204647%_ _%g204594204651%_))))
                      (_%g204593204647%_ _%g204594204651%_))))
              (_%g204593204647%_ _%g204594204651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204593204647%_
                                               _%g204594204651%_))))
                                      (_%g204593204647%_ _%g204594204651%_))))
                              (_%g204593204647%_ _%g204594204651%_))))
                      (_%g204593204647%_ _%g204594204651%_))))
              (_%g204593204647%_ _%g204594204651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204593204647%_
                                               _%g204594204651%_))))
                                      (_%g204593204647%_ _%g204594204651%_))))
                              (_%g204593204647%_ _%g204594204651%_))))
                      (_%g204593204647%_ _%g204594204651%_)))))
          (_%g204592204828%_ _%$stx204589%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx204832%_)
        (let* ((_%g204836204850%_
                (lambda (_%g204837204846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204837204846%_))))
               (_%g204835204891%_
                (lambda (_%g204837204854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204837204854%_))
                      (let ((_%e204839204857%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204837204854%_))))
                        (let ((_%hd204840204861%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204839204857%_)))
                              (_%tl204841204864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204839204857%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204841204864%_))
                              (let ((_%e204842204867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204841204864%_))))
                                (let ((_%hd204843204871%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204842204867%_)))
                                      (_%tl204844204874%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204842204867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204844204874%_))
                                      ((lambda (_%L204877%_)
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
                                                           (cons _%L204877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204843204871%_)
                                      (_%g204836204850%_ _%g204837204854%_))))
                              (_%g204836204850%_ _%g204837204854%_))))
                      (_%g204836204850%_ _%g204837204854%_)))))
          (_%g204835204891%_ _%$stx204832%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx204895%_)
        (let* ((_%g204899204913%_
                (lambda (_%g204900204909%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204900204909%_))))
               (_%g204898204954%_
                (lambda (_%g204900204917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204900204917%_))
                      (let ((_%e204902204920%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204900204917%_))))
                        (let ((_%hd204903204924%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204902204920%_)))
                              (_%tl204904204927%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204902204920%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204904204927%_))
                              (let ((_%e204905204930%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204904204927%_))))
                                (let ((_%hd204906204934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204905204930%_)))
                                      (_%tl204907204937%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204905204930%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl204907204937%_))
                                      ((lambda (_%L204940%_)
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
                                                           (cons _%L204940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd204906204934%_)
                                      (_%g204899204913%_ _%g204900204917%_))))
                              (_%g204899204913%_ _%g204900204917%_))))
                      (_%g204899204913%_ _%g204900204917%_)))))
          (_%g204898204954%_ _%$stx204895%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx204958%_)
        (let* ((_%g204962204984%_
                (lambda (_%g204963204980%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204963204980%_))))
               (_%g204961205053%_
                (lambda (_%g204963204988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204963204988%_))
                      (let ((_%e204967204991%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g204963204988%_))))
                        (let ((_%hd204968204995%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204967204991%_)))
                              (_%tl204969204998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204967204991%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204969204998%_))
                              (let ((_%e204970205001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl204969204998%_))))
                                (let ((_%hd204971205005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204970205001%_)))
                                      (_%tl204972205008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204970205001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204972205008%_))
                                      (let ((_%e204973205011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl204972205008%_))))
                                        (let ((_%hd204974205015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204973205011%_)))
                                              (_%tl204975205018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204973205011%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl204975205018%_))
                                              (let ((_%e204976205021%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl204975205018%_))))
                                                (let ((_%hd204977205025%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204976205021%_)))
                                                      (_%tl204978205028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204976205021%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204978205028%_))
                                                      ((lambda (_%L205031%_
                                                                _%L205033%_
                                                                _%L205034%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205034%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205033%_ '()))
                                   (cons _%L205031%_ '())))))
               _%hd204977205025%_
               _%hd204974205015%_
               _%hd204971205005%_)
              (_%g204962204984%_ _%g204963204988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g204962204984%_
                                               _%g204963204988%_))))
                                      (_%g204962204984%_ _%g204963204988%_))))
                              (_%g204962204984%_ _%g204963204988%_))))
                      (_%g204962204984%_ _%g204963204988%_)))))
          (_%g204961205053%_ _%$stx204958%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx205057%_)
        (let* ((_%g205061205083%_
                (lambda (_%g205062205079%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205062205079%_))))
               (_%g205060205152%_
                (lambda (_%g205062205087%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205062205087%_))
                      (let ((_%e205066205090%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205062205087%_))))
                        (let ((_%hd205067205094%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205066205090%_)))
                              (_%tl205068205097%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205066205090%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205068205097%_))
                              (let ((_%e205069205100%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205068205097%_))))
                                (let ((_%hd205070205104%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205069205100%_)))
                                      (_%tl205071205107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205069205100%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205071205107%_))
                                      (let ((_%e205072205110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205071205107%_))))
                                        (let ((_%hd205073205114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205072205110%_)))
                                              (_%tl205074205117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205072205110%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl205074205117%_))
                                              (let ((_%e205075205120%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl205074205117%_))))
                                                (let ((_%hd205076205124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e205075205120%_)))
                                                      (_%tl205077205127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e205075205120%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl205077205127%_))
                                                      ((lambda (_%L205130%_
                                                                _%L205132%_
                                                                _%L205133%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L205133%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L205132%_ '()))
                                   (cons _%L205130%_ '())))))
               _%hd205076205124%_
               _%hd205073205114%_
               _%hd205070205104%_)
              (_%g205061205083%_ _%g205062205087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g205061205083%_
                                               _%g205062205087%_))))
                                      (_%g205061205083%_ _%g205062205087%_))))
                              (_%g205061205083%_ _%g205062205087%_))))
                      (_%g205061205083%_ _%g205062205087%_)))))
          (_%g205060205152%_ _%$stx205057%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx205156%_)
        (let* ((_%g205160205174%_
                (lambda (_%g205161205170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205161205170%_))))
               (_%g205159205215%_
                (lambda (_%g205161205178%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205161205178%_))
                      (let ((_%e205163205181%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205161205178%_))))
                        (let ((_%hd205164205185%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205163205181%_)))
                              (_%tl205165205188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205163205181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205165205188%_))
                              (let ((_%e205166205191%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205165205188%_))))
                                (let ((_%hd205167205195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205166205191%_)))
                                      (_%tl205168205198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205166205191%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl205168205198%_))
                                      ((lambda (_%L205201%_)
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
                                                           (cons _%L205201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd205167205195%_)
                                      (_%g205160205174%_ _%g205161205178%_))))
                              (_%g205160205174%_ _%g205161205178%_))))
                      (_%g205160205174%_ _%g205161205178%_)))))
          (_%g205159205215%_ _%$stx205156%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx205219%_)
        (let* ((_%g205223205241%_
                (lambda (_%g205224205237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205224205237%_))))
               (_%g205222205296%_
                (lambda (_%g205224205245%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205224205245%_))
                      (let ((_%e205227205248%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205224205245%_))))
                        (let ((_%hd205228205252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205227205248%_)))
                              (_%tl205229205255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205227205248%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205229205255%_))
                              (let ((_%e205230205258%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205229205255%_))))
                                (let ((_%hd205231205262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205230205258%_)))
                                      (_%tl205232205265%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205230205258%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205232205265%_))
                                      (let ((_%e205233205268%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205232205265%_))))
                                        (let ((_%hd205234205272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205233205268%_)))
                                              (_%tl205235205275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205233205268%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205235205275%_))
                                              ((lambda (_%L205278%_
                                                        _%L205280%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205280%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205278%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205234205272%_
                                               _%hd205231205262%_)
                                              (_%g205223205241%_
                                               _%g205224205245%_))))
                                      (_%g205223205241%_ _%g205224205245%_))))
                              (_%g205223205241%_ _%g205224205245%_))))
                      (_%g205223205241%_ _%g205224205245%_)))))
          (_%g205222205296%_ _%$stx205219%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx205300%_)
        (let* ((_%__stx209642209643%_ _%$stx205300%_)
               (_%g205307205368%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209642209643%_)))))
          (let ((_%__kont209645209646%_
                 (lambda (_%L205606%_ _%L205608%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205608%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205606%_ '()))
                                     '())))))
                (_%__kont209647209648%_
                 (lambda (_%L205545%_ _%L205547%_ _%L205548%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L205548%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L205547%_ '()))
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
                                 (cons _%L205545%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont209649209650%_
                 (lambda (_%L205469%_ _%L205471%_)
                   (cons _%L205471%_ (cons _%L205469%_ (cons '#f '())))))
                (_%__kont209651209652%_
                 (lambda (_%L205419%_ _%L205421%_ _%L205422%_)
                   (cons _%L205422%_
                         (cons _%L205421%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L205419%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209642209643%_))
                (let ((_%e205311205576%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209642209643%_))))
                  (let ((_%tl205313205583%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205311205576%_)))
                        (_%hd205312205580%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205311205576%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl205313205583%_))
                        (let ((_%e205314205586%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl205313205583%_))))
                          (let ((_%tl205316205593%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205314205586%_)))
                                (_%hd205315205590%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205314205586%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205316205593%_))
                                (let ((_%e205317205596%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205316205593%_))))
                                  (let ((_%tl205319205603%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205317205596%_)))
                                        (_%hd205318205600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205317205596%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205319205603%_))
                                        (_%__kont209645209646%_
                                         _%hd205318205600%_
                                         _%hd205315205590%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl205319205603%_))
                                            (let ((_%e205332205521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl205319205603%_))))
                                              (let ((_%tl205334205528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e205332205521%_)))
                                                    (_%hd205333205525%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e205332205521%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd205333205525%_))
                                                    (let ((_%e205335205531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd205333205525%_))))
                                                      (if (equal? _%e205335205531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl205334205528%_))
                      (let ((_%e205336205535%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl205334205528%_))))
                        (let ((_%tl205338205542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205336205535%_)))
                              (_%hd205337205539%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205336205535%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl205338205542%_))
                              (_%__kont209647209648%_
                               _%hd205337205539%_
                               _%hd205318205600%_
                               _%hd205315205590%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd205318205600%_))
                                  (let ((_%e205359205405%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd205318205600%_))))
                                    (declare (not safe))
                                    (_%g205307205368%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g205307205368%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd205318205600%_))
                          (let ((_%e205359205405%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd205318205600%_))))
                            (if (equal? _%e205359205405%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205334205528%_))
                                    (_%__kont209651209652%_
                                     _%hd205333205525%_
                                     _%hd205315205590%_
                                     _%hd205312205580%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205307205368%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g205307205368%_))))
                          (let () (declare (not safe)) (_%g205307205368%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd205318205600%_))
                      (let ((_%e205359205405%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd205318205600%_))))
                        (if (equal? _%e205359205405%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl205334205528%_))
                                (_%__kont209651209652%_
                                 _%hd205333205525%_
                                 _%hd205315205590%_
                                 _%hd205312205580%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g205307205368%_)))
                            (let () (declare (not safe)) (_%g205307205368%_))))
                      (let () (declare (not safe)) (_%g205307205368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd205318205600%_))
                                                        (let ((_%e205359205405%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd205318205600%_))))
                  (if (equal? _%e205359205405%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl205334205528%_))
                          (_%__kont209651209652%_
                           _%hd205333205525%_
                           _%hd205315205590%_
                           _%hd205312205580%_)
                          (let () (declare (not safe)) (_%g205307205368%_)))
                      (let () (declare (not safe)) (_%g205307205368%_))))
                (let () (declare (not safe)) (_%g205307205368%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd205318205600%_))
                                                (let ((_%e205359205405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd205318205600%_))))
                                                  (declare (not safe))
                                                  (_%g205307205368%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g205307205368%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl205316205593%_))
                                    (_%__kont209649209650%_
                                     _%hd205315205590%_
                                     _%hd205312205580%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g205307205368%_))))))
                        (let () (declare (not safe)) (_%g205307205368%_)))))
                (let () (declare (not safe)) (_%g205307205368%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx205627%_)
        (let* ((_%g205631205660%_
                (lambda (_%g205632205656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205632205656%_))))
               (_%g205630205769%_
                (lambda (_%g205632205664%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205632205664%_))
                      (let ((_%e205634205667%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205632205664%_))))
                        (let ((_%hd205635205671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205634205667%_)))
                              (_%tl205636205674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205634205667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205636205674%_))
                              (let ((_g210272_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205636205674%_
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
                                  (let ((_%target205637205677%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210272_ 0)))
                                        (_%tl205639205680%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210272_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205639205680%_))
                                        (letrec ((_%loop205640205683%_
                                                  (lambda (_%hd205638205687%_
                                                           _%clause205644205690%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205638205687%_))
                                                        (let ((_%e205641205693%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205638205687%_))))
                  (let ((_%lp-hd205642205697%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205641205693%_)))
                        (_%lp-tl205643205700%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205641205693%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd205642205697%_))
                        (let ((_g210274_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd205642205697%_
                                  '0))))
                          (begin
                            (let ((_g210275_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g210274_)
                                         (##values-length _g210274_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g210275_ 2)))
                                  (error "Context expects 2 values"
                                         _g210275_)))
                            (let ((_%target205646205703%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210274_ 0)))
                                  (_%tl205648205706%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g210274_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl205648205706%_))
                                  (letrec ((_%loop205649205709%_
                                            (lambda (_%hd205647205713%_
                                                     _%clause205653205716%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd205647205713%_))
                                                  (let ((_%e205650205719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd205647205713%_))))
                                                    (let ((_%lp-hd205651205723%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e205650205719%_)))
                                                          (_%lp-tl205652205726%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e205650205719%_))))
                                                      (_%loop205649205709%_
                                                       _%lp-tl205652205726%_
                                                       (cons _%lp-hd205651205723%_
                                                             _%clause205653205716%_))))
                                                  (let ((_%clause205654205729%_
                                                         (reverse _%clause205653205716%_)))
                                                    (_%loop205640205683%_
                                                     _%lp-tl205643205700%_
                                                     (cons _%clause205654205729%_
                                                           _%clause205644205690%_)))))))
                                    (_%loop205649205709%_
                                     _%target205646205703%_
                                     '()))
                                  (_%g205631205660%_ _%g205632205664%_)))))
                        (_%g205631205660%_ _%g205632205664%_))))
                (let ((_%clause205645205733%_
                       (reverse _%clause205644205690%_)))
                  ((lambda (_%L205737%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp210276
                                              (lambda (_%g205752205757%_
                                                       _%g205753205760%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp210277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g205754205763%_ _%g205755205766%_)
                             (cons _%g205754205763%_ _%g205755205766%_))))
                      (declare (not safe))
                      (__foldr1 __tmp210277 '() _%g205752205757%_)))
              _%g205753205760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp210276
                                          '()
                                          _%L205737%_)))
                                 '())))
                   _%clause205645205733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205640205683%_
                                           _%target205637205677%_
                                           '()))
                                        (_%g205631205660%_
                                         _%g205632205664%_)))))
                              (_%g205631205660%_ _%g205632205664%_))))
                      (_%g205631205660%_ _%g205632205664%_)))))
          (_%g205630205769%_ _%$stx205627%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx205775%_)
        (let* ((_%g205779205797%_
                (lambda (_%g205780205793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205780205793%_))))
               (_%g205778205852%_
                (lambda (_%g205780205801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205780205801%_))
                      (let ((_%e205783205804%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205780205801%_))))
                        (let ((_%hd205784205808%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205783205804%_)))
                              (_%tl205785205811%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205783205804%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205785205811%_))
                              (let ((_%e205786205814%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205785205811%_))))
                                (let ((_%hd205787205818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205786205814%_)))
                                      (_%tl205788205821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205786205814%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205788205821%_))
                                      (let ((_%e205789205824%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205788205821%_))))
                                        (let ((_%hd205790205828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205789205824%_)))
                                              (_%tl205791205831%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205789205824%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205791205831%_))
                                              ((lambda (_%L205834%_
                                                        _%L205836%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205836%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205834%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205790205828%_
                                               _%hd205787205818%_)
                                              (_%g205779205797%_
                                               _%g205780205801%_))))
                                      (_%g205779205797%_ _%g205780205801%_))))
                              (_%g205779205797%_ _%g205780205801%_))))
                      (_%g205779205797%_ _%g205780205801%_)))))
          (_%g205778205852%_ _%$stx205775%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx205856%_)
        (let* ((_%g205860205878%_
                (lambda (_%g205861205874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205861205874%_))))
               (_%g205859205933%_
                (lambda (_%g205861205882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205861205882%_))
                      (let ((_%e205864205885%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205861205882%_))))
                        (let ((_%hd205865205889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205864205885%_)))
                              (_%tl205866205892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205864205885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205866205892%_))
                              (let ((_%e205867205895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl205866205892%_))))
                                (let ((_%hd205868205899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205867205895%_)))
                                      (_%tl205869205902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205867205895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205869205902%_))
                                      (let ((_%e205870205905%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl205869205902%_))))
                                        (let ((_%hd205871205909%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205870205905%_)))
                                              (_%tl205872205912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205870205905%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205872205912%_))
                                              ((lambda (_%L205915%_
                                                        _%L205917%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L205917%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L205915%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd205871205909%_
                                               _%hd205868205899%_)
                                              (_%g205860205878%_
                                               _%g205861205882%_))))
                                      (_%g205860205878%_ _%g205861205882%_))))
                              (_%g205860205878%_ _%g205861205882%_))))
                      (_%g205860205878%_ _%g205861205882%_)))))
          (_%g205859205933%_ _%$stx205856%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx205937%_)
        (let* ((_%g205941205970%_
                (lambda (_%g205942205966%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205942205966%_))))
               (_%g205940206070%_
                (lambda (_%g205942205974%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205942205974%_))
                      (let ((_%e205945205977%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g205942205974%_))))
                        (let ((_%hd205946205981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205945205977%_)))
                              (_%tl205947205984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205945205977%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl205947205984%_))
                              (let ((_g210278_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl205947205984%_
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
                                  (let ((_%target205948205987%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210278_ 0)))
                                        (_%tl205950205990%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210278_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205950205990%_))
                                        (letrec ((_%loop205951205993%_
                                                  (lambda (_%hd205949205997%_
                                                           _%rule205955206000%_
                                                           _%proc205956206002%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd205949205997%_))
                                                        (let ((_%e205952206005%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd205949205997%_))))
                  (let ((_%lp-hd205953206009%_
                         (let ()
                           (declare (not safe))
                           (##car _%e205952206005%_)))
                        (_%lp-tl205954206012%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e205952206005%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd205953206009%_))
                        (let ((_%e205959206015%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd205953206009%_))))
                          (let ((_%hd205960206019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e205959206015%_)))
                                (_%tl205961206022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e205959206015%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl205961206022%_))
                                (let ((_%e205962206025%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl205961206022%_))))
                                  (let ((_%hd205963206029%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e205962206025%_)))
                                        (_%tl205964206032%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e205962206025%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl205964206032%_))
                                        (_%loop205951205993%_
                                         _%lp-tl205954206012%_
                                         (cons _%hd205963206029%_
                                               _%rule205955206000%_)
                                         (cons _%hd205960206019%_
                                               _%proc205956206002%_))
                                        (_%g205941205970%_
                                         _%g205942205974%_))))
                                (_%g205941205970%_ _%g205942205974%_))))
                        (_%g205941205970%_ _%g205942205974%_))))
                (let ((_%rule205957206035%_ (reverse _%rule205955206000%_))
                      (_%proc205958206038%_ (reverse _%proc205956206002%_)))
                  ((lambda (_%L206041%_ _%L206043%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L206041%_
                                _%L206043%_))
                             (let ((__tmp210280
                                    (lambda (_%g206058206062%_
                                             _%g206059206065%_
                                             _%g206060206067%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g206059206065%_
                                                        (cons _%g206058206062%_
                                                              '())))
                                            _%g206060206067%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp210280
                                '()
                                _%L206041%_
                                _%L206043%_)))))
                   _%rule205957206035%_
                   _%proc205958206038%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop205951205993%_
                                           _%target205948205987%_
                                           '()
                                           '()))
                                        (_%g205941205970%_
                                         _%g205942205974%_)))))
                              (_%g205941205970%_ _%g205942205974%_))))
                      (_%g205941205970%_ _%g205942205974%_)))))
          (_%g205940206070%_ _%$stx205937%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx206075%_)
        (let* ((_%g206079206097%_
                (lambda (_%g206080206093%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206080206093%_))))
               (_%g206078206152%_
                (lambda (_%g206080206101%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206080206101%_))
                      (let ((_%e206083206104%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206080206101%_))))
                        (let ((_%hd206084206108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206083206104%_)))
                              (_%tl206085206111%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206083206104%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206085206111%_))
                              (let ((_%e206086206114%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206085206111%_))))
                                (let ((_%hd206087206118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206086206114%_)))
                                      (_%tl206088206121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206086206114%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl206088206121%_))
                                      (let ((_%e206089206124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl206088206121%_))))
                                        (let ((_%hd206090206128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206089206124%_)))
                                              (_%tl206091206131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206089206124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206091206131%_))
                                              ((lambda (_%L206134%_
                                                        _%L206136%_)
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
                                                   (cons _%L206136%_ '()))
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
                 (cons _%L206134%_ '())))
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
                                   (cons _%L206136%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd206090206128%_
                                               _%hd206087206118%_)
                                              (_%g206079206097%_
                                               _%g206080206101%_))))
                                      (_%g206079206097%_ _%g206080206101%_))))
                              (_%g206079206097%_ _%g206080206101%_))))
                      (_%g206079206097%_ _%g206080206101%_)))))
          (_%g206078206152%_ _%$stx206075%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx206156%_)
        (let* ((_%__stx209760209761%_ _%$stx206156%_)
               (_%g206161206186%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209760209761%_)))))
          (let ((_%__kont209763209764%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209765209766%_
                 (lambda (_%L206233%_ _%L206235%_ _%L206236%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L206236%_ (cons _%L206235%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L206233%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx209760209761%_))
                (let ((_%e206163206262%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx209760209761%_))))
                  (let ((_%tl206165206269%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206163206262%_)))
                        (_%hd206164206266%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206163206262%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl206165206269%_))
                        (_%__kont209763209764%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl206165206269%_))
                            (let ((_%e206172206203%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl206165206269%_))))
                              (let ((_%tl206174206210%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e206172206203%_)))
                                    (_%hd206173206207%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e206172206203%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd206173206207%_))
                                    (let ((_%e206175206213%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd206173206207%_))))
                                      (let ((_%tl206177206220%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206175206213%_)))
                                            (_%hd206176206217%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206175206213%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206177206220%_))
                                            (let ((_%e206178206223%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206177206220%_))))
                                              (let ((_%tl206180206230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206178206223%_)))
                                                    (_%hd206179206227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206178206223%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl206180206230%_))
                                                    (_%__kont209765209766%_
                                                     _%tl206174206210%_
                                                     _%hd206179206227%_
                                                     _%hd206176206217%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g206161206186%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g206161206186%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g206161206186%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g206161206186%_))))))
                (let () (declare (not safe)) (_%g206161206186%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx206280%_)
        (let* ((_%__stx209804209805%_ _%$stx206280%_)
               (_%g206285206316%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209804209805%_)))))
          (let ((_%__kont209807209808%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont209809209810%_
                 (lambda (_%L206383%_ _%L206385%_ _%L206386%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L206386%_
                                           (let ((__tmp210281
                                                  (lambda (_%g206406206409%_
                                                           _%g206407206412%_)
                                                    (cons _%g206406206409%_
                                                          _%g206407206412%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp210281
                                              '()
                                              _%L206385%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L206383%_)
                                     '()))))))
            (let ((_%__match209847209848%_
                   (lambda (_%e206293206323%_
                            _%hd206294206327%_
                            _%tl206295206330%_
                            _%e206296206333%_
                            _%hd206297206337%_
                            _%tl206298206340%_
                            _%e206299206343%_
                            _%hd206300206347%_
                            _%tl206301206350%_
                            _%__splice209811209812%_
                            _%target206302206353%_
                            _%tl206304206356%_)
                     (letrec ((_%loop206305206359%_
                               (lambda (_%hd206303206363%_ _%sig206309206366%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd206303206363%_))
                                     (let ((_%e206306206369%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd206303206363%_))))
                                       (let ((_%lp-tl206308206376%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e206306206369%_)))
                                             (_%lp-hd206307206373%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e206306206369%_))))
                                         (_%loop206305206359%_
                                          _%lp-tl206308206376%_
                                          (cons _%lp-hd206307206373%_
                                                _%sig206309206366%_))))
                                     (let ((_%sig206310206379%_
                                            (reverse _%sig206309206366%_)))
                                       (_%__kont209809209810%_
                                        _%tl206298206340%_
                                        _%sig206310206379%_
                                        _%hd206300206347%_))))))
                       (_%loop206305206359%_ _%target206302206353%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209804209805%_))
                  (let ((_%e206287206422%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209804209805%_))))
                    (let ((_%tl206289206429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206287206422%_)))
                          (_%hd206288206426%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206287206422%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206289206429%_))
                          (_%__kont209807209808%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206289206429%_))
                              (let ((_%e206296206333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206289206429%_))))
                                (let ((_%tl206298206340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206296206333%_)))
                                      (_%hd206297206337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206296206333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206297206337%_))
                                      (let ((_%e206299206343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206297206337%_))))
                                        (let ((_%tl206301206350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206299206343%_)))
                                              (_%hd206300206347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206299206343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206301206350%_))
                                              (let ((_%__splice209811209812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl206301206350%_
                                                        '0))))
                                                (let ((_%tl206304206356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209811209812%_
                                                          '1)))
                                                      (_%target206302206353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209811209812%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206304206356%_))
                                                      (_%__match209847209848%_
                                                       _%e206287206422%_
                                                       _%hd206288206426%_
                                                       _%tl206289206429%_
                                                       _%e206296206333%_
                                                       _%hd206297206337%_
                                                       _%tl206298206340%_
                                                       _%e206299206343%_
                                                       _%hd206300206347%_
                                                       _%tl206301206350%_
                                                       _%__splice209811209812%_
                                                       _%target206302206353%_
                                                       _%tl206304206356%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206285206316%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206285206316%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206285206316%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206285206316%_))))))
                  (let () (declare (not safe)) (_%g206285206316%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx206441%_)
        (let* ((_%__stx209850209851%_ _%$stx206441%_)
               (_%g206446206493%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx209850209851%_)))))
          (let ((_%__kont209853209854%_
                 (lambda (_%L206655%_ _%L206657%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L206657%_
                               (let ((__tmp210282
                                      (lambda (_%g206677206680%_
                                               _%g206678206683%_)
                                        (cons _%g206677206680%_
                                              _%g206678206683%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210282 '() _%L206655%_))))))
                (_%__kont209857209858%_
                 (lambda (_%L206550%_ _%L206552%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L206552%_
                               (let ((__tmp210283
                                      (lambda (_%g206569206572%_
                                               _%g206570206575%_)
                                        (cons _%g206569206572%_
                                              _%g206570206575%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp210283 '() _%L206550%_)))))))
            (let* ((_%__match209917209918%_
                    (lambda (_%e206473206500%_
                             _%hd206474206504%_
                             _%tl206475206507%_
                             _%e206476206510%_
                             _%hd206477206514%_
                             _%tl206478206517%_
                             _%__splice209859209860%_
                             _%target206479206520%_
                             _%tl206481206523%_)
                      (letrec ((_%loop206482206526%_
                                (lambda (_%hd206480206530%_
                                         _%sig206486206533%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206480206530%_))
                                      (let ((_%e206483206536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206480206530%_))))
                                        (let ((_%lp-tl206485206543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206483206536%_)))
                                              (_%lp-hd206484206540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206483206536%_))))
                                          (_%loop206482206526%_
                                           _%lp-tl206485206543%_
                                           (cons _%lp-hd206484206540%_
                                                 _%sig206486206533%_))))
                                      (let ((_%sig206487206546%_
                                             (reverse _%sig206486206533%_)))
                                        (_%__kont209857209858%_
                                         _%sig206487206546%_
                                         _%hd206477206514%_))))))
                        (_%loop206482206526%_ _%target206479206520%_ '()))))
                   (_%__match209909209910%_
                    (lambda (_%e206473206500%_
                             _%hd206474206504%_
                             _%tl206475206507%_
                             _%e206476206510%_
                             _%hd206477206514%_
                             _%tl206478206517%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl206478206517%_))
                          (let ((_%__splice209859209860%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl206478206517%_
                                    '0))))
                            (let ((_%tl206481206523%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209859209860%_
                                      '1)))
                                  (_%target206479206520%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice209859209860%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl206481206523%_))
                                  (_%__match209917209918%_
                                   _%e206473206500%_
                                   _%hd206474206504%_
                                   _%tl206475206507%_
                                   _%e206476206510%_
                                   _%hd206477206514%_
                                   _%tl206478206517%_
                                   _%__splice209859209860%_
                                   _%target206479206520%_
                                   _%tl206481206523%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g206446206493%_)))))
                          (let () (declare (not safe)) (_%g206446206493%_)))))
                   (_%__match209897209898%_
                    (lambda (_%e206450206585%_
                             _%hd206451206589%_
                             _%tl206452206592%_
                             _%e206453206595%_
                             _%hd206454206599%_
                             _%tl206455206602%_
                             _%e206456206605%_
                             _%hd206457206609%_
                             _%tl206458206612%_
                             _%e206459206615%_
                             _%hd206460206619%_
                             _%tl206461206622%_
                             _%__splice209855209856%_
                             _%target206462206625%_
                             _%tl206464206628%_)
                      (letrec ((_%loop206465206631%_
                                (lambda (_%hd206463206635%_
                                         _%sig206469206638%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd206463206635%_))
                                      (let ((_%e206466206641%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd206463206635%_))))
                                        (let ((_%lp-tl206468206648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e206466206641%_)))
                                              (_%lp-hd206467206645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e206466206641%_))))
                                          (_%loop206465206631%_
                                           _%lp-tl206468206648%_
                                           (cons _%lp-hd206467206645%_
                                                 _%sig206469206638%_))))
                                      (let ((_%sig206470206651%_
                                             (reverse _%sig206469206638%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl206458206612%_))
                                            (_%__kont209853209854%_
                                             _%sig206470206651%_
                                             _%hd206454206599%_)
                                            (_%__match209909209910%_
                                             _%e206450206585%_
                                             _%hd206451206589%_
                                             _%tl206452206592%_
                                             _%e206453206595%_
                                             _%hd206454206599%_
                                             _%tl206455206602%_)))))))
                        (_%loop206465206631%_ _%target206462206625%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209850209851%_))
                  (let ((_%e206450206585%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209850209851%_))))
                    (let ((_%tl206452206592%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206450206585%_)))
                          (_%hd206451206589%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206450206585%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl206452206592%_))
                          (let ((_%e206453206595%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl206452206592%_))))
                            (let ((_%tl206455206602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e206453206595%_)))
                                  (_%hd206454206599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e206453206595%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206455206602%_))
                                  (let ((_%e206456206605%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206455206602%_))))
                                    (let ((_%tl206458206612%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206456206605%_)))
                                          (_%hd206457206609%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206456206605%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd206457206609%_))
                                          (let ((_%e206459206615%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd206457206609%_))))
                                            (let ((_%tl206461206622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e206459206615%_)))
                                                  (_%hd206460206619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e206459206615%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd206460206619%_))
                                                  (if (let ((__tmp210284
                                                             |gxc[1]#_g210285_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp210284
                                                         _%hd206460206619%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl206461206622%_))
                                                          (let ((_%__splice209855209856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl206461206622%_ '0))))
                    (let ((_%tl206464206628%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209855209856%_ '1)))
                          (_%target206462206625%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209855209856%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206464206628%_))
                          (_%__match209897209898%_
                           _%e206450206585%_
                           _%hd206451206589%_
                           _%tl206452206592%_
                           _%e206453206595%_
                           _%hd206454206599%_
                           _%tl206455206602%_
                           _%e206456206605%_
                           _%hd206457206609%_
                           _%tl206458206612%_
                           _%e206459206615%_
                           _%hd206460206619%_
                           _%tl206461206622%_
                           _%__splice209855209856%_
                           _%target206462206625%_
                           _%tl206464206628%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl206455206602%_))
                              (let ((_%__splice209859209860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl206455206602%_
                                        '0))))
                                (let ((_%tl206481206523%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209859209860%_
                                          '1)))
                                      (_%target206479206520%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice209859209860%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl206481206523%_))
                                      (_%__match209917209918%_
                                       _%e206450206585%_
                                       _%hd206451206589%_
                                       _%tl206452206592%_
                                       _%e206453206595%_
                                       _%hd206454206599%_
                                       _%tl206455206602%_
                                       _%__splice209859209860%_
                                       _%target206479206520%_
                                       _%tl206481206523%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g206446206493%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g206446206493%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl206455206602%_))
                      (let ((_%__splice209859209860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl206455206602%_
                                '0))))
                        (let ((_%tl206481206523%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209859209860%_ '1)))
                              (_%target206479206520%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice209859209860%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl206481206523%_))
                              (_%__match209917209918%_
                               _%e206450206585%_
                               _%hd206451206589%_
                               _%tl206452206592%_
                               _%e206453206595%_
                               _%hd206454206599%_
                               _%tl206455206602%_
                               _%__splice209859209860%_
                               _%target206479206520%_
                               _%tl206481206523%_)
                              (let ()
                                (declare (not safe))
                                (_%g206446206493%_)))))
                      (let () (declare (not safe)) (_%g206446206493%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl206455206602%_))
                  (let ((_%__splice209859209860%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl206455206602%_ '0))))
                    (let ((_%tl206481206523%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209859209860%_ '1)))
                          (_%target206479206520%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice209859209860%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl206481206523%_))
                          (_%__match209917209918%_
                           _%e206450206585%_
                           _%hd206451206589%_
                           _%tl206452206592%_
                           _%e206453206595%_
                           _%hd206454206599%_
                           _%tl206455206602%_
                           _%__splice209859209860%_
                           _%target206479206520%_
                           _%tl206481206523%_)
                          (let () (declare (not safe)) (_%g206446206493%_)))))
                  (let () (declare (not safe)) (_%g206446206493%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl206455206602%_))
                                                      (let ((_%__splice209859209860%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl206455206602%_ '0))))
                (let ((_%tl206481206523%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209859209860%_ '1)))
                      (_%target206479206520%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice209859209860%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl206481206523%_))
                      (_%__match209917209918%_
                       _%e206450206585%_
                       _%hd206451206589%_
                       _%tl206452206592%_
                       _%e206453206595%_
                       _%hd206454206599%_
                       _%tl206455206602%_
                       _%__splice209859209860%_
                       _%target206479206520%_
                       _%tl206481206523%_)
                      (let () (declare (not safe)) (_%g206446206493%_)))))
              (let () (declare (not safe)) (_%g206446206493%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl206455206602%_))
                                              (let ((_%__splice209859209860%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl206455206602%_
                                                        '0))))
                                                (let ((_%tl206481206523%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209859209860%_
                                                          '1)))
                                                      (_%target206479206520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice209859209860%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206481206523%_))
                                                      (_%__match209917209918%_
                                                       _%e206450206585%_
                                                       _%hd206451206589%_
                                                       _%tl206452206592%_
                                                       _%e206453206595%_
                                                       _%hd206454206599%_
                                                       _%tl206455206602%_
                                                       _%__splice209859209860%_
                                                       _%target206479206520%_
                                                       _%tl206481206523%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g206446206493%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g206446206493%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl206455206602%_))
                                      (let ((_%__splice209859209860%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl206455206602%_
                                                '0))))
                                        (let ((_%tl206481206523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209859209860%_
                                                  '1)))
                                              (_%target206479206520%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice209859209860%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl206481206523%_))
                                              (_%__match209917209918%_
                                               _%e206450206585%_
                                               _%hd206451206589%_
                                               _%tl206452206592%_
                                               _%e206453206595%_
                                               _%hd206454206599%_
                                               _%tl206455206602%_
                                               _%__splice209859209860%_
                                               _%target206479206520%_
                                               _%tl206481206523%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g206446206493%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g206446206493%_))))))
                          (let () (declare (not safe)) (_%g206446206493%_)))))
                  (let () (declare (not safe)) (_%g206446206493%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx207840%_ _%id207842%_)
        (let ((_%proc207846%_
               (let ((__tmp210286
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207842%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210286))))
          (if (procedure? _%proc207846%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx207840%_
                 _%id207842%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx207831%_ _%id207833%_)
        (let ((_%klass207837%_
               (let ((__tmp210287
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id207833%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp210287))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass207837%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx207831%_
                 _%id207833%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx207081%_ _%proc207083%_ _%sig207084%_)
        (letrec ((_%signature-arity207086%_
                  (lambda (_%args207763%_)
                    (let _%loop207766%_ ((_%rest207769%_ _%args207763%_)
                                         (_%count207771%_ '0))
                      (let* ((_%rest207772207783%_ _%rest207769%_)
                             (_%E207776207789%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest207772207783%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K207779207820%_
                               (lambda (_%rest207817%_)
                                 (_%loop207766%_
                                  _%rest207817%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count207771%_ '1)))))
                              (_%K207778207809%_ (lambda () _%count207771%_))
                              (_%K207777207797%_
                               (lambda () (cons _%count207771%_ '()))))
                          (let ((_%try-match207774207813%_
                                 (lambda ()
                                   (if (null? _%rest207772207783%_)
                                       (_%K207778207809%_)
                                       (_%K207777207797%_)))))
                            (if (pair? _%rest207772207783%_)
                                (let* ((_%tl207781207824%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest207772207783%_)))
                                       (_%rest207828%_ _%tl207781207824%_))
                                  (_%K207779207820%_ _%rest207828%_))
                                (_%try-match207774207813%_))))))))
                 (_%make-signature207088%_
                  (lambda (_%args207645%_
                           _%return207647%_
                           _%effect207648%_
                           _%unchecked207649%_)
                    (let ((__tmp210288
                           (lambda (_%g207650207652%_)
                             (|gxc[1]#verify-class!|
                              _%ctx207081%_
                              _%g207650207652%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp210288 _%args207645%_))
                    (|gxc[1]#verify-class!| _%ctx207081%_ _%return207647%_)
                    (if _%unchecked207649%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx207081%_
                         _%unchecked207649%_)
                        '#!void)
                    (let ((_%arity207656%_
                           (_%signature-arity207086%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args207645%_)))))
                      (if _%effect207648%_
                          (let ((_%effect207659%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect207648%_))))
                            (if (and (list? _%effect207659%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect207659%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx207081%_
                                   _%proc207083%_
                                   _%effect207659%_))))
                          '#!void)
                      (cons _%arity207656%_
                            (cons (let* ((_%g207662207685%_
                                          (lambda (_%g207663207681%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g207663207681%_))))
                                         (_%g207661207759%_
                                          (lambda (_%g207663207689%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g207663207689%_))
                                                (let ((_%e207668207692%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g207663207689%_))))
                                                  (let ((_%hd207669207696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207668207692%_)))
                                                        (_%tl207670207699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207668207692%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207670207699%_))
                                                        (let ((_%e207671207702%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207670207699%_))))
                  (let ((_%hd207672207706%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207671207702%_)))
                        (_%tl207673207709%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207671207702%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207673207709%_))
                        (let ((_%e207674207712%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207673207709%_))))
                          (let ((_%hd207675207716%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207674207712%_)))
                                (_%tl207676207719%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207674207712%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl207676207719%_))
                                (let ((_%e207677207722%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl207676207719%_))))
                                  (let ((_%hd207678207726%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207677207722%_)))
                                        (_%tl207679207729%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207677207722%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207679207729%_))
                                        ((lambda (_%L207732%_
                                                  _%L207734%_
                                                  _%L207735%_
                                                  _%L207736%_)
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
                           (cons _%L207736%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L207735%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L207734%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L207732%_ '()))
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
                                         _%hd207678207726%_
                                         _%hd207675207716%_
                                         _%hd207672207706%_
                                         _%hd207669207696%_)
                                        (_%g207662207685%_
                                         _%g207663207689%_))))
                                (_%g207662207685%_ _%g207663207689%_))))
                        (_%g207662207685%_ _%g207663207689%_))))
                (_%g207662207685%_ _%g207663207689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g207662207685%_
                                                 _%g207663207689%_)))))
                                    (_%g207661207759%_
                                     (list _%args207645%_
                                           _%return207647%_
                                           _%effect207648%_
                                           _%unchecked207649%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx207081%_ _%proc207083%_)
          (let* ((_%__stx209928209929%_ _%sig207084%_)
                 (_%g207095207198%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx209928209929%_)))))
            (let ((_%__kont209931209932%_
                   (lambda (_%L207626%_ _%L207628%_)
                     (_%make-signature207088%_
                      _%L207628%_
                      _%L207626%_
                      '#f
                      '#f)))
                  (_%__kont209933209934%_
                   (lambda (_%L207577%_ _%L207579%_ _%L207580%_)
                     (_%make-signature207088%_
                      _%L207580%_
                      _%L207579%_
                      _%L207577%_
                      '#f)))
                  (_%__kont209935209936%_
                   (lambda (_%L207501%_ _%L207503%_ _%L207504%_)
                     (_%make-signature207088%_
                      _%L207504%_
                      _%L207503%_
                      _%L207501%_
                      (let ((__tmp210289
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207083%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210289)))))
                  (_%__kont209937209938%_
                   (lambda (_%L207407%_ _%L207409%_ _%L207410%_ _%L207411%_)
                     (_%make-signature207088%_
                      _%L207411%_
                      _%L207410%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207407%_)))))
                  (_%__kont209939209940%_
                   (lambda (_%L207314%_ _%L207316%_)
                     (_%make-signature207088%_
                      _%L207316%_
                      _%L207314%_
                      '#f
                      (let ((__tmp210290
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc207083%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp210290)))))
                  (_%__kont209941209942%_
                   (lambda (_%L207249%_ _%L207251%_ _%L207252%_)
                     (_%make-signature207088%_
                      _%L207252%_
                      _%L207251%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L207249%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx209928209929%_))
                  (let ((_%e207099207606%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx209928209929%_))))
                    (let ((_%tl207101207613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207099207606%_)))
                          (_%hd207100207610%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207099207606%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207101207613%_))
                          (let ((_%e207102207616%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl207101207613%_))))
                            (let ((_%tl207104207623%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207102207616%_)))
                                  (_%hd207103207620%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207102207616%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl207104207623%_))
                                  (_%__kont209931209932%_
                                   _%hd207103207620%_
                                   _%hd207100207610%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207104207623%_))
                                      (let ((_%e207114207553%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207104207623%_))))
                                        (let ((_%tl207116207560%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207114207553%_)))
                                              (_%hd207115207557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207114207553%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd207115207557%_))
                                              (let ((_%e207117207563%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd207115207557%_))))
                                                (if (equal? _%e207117207563%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl207116207560%_))
                                                        (let ((_%e207118207567%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl207116207560%_))))
                  (let ((_%tl207120207574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207118207567%_)))
                        (_%hd207119207571%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207118207567%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl207120207574%_))
                        (_%__kont209933209934%_
                         _%hd207119207571%_
                         _%hd207103207620%_
                         _%hd207100207610%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl207120207574%_))
                            (let ((_%e207137207487%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl207120207574%_))))
                              (let ((_%tl207139207494%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207137207487%_)))
                                    (_%hd207138207491%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207137207487%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd207138207491%_))
                                    (let ((_%e207140207497%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd207138207491%_))))
                                      (if (equal? _%e207140207497%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207139207494%_))
                                              (_%__kont209935209936%_
                                               _%hd207119207571%_
                                               _%hd207103207620%_
                                               _%hd207100207610%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207139207494%_))
                                                  (let ((_%e207162207397%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl207139207494%_))))
                                                    (let ((_%tl207164207404%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207162207397%_)))
                                                          (_%hd207163207401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207162207397%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207164207404%_))
                                                          (_%__kont209937209938%_
                                                           _%hd207163207401%_
                                                           _%hd207119207571%_
                                                           _%hd207103207620%_
                                                           _%hd207100207610%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g207095207198%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g207095207198%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g207095207198%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207095207198%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g207095207198%_))))))
                (let () (declare (not safe)) (_%g207095207198%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e207117207563%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl207116207560%_))
                                                            (_%__kont209939209940%_
                                                             _%hd207103207620%_
                                                             _%hd207100207610%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl207116207560%_))
                        (let ((_%e207190207239%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl207116207560%_))))
                          (let ((_%tl207192207246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207190207239%_)))
                                (_%hd207191207243%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207190207239%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207192207246%_))
                                (_%__kont209941209942%_
                                 _%hd207191207243%_
                                 _%hd207103207620%_
                                 _%hd207100207610%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207095207198%_)))))
                        (let () (declare (not safe)) (_%g207095207198%_))))
                (let () (declare (not safe)) (_%g207095207198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g207095207198%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g207095207198%_))))))
                          (let () (declare (not safe)) (_%g207095207198%_)))))
                  (let () (declare (not safe)) (_%g207095207198%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig206692%_)
        (let* ((_%g206695206775%_
                (lambda (_%g206696206771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g206696206771%_))))
               (_%g206694207077%_
                (lambda (_%g206696206779%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g206696206779%_))
                      (let ((_%e206702206782%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g206696206779%_))))
                        (let ((_%hd206703206786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206702206782%_)))
                              (_%tl206704206789%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206702206782%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl206704206789%_))
                              (let ((_%e206705206792%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl206704206789%_))))
                                (let ((_%hd206706206796%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206705206792%_)))
                                      (_%tl206707206799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206705206792%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd206706206796%_))
                                      (let ((_%e206708206802%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd206706206796%_))))
                                        (if (equal? _%e206708206802%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206707206799%_))
                                                (let ((_%e206709206806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206707206799%_))))
                                                  (let ((_%hd206710206810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206709206806%_)))
                                                        (_%tl206711206813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206709206806%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd206710206810%_))
                                                        (let ((_%e206712206816%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd206710206810%_))))
                  (let ((_%hd206713206820%_
                         (let ()
                           (declare (not safe))
                           (##car _%e206712206816%_)))
                        (_%tl206714206823%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e206712206816%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd206713206820%_))
                        (if (let ((__tmp210291 |gxc[1]#_g210292_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp210291
                               _%hd206713206820%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206714206823%_))
                                (let ((_%e206715206826%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206714206823%_))))
                                  (let ((_%hd206716206830%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206715206826%_)))
                                        (_%tl206717206833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206715206826%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl206717206833%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl206711206813%_))
                                            (let ((_%e206718206836%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl206711206813%_))))
                                              (let ((_%hd206719206840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206718206836%_)))
                                                    (_%tl206720206843%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206718206836%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd206719206840%_))
                                                    (let ((_%e206721206846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd206719206840%_))))
                                                      (if (equal? _%e206721206846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl206720206843%_))
                      (let ((_%e206722206850%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl206720206843%_))))
                        (let ((_%hd206723206854%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e206722206850%_)))
                              (_%tl206724206857%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e206722206850%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd206723206854%_))
                              (let ((_%e206725206860%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd206723206854%_))))
                                (let ((_%hd206726206864%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e206725206860%_)))
                                      (_%tl206727206867%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e206725206860%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd206726206864%_))
                                      (if (let ((__tmp210293
                                                 |gxc[1]#_g210294_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp210293
                                             _%hd206726206864%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206727206867%_))
                                              (let ((_%e206728206870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206727206867%_))))
                                                (let ((_%hd206729206874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206728206870%_)))
                                                      (_%tl206730206877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206728206870%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl206730206877%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl206724206857%_))
                                                          (let ((_%e206731206880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl206724206857%_))))
                    (let ((_%hd206732206884%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206731206880%_)))
                          (_%tl206733206887%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206731206880%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd206732206884%_))
                          (let ((_%e206734206890%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd206732206884%_))))
                            (if (equal? _%e206734206890%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl206733206887%_))
                                    (let ((_%e206735206894%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl206733206887%_))))
                                      (let ((_%hd206736206898%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e206735206894%_)))
                                            (_%tl206737206901%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e206735206894%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd206736206898%_))
                                            (let ((_%e206738206904%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd206736206898%_))))
                                              (let ((_%hd206739206908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e206738206904%_)))
                                                    (_%tl206740206911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e206738206904%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd206739206908%_))
                                                    (if (let ((__tmp210295
                                                               |gxc[1]#_g210296_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp210295
                                                           _%hd206739206908%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl206740206911%_))
                                                            (let ((_%e206741206914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl206740206911%_))))
                      (let ((_%hd206742206918%_
                             (let ()
                               (declare (not safe))
                               (##car _%e206741206914%_)))
                            (_%tl206743206921%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e206741206914%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl206743206921%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl206737206901%_))
                                (let ((_%e206744206924%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl206737206901%_))))
                                  (let ((_%hd206745206928%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206744206924%_)))
                                        (_%tl206746206931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206744206924%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd206745206928%_))
                                        (let ((_%e206747206934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd206745206928%_))))
                                          (if (equal? _%e206747206934%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl206746206931%_))
                                                  (let ((_%e206748206938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl206746206931%_))))
                                                    (let ((_%hd206749206942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e206748206938%_)))
                                                          (_%tl206750206945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e206748206938%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd206749206942%_))
                                                          (let ((_%e206751206948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd206749206942%_))))
                    (let ((_%hd206752206952%_
                           (let ()
                             (declare (not safe))
                             (##car _%e206751206948%_)))
                          (_%tl206753206955%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e206751206948%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd206752206952%_))
                          (if (let ((__tmp210297 |gxc[1]#_g210298_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp210297
                                 _%hd206752206952%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl206753206955%_))
                                  (let ((_%e206754206958%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl206753206955%_))))
                                    (let ((_%hd206755206962%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e206754206958%_)))
                                          (_%tl206756206965%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e206754206958%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl206756206965%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl206750206945%_))
                                              (let ((_%e206757206968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl206750206945%_))))
                                                (let ((_%hd206758206972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e206757206968%_)))
                                                      (_%tl206759206975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e206757206968%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd206758206972%_))
                                                      (let ((_%e206760206978%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd206758206972%_))))
                (if (equal? _%e206760206978%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl206759206975%_))
                        (let ((_%e206761206982%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl206759206975%_))))
                          (let ((_%hd206762206986%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e206761206982%_)))
                                (_%tl206763206989%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e206761206982%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd206762206986%_))
                                (let ((_%e206764206992%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd206762206986%_))))
                                  (let ((_%hd206765206996%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e206764206992%_)))
                                        (_%tl206766206999%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e206764206992%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd206765206996%_))
                                        (if (let ((__tmp210299
                                                   |gxc[1]#_g210300_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp210299
                                               _%hd206765206996%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl206766206999%_))
                                                (let ((_%e206767207002%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl206766206999%_))))
                                                  (let ((_%hd206768207006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e206767207002%_)))
                                                        (_%tl206769207009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e206767207002%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl206769207009%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl206763206989%_))
                                                            ((lambda (_%L207012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L207014%_
                              _%L207015%_
                              _%L207016%_
                              _%L207017%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L207014%_))
                           (cons _%L207014%_
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
                       (cons _%L207016%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L207012%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd206768207006%_
                     _%hd206755206962%_
                     _%hd206742206918%_
                     _%hd206729206874%_
                     _%hd206716206830%_)
                    (_%g206695206775%_ _%g206696206779%_))
                (_%g206695206775%_ _%g206696206779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206695206775%_
                                                 _%g206696206779%_))
                                            (_%g206695206775%_
                                             _%g206696206779%_))
                                        (_%g206695206775%_
                                         _%g206696206779%_))))
                                (_%g206695206775%_ _%g206696206779%_))))
                        (_%g206695206775%_ _%g206696206779%_))
                    (_%g206695206775%_ _%g206696206779%_)))
              (_%g206695206775%_ _%g206696206779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206695206775%_
                                               _%g206696206779%_))
                                          (_%g206695206775%_
                                           _%g206696206779%_))))
                                  (_%g206695206775%_ _%g206696206779%_))
                              (_%g206695206775%_ _%g206696206779%_))
                          (_%g206695206775%_ _%g206696206779%_))))
                  (_%g206695206775%_ _%g206696206779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g206695206775%_
                                                   _%g206696206779%_))
                                              (_%g206695206775%_
                                               _%g206696206779%_)))
                                        (_%g206695206775%_
                                         _%g206696206779%_))))
                                (_%g206695206775%_ _%g206696206779%_))
                            (_%g206695206775%_ _%g206696206779%_))))
                    (_%g206695206775%_ _%g206696206779%_))
                (_%g206695206775%_ _%g206696206779%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206695206775%_
                                                     _%g206696206779%_))))
                                            (_%g206695206775%_
                                             _%g206696206779%_))))
                                    (_%g206695206775%_ _%g206696206779%_))
                                (_%g206695206775%_ _%g206696206779%_)))
                          (_%g206695206775%_ _%g206696206779%_))))
                  (_%g206695206775%_ _%g206696206779%_))
              (_%g206695206775%_ _%g206696206779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g206695206775%_
                                               _%g206696206779%_))
                                          (_%g206695206775%_
                                           _%g206696206779%_))
                                      (_%g206695206775%_ _%g206696206779%_))))
                              (_%g206695206775%_ _%g206696206779%_))))
                      (_%g206695206775%_ _%g206696206779%_))
                  (_%g206695206775%_ _%g206696206779%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g206695206775%_
                                                     _%g206696206779%_))))
                                            (_%g206695206775%_
                                             _%g206696206779%_))
                                        (_%g206695206775%_
                                         _%g206696206779%_))))
                                (_%g206695206775%_ _%g206696206779%_))
                            (_%g206695206775%_ _%g206696206779%_))
                        (_%g206695206775%_ _%g206696206779%_))))
                (_%g206695206775%_ _%g206696206779%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g206695206775%_
                                                 _%g206696206779%_))
                                            (_%g206695206775%_
                                             _%g206696206779%_)))
                                      (_%g206695206775%_ _%g206696206779%_))))
                              (_%g206695206775%_ _%g206696206779%_))))
                      (_%g206695206775%_ _%g206696206779%_)))))
          (_%g206694207077%_ _%sig206692%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx207849%_)
        (let* ((_%g207852207870%_
                (lambda (_%g207853207866%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207853207866%_))))
               (_%g207851207925%_
                (lambda (_%g207853207874%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207853207874%_))
                      (let ((_%e207856207877%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207853207874%_))))
                        (let ((_%hd207857207881%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207856207877%_)))
                              (_%tl207858207884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207856207877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207858207884%_))
                              (let ((_%e207859207887%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207858207884%_))))
                                (let ((_%hd207860207891%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207859207887%_)))
                                      (_%tl207861207894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207859207887%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207861207894%_))
                                      (let ((_%e207862207897%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl207861207894%_))))
                                        (let ((_%hd207863207901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207862207897%_)))
                                              (_%tl207864207904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207862207897%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207864207904%_))
                                              ((lambda (_%L207907%_
                                                        _%L207909%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207909%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L207907%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx207849%_
                                                        _%L207909%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx207849%_
                                                        _%L207907%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L207909%_
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
                                                   (cons _%L207907%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g207852207870%_
                                                      _%g207853207874%_)))
                                               _%hd207863207901%_
                                               _%hd207860207891%_)
                                              (_%g207852207870%_
                                               _%g207853207874%_))))
                                      (_%g207852207870%_ _%g207853207874%_))))
                              (_%g207852207870%_ _%g207853207874%_))))
                      (_%g207852207870%_ _%g207853207874%_)))))
          (_%g207851207925%_ _%stx207849%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx207929%_)
        (let* ((_%g207932207956%_
                (lambda (_%g207933207952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207933207952%_))))
               (_%g207931208239%_
                (lambda (_%g207933207960%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207933207960%_))
                      (let ((_%e207936207963%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g207933207960%_))))
                        (let ((_%hd207937207967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207936207963%_)))
                              (_%tl207938207970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207936207963%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207938207970%_))
                              (let ((_%e207939207973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl207938207970%_))))
                                (let ((_%hd207940207977%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207939207973%_)))
                                      (_%tl207941207980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207939207973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl207941207980%_))
                                      (let ((_g210301_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl207941207980%_
                                                '0))))
                                        (begin
                                          (let ((_g210302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210301_)
                                                       (##values-length
                                                        _g210301_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210302_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210302_)))
                                          (let ((_%target207942207983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210301_ 0)))
                                                (_%tl207944207986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210301_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207944207986%_))
                                                (letrec ((_%loop207945207989%_
                                                          (lambda (_%hd207943207993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature207949207996%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207943207993%_))
                        (let ((_%e207946207999%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd207943207993%_))))
                          (let ((_%lp-hd207947208003%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207946207999%_)))
                                (_%lp-tl207948208006%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207946207999%_))))
                            (_%loop207945207989%_
                             _%lp-tl207948208006%_
                             (cons _%lp-hd207947208003%_
                                   _%signature207949207996%_))))
                        (let ((_%signature207950208009%_
                               (reverse _%signature207949207996%_)))
                          ((lambda (_%L208013%_ _%L208015%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208015%_))
                                 (let* ((_%g208033208048%_
                                         (lambda (_%g208034208044%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208034208044%_))))
                                        (_%g208032208227%_
                                         (lambda (_%g208034208052%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208034208052%_))
                                               (let ((_%e208037208055%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208034208052%_))))
                                                 (let ((_%hd208038208059%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208037208055%_)))
                                                       (_%tl208039208062%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208037208055%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208039208062%_))
                                                       (let ((_%e208040208065%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208039208062%_))))
                 (let ((_%hd208041208069%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208040208065%_)))
                       (_%tl208042208072%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208040208065%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl208042208072%_))
                       ((lambda (_%L208075%_ _%L208077%_)
                          (let* ((_%g208093208101%_
                                  (lambda (_%g208094208097%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g208094208097%_))))
                                 (_%g208092208223%_
                                  (lambda (_%g208094208105%_)
                                    ((lambda (_%L208108%_)
                                       (let* ((_%unchecked208121%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L208075%_))
                                              (_%g208124208132%_
                                               (lambda (_%g208125208128%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g208125208128%_))))
                                              (_%g208123208155%_
                                               (lambda (_%g208125208136%_)
                                                 ((lambda (_%L208139%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L208108%_
                                                                (cons _%L208139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g208125208136%_))))
                                         (_%g208123208155%_
                                          (if _%unchecked208121%_
                                              (let* ((_%g208159208174%_
                                                      (lambda (_%g208160208170%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g208160208170%_))))
                                                     (_%g208158208219%_
                                                      (lambda (_%g208160208178%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g208160208178%_))
                                                            (let ((_%e208163208181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g208160208178%_))))
                      (let ((_%hd208164208185%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208163208181%_)))
                            (_%tl208165208188%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208163208181%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208165208188%_))
                            (let ((_%e208166208191%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl208165208188%_))))
                              (let ((_%hd208167208195%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208166208191%_)))
                                    (_%tl208168208198%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208166208191%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl208168208198%_))
                                    ((lambda (_%L208201%_ _%L208203%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L208203%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L208077%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L208201%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd208167208195%_
                                     _%hd208164208185%_)
                                    (_%g208159208174%_ _%g208160208178%_))))
                            (_%g208159208174%_ _%g208160208178%_))))
                    (_%g208159208174%_ _%g208160208178%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g208158208219%_
                                                 _%unchecked208121%_))
                                              '(begin)))))
                                     _%g208094208105%_))))
                            (_%g208092208223%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L208015%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L208077%_ '()))
                   (cons '#f (cons 'signature: (cons _%L208075%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd208041208069%_
                        _%hd208038208059%_)
                       (_%g208033208048%_ _%g208034208052%_))))
               (_%g208033208048%_ _%g208034208052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208033208048%_
                                                _%g208034208052%_)))))
                                   (_%g208032208227%_
                                    (|gxc[1]#parse-signature|
                                     _%stx207929%_
                                     _%L208015%_
                                     (let ((__tmp210303
                                            (lambda (_%g208230208233%_
                                                     _%g208231208236%_)
                                              (cons _%g208230208233%_
                                                    _%g208231208236%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp210303
                                        '()
                                        _%L208013%_)))))
                                 (_%g207932207956%_ _%g207933207960%_)))
                           _%signature207950208009%_
                           _%hd207940207977%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207945207989%_
                                                   _%target207942207983%_
                                                   '()))
                                                (_%g207932207956%_
                                                 _%g207933207960%_)))))
                                      (_%g207932207956%_ _%g207933207960%_))))
                              (_%g207932207956%_ _%g207933207960%_))))
                      (_%g207932207956%_ _%g207933207960%_)))))
          (_%g207931208239%_ _%stx207929%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx208244%_)
        (let* ((_%g208247208271%_
                (lambda (_%g208248208267%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208248208267%_))))
               (_%g208246209154%_
                (lambda (_%g208248208275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208248208275%_))
                      (let ((_%e208251208278%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g208248208275%_))))
                        (let ((_%hd208252208282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208251208278%_)))
                              (_%tl208253208285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208251208278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208253208285%_))
                              (let ((_%e208254208288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl208253208285%_))))
                                (let ((_%hd208255208292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208254208288%_)))
                                      (_%tl208256208295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208254208288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl208256208295%_))
                                      (let ((_g210304_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl208256208295%_
                                                '0))))
                                        (begin
                                          (let ((_g210305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g210304_)
                                                       (##values-length
                                                        _g210304_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g210305_ 2)))
                                                (error "Context expects 2 values"
                                                       _g210305_)))
                                          (let ((_%target208257208298%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g210304_ 0)))
                                                (_%tl208259208301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g210304_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208259208301%_))
                                                (letrec ((_%loop208260208304%_
                                                          (lambda (_%hd208258208308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature208264208311%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208258208308%_))
                        (let ((_%e208261208314%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd208258208308%_))))
                          (let ((_%lp-hd208262208318%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208261208314%_)))
                                (_%lp-tl208263208321%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208261208314%_))))
                            (_%loop208260208304%_
                             _%lp-tl208263208321%_
                             (cons _%lp-hd208262208318%_
                                   _%case-signature208264208311%_))))
                        (let ((_%case-signature208265208324%_
                               (reverse _%case-signature208264208311%_)))
                          ((lambda (_%L208328%_ _%L208330%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L208330%_))
                                 (let* ((_%signatures208361%_
                                         (map (lambda (_%g208347208349%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx208244%_
                                                 _%L208330%_
                                                 _%g208347208349%_))
                                              (let ((__tmp210306
                                                     (lambda (_%g208352208355%_
                                                              _%g208353208358%_)
                                                       (cons _%g208352208355%_
                                                             _%g208353208358%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp210306
                                                 '()
                                                 _%L208328%_))))
                                        (_%g208364208390%_
                                         (lambda (_%g208365208386%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208365208386%_))))
                                        (_%g208363209150%_
                                         (lambda (_%g208365208394%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g208365208394%_))
                                               (let ((_g210307_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g208365208394%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g210308_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g210307_)
                        (##values-length _g210307_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g210308_ 2)))
                 (error "Context expects 2 values" _g210308_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target208368208397%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210307_
                                                             0)))
                                                         (_%tl208370208400%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g210307_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208370208400%_))
                                                         (letrec ((_%loop208371208403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd208369208407%_
                                    _%sig208375208410%_
                                    _%arity208376208412%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208369208407%_))
                                 (let ((_%e208372208415%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208369208407%_))))
                                   (let ((_%lp-hd208373208419%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208372208415%_)))
                                         (_%lp-tl208374208422%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208372208415%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd208373208419%_))
                                         (let ((_%e208379208425%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd208373208419%_))))
                                           (let ((_%hd208380208429%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e208379208425%_)))
                                                 (_%tl208381208432%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e208379208425%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208381208432%_))
                                                 (let ((_%e208382208435%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208381208432%_))))
                                                   (let ((_%hd208383208439%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208382208435%_)))
                                                         (_%tl208384208442%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208382208435%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208384208442%_))
                                                         (_%loop208371208403%_
                                                          _%lp-tl208374208422%_
                                                          (cons _%hd208383208439%_
                                                                _%sig208375208410%_)
                                                          (cons _%hd208380208429%_
                                                                _%arity208376208412%_))
                                                         (_%g208364208390%_
                                                          _%g208365208394%_))))
                                                 (_%g208364208390%_
                                                  _%g208365208394%_))))
                                         (_%g208364208390%_
                                          _%g208365208394%_))))
                                 (let ((_%sig208377208445%_
                                        (reverse _%sig208375208410%_))
                                       (_%arity208378208448%_
                                        (reverse _%arity208376208412%_)))
                                   ((lambda (_%L208451%_ _%L208453%_)
                                      (let* ((_%g208470208478%_
                                              (lambda (_%g208471208474%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g208471208474%_))))
                                             (_%g208469209135%_
                                              (lambda (_%g208471208482%_)
                                                ((lambda (_%L208485%_)
                                                   (let* ((_%g208498208506%_
                                                           (lambda (_%g208499208502%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g208499208502%_))))
                  (_%g208497208528%_
                   (lambda (_%g208499208510%_)
                     ((lambda (_%L208513%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L208485%_ (cons _%L208513%_ '()))))
                      _%g208499208510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208497208528%_
                                                      (let ((_g210309_
                                                             (let _%loop208532%_ ((_%rest208535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures208361%_)
                                          (_%unchecked-proc208537%_ '#f)
                                          (_%unchecked-clauses208538%_ '()))
                       (let* ((_%rest208539208547%_ _%rest208535%_)
                              (_%else208541208559%_
                               (lambda ()
                                 (values _%unchecked-proc208537%_
                                         (reverse!
                                          _%unchecked-clauses208538%_))))
                              (_%K208543209000%_
                               (lambda (_%rest208563%_ _%hd208565%_)
                                 (let* ((_%g208567208654%_
                                         (lambda (_%g208568208650%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g208568208650%_))))
                                        (_%g208566208996%_
                                         (lambda (_%g208568208658%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g208568208658%_))
                                               (let ((_%e208575208661%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g208568208658%_))))
                                                 (let ((_%hd208576208665%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208575208661%_)))
                                                       (_%tl208577208668%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208575208661%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl208577208668%_))
                                                       (let ((_%e208578208671%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl208577208668%_))))
                 (let ((_%hd208579208675%_
                        (let ()
                          (declare (not safe))
                          (##car _%e208578208671%_)))
                       (_%tl208580208678%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e208578208671%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd208579208675%_))
                       (let ((_%e208581208681%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd208579208675%_))))
                         (let ((_%hd208582208685%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208581208681%_)))
                               (_%tl208583208688%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208581208681%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl208583208688%_))
                               (let ((_%e208584208691%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl208583208688%_))))
                                 (let ((_%hd208585208695%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208584208691%_)))
                                       (_%tl208586208698%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208584208691%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd208585208695%_))
                                       (let ((_%e208587208701%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208585208695%_))))
                                         (if (equal? _%e208587208701%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208586208698%_))
                                                 (let ((_%e208588208705%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208586208698%_))))
                                                   (let ((_%hd208589208709%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208588208705%_)))
                                                         (_%tl208590208712%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208588208705%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd208589208709%_))
                                                         (let ((_%e208591208715%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd208589208709%_))))
                   (let ((_%hd208592208719%_
                          (let ()
                            (declare (not safe))
                            (##car _%e208591208715%_)))
                         (_%tl208593208722%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e208591208715%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd208592208719%_))
                         (if (let ((__tmp210311 |gxc[1]#_g210312_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp210311
                                _%hd208592208719%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208593208722%_))
                                 (let ((_%e208594208725%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208593208722%_))))
                                   (let ((_%hd208595208729%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208594208725%_)))
                                         (_%tl208596208732%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208594208725%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl208596208732%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208590208712%_))
                                             (let ((_%e208597208735%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl208590208712%_))))
                                               (let ((_%hd208598208739%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208597208735%_)))
                                                     (_%tl208599208742%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208597208735%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd208598208739%_))
                                                     (let ((_%e208600208745%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd208598208739%_))))
                                                       (if (equal? _%e208600208745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl208599208742%_))
                       (let ((_%e208601208749%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl208599208742%_))))
                         (let ((_%hd208602208753%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e208601208749%_)))
                               (_%tl208603208756%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e208601208749%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd208602208753%_))
                               (let ((_%e208604208759%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd208602208753%_))))
                                 (let ((_%hd208605208763%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e208604208759%_)))
                                       (_%tl208606208766%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e208604208759%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd208605208763%_))
                                       (if (let ((__tmp210313
                                                  |gxc[1]#_g210314_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp210313
                                              _%hd208605208763%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208606208766%_))
                                               (let ((_%e208607208769%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208606208766%_))))
                                                 (let ((_%hd208608208773%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208607208769%_)))
                                                       (_%tl208609208776%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208607208769%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl208609208776%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl208603208756%_))
                                                           (let ((_%e208610208779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl208603208756%_))))
                     (let ((_%hd208611208783%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208610208779%_)))
                           (_%tl208612208786%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208610208779%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd208611208783%_))
                           (let ((_%e208613208789%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd208611208783%_))))
                             (if (equal? _%e208613208789%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl208612208786%_))
                                     (let ((_%e208614208793%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl208612208786%_))))
                                       (let ((_%hd208615208797%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e208614208793%_)))
                                             (_%tl208616208800%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e208614208793%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd208615208797%_))
                                             (let ((_%e208617208803%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd208615208797%_))))
                                               (let ((_%hd208618208807%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208617208803%_)))
                                                     (_%tl208619208810%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208617208803%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd208618208807%_))
                                                     (if (let ((__tmp210315
                                                                |gxc[1]#_g210316_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp210315
                                                            _%hd208618208807%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl208619208810%_))
                     (let ((_%e208620208813%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl208619208810%_))))
                       (let ((_%hd208621208817%_
                              (let ()
                                (declare (not safe))
                                (##car _%e208620208813%_)))
                             (_%tl208622208820%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e208620208813%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl208622208820%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl208616208800%_))
                                 (let ((_%e208623208823%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl208616208800%_))))
                                   (let ((_%hd208624208827%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208623208823%_)))
                                         (_%tl208625208830%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208623208823%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd208624208827%_))
                                         (let ((_%e208626208833%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd208624208827%_))))
                                           (if (equal? _%e208626208833%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl208625208830%_))
                                                   (let ((_%e208627208837%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl208625208830%_))))
                                                     (let ((_%hd208628208841%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e208627208837%_)))
                                                           (_%tl208629208844%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e208627208837%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd208628208841%_))
                                                           (let ((_%e208630208847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd208628208841%_))))
                     (let ((_%hd208631208851%_
                            (let ()
                              (declare (not safe))
                              (##car _%e208630208847%_)))
                           (_%tl208632208854%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e208630208847%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd208631208851%_))
                           (if (let ((__tmp210317 |gxc[1]#_g210318_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp210317
                                  _%hd208631208851%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl208632208854%_))
                                   (let ((_%e208633208857%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl208632208854%_))))
                                     (let ((_%hd208634208861%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e208633208857%_)))
                                           (_%tl208635208864%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e208633208857%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl208635208864%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl208629208844%_))
                                               (let ((_%e208636208867%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl208629208844%_))))
                                                 (let ((_%hd208637208871%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e208636208867%_)))
                                                       (_%tl208638208874%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e208636208867%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd208637208871%_))
                                                       (let ((_%e208639208877%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd208637208871%_))))
                 (if (equal? _%e208639208877%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl208638208874%_))
                         (let ((_%e208640208881%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl208638208874%_))))
                           (let ((_%hd208641208885%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e208640208881%_)))
                                 (_%tl208642208888%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e208640208881%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd208641208885%_))
                                 (let ((_%e208643208891%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd208641208885%_))))
                                   (let ((_%hd208644208895%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e208643208891%_)))
                                         (_%tl208645208898%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e208643208891%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd208644208895%_))
                                         (if (let ((__tmp210319
                                                    |gxc[1]#_g210320_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp210319
                                                _%hd208644208895%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl208645208898%_))
                                                 (let ((_%e208646208901%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl208645208898%_))))
                                                   (let ((_%hd208647208905%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e208646208901%_)))
                                                         (_%tl208648208908%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e208646208901%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl208648208908%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl208642208888%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl208580208678%_))
                         ((lambda (_%L208911%_
                                   _%L208913%_
                                   _%L208914%_
                                   _%L208915%_
                                   _%L208916%_
                                   _%L208917%_)
                            (let ((_%clause208988%_
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
                                                     (cons _%L208917%_ '()))
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
                                                 (cons _%L208915%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L208911%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked208990%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L208913%_))))
                              (_%loop208532%_
                               _%rest208563%_
                               (let ((_%$e208992%_ _%unchecked208990%_))
                                 (if _%$e208992%_
                                     _%$e208992%_
                                     _%unchecked-proc208537%_))
                               (cons _%clause208988%_
                                     _%unchecked-clauses208538%_))))
                          _%hd208647208905%_
                          _%hd208634208861%_
                          _%hd208621208817%_
                          _%hd208608208773%_
                          _%hd208595208729%_
                          _%hd208576208665%_)
                         (_%g208567208654%_ _%g208568208658%_))
                     (_%g208567208654%_ _%g208568208658%_))
                 (_%g208567208654%_ _%g208568208658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208567208654%_
                                                  _%g208568208658%_))
                                             (_%g208567208654%_
                                              _%g208568208658%_))
                                         (_%g208567208654%_
                                          _%g208568208658%_))))
                                 (_%g208567208654%_ _%g208568208658%_))))
                         (_%g208567208654%_ _%g208568208658%_))
                     (_%g208567208654%_ _%g208568208658%_)))
               (_%g208567208654%_ _%g208568208658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208567208654%_
                                                _%g208568208658%_))
                                           (_%g208567208654%_
                                            _%g208568208658%_))))
                                   (_%g208567208654%_ _%g208568208658%_))
                               (_%g208567208654%_ _%g208568208658%_))
                           (_%g208567208654%_ _%g208568208658%_))))
                   (_%g208567208654%_ _%g208568208658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g208567208654%_
                                                    _%g208568208658%_))
                                               (_%g208567208654%_
                                                _%g208568208658%_)))
                                         (_%g208567208654%_
                                          _%g208568208658%_))))
                                 (_%g208567208654%_ _%g208568208658%_))
                             (_%g208567208654%_ _%g208568208658%_))))
                     (_%g208567208654%_ _%g208568208658%_))
                 (_%g208567208654%_ _%g208568208658%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208567208654%_
                                                      _%g208568208658%_))))
                                             (_%g208567208654%_
                                              _%g208568208658%_))))
                                     (_%g208567208654%_ _%g208568208658%_))
                                 (_%g208567208654%_ _%g208568208658%_)))
                           (_%g208567208654%_ _%g208568208658%_))))
                   (_%g208567208654%_ _%g208568208658%_))
               (_%g208567208654%_ _%g208568208658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208567208654%_
                                                _%g208568208658%_))
                                           (_%g208567208654%_
                                            _%g208568208658%_))
                                       (_%g208567208654%_ _%g208568208658%_))))
                               (_%g208567208654%_ _%g208568208658%_))))
                       (_%g208567208654%_ _%g208568208658%_))
                   (_%g208567208654%_ _%g208568208658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g208567208654%_
                                                      _%g208568208658%_))))
                                             (_%g208567208654%_
                                              _%g208568208658%_))
                                         (_%g208567208654%_
                                          _%g208568208658%_))))
                                 (_%g208567208654%_ _%g208568208658%_))
                             (_%g208567208654%_ _%g208568208658%_))
                         (_%g208567208654%_ _%g208568208658%_))))
                 (_%g208567208654%_ _%g208568208658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g208567208654%_
                                                  _%g208568208658%_))
                                             (_%g208567208654%_
                                              _%g208568208658%_)))
                                       (_%g208567208654%_ _%g208568208658%_))))
                               (_%g208567208654%_ _%g208568208658%_))))
                       (_%g208567208654%_ _%g208568208658%_))))
               (_%g208567208654%_ _%g208568208658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208567208654%_
                                                _%g208568208658%_)))))
                                   (_%g208566208996%_ _%hd208565%_)))))
                         (if (pair? _%rest208539208547%_)
                             (let ((_%hd208544209004%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest208539208547%_)))
                                   (_%tl208545209007%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest208539208547%_))))
                               (let* ((_%hd209010%_ _%hd208544209004%_)
                                      (_%rest209013%_ _%tl208545209007%_))
                                 (_%K208543209000%_
                                  _%rest209013%_
                                  _%hd209010%_)))
                             (_%else208541208559%_))))))
                (begin
                  (let ((_g210310_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210309_)
                               (##values-length _g210309_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210310_ 2)))
                        (error "Context expects 2 values" _g210310_)))
                  (let ((_%unchecked-proc209016%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210309_ 0)))
                        (_%unchecked-clauses209018%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210309_ 1))))
                    (if _%unchecked-proc209016%_
                        (let* ((_%g209020209044%_
                                (lambda (_%g209021209040%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g209021209040%_))))
                               (_%g209019209131%_
                                (lambda (_%g209021209048%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g209021209048%_))
                                      (let ((_%e209024209051%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g209021209048%_))))
                                        (let ((_%hd209025209055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209024209051%_)))
                                              (_%tl209026209058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209024209051%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209026209058%_))
                                              (let ((_%e209027209061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209026209058%_))))
                                                (let ((_%hd209028209065%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209027209061%_)))
                                                      (_%tl209029209068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209027209061%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd209028209065%_))
                                                      (let ((_g210321_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd209028209065%_ '0))))
                (begin
                  (let ((_g210322_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g210321_)
                               (##values-length _g210321_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g210322_ 2)))
                        (error "Context expects 2 values" _g210322_)))
                  (let ((_%target209030209071%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210321_ 0)))
                        (_%tl209032209074%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g210321_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl209032209074%_))
                        (letrec ((_%loop209033209077%_
                                  (lambda (_%hd209031209081%_
                                           _%clause209037209084%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd209031209081%_))
                                        (let ((_%e209034209087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd209031209081%_))))
                                          (let ((_%lp-hd209035209091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e209034209087%_)))
                                                (_%lp-tl209036209094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e209034209087%_))))
                                            (_%loop209033209077%_
                                             _%lp-tl209036209094%_
                                             (cons _%lp-hd209035209091%_
                                                   _%clause209037209084%_))))
                                        (let ((_%clause209038209097%_
                                               (reverse _%clause209037209084%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209029209068%_))
                                              ((lambda (_%L209101%_
                                                        _%L209103%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L209103%_
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
                                             (let ((__tmp210323
                                                    (lambda (_%g209122209125%_
                                                             _%g209123209128%_)
                                                      (cons _%g209122209125%_
                                                            _%g209123209128%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp210323
                                                '()
                                                _%L209101%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause209038209097%_
                                               _%hd209025209055%_)
                                              (_%g209020209044%_
                                               _%g209021209048%_)))))))
                          (_%loop209033209077%_ _%target209030209071%_ '()))
                        (_%g209020209044%_ _%g209021209048%_)))))
              (_%g209020209044%_ _%g209021209048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g209020209044%_
                                               _%g209021209048%_))))
                                      (_%g209020209044%_ _%g209021209048%_)))))
                          (_%g209019209131%_
                           (list _%unchecked-proc209016%_
                                 _%unchecked-clauses209018%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g208471208482%_))))
                                        (_%g208469209135%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L208330%_
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
                                          _%L208451%_
                                          _%L208453%_))
                                       (let ((__tmp210324
                                              (lambda (_%g209138209142%_
                                                       _%g209139209145%_
                                                       _%g209140209147%_)
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
                                (cons _%g209139209145%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g209138209142%_ '())))))
              _%g209140209147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp210324
                                          '()
                                          _%L208451%_
                                          _%L208453%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig208377208445%_
                                    _%arity208378208448%_))))))
                   (_%loop208371208403%_ _%target208368208397%_ '() '()))
                 (_%g208364208390%_ _%g208365208394%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g208364208390%_
                                                _%g208365208394%_)))))
                                   (_%g208363209150%_ _%signatures208361%_))
                                 (_%g208247208271%_ _%g208248208275%_)))
                           _%case-signature208265208324%_
                           _%hd208255208292%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208260208304%_
                                                   _%target208257208298%_
                                                   '()))
                                                (_%g208247208271%_
                                                 _%g208248208275%_)))))
                                      (_%g208247208271%_ _%g208248208275%_))))
                              (_%g208247208271%_ _%g208248208275%_))))
                      (_%g208247208271%_ _%g208248208275%_)))))
          (_%g208246209154%_ _%stx208244%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx209162%_)
        (let* ((_%__stx210144210145%_ _%$stx209162%_)
               (_%g209168209228%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx210144210145%_)))))
          (let ((_%__kont210147210148%_
                 (lambda (_%L209450%_ _%L209452%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209452%_ '()))
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
                                                       (cons _%L209452%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209450%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210149210150%_
                 (lambda (_%L209375%_ _%L209377%_ _%L209378%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209378%_ '()))
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
                                                       (cons _%L209378%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209377%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209375%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont210151210152%_
                 (lambda (_%L209289%_ _%L209291%_ _%L209292%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L209292%_ '()))
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
                                                       (cons _%L209292%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L209291%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L209289%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx210144210145%_))
                (let ((_%e209172209406%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx210144210145%_))))
                  (let ((_%tl209174209413%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209172209406%_)))
                        (_%hd209173209410%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209172209406%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl209174209413%_))
                        (let ((_%e209175209416%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl209174209413%_))))
                          (let ((_%tl209177209423%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e209175209416%_)))
                                (_%hd209176209420%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e209175209416%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd209176209420%_))
                                (let ((_%e209178209426%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd209176209420%_))))
                                  (if (equal? _%e209178209426%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl209177209423%_))
                                          (let ((_%e209179209430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl209177209423%_))))
                                            (let ((_%tl209181209437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e209179209430%_)))
                                                  (_%hd209180209434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e209179209430%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209181209437%_))
                                                  (let ((_%e209182209440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209181209437%_))))
                                                    (let ((_%tl209184209447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209182209440%_)))
                                                          (_%hd209183209444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209182209440%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl209184209447%_))
                                                          (_%__kont210147210148%_
                                                           _%hd209183209444%_
                                                           _%hd209180209434%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g209168209228%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209168209228%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g209168209228%_)))
                                      (if (equal? _%e209178209426%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl209177209423%_))
                                              (let ((_%e209195209345%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl209177209423%_))))
                                                (let ((_%tl209197209352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e209195209345%_)))
                                                      (_%hd209196209349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e209195209345%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl209197209352%_))
                                                      (let ((_%e209198209355%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl209197209352%_))))
                (let ((_%tl209200209362%_
                       (let () (declare (not safe)) (##cdr _%e209198209355%_)))
                      (_%hd209199209359%_
                       (let ()
                         (declare (not safe))
                         (##car _%e209198209355%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl209200209362%_))
                      (let ((_%e209201209365%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl209200209362%_))))
                        (let ((_%tl209203209372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209201209365%_)))
                              (_%hd209202209369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209201209365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl209203209372%_))
                              (_%__kont210149210150%_
                               _%hd209202209369%_
                               _%hd209199209359%_
                               _%hd209196209349%_)
                              (let ()
                                (declare (not safe))
                                (_%g209168209228%_)))))
                      (let () (declare (not safe)) (_%g209168209228%_)))))
              (let () (declare (not safe)) (_%g209168209228%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g209168209228%_)))
                                          (if (equal? _%e209178209426%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl209177209423%_))
                                                  (let ((_%e209214209259%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl209177209423%_))))
                                                    (let ((_%tl209216209266%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e209214209259%_)))
                                                          (_%hd209215209263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e209214209259%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl209216209266%_))
                                                          (let ((_%e209217209269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl209216209266%_))))
                    (let ((_%tl209219209276%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e209217209269%_)))
                          (_%hd209218209273%_
                           (let ()
                             (declare (not safe))
                             (##car _%e209217209269%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl209219209276%_))
                          (let ((_%e209220209279%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl209219209276%_))))
                            (let ((_%tl209222209286%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e209220209279%_)))
                                  (_%hd209221209283%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e209220209279%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl209222209286%_))
                                  (_%__kont210151210152%_
                                   _%hd209221209283%_
                                   _%hd209218209273%_
                                   _%hd209215209263%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g209168209228%_)))))
                          (let () (declare (not safe)) (_%g209168209228%_)))))
                  (let () (declare (not safe)) (_%g209168209228%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g209168209228%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g209168209228%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g209168209228%_)))))
                        (let () (declare (not safe)) (_%g209168209228%_)))))
                (let () (declare (not safe)) (_%g209168209228%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx209474%_)
        (let* ((_%g209478209498%_
                (lambda (_%g209479209494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209479209494%_))))
               (_%g209477209569%_
                (lambda (_%g209479209502%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209479209502%_))
                      (let ((_%e209481209505%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g209479209502%_))))
                        (let ((_%hd209482209509%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209481209505%_)))
                              (_%tl209483209512%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209481209505%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl209483209512%_))
                              (let ((_g210325_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl209483209512%_
                                        '0))))
                                (begin
                                  (let ((_g210326_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g210325_)
                                               (##values-length _g210325_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g210326_ 2)))
                                        (error "Context expects 2 values"
                                               _g210326_)))
                                  (let ((_%target209484209515%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210325_ 0)))
                                        (_%tl209486209518%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g210325_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl209486209518%_))
                                        (letrec ((_%loop209487209521%_
                                                  (lambda (_%hd209485209525%_
                                                           _%decl209491209528%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd209485209525%_))
                                                        (let ((_%e209488209531%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd209485209525%_))))
                  (let ((_%lp-hd209489209535%_
                         (let ()
                           (declare (not safe))
                           (##car _%e209488209531%_)))
                        (_%lp-tl209490209538%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e209488209531%_))))
                    (_%loop209487209521%_
                     _%lp-tl209490209538%_
                     (cons _%lp-hd209489209535%_ _%decl209491209528%_))))
                (let ((_%decl209492209541%_ (reverse _%decl209491209528%_)))
                  ((lambda (_%L209545%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp210327
                                  (lambda (_%g209560209563%_ _%g209561209566%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g209560209563%_)
                                          _%g209561209566%_))))
                             (declare (not safe))
                             (__foldr1 __tmp210327 '() _%L209545%_))))
                   _%decl209492209541%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop209487209521%_
                                           _%target209484209515%_
                                           '()))
                                        (_%g209478209498%_
                                         _%g209479209502%_)))))
                              (_%g209478209498%_ _%g209479209502%_))))
                      (_%g209478209498%_ _%g209479209502%_)))))
          (_%g209477209569%_ _%$stx209474%_))))))
