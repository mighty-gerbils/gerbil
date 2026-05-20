(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g269426_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269433_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269435_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269437_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269439_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269441_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269453_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269455_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269457_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269459_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g269461_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx262884%_)
        (let* ((_%g262888262906%_
                (lambda (_%g262889262902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262889262902%_))))
               (_%g262887262961%_
                (lambda (_%g262889262910%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262889262910%_))
                      (let ((_%e262892262913%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262889262910%_))))
                        (let ((_%hd262893262917%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262892262913%_)))
                              (_%tl262894262920%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262892262913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262894262920%_))
                              (let ((_%e262895262923%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262894262920%_))))
                                (let ((_%hd262896262927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262895262923%_)))
                                      (_%tl262897262930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262895262923%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262897262930%_))
                                      (let ((_%e262898262933%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262897262930%_))))
                                        (let ((_%hd262899262937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262898262933%_)))
                                              (_%tl262900262940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262898262933%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262900262940%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd262896262927%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd262896262927%_ '()))
                      (cons _%hd262899262937%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g262888262906%_
                                                   _%g262889262910%_))
                                              (_%g262888262906%_
                                               _%g262889262910%_))))
                                      (_%g262888262906%_ _%g262889262910%_))))
                              (_%g262888262906%_ _%g262889262910%_))))
                      (_%g262888262906%_ _%g262889262910%_)))))
          (_%g262887262961%_ _%$stx262884%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx262965%_)
        (let* ((_%g262969262987%_
                (lambda (_%g262970262983%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262970262983%_))))
               (_%g262968263042%_
                (lambda (_%g262970262991%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262970262991%_))
                      (let ((_%e262973262994%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262970262991%_))))
                        (let ((_%hd262974262998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262973262994%_)))
                              (_%tl262975263001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262973262994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262975263001%_))
                              (let ((_%e262976263004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262975263001%_))))
                                (let ((_%hd262977263008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262976263004%_)))
                                      (_%tl262978263011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262976263004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262978263011%_))
                                      (let ((_%e262979263014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262978263011%_))))
                                        (let ((_%hd262980263018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262979263014%_)))
                                              (_%tl262981263021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262979263014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262981263021%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd262977263008%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd262977263008%_ '()))
                      (cons _%hd262980263018%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g262969262987%_
                                                   _%g262970262991%_))
                                              (_%g262969262987%_
                                               _%g262970262991%_))))
                                      (_%g262969262987%_ _%g262970262991%_))))
                              (_%g262969262987%_ _%g262970262991%_))))
                      (_%g262969262987%_ _%g262970262991%_)))))
          (_%g262968263042%_ _%$stx262965%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx263046%_)
        (let* ((_%g263050263079%_
                (lambda (_%g263051263075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263051263075%_))))
               (_%g263049263175%_
                (lambda (_%g263051263083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263051263083%_))
                      (let ((_%e263054263086%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263051263083%_))))
                        (let ((_%hd263055263090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263054263086%_)))
                              (_%tl263056263093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263054263086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263056263093%_))
                              (let ((_g269404_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263056263093%_
                                        '0))))
                                (begin
                                  (let ((_g269405_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269404_)
                                               (##values-length _g269404_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269405_ 2)))
                                        (error "Context expects 2 values"
                                               _g269405_)))
                                  (let ((_%target263057263096%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269404_ 0)))
                                        (_%tl263059263099%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269404_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263059263099%_))
                                        (letrec ((_%loop263060263102%_
                                                  (lambda (_%hd263058263106%_
                                                           _%type263064263109%_
                                                           _%symbol263065263110%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263058263106%_))
                                                        (let ((_%e263061263112%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263058263106%_))))
                  (let ((_%lp-hd263062263116%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263061263112%_)))
                        (_%lp-tl263063263119%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263061263112%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263062263116%_))
                        (let ((_%e263068263122%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263062263116%_))))
                          (let ((_%hd263069263126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263068263122%_)))
                                (_%tl263070263129%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263068263122%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263070263129%_))
                                (let ((_%e263071263132%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263070263129%_))))
                                  (let ((_%hd263072263136%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263071263132%_)))
                                        (_%tl263073263139%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263071263132%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263073263139%_))
                                        (_%loop263060263102%_
                                         _%lp-tl263063263119%_
                                         (cons _%hd263072263136%_
                                               _%type263064263109%_)
                                         (cons _%hd263069263126%_
                                               _%symbol263065263110%_))
                                        (_%g263050263079%_
                                         _%g263051263083%_))))
                                (_%g263050263079%_ _%g263051263083%_))))
                        (_%g263050263079%_ _%g263051263083%_))))
                (let ((_%type263066263142%_ (reverse _%type263064263109%_))
                      (_%symbol263067263144%_
                       (reverse _%symbol263065263110%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%type263066263142%_
                             _%symbol263067263144%_))
                          (let ((__tmp269406
                                 (lambda (_%g263163263167%_
                                          _%g263164263170%_
                                          _%g263165263172%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g263164263170%_
                                                     (cons _%g263163263167%_
                                                           '())))
                                         _%g263165263172%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp269406
                             '()
                             _%type263066263142%_
                             _%symbol263067263144%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263060263102%_
                                           _%target263057263096%_
                                           '()
                                           '()))
                                        (_%g263050263079%_
                                         _%g263051263083%_)))))
                              (_%g263050263079%_ _%g263051263083%_))))
                      (_%g263050263079%_ _%g263051263083%_)))))
          (_%g263049263175%_ _%$stx263046%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx263180%_)
        (let* ((_%__stx268715268716%_ _%$stx263180%_)
               (_%g263185263227%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268715268716%_)))))
          (let ((_%__kont268718268719%_
                 (lambda (_%g263187263355%_
                          _%g263188263357%_
                          _%g263189263358%_
                          _%g263190263359%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263190263359%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g263189263358%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g263188263357%_ '()))
                                           (cons _%g263187263355%_ '())))))))
                (_%__kont268720268721%_
                 (lambda (_%g263206263274%_
                          _%g263207263276%_
                          _%g263208263277%_
                          _%g263209263278%_)
                   (cons _%g263209263278%_
                         (cons _%g263208263277%_
                               (cons _%g263207263276%_
                                     (cons _%g263206263274%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match268754268755%_
                   (lambda (_%e263191263305%_
                            _%hd263192263309%_
                            _%tl263193263312%_
                            _%e263194263315%_
                            _%hd263195263319%_
                            _%tl263196263322%_
                            _%e263197263325%_
                            _%hd263198263329%_
                            _%tl263199263332%_
                            _%e263200263335%_
                            _%hd263201263339%_
                            _%tl263202263342%_
                            _%e263203263345%_
                            _%hd263204263349%_
                            _%tl263205263352%_)
                     (let ((_%g263187263355%_ _%hd263204263349%_)
                           (_%g263188263357%_ _%hd263201263339%_)
                           (_%g263189263358%_ _%hd263198263329%_)
                           (_%g263190263359%_ _%hd263195263319%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263190263359%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263189263358%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263188263357%_)))
                           (_%__kont268718268719%_
                            _%g263187263355%_
                            _%g263188263357%_
                            _%g263189263358%_
                            _%g263190263359%_)
                           (let ()
                             (declare (not safe))
                             (_%g263185263227%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268715268716%_))
                  (let ((_%e263191263305%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx268715268716%_))))
                    (let ((_%tl263193263312%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263191263305%_)))
                          (_%hd263192263309%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263191263305%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263193263312%_))
                          (let ((_%e263194263315%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263193263312%_))))
                            (let ((_%tl263196263322%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263194263315%_)))
                                  (_%hd263195263319%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263194263315%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263196263322%_))
                                  (let ((_%e263197263325%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263196263322%_))))
                                    (let ((_%tl263199263332%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263197263325%_)))
                                          (_%hd263198263329%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263197263325%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl263199263332%_))
                                          (let ((_%e263200263335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl263199263332%_))))
                                            (let ((_%tl263202263342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263200263335%_)))
                                                  (_%hd263201263339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263200263335%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263202263342%_))
                                                  (let ((_%e263203263345%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263202263342%_))))
                                                    (let ((_%tl263205263352%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263203263345%_)))
                                                          (_%hd263204263349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263203263345%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263205263352%_))
                                                          (_%__match268754268755%_
                                                           _%e263191263305%_
                                                           _%hd263192263309%_
                                                           _%tl263193263312%_
                                                           _%e263194263315%_
                                                           _%hd263195263319%_
                                                           _%tl263196263322%_
                                                           _%e263197263325%_
                                                           _%hd263198263329%_
                                                           _%tl263199263332%_
                                                           _%e263200263335%_
                                                           _%hd263201263339%_
                                                           _%tl263202263342%_
                                                           _%e263203263345%_
                                                           _%hd263204263349%_
                                                           _%tl263205263352%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263185263227%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263202263342%_))
                                                      (_%__kont268720268721%_
                                                       _%hd263201263339%_
                                                       _%hd263198263329%_
                                                       _%hd263195263319%_
                                                       _%hd263192263309%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263185263227%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263185263227%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g263185263227%_)))))
                          (let () (declare (not safe)) (_%g263185263227%_)))))
                  (let () (declare (not safe)) (_%g263185263227%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx263384%_)
        (let* ((_%g263388263423%_
                (lambda (_%g263389263419%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263389263419%_))))
               (_%g263387263536%_
                (lambda (_%g263389263427%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263389263427%_))
                      (let ((_%e263393263430%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263389263427%_))))
                        (let ((_%hd263394263434%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263393263430%_)))
                              (_%tl263395263437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263393263430%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263395263437%_))
                              (let ((_g269407_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263395263437%_
                                        '0))))
                                (begin
                                  (let ((_g269408_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269407_)
                                               (##values-length _g269407_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269408_ 2)))
                                        (error "Context expects 2 values"
                                               _g269408_)))
                                  (let ((_%target263396263440%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269407_ 0)))
                                        (_%tl263398263443%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269407_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263398263443%_))
                                        (letrec ((_%loop263399263446%_
                                                  (lambda (_%hd263397263450%_
                                                           _%symbol263403263453%_
                                                           _%method263404263454%_
                                                           _%type-t263405263455%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263397263450%_))
                                                        (let ((_%e263400263457%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263397263450%_))))
                  (let ((_%lp-hd263401263461%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263400263457%_)))
                        (_%lp-tl263402263464%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263400263457%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263401263461%_))
                        (let ((_%e263409263467%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263401263461%_))))
                          (let ((_%hd263410263471%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263409263467%_)))
                                (_%tl263411263474%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263409263467%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263411263474%_))
                                (let ((_%e263412263477%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263411263474%_))))
                                  (let ((_%hd263413263481%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263412263477%_)))
                                        (_%tl263414263484%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263412263477%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl263414263484%_))
                                        (let ((_%e263415263487%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl263414263484%_))))
                                          (let ((_%hd263416263491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e263415263487%_)))
                                                (_%tl263417263494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e263415263487%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263417263494%_))
                                                (_%loop263399263446%_
                                                 _%lp-tl263402263464%_
                                                 (cons _%hd263416263491%_
                                                       _%symbol263403263453%_)
                                                 (cons _%hd263413263481%_
                                                       _%method263404263454%_)
                                                 (cons _%hd263410263471%_
                                                       _%type-t263405263455%_))
                                                (_%g263388263423%_
                                                 _%g263389263427%_))))
                                        (_%g263388263423%_
                                         _%g263389263427%_))))
                                (_%g263388263423%_ _%g263389263427%_))))
                        (_%g263388263423%_ _%g263389263427%_))))
                (let ((_%symbol263406263497%_ (reverse _%symbol263403263453%_))
                      (_%method263407263499%_ (reverse _%method263404263454%_))
                      (_%type-t263408263500%_
                       (reverse _%type-t263405263455%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%symbol263406263497%_
                             _%method263407263499%_
                             _%type-t263408263500%_))
                          (let ((__tmp269409
                                 (lambda (_%g263521263526%_
                                          _%g263522263529%_
                                          _%g263523263531%_
                                          _%g263524263533%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%g263523263531%_
                                                     (cons _%g263522263529%_
                                                           (cons _%g263521263526%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g263524263533%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp269409
                             '()
                             _%symbol263406263497%_
                             _%method263407263499%_
                             _%type-t263408263500%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263399263446%_
                                           _%target263396263440%_
                                           '()
                                           '()
                                           '()))
                                        (_%g263388263423%_
                                         _%g263389263427%_)))))
                              (_%g263388263423%_ _%g263389263427%_))))
                      (_%g263388263423%_ _%g263389263427%_)))))
          (_%g263387263536%_ _%$stx263384%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx263541%_)
        (let* ((_%g263545263578%_
                (lambda (_%g263546263574%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263546263574%_))))
               (_%g263544263688%_
                (lambda (_%g263546263582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263546263582%_))
                      (let ((_%e263550263585%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263546263582%_))))
                        (let ((_%hd263551263589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263550263585%_)))
                              (_%tl263552263592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263550263585%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263552263592%_))
                              (let ((_%e263553263595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263552263592%_))))
                                (let ((_%hd263554263599%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263553263595%_)))
                                      (_%tl263555263602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263553263595%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263555263602%_))
                                      (let ((_g269410_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl263555263602%_
                                                '0))))
                                        (begin
                                          (let ((_g269411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g269410_)
                                                       (##values-length
                                                        _g269410_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g269411_ 2)))
                                                (error "Context expects 2 values"
                                                       _g269411_)))
                                          (let ((_%target263556263605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g269410_ 0)))
                                                (_%tl263558263608%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g269410_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263558263608%_))
                                                (letrec ((_%loop263559263611%_
                                                          (lambda (_%hd263557263615%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol263563263618%_
                           _%method263564263619%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd263557263615%_))
                        (let ((_%e263560263621%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd263557263615%_))))
                          (let ((_%lp-hd263561263625%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263560263621%_)))
                                (_%lp-tl263562263628%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263560263621%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd263561263625%_))
                                (let ((_%e263567263631%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd263561263625%_))))
                                  (let ((_%hd263568263635%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263567263631%_)))
                                        (_%tl263569263638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263567263631%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl263569263638%_))
                                        (let ((_%e263570263641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl263569263638%_))))
                                          (let ((_%hd263571263645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e263570263641%_)))
                                                (_%tl263572263648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e263570263641%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263572263648%_))
                                                (_%loop263559263611%_
                                                 _%lp-tl263562263628%_
                                                 (cons _%hd263571263645%_
                                                       _%symbol263563263618%_)
                                                 (cons _%hd263568263635%_
                                                       _%method263564263619%_))
                                                (_%g263545263578%_
                                                 _%g263546263582%_))))
                                        (_%g263545263578%_
                                         _%g263546263582%_))))
                                (_%g263545263578%_ _%g263546263582%_))))
                        (let ((_%symbol263565263651%_
                               (reverse _%symbol263563263618%_))
                              (_%method263566263653%_
                               (reverse _%method263564263619%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%symbol263565263651%_
                                     _%method263566263653%_))
                                  (let ((__tmp269412
                                         (lambda (_%g263676263680%_
                                                  _%g263677263683%_
                                                  _%g263678263685%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%hd263554263599%_
                                                             (cons _%g263677263683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g263676263680%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g263678263685%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp269412
                                     '()
                                     _%symbol263565263651%_
                                     _%method263566263653%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop263559263611%_
                                                   _%target263556263605%_
                                                   '()
                                                   '()))
                                                (_%g263545263578%_
                                                 _%g263546263582%_)))))
                                      (_%g263545263578%_ _%g263546263582%_))))
                              (_%g263545263578%_ _%g263546263582%_))))
                      (_%g263545263578%_ _%g263546263582%_)))))
          (_%g263544263688%_ _%$stx263541%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx263693%_)
        (let* ((_%g263697263711%_
                (lambda (_%g263698263707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263698263707%_))))
               (_%g263696263752%_
                (lambda (_%g263698263715%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263698263715%_))
                      (let ((_%e263700263718%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263698263715%_))))
                        (let ((_%hd263701263722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263700263718%_)))
                              (_%tl263702263725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263700263718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263702263725%_))
                              (let ((_%e263703263728%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263702263725%_))))
                                (let ((_%hd263704263732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263703263728%_)))
                                      (_%tl263705263735%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263703263728%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263705263735%_))
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
                                                        (cons _%hd263704263732%_
                                                              '()))
                                                  '()))
                                      (_%g263697263711%_ _%g263698263715%_))))
                              (_%g263697263711%_ _%g263698263715%_))))
                      (_%g263697263711%_ _%g263698263715%_)))))
          (_%g263696263752%_ _%$stx263693%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx263756%_)
        (let* ((_%g263760263814%_
                (lambda (_%g263761263810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263761263810%_))))
               (_%g263759263995%_
                (lambda (_%g263761263818%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263761263818%_))
                      (let ((_%e263773263821%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263761263818%_))))
                        (let ((_%hd263774263825%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263773263821%_)))
                              (_%tl263775263828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263773263821%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263775263828%_))
                              (let ((_%e263776263831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263775263828%_))))
                                (let ((_%hd263777263835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263776263831%_)))
                                      (_%tl263778263838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263776263831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263778263838%_))
                                      (let ((_%e263779263841%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263778263838%_))))
                                        (let ((_%hd263780263845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263779263841%_)))
                                              (_%tl263781263848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263779263841%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263781263848%_))
                                              (let ((_%e263782263851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263781263848%_))))
                                                (let ((_%hd263783263855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263782263851%_)))
                                                      (_%tl263784263858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263782263851%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl263784263858%_))
                                                      (let ((_%e263785263861%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl263784263858%_))))
                (let ((_%hd263786263865%_
                       (let () (declare (not safe)) (##car _%e263785263861%_)))
                      (_%tl263787263868%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e263785263861%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263787263868%_))
                      (let ((_%e263788263871%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263787263868%_))))
                        (let ((_%hd263789263875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263788263871%_)))
                              (_%tl263790263878%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263788263871%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263790263878%_))
                              (let ((_%e263791263881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263790263878%_))))
                                (let ((_%hd263792263885%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263791263881%_)))
                                      (_%tl263793263888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263791263881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263793263888%_))
                                      (let ((_%e263794263891%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263793263888%_))))
                                        (let ((_%hd263795263895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263794263891%_)))
                                              (_%tl263796263898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263794263891%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263796263898%_))
                                              (let ((_%e263797263901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263796263898%_))))
                                                (let ((_%hd263798263905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263797263901%_)))
                                                      (_%tl263799263908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263797263901%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl263799263908%_))
                                                      (let ((_%e263800263911%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl263799263908%_))))
                (let ((_%hd263801263915%_
                       (let () (declare (not safe)) (##car _%e263800263911%_)))
                      (_%tl263802263918%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e263800263911%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263802263918%_))
                      (let ((_%e263803263921%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263802263918%_))))
                        (let ((_%hd263804263925%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263803263921%_)))
                              (_%tl263805263928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263803263921%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263805263928%_))
                              (let ((_%e263806263931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263805263928%_))))
                                (let ((_%hd263807263935%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263806263931%_)))
                                      (_%tl263808263938%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263806263931%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263808263938%_))
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
                                                        (cons _%hd263777263835%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%hd263780263845%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd263783263855%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%hd263786263865%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%hd263789263875%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%hd263792263885%_ '()))
                                        (cons _%hd263795263895%_
                                              (cons _%hd263798263905%_
                                                    (cons _%hd263801263915%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd263804263925%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%hd263807263935%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g263760263814%_ _%g263761263818%_))))
                              (_%g263760263814%_ _%g263761263818%_))))
                      (_%g263760263814%_ _%g263761263818%_))))
              (_%g263760263814%_ _%g263761263818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263760263814%_
                                               _%g263761263818%_))))
                                      (_%g263760263814%_ _%g263761263818%_))))
                              (_%g263760263814%_ _%g263761263818%_))))
                      (_%g263760263814%_ _%g263761263818%_))))
              (_%g263760263814%_ _%g263761263818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263760263814%_
                                               _%g263761263818%_))))
                                      (_%g263760263814%_ _%g263761263818%_))))
                              (_%g263760263814%_ _%g263761263818%_))))
                      (_%g263760263814%_ _%g263761263818%_)))))
          (_%g263759263995%_ _%$stx263756%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx263999%_)
        (let* ((_%g264003264017%_
                (lambda (_%g264004264013%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264004264013%_))))
               (_%g264002264058%_
                (lambda (_%g264004264021%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264004264021%_))
                      (let ((_%e264006264024%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264004264021%_))))
                        (let ((_%hd264007264028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264006264024%_)))
                              (_%tl264008264031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264006264024%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264008264031%_))
                              (let ((_%e264009264034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264008264031%_))))
                                (let ((_%hd264010264038%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264009264034%_)))
                                      (_%tl264011264041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264009264034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264011264041%_))
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
                                                        (cons _%hd264010264038%_
                                                              '()))
                                                  '()))
                                      (_%g264003264017%_ _%g264004264021%_))))
                              (_%g264003264017%_ _%g264004264021%_))))
                      (_%g264003264017%_ _%g264004264021%_)))))
          (_%g264002264058%_ _%$stx263999%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx264062%_)
        (let* ((_%g264066264080%_
                (lambda (_%g264067264076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264067264076%_))))
               (_%g264065264121%_
                (lambda (_%g264067264084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264067264084%_))
                      (let ((_%e264069264087%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264067264084%_))))
                        (let ((_%hd264070264091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264069264087%_)))
                              (_%tl264071264094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264069264087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264071264094%_))
                              (let ((_%e264072264097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264071264094%_))))
                                (let ((_%hd264073264101%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264072264097%_)))
                                      (_%tl264074264104%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264072264097%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264074264104%_))
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
                                                        (cons _%hd264073264101%_
                                                              '()))
                                                  '()))
                                      (_%g264066264080%_ _%g264067264084%_))))
                              (_%g264066264080%_ _%g264067264084%_))))
                      (_%g264066264080%_ _%g264067264084%_)))))
          (_%g264065264121%_ _%$stx264062%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx264125%_)
        (let* ((_%g264129264151%_
                (lambda (_%g264130264147%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264130264147%_))))
               (_%g264128264220%_
                (lambda (_%g264130264155%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264130264155%_))
                      (let ((_%e264134264158%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264130264155%_))))
                        (let ((_%hd264135264162%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264134264158%_)))
                              (_%tl264136264165%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264134264158%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264136264165%_))
                              (let ((_%e264137264168%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264136264165%_))))
                                (let ((_%hd264138264172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264137264168%_)))
                                      (_%tl264139264175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264137264168%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264139264175%_))
                                      (let ((_%e264140264178%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264139264175%_))))
                                        (let ((_%hd264141264182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264140264178%_)))
                                              (_%tl264142264185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264140264178%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264142264185%_))
                                              (let ((_%e264143264188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264142264185%_))))
                                                (let ((_%hd264144264192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264143264188%_)))
                                                      (_%tl264145264195%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264143264188%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264145264195%_))
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
                                (cons _%hd264138264172%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%hd264141264182%_ '()))
                                (cons _%hd264144264192%_ '()))))
              (_%g264129264151%_ _%g264130264155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264129264151%_
                                               _%g264130264155%_))))
                                      (_%g264129264151%_ _%g264130264155%_))))
                              (_%g264129264151%_ _%g264130264155%_))))
                      (_%g264129264151%_ _%g264130264155%_)))))
          (_%g264128264220%_ _%$stx264125%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx264224%_)
        (let* ((_%g264228264250%_
                (lambda (_%g264229264246%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264229264246%_))))
               (_%g264227264319%_
                (lambda (_%g264229264254%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264229264254%_))
                      (let ((_%e264233264257%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264229264254%_))))
                        (let ((_%hd264234264261%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264233264257%_)))
                              (_%tl264235264264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264233264257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264235264264%_))
                              (let ((_%e264236264267%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264235264264%_))))
                                (let ((_%hd264237264271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264236264267%_)))
                                      (_%tl264238264274%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264236264267%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264238264274%_))
                                      (let ((_%e264239264277%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264238264274%_))))
                                        (let ((_%hd264240264281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264239264277%_)))
                                              (_%tl264241264284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264239264277%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264241264284%_))
                                              (let ((_%e264242264287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264241264284%_))))
                                                (let ((_%hd264243264291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264242264287%_)))
                                                      (_%tl264244264294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264242264287%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264244264294%_))
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
                                (cons _%hd264237264271%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%hd264240264281%_ '()))
                                (cons _%hd264243264291%_ '()))))
              (_%g264228264250%_ _%g264229264254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264228264250%_
                                               _%g264229264254%_))))
                                      (_%g264228264250%_ _%g264229264254%_))))
                              (_%g264228264250%_ _%g264229264254%_))))
                      (_%g264228264250%_ _%g264229264254%_)))))
          (_%g264227264319%_ _%$stx264224%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx264323%_)
        (let* ((_%g264327264341%_
                (lambda (_%g264328264337%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264328264337%_))))
               (_%g264326264382%_
                (lambda (_%g264328264345%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264328264345%_))
                      (let ((_%e264330264348%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264328264345%_))))
                        (let ((_%hd264331264352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264330264348%_)))
                              (_%tl264332264355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264330264348%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264332264355%_))
                              (let ((_%e264333264358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264332264355%_))))
                                (let ((_%hd264334264362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264333264358%_)))
                                      (_%tl264335264365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264333264358%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264335264365%_))
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
                                                        (cons _%hd264334264362%_
                                                              '()))
                                                  '()))
                                      (_%g264327264341%_ _%g264328264345%_))))
                              (_%g264327264341%_ _%g264328264345%_))))
                      (_%g264327264341%_ _%g264328264345%_)))))
          (_%g264326264382%_ _%$stx264323%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx264386%_)
        (let* ((_%g264390264408%_
                (lambda (_%g264391264404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264391264404%_))))
               (_%g264389264463%_
                (lambda (_%g264391264412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264391264412%_))
                      (let ((_%e264394264415%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264391264412%_))))
                        (let ((_%hd264395264419%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264394264415%_)))
                              (_%tl264396264422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264394264415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264396264422%_))
                              (let ((_%e264397264425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264396264422%_))))
                                (let ((_%hd264398264429%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264397264425%_)))
                                      (_%tl264399264432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264397264425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264399264432%_))
                                      (let ((_%e264400264435%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264399264432%_))))
                                        (let ((_%hd264401264439%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264400264435%_)))
                                              (_%tl264402264442%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264400264435%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264402264442%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd264398264429%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd264401264439%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264390264408%_
                                               _%g264391264412%_))))
                                      (_%g264390264408%_ _%g264391264412%_))))
                              (_%g264390264408%_ _%g264391264412%_))))
                      (_%g264390264408%_ _%g264391264412%_)))))
          (_%g264389264463%_ _%$stx264386%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx264467%_)
        (let* ((_%__stx268783268784%_ _%$stx264467%_)
               (_%g264474264535%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268783268784%_)))))
          (let ((_%__kont268786268787%_
                 (lambda (_%g264476264773%_ _%g264477264775%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264477264775%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g264476264773%_ '()))
                                     '())))))
                (_%__kont268788268789%_
                 (lambda (_%g264487264712%_
                          _%g264488264714%_
                          _%g264489264715%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264489264715%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g264488264714%_ '()))
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
                                 (cons _%g264487264712%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont268790268791%_
                 (lambda (_%g264506264636%_ _%g264507264638%_)
                   (cons _%g264507264638%_
                         (cons _%g264506264636%_ (cons '#f '())))))
                (_%__kont268792268793%_
                 (lambda (_%g264514264586%_
                          _%g264515264588%_
                          _%g264516264589%_)
                   (cons _%g264516264589%_
                         (cons _%g264515264588%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g264514264586%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268783268784%_))
                (let ((_%e264478264743%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx268783268784%_))))
                  (let ((_%tl264480264750%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264478264743%_)))
                        (_%hd264479264747%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264478264743%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264480264750%_))
                        (let ((_%e264481264753%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264480264750%_))))
                          (let ((_%tl264483264760%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264481264753%_)))
                                (_%hd264482264757%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264481264753%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264483264760%_))
                                (let ((_%e264484264763%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264483264760%_))))
                                  (let ((_%tl264486264770%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264484264763%_)))
                                        (_%hd264485264767%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264484264763%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264486264770%_))
                                        (_%__kont268786268787%_
                                         _%hd264485264767%_
                                         _%hd264482264757%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl264486264770%_))
                                            (let ((_%e264499264688%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl264486264770%_))))
                                              (let ((_%tl264501264695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e264499264688%_)))
                                                    (_%hd264500264692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e264499264688%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd264500264692%_))
                                                    (let ((_%e264502264698%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd264500264692%_))))
                                                      (if (equal? _%e264502264698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl264501264695%_))
                      (let ((_%e264503264702%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl264501264695%_))))
                        (let ((_%tl264505264709%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264503264702%_)))
                              (_%hd264504264706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264503264702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl264505264709%_))
                              (_%__kont268788268789%_
                               _%hd264504264706%_
                               _%hd264485264767%_
                               _%hd264482264757%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd264485264767%_))
                                  (let ((_%e264526264572%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd264485264767%_))))
                                    (declare (not safe))
                                    (_%g264474264535%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g264474264535%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd264485264767%_))
                          (let ((_%e264526264572%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd264485264767%_))))
                            (if (equal? _%e264526264572%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264501264695%_))
                                    (_%__kont268792268793%_
                                     _%hd264500264692%_
                                     _%hd264482264757%_
                                     _%hd264479264747%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g264474264535%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g264474264535%_))))
                          (let () (declare (not safe)) (_%g264474264535%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd264485264767%_))
                      (let ((_%e264526264572%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd264485264767%_))))
                        (if (equal? _%e264526264572%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl264501264695%_))
                                (_%__kont268792268793%_
                                 _%hd264500264692%_
                                 _%hd264482264757%_
                                 _%hd264479264747%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g264474264535%_)))
                            (let () (declare (not safe)) (_%g264474264535%_))))
                      (let () (declare (not safe)) (_%g264474264535%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd264485264767%_))
                                                        (let ((_%e264526264572%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd264485264767%_))))
                  (if (equal? _%e264526264572%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl264501264695%_))
                          (_%__kont268792268793%_
                           _%hd264500264692%_
                           _%hd264482264757%_
                           _%hd264479264747%_)
                          (let () (declare (not safe)) (_%g264474264535%_)))
                      (let () (declare (not safe)) (_%g264474264535%_))))
                (let () (declare (not safe)) (_%g264474264535%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd264485264767%_))
                                                (let ((_%e264526264572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd264485264767%_))))
                                                  (declare (not safe))
                                                  (_%g264474264535%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g264474264535%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264483264760%_))
                                    (_%__kont268790268791%_
                                     _%hd264482264757%_
                                     _%hd264479264747%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g264474264535%_))))))
                        (let () (declare (not safe)) (_%g264474264535%_)))))
                (let () (declare (not safe)) (_%g264474264535%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx264794%_)
        (let* ((_%g264798264827%_
                (lambda (_%g264799264823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264799264823%_))))
               (_%g264797264932%_
                (lambda (_%g264799264831%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264799264831%_))
                      (let ((_%e264801264834%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264799264831%_))))
                        (let ((_%hd264802264838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264801264834%_)))
                              (_%tl264803264841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264801264834%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl264803264841%_))
                              (let ((_g269413_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl264803264841%_
                                        '0))))
                                (begin
                                  (let ((_g269414_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269413_)
                                               (##values-length _g269413_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269414_ 2)))
                                        (error "Context expects 2 values"
                                               _g269414_)))
                                  (let ((_%target264804264844%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269413_ 0)))
                                        (_%tl264806264847%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269413_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264806264847%_))
                                        (letrec ((_%loop264807264850%_
                                                  (lambda (_%hd264805264854%_
                                                           _%clause264811264857%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd264805264854%_))
                                                        (let ((_%e264808264859%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd264805264854%_))))
                  (let ((_%lp-hd264809264863%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264808264859%_)))
                        (_%lp-tl264810264866%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264808264859%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd264809264863%_))
                        (let ((_g269415_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd264809264863%_
                                  '0))))
                          (begin
                            (let ((_g269416_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g269415_)
                                         (##values-length _g269415_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g269416_ 2)))
                                  (error "Context expects 2 values"
                                         _g269416_)))
                            (let ((_%target264813264869%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g269415_ 0)))
                                  (_%tl264815264872%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g269415_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl264815264872%_))
                                  (letrec ((_%loop264816264875%_
                                            (lambda (_%hd264814264879%_
                                                     _%clause264820264882%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd264814264879%_))
                                                  (let ((_%e264817264884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd264814264879%_))))
                                                    (let ((_%lp-hd264818264888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264817264884%_)))
                                                          (_%lp-tl264819264891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264817264884%_))))
                                                      (_%loop264816264875%_
                                                       _%lp-tl264819264891%_
                                                       (cons _%lp-hd264818264888%_
                                                             _%clause264820264882%_))))
                                                  (let ((_%clause264821264894%_
                                                         (reverse _%clause264820264882%_)))
                                                    (_%loop264807264850%_
                                                     _%lp-tl264810264866%_
                                                     (cons _%clause264821264894%_
                                                           _%clause264811264857%_)))))))
                                    (_%loop264816264875%_
                                     _%target264813264869%_
                                     '()))
                                  (_%g264798264827%_ _%g264799264831%_)))))
                        (_%g264798264827%_ _%g264799264831%_))))
                (let ((_%clause264812264897%_
                       (reverse _%clause264811264857%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp269417
                                           (lambda (_%g264915264920%_
                                                    _%g264916264923%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp269418
                                                                (lambda (_%g264917264926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g264918264929%_)
                          (cons _%g264917264926%_ _%g264918264929%_))))
                   (declare (not safe))
                   (foldr__0 __tmp269418 '() _%g264915264920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g264916264923%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp269417
                                       '()
                                       _%clause264812264897%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop264807264850%_
                                           _%target264804264844%_
                                           '()))
                                        (_%g264798264827%_
                                         _%g264799264831%_)))))
                              (_%g264798264827%_ _%g264799264831%_))))
                      (_%g264798264827%_ _%g264799264831%_)))))
          (_%g264797264932%_ _%$stx264794%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx264938%_)
        (let* ((_%g264942264960%_
                (lambda (_%g264943264956%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264943264956%_))))
               (_%g264941265015%_
                (lambda (_%g264943264964%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264943264964%_))
                      (let ((_%e264946264967%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264943264964%_))))
                        (let ((_%hd264947264971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264946264967%_)))
                              (_%tl264948264974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264946264967%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264948264974%_))
                              (let ((_%e264949264977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264948264974%_))))
                                (let ((_%hd264950264981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264949264977%_)))
                                      (_%tl264951264984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264949264977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264951264984%_))
                                      (let ((_%e264952264987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264951264984%_))))
                                        (let ((_%hd264953264991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264952264987%_)))
                                              (_%tl264954264994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264952264987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264954264994%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd264950264981%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd264953264991%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264942264960%_
                                               _%g264943264964%_))))
                                      (_%g264942264960%_ _%g264943264964%_))))
                              (_%g264942264960%_ _%g264943264964%_))))
                      (_%g264942264960%_ _%g264943264964%_)))))
          (_%g264941265015%_ _%$stx264938%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx265019%_)
        (let* ((_%g265023265041%_
                (lambda (_%g265024265037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265024265037%_))))
               (_%g265022265096%_
                (lambda (_%g265024265045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265024265045%_))
                      (let ((_%e265027265048%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265024265045%_))))
                        (let ((_%hd265028265052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265027265048%_)))
                              (_%tl265029265055%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265027265048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265029265055%_))
                              (let ((_%e265030265058%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265029265055%_))))
                                (let ((_%hd265031265062%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265030265058%_)))
                                      (_%tl265032265065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265030265058%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265032265065%_))
                                      (let ((_%e265033265068%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265032265065%_))))
                                        (let ((_%hd265034265072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265033265068%_)))
                                              (_%tl265035265075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265033265068%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265035265075%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd265031265062%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd265034265072%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265023265041%_
                                               _%g265024265045%_))))
                                      (_%g265023265041%_ _%g265024265045%_))))
                              (_%g265023265041%_ _%g265024265045%_))))
                      (_%g265023265041%_ _%g265024265045%_)))))
          (_%g265022265096%_ _%$stx265019%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx265100%_)
        (let* ((_%g265104265133%_
                (lambda (_%g265105265129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265105265129%_))))
               (_%g265103265229%_
                (lambda (_%g265105265137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265105265137%_))
                      (let ((_%e265108265140%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265105265137%_))))
                        (let ((_%hd265109265144%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265108265140%_)))
                              (_%tl265110265147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265108265140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265110265147%_))
                              (let ((_g269419_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl265110265147%_
                                        '0))))
                                (begin
                                  (let ((_g269420_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269419_)
                                               (##values-length _g269419_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269420_ 2)))
                                        (error "Context expects 2 values"
                                               _g269420_)))
                                  (let ((_%target265111265150%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269419_ 0)))
                                        (_%tl265113265153%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269419_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265113265153%_))
                                        (letrec ((_%loop265114265156%_
                                                  (lambda (_%hd265112265160%_
                                                           _%rule265118265163%_
                                                           _%proc265119265164%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265112265160%_))
                                                        (let ((_%e265115265166%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265112265160%_))))
                  (let ((_%lp-hd265116265170%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265115265166%_)))
                        (_%lp-tl265117265173%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265115265166%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd265116265170%_))
                        (let ((_%e265122265176%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd265116265170%_))))
                          (let ((_%hd265123265180%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265122265176%_)))
                                (_%tl265124265183%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265122265176%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265124265183%_))
                                (let ((_%e265125265186%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265124265183%_))))
                                  (let ((_%hd265126265190%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265125265186%_)))
                                        (_%tl265127265193%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265125265186%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265127265193%_))
                                        (_%loop265114265156%_
                                         _%lp-tl265117265173%_
                                         (cons _%hd265126265190%_
                                               _%rule265118265163%_)
                                         (cons _%hd265123265180%_
                                               _%proc265119265164%_))
                                        (_%g265104265133%_
                                         _%g265105265137%_))))
                                (_%g265104265133%_ _%g265105265137%_))))
                        (_%g265104265133%_ _%g265105265137%_))))
                (let ((_%rule265120265196%_ (reverse _%rule265118265163%_))
                      (_%proc265121265198%_ (reverse _%proc265119265164%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%rule265120265196%_
                             _%proc265121265198%_))
                          (let ((__tmp269421
                                 (lambda (_%g265217265221%_
                                          _%g265218265224%_
                                          _%g265219265226%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%g265218265224%_
                                                     (cons _%g265217265221%_
                                                           '())))
                                         _%g265219265226%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp269421
                             '()
                             _%rule265120265196%_
                             _%proc265121265198%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop265114265156%_
                                           _%target265111265150%_
                                           '()
                                           '()))
                                        (_%g265104265133%_
                                         _%g265105265137%_)))))
                              (_%g265104265133%_ _%g265105265137%_))))
                      (_%g265104265133%_ _%g265105265137%_)))))
          (_%g265103265229%_ _%$stx265100%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx265234%_)
        (let* ((_%g265238265256%_
                (lambda (_%g265239265252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265239265252%_))))
               (_%g265237265311%_
                (lambda (_%g265239265260%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265239265260%_))
                      (let ((_%e265242265263%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265239265260%_))))
                        (let ((_%hd265243265267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265242265263%_)))
                              (_%tl265244265270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265242265263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265244265270%_))
                              (let ((_%e265245265273%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265244265270%_))))
                                (let ((_%hd265246265277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265245265273%_)))
                                      (_%tl265247265280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265245265273%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265247265280%_))
                                      (let ((_%e265248265283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265247265280%_))))
                                        (let ((_%hd265249265287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265248265283%_)))
                                              (_%tl265250265290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265248265283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265250265290%_))
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
                                                (cons _%hd265246265277%_ '()))
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
              (cons _%hd265249265287%_ '())))
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
                                (cons _%hd265246265277%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265238265256%_
                                               _%g265239265260%_))))
                                      (_%g265238265256%_ _%g265239265260%_))))
                              (_%g265238265256%_ _%g265239265260%_))))
                      (_%g265238265256%_ _%g265239265260%_)))))
          (_%g265237265311%_ _%$stx265234%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx265315%_)
        (let* ((_%__stx268901268902%_ _%$stx265315%_)
               (_%g265320265345%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268901268902%_)))))
          (let ((_%__kont268904268905%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont268906268907%_
                 (lambda (_%g265325265392%_
                          _%g265326265394%_
                          _%g265327265395%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g265327265395%_
                                           (cons _%g265326265394%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g265325265392%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268901268902%_))
                (let ((_%e265322265421%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx268901268902%_))))
                  (let ((_%tl265324265428%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265322265421%_)))
                        (_%hd265323265425%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265322265421%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl265324265428%_))
                        (_%__kont268904268905%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl265324265428%_))
                            (let ((_%e265331265362%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl265324265428%_))))
                              (let ((_%tl265333265369%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e265331265362%_)))
                                    (_%hd265332265366%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e265331265362%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd265332265366%_))
                                    (let ((_%e265334265372%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd265332265366%_))))
                                      (let ((_%tl265336265379%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e265334265372%_)))
                                            (_%hd265335265376%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e265334265372%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl265336265379%_))
                                            (let ((_%e265337265382%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl265336265379%_))))
                                              (let ((_%tl265339265389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265337265382%_)))
                                                    (_%hd265338265386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265337265382%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl265339265389%_))
                                                    (_%__kont268906268907%_
                                                     _%tl265333265369%_
                                                     _%hd265338265386%_
                                                     _%hd265335265376%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g265320265345%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g265320265345%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g265320265345%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g265320265345%_))))))
                (let () (declare (not safe)) (_%g265320265345%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx265439%_)
        (let* ((_%__stx268945268946%_ _%$stx265439%_)
               (_%g265444265475%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268945268946%_)))))
          (let ((_%__kont268948268949%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont268950268951%_
                 (lambda (_%g265449265540%_
                          _%g265450265542%_
                          _%g265451265543%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g265451265543%_
                                           (let ((__tmp269422
                                                  (lambda (_%g265563265566%_
                                                           _%g265564265569%_)
                                                    (cons _%g265563265566%_
                                                          _%g265564265569%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp269422
                                              '()
                                              _%g265450265542%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g265449265540%_)
                                     '()))))))
            (let ((_%__match268988268989%_
                   (lambda (_%e265452265482%_
                            _%hd265453265486%_
                            _%tl265454265489%_
                            _%e265455265492%_
                            _%hd265456265496%_
                            _%tl265457265499%_
                            _%e265458265502%_
                            _%hd265459265506%_
                            _%tl265460265509%_
                            _%__splice268952268953%_
                            _%target265461265512%_
                            _%tl265463265515%_)
                     (letrec ((_%loop265464265518%_
                               (lambda (_%hd265462265522%_ _%sig265468265525%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd265462265522%_))
                                     (let ((_%e265465265527%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd265462265522%_))))
                                       (let ((_%lp-tl265467265534%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e265465265527%_)))
                                             (_%lp-hd265466265531%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e265465265527%_))))
                                         (_%loop265464265518%_
                                          _%lp-tl265467265534%_
                                          (cons _%lp-hd265466265531%_
                                                _%sig265468265525%_))))
                                     (let ((_%sig265469265537%_
                                            (reverse _%sig265468265525%_)))
                                       (_%__kont268950268951%_
                                        _%tl265457265499%_
                                        _%sig265469265537%_
                                        _%hd265459265506%_))))))
                       (_%loop265464265518%_ _%target265461265512%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268945268946%_))
                  (let ((_%e265446265579%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx268945268946%_))))
                    (let ((_%tl265448265586%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265446265579%_)))
                          (_%hd265447265583%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265446265579%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl265448265586%_))
                          (_%__kont268948268949%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265448265586%_))
                              (let ((_%e265455265492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265448265586%_))))
                                (let ((_%tl265457265499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265455265492%_)))
                                      (_%hd265456265496%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265455265492%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd265456265496%_))
                                      (let ((_%e265458265502%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd265456265496%_))))
                                        (let ((_%tl265460265509%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265458265502%_)))
                                              (_%hd265459265506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265458265502%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl265460265509%_))
                                              (let ((_%__splice268952268953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl265460265509%_
                                                        '0))))
                                                (let ((_%tl265463265515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice268952268953%_
                                                          '1)))
                                                      (_%target265461265512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice268952268953%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl265463265515%_))
                                                      (_%__match268988268989%_
                                                       _%e265446265579%_
                                                       _%hd265447265583%_
                                                       _%tl265448265586%_
                                                       _%e265455265492%_
                                                       _%hd265456265496%_
                                                       _%tl265457265499%_
                                                       _%e265458265502%_
                                                       _%hd265459265506%_
                                                       _%tl265460265509%_
                                                       _%__splice268952268953%_
                                                       _%target265461265512%_
                                                       _%tl265463265515%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g265444265475%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265444265475%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g265444265475%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g265444265475%_))))))
                  (let () (declare (not safe)) (_%g265444265475%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx265598%_)
        (let* ((_%__stx268991268992%_ _%$stx265598%_)
               (_%g265603265650%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268991268992%_)))))
          (let ((_%__kont268994268995%_
                 (lambda (_%g265605265808%_ _%g265606265810%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g265606265810%_
                               (let ((__tmp269423
                                      (lambda (_%g265830265833%_
                                               _%g265831265836%_)
                                        (cons _%g265830265833%_
                                              _%g265831265836%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp269423
                                  '()
                                  _%g265605265808%_))))))
                (_%__kont268998268999%_
                 (lambda (_%g265628265705%_ _%g265629265707%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g265629265707%_
                               (let ((__tmp269424
                                      (lambda (_%g265724265727%_
                                               _%g265725265730%_)
                                        (cons _%g265724265727%_
                                              _%g265725265730%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp269424
                                  '()
                                  _%g265628265705%_)))))))
            (let* ((_%__match269058269059%_
                    (lambda (_%e265630265657%_
                             _%hd265631265661%_
                             _%tl265632265664%_
                             _%e265633265667%_
                             _%hd265634265671%_
                             _%tl265635265674%_
                             _%__splice269000269001%_
                             _%target265636265677%_
                             _%tl265638265680%_)
                      (letrec ((_%loop265639265683%_
                                (lambda (_%hd265637265687%_
                                         _%sig265643265690%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd265637265687%_))
                                      (let ((_%e265640265692%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd265637265687%_))))
                                        (let ((_%lp-tl265642265699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265640265692%_)))
                                              (_%lp-hd265641265696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265640265692%_))))
                                          (_%loop265639265683%_
                                           _%lp-tl265642265699%_
                                           (cons _%lp-hd265641265696%_
                                                 _%sig265643265690%_))))
                                      (let ((_%sig265644265702%_
                                             (reverse _%sig265643265690%_)))
                                        (_%__kont268998268999%_
                                         _%sig265644265702%_
                                         _%hd265634265671%_))))))
                        (_%loop265639265683%_ _%target265636265677%_ '()))))
                   (_%__match269050269051%_
                    (lambda (_%e265630265657%_
                             _%hd265631265661%_
                             _%tl265632265664%_
                             _%e265633265667%_
                             _%hd265634265671%_
                             _%tl265635265674%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl265635265674%_))
                          (let ((_%__splice269000269001%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl265635265674%_
                                    '0))))
                            (let ((_%tl265638265680%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269000269001%_
                                      '1)))
                                  (_%target265636265677%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269000269001%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl265638265680%_))
                                  (_%__match269058269059%_
                                   _%e265630265657%_
                                   _%hd265631265661%_
                                   _%tl265632265664%_
                                   _%e265633265667%_
                                   _%hd265634265671%_
                                   _%tl265635265674%_
                                   _%__splice269000269001%_
                                   _%target265636265677%_
                                   _%tl265638265680%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g265603265650%_)))))
                          (let () (declare (not safe)) (_%g265603265650%_)))))
                   (_%__match269038269039%_
                    (lambda (_%e265607265740%_
                             _%hd265608265744%_
                             _%tl265609265747%_
                             _%e265610265750%_
                             _%hd265611265754%_
                             _%tl265612265757%_
                             _%e265613265760%_
                             _%hd265614265764%_
                             _%tl265615265767%_
                             _%e265616265770%_
                             _%hd265617265774%_
                             _%tl265618265777%_
                             _%__splice268996268997%_
                             _%target265619265780%_
                             _%tl265621265783%_)
                      (letrec ((_%loop265622265786%_
                                (lambda (_%hd265620265790%_
                                         _%sig265626265793%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd265620265790%_))
                                      (let ((_%e265623265795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd265620265790%_))))
                                        (let ((_%lp-tl265625265802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265623265795%_)))
                                              (_%lp-hd265624265799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265623265795%_))))
                                          (_%loop265622265786%_
                                           _%lp-tl265625265802%_
                                           (cons _%lp-hd265624265799%_
                                                 _%sig265626265793%_))))
                                      (let ((_%sig265627265805%_
                                             (reverse _%sig265626265793%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl265615265767%_))
                                            (_%__kont268994268995%_
                                             _%sig265627265805%_
                                             _%hd265611265754%_)
                                            (_%__match269050269051%_
                                             _%e265607265740%_
                                             _%hd265608265744%_
                                             _%tl265609265747%_
                                             _%e265610265750%_
                                             _%hd265611265754%_
                                             _%tl265612265757%_)))))))
                        (_%loop265622265786%_ _%target265619265780%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268991268992%_))
                  (let ((_%e265607265740%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx268991268992%_))))
                    (let ((_%tl265609265747%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265607265740%_)))
                          (_%hd265608265744%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265607265740%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl265609265747%_))
                          (let ((_%e265610265750%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl265609265747%_))))
                            (let ((_%tl265612265757%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265610265750%_)))
                                  (_%hd265611265754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265610265750%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl265612265757%_))
                                  (let ((_%e265613265760%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl265612265757%_))))
                                    (let ((_%tl265615265767%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e265613265760%_)))
                                          (_%hd265614265764%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e265613265760%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd265614265764%_))
                                          (let ((_%e265616265770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd265614265764%_))))
                                            (let ((_%tl265618265777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e265616265770%_)))
                                                  (_%hd265617265774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e265616265770%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd265617265774%_))
                                                  (if (let ((__tmp269425
                                                             |gxc[1]#_g269426_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp269425
                                                         _%hd265617265774%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl265618265777%_))
                                                          (let ((_%__splice268996268997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl265618265777%_
                            '0))))
                    (let ((_%tl265621265783%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice268996268997%_ '1)))
                          (_%target265619265780%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice268996268997%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl265621265783%_))
                          (_%__match269038269039%_
                           _%e265607265740%_
                           _%hd265608265744%_
                           _%tl265609265747%_
                           _%e265610265750%_
                           _%hd265611265754%_
                           _%tl265612265757%_
                           _%e265613265760%_
                           _%hd265614265764%_
                           _%tl265615265767%_
                           _%e265616265770%_
                           _%hd265617265774%_
                           _%tl265618265777%_
                           _%__splice268996268997%_
                           _%target265619265780%_
                           _%tl265621265783%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265612265757%_))
                              (let ((_%__splice269000269001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl265612265757%_
                                        '0))))
                                (let ((_%tl265638265680%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice269000269001%_
                                          '1)))
                                      (_%target265636265677%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice269000269001%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl265638265680%_))
                                      (_%__match269058269059%_
                                       _%e265607265740%_
                                       _%hd265608265744%_
                                       _%tl265609265747%_
                                       _%e265610265750%_
                                       _%hd265611265754%_
                                       _%tl265612265757%_
                                       _%__splice269000269001%_
                                       _%target265636265677%_
                                       _%tl265638265680%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g265603265650%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g265603265650%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl265612265757%_))
                      (let ((_%__splice269000269001%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl265612265757%_
                                '0))))
                        (let ((_%tl265638265680%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269000269001%_ '1)))
                              (_%target265636265677%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269000269001%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl265638265680%_))
                              (_%__match269058269059%_
                               _%e265607265740%_
                               _%hd265608265744%_
                               _%tl265609265747%_
                               _%e265610265750%_
                               _%hd265611265754%_
                               _%tl265612265757%_
                               _%__splice269000269001%_
                               _%target265636265677%_
                               _%tl265638265680%_)
                              (let ()
                                (declare (not safe))
                                (_%g265603265650%_)))))
                      (let () (declare (not safe)) (_%g265603265650%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl265612265757%_))
                  (let ((_%__splice269000269001%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl265612265757%_
                            '0))))
                    (let ((_%tl265638265680%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269000269001%_ '1)))
                          (_%target265636265677%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269000269001%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl265638265680%_))
                          (_%__match269058269059%_
                           _%e265607265740%_
                           _%hd265608265744%_
                           _%tl265609265747%_
                           _%e265610265750%_
                           _%hd265611265754%_
                           _%tl265612265757%_
                           _%__splice269000269001%_
                           _%target265636265677%_
                           _%tl265638265680%_)
                          (let () (declare (not safe)) (_%g265603265650%_)))))
                  (let () (declare (not safe)) (_%g265603265650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl265612265757%_))
                                                      (let ((_%__splice269000269001%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl265612265757%_
                        '0))))
                (let ((_%tl265638265680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269000269001%_ '1)))
                      (_%target265636265677%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269000269001%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl265638265680%_))
                      (_%__match269058269059%_
                       _%e265607265740%_
                       _%hd265608265744%_
                       _%tl265609265747%_
                       _%e265610265750%_
                       _%hd265611265754%_
                       _%tl265612265757%_
                       _%__splice269000269001%_
                       _%target265636265677%_
                       _%tl265638265680%_)
                      (let () (declare (not safe)) (_%g265603265650%_)))))
              (let () (declare (not safe)) (_%g265603265650%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl265612265757%_))
                                              (let ((_%__splice269000269001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl265612265757%_
                                                        '0))))
                                                (let ((_%tl265638265680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269000269001%_
                                                          '1)))
                                                      (_%target265636265677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269000269001%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl265638265680%_))
                                                      (_%__match269058269059%_
                                                       _%e265607265740%_
                                                       _%hd265608265744%_
                                                       _%tl265609265747%_
                                                       _%e265610265750%_
                                                       _%hd265611265754%_
                                                       _%tl265612265757%_
                                                       _%__splice269000269001%_
                                                       _%target265636265677%_
                                                       _%tl265638265680%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g265603265650%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265603265650%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265612265757%_))
                                      (let ((_%__splice269000269001%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl265612265757%_
                                                '0))))
                                        (let ((_%tl265638265680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269000269001%_
                                                  '1)))
                                              (_%target265636265677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269000269001%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265638265680%_))
                                              (_%__match269058269059%_
                                               _%e265607265740%_
                                               _%hd265608265744%_
                                               _%tl265609265747%_
                                               _%e265610265750%_
                                               _%hd265611265754%_
                                               _%tl265612265757%_
                                               _%__splice269000269001%_
                                               _%target265636265677%_
                                               _%tl265638265680%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g265603265650%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g265603265650%_))))))
                          (let () (declare (not safe)) (_%g265603265650%_)))))
                  (let () (declare (not safe)) (_%g265603265650%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx266993%_ _%id266995%_)
        (let ((_%proc266999%_
               (let ((__tmp269427
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id266995%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp269427))))
          (if (procedure? _%proc266999%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx266993%_
                 _%id266995%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx266984%_ _%id266986%_)
        (let ((_%klass266990%_
               (let ((__tmp269428
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id266986%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp269428))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass266990%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx266984%_
                 _%id266986%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx266234%_ _%proc266236%_ _%sig266237%_)
        (letrec ((_%signature-arity266239%_
                  (lambda (_%args266916%_)
                    (let _%loop266919%_ ((_%rest266922%_ _%args266916%_)
                                         (_%count266924%_ '0))
                      (let* ((_%rest266925266936%_ _%rest266922%_)
                             (_%E266929266942%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest266925266936%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K266932266973%_
                               (lambda (_%rest266970%_)
                                 (_%loop266919%_
                                  _%rest266970%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count266924%_ '1)))))
                              (_%K266931266962%_ (lambda () _%count266924%_))
                              (_%K266930266950%_
                               (lambda () (cons _%count266924%_ '()))))
                          (let ((_%try-match266927266966%_
                                 (lambda ()
                                   (if (null? _%rest266925266936%_)
                                       (_%K266931266962%_)
                                       (_%K266930266950%_)))))
                            (if (pair? _%rest266925266936%_)
                                (let* ((_%tl266934266977%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest266925266936%_)))
                                       (_%rest266981%_ _%tl266934266977%_))
                                  (_%K266932266973%_ _%rest266981%_))
                                (_%try-match266927266966%_))))))))
                 (_%make-signature266241%_
                  (lambda (_%args266798%_
                           _%return266800%_
                           _%effect266801%_
                           _%unchecked266802%_)
                    (let ((__tmp269429
                           (lambda (_%g266803266805%_)
                             (|gxc[1]#verify-class!|
                              _%ctx266234%_
                              _%g266803266805%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp269429 _%args266798%_))
                    (|gxc[1]#verify-class!| _%ctx266234%_ _%return266800%_)
                    (if _%unchecked266802%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx266234%_
                         _%unchecked266802%_)
                        '#!void)
                    (let ((_%arity266809%_
                           (_%signature-arity266239%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args266798%_)))))
                      (if _%effect266801%_
                          (let ((_%effect266812%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect266801%_))))
                            (if (and (list? _%effect266812%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect266812%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx266234%_
                                   _%proc266236%_
                                   _%effect266812%_))))
                          '#!void)
                      (cons _%arity266809%_
                            (cons (let* ((_%g266815266838%_
                                          (lambda (_%g266816266834%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g266816266834%_))))
                                         (_%g266814266912%_
                                          (lambda (_%g266816266842%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g266816266842%_))
                                                (let ((_%e266821266845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g266816266842%_))))
                                                  (let ((_%hd266822266849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e266821266845%_)))
                                                        (_%tl266823266852%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e266821266845%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl266823266852%_))
                                                        (let ((_%e266824266855%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl266823266852%_))))
                  (let ((_%hd266825266859%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266824266855%_)))
                        (_%tl266826266862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266824266855%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl266826266862%_))
                        (let ((_%e266827266865%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266826266862%_))))
                          (let ((_%hd266828266869%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266827266865%_)))
                                (_%tl266829266872%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266827266865%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl266829266872%_))
                                (let ((_%e266830266875%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl266829266872%_))))
                                  (let ((_%hd266831266879%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e266830266875%_)))
                                        (_%tl266832266882%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e266830266875%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl266832266882%_))
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
                        (cons _%hd266822266849%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%hd266825266859%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%hd266828266869%_ '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%hd266831266879%_
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
                                        (_%g266815266838%_
                                         _%g266816266842%_))))
                                (_%g266815266838%_ _%g266816266842%_))))
                        (_%g266815266838%_ _%g266816266842%_))))
                (_%g266815266838%_ _%g266816266842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g266815266838%_
                                                 _%g266816266842%_)))))
                                    (_%g266814266912%_
                                     (list _%args266798%_
                                           _%return266800%_
                                           _%effect266801%_
                                           _%unchecked266802%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx266234%_ _%proc266236%_)
          (let* ((_%__stx269069269070%_ _%sig266237%_)
                 (_%g266248266351%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx269069269070%_)))))
            (let ((_%__kont269072269073%_
                   (lambda (_%g266250266779%_ _%g266251266781%_)
                     (_%make-signature266241%_
                      _%g266251266781%_
                      _%g266250266779%_
                      '#f
                      '#f)))
                  (_%__kont269074269075%_
                   (lambda (_%g266258266730%_
                            _%g266259266732%_
                            _%g266260266733%_)
                     (_%make-signature266241%_
                      _%g266260266733%_
                      _%g266259266732%_
                      _%g266258266730%_
                      '#f)))
                  (_%__kont269076269077%_
                   (lambda (_%g266274266654%_
                            _%g266275266656%_
                            _%g266276266657%_)
                     (_%make-signature266241%_
                      _%g266276266657%_
                      _%g266275266656%_
                      _%g266274266654%_
                      (let ((__tmp269430
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc266236%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp269430)))))
                  (_%__kont269078269079%_
                   (lambda (_%g266294266560%_
                            _%g266295266562%_
                            _%g266296266563%_
                            _%g266297266564%_)
                     (_%make-signature266241%_
                      _%g266297266564%_
                      _%g266296266563%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g266294266560%_)))))
                  (_%__kont269080269081%_
                   (lambda (_%g266318266467%_ _%g266319266469%_)
                     (_%make-signature266241%_
                      _%g266319266469%_
                      _%g266318266467%_
                      '#f
                      (let ((__tmp269431
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc266236%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp269431)))))
                  (_%__kont269082269083%_
                   (lambda (_%g266330266402%_
                            _%g266331266404%_
                            _%g266332266405%_)
                     (_%make-signature266241%_
                      _%g266332266405%_
                      _%g266331266404%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g266330266402%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269069269070%_))
                  (let ((_%e266252266759%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269069269070%_))))
                    (let ((_%tl266254266766%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266252266759%_)))
                          (_%hd266253266763%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266252266759%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl266254266766%_))
                          (let ((_%e266255266769%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl266254266766%_))))
                            (let ((_%tl266257266776%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e266255266769%_)))
                                  (_%hd266256266773%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e266255266769%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl266257266776%_))
                                  (_%__kont269072269073%_
                                   _%hd266256266773%_
                                   _%hd266253266763%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl266257266776%_))
                                      (let ((_%e266267266706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl266257266776%_))))
                                        (let ((_%tl266269266713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266267266706%_)))
                                              (_%hd266268266710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266267266706%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd266268266710%_))
                                              (let ((_%e266270266716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd266268266710%_))))
                                                (if (equal? _%e266270266716%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl266269266713%_))
                                                        (let ((_%e266271266720%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl266269266713%_))))
                  (let ((_%tl266273266727%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266271266720%_)))
                        (_%hd266272266724%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266271266720%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl266273266727%_))
                        (_%__kont269074269075%_
                         _%hd266272266724%_
                         _%hd266256266773%_
                         _%hd266253266763%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl266273266727%_))
                            (let ((_%e266290266640%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl266273266727%_))))
                              (let ((_%tl266292266647%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e266290266640%_)))
                                    (_%hd266291266644%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e266290266640%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd266291266644%_))
                                    (let ((_%e266293266650%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd266291266644%_))))
                                      (if (equal? _%e266293266650%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl266292266647%_))
                                              (_%__kont269076269077%_
                                               _%hd266272266724%_
                                               _%hd266256266773%_
                                               _%hd266253266763%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266292266647%_))
                                                  (let ((_%e266315266550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266292266647%_))))
                                                    (let ((_%tl266317266557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266315266550%_)))
                                                          (_%hd266316266554%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266315266550%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl266317266557%_))
                                                          (_%__kont269078269079%_
                                                           _%hd266316266554%_
                                                           _%hd266272266724%_
                                                           _%hd266256266773%_
                                                           _%hd266253266763%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g266248266351%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266248266351%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g266248266351%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g266248266351%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g266248266351%_))))))
                (let () (declare (not safe)) (_%g266248266351%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e266270266716%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl266269266713%_))
                                                            (_%__kont269080269081%_
                                                             _%hd266256266773%_
                                                             _%hd266253266763%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl266269266713%_))
                        (let ((_%e266343266392%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266269266713%_))))
                          (let ((_%tl266345266399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266343266392%_)))
                                (_%hd266344266396%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266343266392%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl266345266399%_))
                                (_%__kont269082269083%_
                                 _%hd266344266396%_
                                 _%hd266256266773%_
                                 _%hd266253266763%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g266248266351%_)))))
                        (let () (declare (not safe)) (_%g266248266351%_))))
                (let () (declare (not safe)) (_%g266248266351%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g266248266351%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g266248266351%_))))))
                          (let () (declare (not safe)) (_%g266248266351%_)))))
                  (let () (declare (not safe)) (_%g266248266351%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig265845%_)
        (let* ((_%g265848265928%_
                (lambda (_%g265849265924%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265849265924%_))))
               (_%g265847266230%_
                (lambda (_%g265849265932%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265849265932%_))
                      (let ((_%e265855265935%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265849265932%_))))
                        (let ((_%hd265856265939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265855265935%_)))
                              (_%tl265857265942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265855265935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265857265942%_))
                              (let ((_%e265858265945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265857265942%_))))
                                (let ((_%hd265859265949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265858265945%_)))
                                      (_%tl265860265952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265858265945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd265859265949%_))
                                      (let ((_%e265861265955%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd265859265949%_))))
                                        (if (equal? _%e265861265955%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl265860265952%_))
                                                (let ((_%e265862265959%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl265860265952%_))))
                                                  (let ((_%hd265863265963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e265862265959%_)))
                                                        (_%tl265864265966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e265862265959%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265863265963%_))
                                                        (let ((_%e265865265969%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265863265963%_))))
                  (let ((_%hd265866265973%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265865265969%_)))
                        (_%tl265867265976%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265865265969%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd265866265973%_))
                        (if (let ((__tmp269432 |gxc[1]#_g269433_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp269432
                               _%hd265866265973%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265867265976%_))
                                (let ((_%e265868265979%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265867265976%_))))
                                  (let ((_%hd265869265983%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265868265979%_)))
                                        (_%tl265870265986%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265868265979%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265870265986%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl265864265966%_))
                                            (let ((_%e265871265989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl265864265966%_))))
                                              (let ((_%hd265872265993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265871265989%_)))
                                                    (_%tl265873265996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265871265989%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd265872265993%_))
                                                    (let ((_%e265874265999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd265872265993%_))))
                                                      (if (equal? _%e265874265999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl265873265996%_))
                      (let ((_%e265875266003%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl265873265996%_))))
                        (let ((_%hd265876266007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265875266003%_)))
                              (_%tl265877266010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265875266003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd265876266007%_))
                              (let ((_%e265878266013%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd265876266007%_))))
                                (let ((_%hd265879266017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265878266013%_)))
                                      (_%tl265880266020%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265878266013%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd265879266017%_))
                                      (if (let ((__tmp269434
                                                 |gxc[1]#_g269435_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp269434
                                             _%hd265879266017%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265880266020%_))
                                              (let ((_%e265881266023%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265880266020%_))))
                                                (let ((_%hd265882266027%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265881266023%_)))
                                                      (_%tl265883266030%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265881266023%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl265883266030%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl265877266010%_))
                                                          (let ((_%e265884266033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl265877266010%_))))
                    (let ((_%hd265885266037%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265884266033%_)))
                          (_%tl265886266040%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265884266033%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd265885266037%_))
                          (let ((_%e265887266043%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd265885266037%_))))
                            (if (equal? _%e265887266043%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl265886266040%_))
                                    (let ((_%e265888266047%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl265886266040%_))))
                                      (let ((_%hd265889266051%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e265888266047%_)))
                                            (_%tl265890266054%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e265888266047%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd265889266051%_))
                                            (let ((_%e265891266057%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd265889266051%_))))
                                              (let ((_%hd265892266061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265891266057%_)))
                                                    (_%tl265893266064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265891266057%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd265892266061%_))
                                                    (if (let ((__tmp269436
                                                               |gxc[1]#_g269437_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp269436
                                                           _%hd265892266061%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl265893266064%_))
                                                            (let ((_%e265894266067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl265893266064%_))))
                      (let ((_%hd265895266071%_
                             (let ()
                               (declare (not safe))
                               (##car _%e265894266067%_)))
                            (_%tl265896266074%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e265894266067%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl265896266074%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265890266054%_))
                                (let ((_%e265897266077%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265890266054%_))))
                                  (let ((_%hd265898266081%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265897266077%_)))
                                        (_%tl265899266084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265897266077%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd265898266081%_))
                                        (let ((_%e265900266087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd265898266081%_))))
                                          (if (equal? _%e265900266087%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265899266084%_))
                                                  (let ((_%e265901266091%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265899266084%_))))
                                                    (let ((_%hd265902266095%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265901266091%_)))
                                                          (_%tl265903266098%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265901266091%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd265902266095%_))
                                                          (let ((_%e265904266101%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd265902266095%_))))
                    (let ((_%hd265905266105%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265904266101%_)))
                          (_%tl265906266108%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265904266101%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd265905266105%_))
                          (if (let ((__tmp269438 |gxc[1]#_g269439_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp269438
                                 _%hd265905266105%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl265906266108%_))
                                  (let ((_%e265907266111%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl265906266108%_))))
                                    (let ((_%hd265908266115%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e265907266111%_)))
                                          (_%tl265909266118%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e265907266111%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl265909266118%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265903266098%_))
                                              (let ((_%e265910266121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265903266098%_))))
                                                (let ((_%hd265911266125%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265910266121%_)))
                                                      (_%tl265912266128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265910266121%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd265911266125%_))
                                                      (let ((_%e265913266131%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd265911266125%_))))
                (if (equal? _%e265913266131%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265912266128%_))
                        (let ((_%e265914266135%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265912266128%_))))
                          (let ((_%hd265915266139%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265914266135%_)))
                                (_%tl265916266142%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265914266135%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd265915266139%_))
                                (let ((_%e265917266145%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd265915266139%_))))
                                  (let ((_%hd265918266149%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265917266145%_)))
                                        (_%tl265919266152%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265917266145%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd265918266149%_))
                                        (if (let ((__tmp269440
                                                   |gxc[1]#_g269441_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp269440
                                               _%hd265918266149%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl265919266152%_))
                                                (let ((_%e265920266155%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl265919266152%_))))
                                                  (let ((_%hd265921266159%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e265920266155%_)))
                                                        (_%tl265922266162%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e265920266155%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl265922266162%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl265916266142%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd265908266115%_))
                        (cons _%hd265908266115%_
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
                                                            (cons _%hd265882266027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%hd265921266159%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%g265848265928%_ _%g265849265932%_))
                (_%g265848265928%_ _%g265849265932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g265848265928%_
                                                 _%g265849265932%_))
                                            (_%g265848265928%_
                                             _%g265849265932%_))
                                        (_%g265848265928%_
                                         _%g265849265932%_))))
                                (_%g265848265928%_ _%g265849265932%_))))
                        (_%g265848265928%_ _%g265849265932%_))
                    (_%g265848265928%_ _%g265849265932%_)))
              (_%g265848265928%_ _%g265849265932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265848265928%_
                                               _%g265849265932%_))
                                          (_%g265848265928%_
                                           _%g265849265932%_))))
                                  (_%g265848265928%_ _%g265849265932%_))
                              (_%g265848265928%_ _%g265849265932%_))
                          (_%g265848265928%_ _%g265849265932%_))))
                  (_%g265848265928%_ _%g265849265932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g265848265928%_
                                                   _%g265849265932%_))
                                              (_%g265848265928%_
                                               _%g265849265932%_)))
                                        (_%g265848265928%_
                                         _%g265849265932%_))))
                                (_%g265848265928%_ _%g265849265932%_))
                            (_%g265848265928%_ _%g265849265932%_))))
                    (_%g265848265928%_ _%g265849265932%_))
                (_%g265848265928%_ _%g265849265932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g265848265928%_
                                                     _%g265849265932%_))))
                                            (_%g265848265928%_
                                             _%g265849265932%_))))
                                    (_%g265848265928%_ _%g265849265932%_))
                                (_%g265848265928%_ _%g265849265932%_)))
                          (_%g265848265928%_ _%g265849265932%_))))
                  (_%g265848265928%_ _%g265849265932%_))
              (_%g265848265928%_ _%g265849265932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265848265928%_
                                               _%g265849265932%_))
                                          (_%g265848265928%_
                                           _%g265849265932%_))
                                      (_%g265848265928%_ _%g265849265932%_))))
                              (_%g265848265928%_ _%g265849265932%_))))
                      (_%g265848265928%_ _%g265849265932%_))
                  (_%g265848265928%_ _%g265849265932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g265848265928%_
                                                     _%g265849265932%_))))
                                            (_%g265848265928%_
                                             _%g265849265932%_))
                                        (_%g265848265928%_
                                         _%g265849265932%_))))
                                (_%g265848265928%_ _%g265849265932%_))
                            (_%g265848265928%_ _%g265849265932%_))
                        (_%g265848265928%_ _%g265849265932%_))))
                (_%g265848265928%_ _%g265849265932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g265848265928%_
                                                 _%g265849265932%_))
                                            (_%g265848265928%_
                                             _%g265849265932%_)))
                                      (_%g265848265928%_ _%g265849265932%_))))
                              (_%g265848265928%_ _%g265849265932%_))))
                      (_%g265848265928%_ _%g265849265932%_)))))
          (_%g265847266230%_ _%sig265845%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx267002%_)
        (let* ((_%g267005267023%_
                (lambda (_%g267006267019%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267006267019%_))))
               (_%g267004267078%_
                (lambda (_%g267006267027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267006267027%_))
                      (let ((_%e267009267030%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267006267027%_))))
                        (let ((_%hd267010267034%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267009267030%_)))
                              (_%tl267011267037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267009267030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267011267037%_))
                              (let ((_%e267012267040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267011267037%_))))
                                (let ((_%hd267013267044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267012267040%_)))
                                      (_%tl267014267047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267012267040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl267014267047%_))
                                      (let ((_%e267015267050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl267014267047%_))))
                                        (let ((_%hd267016267054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267015267050%_)))
                                              (_%tl267017267057%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267015267050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl267017267057%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%hd267013267044%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%hd267016267054%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx267002%_
                                                     _%hd267013267044%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx267002%_
                                                     _%hd267016267054%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%hd267013267044%_
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
                                                (cons _%hd267016267054%_ '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267005267023%_
                                                   _%g267006267027%_))
                                              (_%g267005267023%_
                                               _%g267006267027%_))))
                                      (_%g267005267023%_ _%g267006267027%_))))
                              (_%g267005267023%_ _%g267006267027%_))))
                      (_%g267005267023%_ _%g267006267027%_)))))
          (_%g267004267078%_ _%stx267002%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx267082%_)
        (let* ((_%g267085267109%_
                (lambda (_%g267086267105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267086267105%_))))
               (_%g267084267390%_
                (lambda (_%g267086267113%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267086267113%_))
                      (let ((_%e267089267116%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267086267113%_))))
                        (let ((_%hd267090267120%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267089267116%_)))
                              (_%tl267091267123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267089267116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267091267123%_))
                              (let ((_%e267092267126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267091267123%_))))
                                (let ((_%hd267093267130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267092267126%_)))
                                      (_%tl267094267133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267092267126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl267094267133%_))
                                      (let ((_g269442_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl267094267133%_
                                                '0))))
                                        (begin
                                          (let ((_g269443_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g269442_)
                                                       (##values-length
                                                        _g269442_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g269443_ 2)))
                                                (error "Context expects 2 values"
                                                       _g269443_)))
                                          (let ((_%target267095267136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g269442_ 0)))
                                                (_%tl267097267139%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g269442_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl267097267139%_))
                                                (letrec ((_%loop267098267142%_
                                                          (lambda (_%hd267096267146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature267102267149%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd267096267146%_))
                        (let ((_%e267099267151%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd267096267146%_))))
                          (let ((_%lp-hd267100267155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267099267151%_)))
                                (_%lp-tl267101267158%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267099267151%_))))
                            (_%loop267098267142%_
                             _%lp-tl267101267158%_
                             (cons _%lp-hd267100267155%_
                                   _%signature267102267149%_))))
                        (let ((_%signature267103267161%_
                               (reverse _%signature267102267149%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd267093267130%_))
                              (let* ((_%g267184267199%_
                                      (lambda (_%g267185267195%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g267185267195%_))))
                                     (_%g267183267378%_
                                      (lambda (_%g267185267203%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%g267185267203%_))
                                            (let ((_%e267188267206%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%g267185267203%_))))
                                              (let ((_%hd267189267210%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e267188267206%_)))
                                                    (_%tl267190267213%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e267188267206%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl267190267213%_))
                                                    (let ((_%e267191267216%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%tl267190267213%_))))
                                                      (let ((_%hd267192267220%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e267191267216%_)))
                    (_%tl267193267223%_
                     (let () (declare (not safe)) (##cdr _%e267191267216%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl267193267223%_))
                    (let* ((_%g267244267252%_
                            (lambda (_%g267245267248%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g267245267248%_))))
                           (_%g267243267374%_
                            (lambda (_%g267245267256%_)
                              (let* ((_%unchecked267272%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%hd267192267220%_))
                                     (_%g267275267283%_
                                      (lambda (_%g267276267279%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g267276267279%_))))
                                     (_%g267274267306%_
                                      (lambda (_%g267276267287%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%g267245267256%_
                                                    (cons _%g267276267287%_
                                                          '()))))))
                                (_%g267274267306%_
                                 (if _%unchecked267272%_
                                     (let* ((_%g267310267325%_
                                             (lambda (_%g267311267321%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g267311267321%_))))
                                            (_%g267309267370%_
                                             (lambda (_%g267311267329%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g267311267329%_))
                                                   (let ((_%e267314267332%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g267311267329%_))))
                                                     (let ((_%hd267315267336%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e267314267332%_)))
                                                           (_%tl267316267339%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e267314267332%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl267316267339%_))
                                                           (let ((_%e267317267342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl267316267339%_))))
                     (let ((_%hd267318267346%_
                            (let ()
                              (declare (not safe))
                              (##car _%e267317267342%_)))
                           (_%tl267319267349%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e267317267342%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl267319267349%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%hd267315267336%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%hd267189267210%_ '()))
                 (cons '#f (cons 'signature: (cons _%hd267318267346%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%g267310267325%_ _%g267311267329%_))))
                   (_%g267310267325%_ _%g267311267329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g267310267325%_
                                                    _%g267311267329%_)))))
                                       (_%g267309267370%_ _%unchecked267272%_))
                                     '(begin)))))))
                      (_%g267243267374%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%hd267093267130%_
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
                                                           (cons _%hd267189267210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%hd267192267220%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%g267184267199%_ _%g267185267203%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267184267199%_
                                                     _%g267185267203%_))))
                                            (_%g267184267199%_
                                             _%g267185267203%_)))))
                                (_%g267183267378%_
                                 (|gxc[1]#parse-signature|
                                  _%stx267082%_
                                  _%hd267093267130%_
                                  (let ((__tmp269444
                                         (lambda (_%g267381267384%_
                                                  _%g267382267387%_)
                                           (cons _%g267381267384%_
                                                 _%g267382267387%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp269444
                                     '()
                                     _%signature267103267161%_)))))
                              (_%g267085267109%_ _%g267086267113%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop267098267142%_
                                                   _%target267095267136%_
                                                   '()))
                                                (_%g267085267109%_
                                                 _%g267086267113%_)))))
                                      (_%g267085267109%_ _%g267086267113%_))))
                              (_%g267085267109%_ _%g267086267113%_))))
                      (_%g267085267109%_ _%g267086267113%_)))))
          (_%g267084267390%_ _%stx267082%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx267395%_)
        (let* ((_%g267398267422%_
                (lambda (_%g267399267418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267399267418%_))))
               (_%g267397268297%_
                (lambda (_%g267399267426%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267399267426%_))
                      (let ((_%e267402267429%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267399267426%_))))
                        (let ((_%hd267403267433%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267402267429%_)))
                              (_%tl267404267436%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267402267429%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267404267436%_))
                              (let ((_%e267405267439%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267404267436%_))))
                                (let ((_%hd267406267443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267405267439%_)))
                                      (_%tl267407267446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267405267439%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl267407267446%_))
                                      (let ((_g269445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl267407267446%_
                                                '0))))
                                        (begin
                                          (let ((_g269446_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g269445_)
                                                       (##values-length
                                                        _g269445_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g269446_ 2)))
                                                (error "Context expects 2 values"
                                                       _g269446_)))
                                          (let ((_%target267408267449%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g269445_ 0)))
                                                (_%tl267410267452%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g269445_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl267410267452%_))
                                                (letrec ((_%loop267411267455%_
                                                          (lambda (_%hd267409267459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature267415267462%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd267409267459%_))
                        (let ((_%e267412267464%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd267409267459%_))))
                          (let ((_%lp-hd267413267468%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267412267464%_)))
                                (_%lp-tl267414267471%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267412267464%_))))
                            (_%loop267411267455%_
                             _%lp-tl267414267471%_
                             (cons _%lp-hd267413267468%_
                                   _%case-signature267415267462%_))))
                        (let ((_%case-signature267416267474%_
                               (reverse _%case-signature267415267462%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd267406267443%_))
                              (let* ((_%signatures267510%_
                                      (map (lambda (_%g267496267498%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx267395%_
                                              _%hd267406267443%_
                                              _%g267496267498%_))
                                           (let ((__tmp269447
                                                  (lambda (_%g267501267504%_
                                                           _%g267502267507%_)
                                                    (cons _%g267501267504%_
                                                          _%g267502267507%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp269447
                                              '()
                                              _%case-signature267416267474%_))))
                                     (_%g267513267539%_
                                      (lambda (_%g267514267535%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g267514267535%_))))
                                     (_%g267512268293%_
                                      (lambda (_%g267514267543%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%g267514267543%_))
                                            (let ((_g269448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%g267514267543%_
                                                      '0))))
                                              (begin
                                                (let ((_g269449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g269448_)
                                                             (##values-length
                                                              _g269448_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g269449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g269449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target267517267546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g269448_
                                                          0)))
                                                      (_%tl267519267549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g269448_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl267519267549%_))
                                                      (letrec ((_%loop267520267552%_
                                                                (lambda (_%hd267518267556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%sig267524267559%_
                                 _%arity267525267560%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd267518267556%_))
                              (let ((_%e267521267562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd267518267556%_))))
                                (let ((_%lp-hd267522267566%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267521267562%_)))
                                      (_%lp-tl267523267569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267521267562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%lp-hd267522267566%_))
                                      (let ((_%e267528267572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%lp-hd267522267566%_))))
                                        (let ((_%hd267529267576%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267528267572%_)))
                                              (_%tl267530267579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267528267572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl267530267579%_))
                                              (let ((_%e267531267582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl267530267579%_))))
                                                (let ((_%hd267532267586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e267531267582%_)))
                                                      (_%tl267533267589%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e267531267582%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl267533267589%_))
                                                      (_%loop267520267552%_
                                                       _%lp-tl267523267569%_
                                                       (cons _%hd267532267586%_
                                                             _%sig267524267559%_)
                                                       (cons _%hd267529267576%_
                                                             _%arity267525267560%_))
                                                      (_%g267513267539%_
                                                       _%g267514267543%_))))
                                              (_%g267513267539%_
                                               _%g267514267543%_))))
                                      (_%g267513267539%_ _%g267514267543%_))))
                              (let ((_%sig267526267592%_
                                     (reverse _%sig267524267559%_))
                                    (_%arity267527267594%_
                                     (reverse _%arity267525267560%_)))
                                (let* ((_%g267615267623%_
                                        (lambda (_%g267616267619%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g267616267619%_))))
                                       (_%g267614268278%_
                                        (lambda (_%g267616267627%_)
                                          (let* ((_%g267643267651%_
                                                  (lambda (_%g267644267647%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g267644267647%_))))
                                                 (_%g267642267673%_
                                                  (lambda (_%g267644267655%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g267616267627%_
                                                                (cons _%g267644267655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g267642267673%_
                                             (let ((_g269450_
                                                    (let _%loop267677%_ ((_%rest267680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures267510%_)
                                 (_%unchecked-proc267682%_ '#f)
                                 (_%unchecked-clauses267683%_ '()))
              (let* ((_%rest267684267692%_ _%rest267680%_)
                     (_%else267686267704%_
                      (lambda ()
                        (values _%unchecked-proc267682%_
                                (reverse! _%unchecked-clauses267683%_))))
                     (_%K267688268145%_
                      (lambda (_%rest267708%_ _%hd267710%_)
                        (let* ((_%g267712267799%_
                                (lambda (_%g267713267795%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g267713267795%_))))
                               (_%g267711268141%_
                                (lambda (_%g267713267803%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g267713267803%_))
                                      (let ((_%e267720267806%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g267713267803%_))))
                                        (let ((_%hd267721267810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267720267806%_)))
                                              (_%tl267722267813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267720267806%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl267722267813%_))
                                              (let ((_%e267723267816%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl267722267813%_))))
                                                (let ((_%hd267724267820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e267723267816%_)))
                                                      (_%tl267725267823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e267723267816%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd267724267820%_))
                                                      (let ((_%e267726267826%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%hd267724267820%_))))
                (let ((_%hd267727267830%_
                       (let () (declare (not safe)) (##car _%e267726267826%_)))
                      (_%tl267728267833%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e267726267826%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl267728267833%_))
                      (let ((_%e267729267836%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl267728267833%_))))
                        (let ((_%hd267730267840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267729267836%_)))
                              (_%tl267731267843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267729267836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%hd267730267840%_))
                              (let ((_%e267732267846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd267730267840%_))))
                                (if (equal? _%e267732267846%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl267731267843%_))
                                        (let ((_%e267733267850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl267731267843%_))))
                                          (let ((_%hd267734267854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e267733267850%_)))
                                                (_%tl267735267857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e267733267850%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd267734267854%_))
                                                (let ((_%e267736267860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%hd267734267854%_))))
                                                  (let ((_%hd267737267864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e267736267860%_)))
                                                        (_%tl267738267867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e267736267860%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd267737267864%_))
                                                        (if (let ((__tmp269452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g269453_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp269452 _%hd267737267864%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl267738267867%_))
                        (let ((_%e267739267870%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl267738267867%_))))
                          (let ((_%hd267740267874%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267739267870%_)))
                                (_%tl267741267877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267739267870%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl267741267877%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl267735267857%_))
                                    (let ((_%e267742267880%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl267735267857%_))))
                                      (let ((_%hd267743267884%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e267742267880%_)))
                                            (_%tl267744267887%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e267742267880%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%hd267743267884%_))
                                            (let ((_%e267745267890%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd267743267884%_))))
                                              (if (equal? _%e267745267890%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl267744267887%_))
                                                      (let ((_%e267746267894%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl267744267887%_))))
                (let ((_%hd267747267898%_
                       (let () (declare (not safe)) (##car _%e267746267894%_)))
                      (_%tl267748267901%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e267746267894%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd267747267898%_))
                      (let ((_%e267749267904%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%hd267747267898%_))))
                        (let ((_%hd267750267908%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267749267904%_)))
                              (_%tl267751267911%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267749267904%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd267750267908%_))
                              (if (let ((__tmp269454 |gxc[1]#_g269455_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp269454
                                     _%hd267750267908%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl267751267911%_))
                                      (let ((_%e267752267914%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl267751267911%_))))
                                        (let ((_%hd267753267918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267752267914%_)))
                                              (_%tl267754267921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267752267914%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl267754267921%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl267748267901%_))
                                                  (let ((_%e267755267924%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl267748267901%_))))
                                                    (let ((_%hd267756267928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e267755267924%_)))
                                                          (_%tl267757267931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e267755267924%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%hd267756267928%_))
                                                          (let ((_%e267758267934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd267756267928%_))))
                    (if (equal? _%e267758267934%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl267757267931%_))
                            (let ((_%e267759267938%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl267757267931%_))))
                              (let ((_%hd267760267942%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e267759267938%_)))
                                    (_%tl267761267945%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e267759267938%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd267760267942%_))
                                    (let ((_%e267762267948%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd267760267942%_))))
                                      (let ((_%hd267763267952%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e267762267948%_)))
                                            (_%tl267764267955%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e267762267948%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd267763267952%_))
                                            (if (let ((__tmp269456
                                                       |gxc[1]#_g269457_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp269456
                                                   _%hd267763267952%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl267764267955%_))
                                                    (let ((_%e267765267958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%tl267764267955%_))))
                                                      (let ((_%hd267766267962%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e267765267958%_)))
                    (_%tl267767267965%_
                     (let () (declare (not safe)) (##cdr _%e267765267958%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl267767267965%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl267761267945%_))
                        (let ((_%e267768267968%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl267761267945%_))))
                          (let ((_%hd267769267972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267768267968%_)))
                                (_%tl267770267975%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267768267968%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd267769267972%_))
                                (let ((_%e267771267978%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd267769267972%_))))
                                  (if (equal? _%e267771267978%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl267770267975%_))
                                          (let ((_%e267772267982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl267770267975%_))))
                                            (let ((_%hd267773267986%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e267772267982%_)))
                                                  (_%tl267774267989%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e267772267982%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd267773267986%_))
                                                  (let ((_%e267775267992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd267773267986%_))))
                                                    (let ((_%hd267776267996%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e267775267992%_)))
                                                          (_%tl267777267999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e267775267992%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd267776267996%_))
                                                          (if (let ((__tmp269458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g269459_|))
                        (declare (not safe))
                        (gx#free-identifier=? __tmp269458 _%hd267776267996%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl267777267999%_))
                          (let ((_%e267778268002%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl267777267999%_))))
                            (let ((_%hd267779268006%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e267778268002%_)))
                                  (_%tl267780268009%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e267778268002%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl267780268009%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl267774267989%_))
                                      (let ((_%e267781268012%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl267774267989%_))))
                                        (let ((_%hd267782268016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267781268012%_)))
                                              (_%tl267783268019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267781268012%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd267782268016%_))
                                              (let ((_%e267784268022%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd267782268016%_))))
                                                (if (equal? _%e267784268022%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl267783268019%_))
                                                        (let ((_%e267785268026%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl267783268019%_))))
                  (let ((_%hd267786268030%_
                         (let ()
                           (declare (not safe))
                           (##car _%e267785268026%_)))
                        (_%tl267787268033%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e267785268026%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd267786268030%_))
                        (let ((_%e267788268036%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd267786268030%_))))
                          (let ((_%hd267789268040%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267788268036%_)))
                                (_%tl267790268043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267788268036%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd267789268040%_))
                                (if (let ((__tmp269460 |gxc[1]#_g269461_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp269460
                                       _%hd267789268040%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl267790268043%_))
                                        (let ((_%e267791268046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl267790268043%_))))
                                          (let ((_%hd267792268050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e267791268046%_)))
                                                (_%tl267793268053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e267791268046%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl267793268053%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl267787268033%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl267725267823%_))
                                                        (let ((_%clause268133%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%hd267721267810%_ '()))
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
                                     (cons _%hd267753267918%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%hd267792268050%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked268135%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%hd267779268006%_))))
                  (_%loop267677%_
                   _%rest267708%_
                   (let ((_%$e268137%_ _%unchecked268135%_))
                     (if _%$e268137%_ _%$e268137%_ _%unchecked-proc267682%_))
                   (cons _%clause268133%_ _%unchecked-clauses267683%_)))
                (_%g267712267799%_ _%g267713267803%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267712267799%_
                                                     _%g267713267803%_))
                                                (_%g267712267799%_
                                                 _%g267713267803%_))))
                                        (_%g267712267799%_ _%g267713267803%_))
                                    (_%g267712267799%_ _%g267713267803%_))
                                (_%g267712267799%_ _%g267713267803%_))))
                        (_%g267712267799%_ _%g267713267803%_))))
                (_%g267712267799%_ _%g267713267803%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267712267799%_
                                                     _%g267713267803%_)))
                                              (_%g267712267799%_
                                               _%g267713267803%_))))
                                      (_%g267712267799%_ _%g267713267803%_))
                                  (_%g267712267799%_ _%g267713267803%_))))
                          (_%g267712267799%_ _%g267713267803%_))
                      (_%g267712267799%_ _%g267713267803%_))
                  (_%g267712267799%_ _%g267713267803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267712267799%_
                                                   _%g267713267803%_))))
                                          (_%g267712267799%_
                                           _%g267713267803%_))
                                      (_%g267712267799%_ _%g267713267803%_)))
                                (_%g267712267799%_ _%g267713267803%_))))
                        (_%g267712267799%_ _%g267713267803%_))
                    (_%g267712267799%_ _%g267713267803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267712267799%_
                                                     _%g267713267803%_))
                                                (_%g267712267799%_
                                                 _%g267713267803%_))
                                            (_%g267712267799%_
                                             _%g267713267803%_))))
                                    (_%g267712267799%_ _%g267713267803%_))))
                            (_%g267712267799%_ _%g267713267803%_))
                        (_%g267712267799%_ _%g267713267803%_)))
                  (_%g267712267799%_ _%g267713267803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267712267799%_
                                                   _%g267713267803%_))
                                              (_%g267712267799%_
                                               _%g267713267803%_))))
                                      (_%g267712267799%_ _%g267713267803%_))
                                  (_%g267712267799%_ _%g267713267803%_))
                              (_%g267712267799%_ _%g267713267803%_))))
                      (_%g267712267799%_ _%g267713267803%_))))
              (_%g267712267799%_ _%g267713267803%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267712267799%_
                                                   _%g267713267803%_)))
                                            (_%g267712267799%_
                                             _%g267713267803%_))))
                                    (_%g267712267799%_ _%g267713267803%_))
                                (_%g267712267799%_ _%g267713267803%_))))
                        (_%g267712267799%_ _%g267713267803%_))
                    (_%g267712267799%_ _%g267713267803%_))
                (_%g267712267799%_ _%g267713267803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g267712267799%_
                                                 _%g267713267803%_))))
                                        (_%g267712267799%_ _%g267713267803%_))
                                    (_%g267712267799%_ _%g267713267803%_)))
                              (_%g267712267799%_ _%g267713267803%_))))
                      (_%g267712267799%_ _%g267713267803%_))))
              (_%g267712267799%_ _%g267713267803%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g267712267799%_
                                               _%g267713267803%_))))
                                      (_%g267712267799%_ _%g267713267803%_)))))
                          (_%g267711268141%_ _%hd267710%_)))))
                (if (pair? _%rest267684267692%_)
                    (let ((_%hd267689268149%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest267684267692%_)))
                          (_%tl267690268152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest267684267692%_))))
                      (let* ((_%hd268155%_ _%hd267689268149%_)
                             (_%rest268158%_ _%tl267690268152%_))
                        (_%K267688268145%_ _%rest268158%_ _%hd268155%_)))
                    (_%else267686267704%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g269451_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g269450_)
                                                              (##values-length
                                                               _g269450_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g269451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g269451_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc268161%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g269450_
                                                           0)))
                                                       (_%unchecked-clauses268163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g269450_
                                                           1))))
                                                   (if _%unchecked-proc268161%_
                                                       (let* ((_%g268165268189%_
                                                               (lambda (_%g268166268185%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g268166268185%_))))
                      (_%g268164268274%_
                       (lambda (_%g268166268193%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%g268166268193%_))
                             (let ((_%e268169268196%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%g268166268193%_))))
                               (let ((_%hd268170268200%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e268169268196%_)))
                                     (_%tl268171268203%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e268169268196%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl268171268203%_))
                                     (let ((_%e268172268206%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl268171268203%_))))
                                       (let ((_%hd268173268210%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e268172268206%_)))
                                             (_%tl268174268213%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e268172268206%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%hd268173268210%_))
                                             (let ((_g269462_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%hd268173268210%_
                                                       '0))))
                                               (begin
                                                 (let ((_g269463_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g269462_)
                                                              (##values-length
                                                               _g269462_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g269463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g269463_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target268175268216%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g269462_
                                                           0)))
                                                       (_%tl268177268219%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g269462_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl268177268219%_))
                                                       (letrec ((_%loop268178268222%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd268176268226%_ _%clause268182268229%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd268176268226%_))
                               (let ((_%e268179268231%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd268176268226%_))))
                                 (let ((_%lp-hd268180268235%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e268179268231%_)))
                                       (_%lp-tl268181268238%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e268179268231%_))))
                                   (_%loop268178268222%_
                                    _%lp-tl268181268238%_
                                    (cons _%lp-hd268180268235%_
                                          _%clause268182268229%_))))
                               (let ((_%clause268183268241%_
                                      (reverse _%clause268182268229%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl268174268213%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%hd268170268200%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp269464
                                        (lambda (_%g268265268268%_
                                                 _%g268266268271%_)
                                          (cons _%g268265268268%_
                                                _%g268266268271%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp269464
                                    '()
                                    _%clause268183268241%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%g268165268189%_
                                      _%g268166268193%_)))))))
                 (_%loop268178268222%_ _%target268175268216%_ '()))
               (_%g268165268189%_ _%g268166268193%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g268165268189%_
                                              _%g268166268193%_))))
                                     (_%g268165268189%_ _%g268166268193%_))))
                             (_%g268165268189%_ _%g268166268193%_)))))
                 (_%g268164268274%_
                  (list _%unchecked-proc268161%_ _%unchecked-clauses268163%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%g267614268278%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%hd267406267443%_
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
                                    _%sig267526267592%_
                                    _%arity267527267594%_))
                                 (let ((__tmp269465
                                        (lambda (_%g268281268285%_
                                                 _%g268282268288%_
                                                 _%g268283268290%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%g268282268288%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%g268281268285%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g268283268290%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp269465
                                    '()
                                    _%sig267526267592%_
                                    _%arity267527267594%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%loop267520267552%_ _%target267517267546%_ '() '()))
              (_%g267513267539%_ _%g267514267543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g267513267539%_
                                             _%g267514267543%_)))))
                                (_%g267512268293%_ _%signatures267510%_))
                              (_%g267398267422%_ _%g267399267426%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop267411267455%_
                                                   _%target267408267449%_
                                                   '()))
                                                (_%g267398267422%_
                                                 _%g267399267426%_)))))
                                      (_%g267398267422%_ _%g267399267426%_))))
                              (_%g267398267422%_ _%g267399267426%_))))
                      (_%g267398267422%_ _%g267399267426%_)))))
          (_%g267397268297%_ _%stx267395%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx268305%_)
        (let* ((_%__stx269285269286%_ _%$stx268305%_)
               (_%g268311268371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269285269286%_)))))
          (let ((_%__kont269288269289%_
                 (lambda (_%g268313268593%_ _%g268314268595%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268314268595%_ '()))
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
                                                       (cons _%g268314268595%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268313268593%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont269290269291%_
                 (lambda (_%g268328268518%_
                          _%g268329268520%_
                          _%g268330268521%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268330268521%_ '()))
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
                                                       (cons _%g268330268521%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268329268520%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g268328268518%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont269292269293%_
                 (lambda (_%g268347268432%_
                          _%g268348268434%_
                          _%g268349268435%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268349268435%_ '()))
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
                                                       (cons _%g268349268435%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268348268434%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g268347268432%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269285269286%_))
                (let ((_%e268315268549%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx269285269286%_))))
                  (let ((_%tl268317268556%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e268315268549%_)))
                        (_%hd268316268553%_
                         (let ()
                           (declare (not safe))
                           (##car _%e268315268549%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl268317268556%_))
                        (let ((_%e268318268559%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl268317268556%_))))
                          (let ((_%tl268320268566%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e268318268559%_)))
                                (_%hd268319268563%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e268318268559%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd268319268563%_))
                                (let ((_%e268321268569%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd268319268563%_))))
                                  (if (equal? _%e268321268569%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl268320268566%_))
                                          (let ((_%e268322268573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl268320268566%_))))
                                            (let ((_%tl268324268580%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e268322268573%_)))
                                                  (_%hd268323268577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e268322268573%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl268324268580%_))
                                                  (let ((_%e268325268583%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl268324268580%_))))
                                                    (let ((_%tl268327268590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e268325268583%_)))
                                                          (_%hd268326268587%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e268325268583%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl268327268590%_))
                                                          (_%__kont269288269289%_
                                                           _%hd268326268587%_
                                                           _%hd268323268577%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g268311268371%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g268311268371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g268311268371%_)))
                                      (if (equal? _%e268321268569%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl268320268566%_))
                                              (let ((_%e268338268488%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl268320268566%_))))
                                                (let ((_%tl268340268495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e268338268488%_)))
                                                      (_%hd268339268492%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e268338268488%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl268340268495%_))
                                                      (let ((_%e268341268498%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl268340268495%_))))
                (let ((_%tl268343268505%_
                       (let () (declare (not safe)) (##cdr _%e268341268498%_)))
                      (_%hd268342268502%_
                       (let ()
                         (declare (not safe))
                         (##car _%e268341268498%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl268343268505%_))
                      (let ((_%e268344268508%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl268343268505%_))))
                        (let ((_%tl268346268515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e268344268508%_)))
                              (_%hd268345268512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e268344268508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl268346268515%_))
                              (_%__kont269290269291%_
                               _%hd268345268512%_
                               _%hd268342268502%_
                               _%hd268339268492%_)
                              (let ()
                                (declare (not safe))
                                (_%g268311268371%_)))))
                      (let () (declare (not safe)) (_%g268311268371%_)))))
              (let () (declare (not safe)) (_%g268311268371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g268311268371%_)))
                                          (if (equal? _%e268321268569%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl268320268566%_))
                                                  (let ((_%e268357268402%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl268320268566%_))))
                                                    (let ((_%tl268359268409%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e268357268402%_)))
                                                          (_%hd268358268406%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e268357268402%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl268359268409%_))
                                                          (let ((_%e268360268412%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl268359268409%_))))
                    (let ((_%tl268362268419%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e268360268412%_)))
                          (_%hd268361268416%_
                           (let ()
                             (declare (not safe))
                             (##car _%e268360268412%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl268362268419%_))
                          (let ((_%e268363268422%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl268362268419%_))))
                            (let ((_%tl268365268429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e268363268422%_)))
                                  (_%hd268364268426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e268363268422%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl268365268429%_))
                                  (_%__kont269292269293%_
                                   _%hd268364268426%_
                                   _%hd268361268416%_
                                   _%hd268358268406%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g268311268371%_)))))
                          (let () (declare (not safe)) (_%g268311268371%_)))))
                  (let () (declare (not safe)) (_%g268311268371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g268311268371%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g268311268371%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g268311268371%_)))))
                        (let () (declare (not safe)) (_%g268311268371%_)))))
                (let () (declare (not safe)) (_%g268311268371%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx268617%_)
        (let* ((_%g268621268641%_
                (lambda (_%g268622268637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g268622268637%_))))
               (_%g268620268710%_
                (lambda (_%g268622268645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g268622268645%_))
                      (let ((_%e268624268648%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g268622268645%_))))
                        (let ((_%hd268625268652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e268624268648%_)))
                              (_%tl268626268655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e268624268648%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl268626268655%_))
                              (let ((_g269466_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl268626268655%_
                                        '0))))
                                (begin
                                  (let ((_g269467_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269466_)
                                               (##values-length _g269466_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269467_ 2)))
                                        (error "Context expects 2 values"
                                               _g269467_)))
                                  (let ((_%target268627268658%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269466_ 0)))
                                        (_%tl268629268661%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269466_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl268629268661%_))
                                        (letrec ((_%loop268630268664%_
                                                  (lambda (_%hd268628268668%_
                                                           _%decl268634268671%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd268628268668%_))
                                                        (let ((_%e268631268673%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd268628268668%_))))
                  (let ((_%lp-hd268632268677%_
                         (let ()
                           (declare (not safe))
                           (##car _%e268631268673%_)))
                        (_%lp-tl268633268680%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e268631268673%_))))
                    (_%loop268630268664%_
                     _%lp-tl268633268680%_
                     (cons _%lp-hd268632268677%_ _%decl268634268671%_))))
                (let ((_%decl268635268683%_ (reverse _%decl268634268671%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp269468
                               (lambda (_%g268701268704%_ _%g268702268707%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%g268701268704%_)
                                       _%g268702268707%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp269468
                           '()
                           _%decl268635268683%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop268630268664%_
                                           _%target268627268658%_
                                           '()))
                                        (_%g268621268641%_
                                         _%g268622268645%_)))))
                              (_%g268621268641%_ _%g268622268645%_))))
                      (_%g268621268641%_ _%g268622268645%_)))))
          (_%g268620268710%_ _%$stx268617%_))))))
