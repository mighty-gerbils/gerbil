(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g269428_|
    (##structure
     gx#syntax-quote::t
     '@list
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
  (define |gxc[1]#_g269443_|
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
  (define |gxc[1]#_g269463_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx262886%_)
        (let* ((_%g262890262908%_
                (lambda (_%g262891262904%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262891262904%_))))
               (_%g262889262963%_
                (lambda (_%g262891262912%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262891262912%_))
                      (let ((_%e262894262915%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262891262912%_))))
                        (let ((_%hd262895262919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262894262915%_)))
                              (_%tl262896262922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262894262915%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262896262922%_))
                              (let ((_%e262897262925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262896262922%_))))
                                (let ((_%hd262898262929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262897262925%_)))
                                      (_%tl262899262932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262897262925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262899262932%_))
                                      (let ((_%e262900262935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262899262932%_))))
                                        (let ((_%hd262901262939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262900262935%_)))
                                              (_%tl262902262942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262900262935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262902262942%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd262898262929%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd262898262929%_ '()))
                      (cons _%hd262901262939%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g262890262908%_
                                                   _%g262891262912%_))
                                              (_%g262890262908%_
                                               _%g262891262912%_))))
                                      (_%g262890262908%_ _%g262891262912%_))))
                              (_%g262890262908%_ _%g262891262912%_))))
                      (_%g262890262908%_ _%g262891262912%_)))))
          (_%g262889262963%_ _%$stx262886%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx262967%_)
        (let* ((_%g262971262989%_
                (lambda (_%g262972262985%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g262972262985%_))))
               (_%g262970263044%_
                (lambda (_%g262972262993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g262972262993%_))
                      (let ((_%e262975262996%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g262972262993%_))))
                        (let ((_%hd262976263000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e262975262996%_)))
                              (_%tl262977263003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e262975262996%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl262977263003%_))
                              (let ((_%e262978263006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl262977263003%_))))
                                (let ((_%hd262979263010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e262978263006%_)))
                                      (_%tl262980263013%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e262978263006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl262980263013%_))
                                      (let ((_%e262981263016%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl262980263013%_))))
                                        (let ((_%hd262982263020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e262981263016%_)))
                                              (_%tl262983263023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e262981263016%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl262983263023%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd262979263010%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd262979263010%_ '()))
                      (cons _%hd262982263020%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g262971262989%_
                                                   _%g262972262993%_))
                                              (_%g262971262989%_
                                               _%g262972262993%_))))
                                      (_%g262971262989%_ _%g262972262993%_))))
                              (_%g262971262989%_ _%g262972262993%_))))
                      (_%g262971262989%_ _%g262972262993%_)))))
          (_%g262970263044%_ _%$stx262967%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx263048%_)
        (let* ((_%g263052263081%_
                (lambda (_%g263053263077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263053263077%_))))
               (_%g263051263177%_
                (lambda (_%g263053263085%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263053263085%_))
                      (let ((_%e263056263088%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263053263085%_))))
                        (let ((_%hd263057263092%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263056263088%_)))
                              (_%tl263058263095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263056263088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263058263095%_))
                              (let ((_g269406_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263058263095%_
                                        '0))))
                                (begin
                                  (let ((_g269407_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269406_)
                                               (##values-length _g269406_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269407_ 2)))
                                        (error "Context expects 2 values"
                                               _g269407_)))
                                  (let ((_%target263059263098%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269406_ 0)))
                                        (_%tl263061263101%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269406_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263061263101%_))
                                        (letrec ((_%loop263062263104%_
                                                  (lambda (_%hd263060263108%_
                                                           _%type263066263111%_
                                                           _%symbol263067263112%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263060263108%_))
                                                        (let ((_%e263063263114%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263060263108%_))))
                  (let ((_%lp-hd263064263118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263063263114%_)))
                        (_%lp-tl263065263121%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263063263114%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263064263118%_))
                        (let ((_%e263070263124%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263064263118%_))))
                          (let ((_%hd263071263128%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263070263124%_)))
                                (_%tl263072263131%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263070263124%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263072263131%_))
                                (let ((_%e263073263134%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263072263131%_))))
                                  (let ((_%hd263074263138%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263073263134%_)))
                                        (_%tl263075263141%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263073263134%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263075263141%_))
                                        (_%loop263062263104%_
                                         _%lp-tl263065263121%_
                                         (cons _%hd263074263138%_
                                               _%type263066263111%_)
                                         (cons _%hd263071263128%_
                                               _%symbol263067263112%_))
                                        (_%g263052263081%_
                                         _%g263053263085%_))))
                                (_%g263052263081%_ _%g263053263085%_))))
                        (_%g263052263081%_ _%g263053263085%_))))
                (let ((_%type263068263144%_ (reverse _%type263066263111%_))
                      (_%symbol263069263146%_
                       (reverse _%symbol263067263112%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%type263068263144%_
                             _%symbol263069263146%_))
                          (let ((__tmp269408
                                 (lambda (_%g263165263169%_
                                          _%g263166263172%_
                                          _%g263167263174%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%g263166263172%_
                                                     (cons _%g263165263169%_
                                                           '())))
                                         _%g263167263174%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp269408
                             '()
                             _%type263068263144%_
                             _%symbol263069263146%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263062263104%_
                                           _%target263059263098%_
                                           '()
                                           '()))
                                        (_%g263052263081%_
                                         _%g263053263085%_)))))
                              (_%g263052263081%_ _%g263053263085%_))))
                      (_%g263052263081%_ _%g263053263085%_)))))
          (_%g263051263177%_ _%$stx263048%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx263182%_)
        (let* ((_%__stx268717268718%_ _%$stx263182%_)
               (_%g263187263229%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268717268718%_)))))
          (let ((_%__kont268720268721%_
                 (lambda (_%g263189263357%_
                          _%g263190263359%_
                          _%g263191263360%_
                          _%g263192263361%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g263192263361%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g263191263360%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%g263190263359%_ '()))
                                           (cons _%g263189263357%_ '())))))))
                (_%__kont268722268723%_
                 (lambda (_%g263208263276%_
                          _%g263209263278%_
                          _%g263210263279%_
                          _%g263211263280%_)
                   (cons _%g263211263280%_
                         (cons _%g263210263279%_
                               (cons _%g263209263278%_
                                     (cons _%g263208263276%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match268756268757%_
                   (lambda (_%e263193263307%_
                            _%hd263194263311%_
                            _%tl263195263314%_
                            _%e263196263317%_
                            _%hd263197263321%_
                            _%tl263198263324%_
                            _%e263199263327%_
                            _%hd263200263331%_
                            _%tl263201263334%_
                            _%e263202263337%_
                            _%hd263203263341%_
                            _%tl263204263344%_
                            _%e263205263347%_
                            _%hd263206263351%_
                            _%tl263207263354%_)
                     (let ((_%g263189263357%_ _%hd263206263351%_)
                           (_%g263190263359%_ _%hd263203263341%_)
                           (_%g263191263360%_ _%hd263200263331%_)
                           (_%g263192263361%_ _%hd263197263321%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263192263361%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263191263360%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g263190263359%_)))
                           (_%__kont268720268721%_
                            _%g263189263357%_
                            _%g263190263359%_
                            _%g263191263360%_
                            _%g263192263361%_)
                           (let ()
                             (declare (not safe))
                             (_%g263187263229%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268717268718%_))
                  (let ((_%e263193263307%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx268717268718%_))))
                    (let ((_%tl263195263314%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e263193263307%_)))
                          (_%hd263194263311%_
                           (let ()
                             (declare (not safe))
                             (##car _%e263193263307%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl263195263314%_))
                          (let ((_%e263196263317%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl263195263314%_))))
                            (let ((_%tl263198263324%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e263196263317%_)))
                                  (_%hd263197263321%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e263196263317%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl263198263324%_))
                                  (let ((_%e263199263327%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl263198263324%_))))
                                    (let ((_%tl263201263334%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e263199263327%_)))
                                          (_%hd263200263331%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e263199263327%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl263201263334%_))
                                          (let ((_%e263202263337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl263201263334%_))))
                                            (let ((_%tl263204263344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e263202263337%_)))
                                                  (_%hd263203263341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e263202263337%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl263204263344%_))
                                                  (let ((_%e263205263347%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl263204263344%_))))
                                                    (let ((_%tl263207263354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e263205263347%_)))
                                                          (_%hd263206263351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e263205263347%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl263207263354%_))
                                                          (_%__match268756268757%_
                                                           _%e263193263307%_
                                                           _%hd263194263311%_
                                                           _%tl263195263314%_
                                                           _%e263196263317%_
                                                           _%hd263197263321%_
                                                           _%tl263198263324%_
                                                           _%e263199263327%_
                                                           _%hd263200263331%_
                                                           _%tl263201263334%_
                                                           _%e263202263337%_
                                                           _%hd263203263341%_
                                                           _%tl263204263344%_
                                                           _%e263205263347%_
                                                           _%hd263206263351%_
                                                           _%tl263207263354%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g263187263229%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl263204263344%_))
                                                      (_%__kont268722268723%_
                                                       _%hd263203263341%_
                                                       _%hd263200263331%_
                                                       _%hd263197263321%_
                                                       _%hd263194263311%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g263187263229%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g263187263229%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g263187263229%_)))))
                          (let () (declare (not safe)) (_%g263187263229%_)))))
                  (let () (declare (not safe)) (_%g263187263229%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx263386%_)
        (let* ((_%g263390263425%_
                (lambda (_%g263391263421%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263391263421%_))))
               (_%g263389263538%_
                (lambda (_%g263391263429%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263391263429%_))
                      (let ((_%e263395263432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263391263429%_))))
                        (let ((_%hd263396263436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263395263432%_)))
                              (_%tl263397263439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263395263432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl263397263439%_))
                              (let ((_g269409_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl263397263439%_
                                        '0))))
                                (begin
                                  (let ((_g269410_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269409_)
                                               (##values-length _g269409_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269410_ 2)))
                                        (error "Context expects 2 values"
                                               _g269410_)))
                                  (let ((_%target263398263442%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269409_ 0)))
                                        (_%tl263400263445%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269409_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl263400263445%_))
                                        (letrec ((_%loop263401263448%_
                                                  (lambda (_%hd263399263452%_
                                                           _%symbol263405263455%_
                                                           _%method263406263456%_
                                                           _%type-t263407263457%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd263399263452%_))
                                                        (let ((_%e263402263459%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd263399263452%_))))
                  (let ((_%lp-hd263403263463%_
                         (let ()
                           (declare (not safe))
                           (##car _%e263402263459%_)))
                        (_%lp-tl263404263466%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e263402263459%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd263403263463%_))
                        (let ((_%e263411263469%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd263403263463%_))))
                          (let ((_%hd263412263473%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263411263469%_)))
                                (_%tl263413263476%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263411263469%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl263413263476%_))
                                (let ((_%e263414263479%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl263413263476%_))))
                                  (let ((_%hd263415263483%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263414263479%_)))
                                        (_%tl263416263486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263414263479%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl263416263486%_))
                                        (let ((_%e263417263489%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl263416263486%_))))
                                          (let ((_%hd263418263493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e263417263489%_)))
                                                (_%tl263419263496%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e263417263489%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263419263496%_))
                                                (_%loop263401263448%_
                                                 _%lp-tl263404263466%_
                                                 (cons _%hd263418263493%_
                                                       _%symbol263405263455%_)
                                                 (cons _%hd263415263483%_
                                                       _%method263406263456%_)
                                                 (cons _%hd263412263473%_
                                                       _%type-t263407263457%_))
                                                (_%g263390263425%_
                                                 _%g263391263429%_))))
                                        (_%g263390263425%_
                                         _%g263391263429%_))))
                                (_%g263390263425%_ _%g263391263429%_))))
                        (_%g263390263425%_ _%g263391263429%_))))
                (let ((_%symbol263408263499%_ (reverse _%symbol263405263455%_))
                      (_%method263409263501%_ (reverse _%method263406263456%_))
                      (_%type-t263410263502%_
                       (reverse _%type-t263407263457%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%symbol263408263499%_
                             _%method263409263501%_
                             _%type-t263410263502%_))
                          (let ((__tmp269411
                                 (lambda (_%g263523263528%_
                                          _%g263524263531%_
                                          _%g263525263533%_
                                          _%g263526263535%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%g263525263533%_
                                                     (cons _%g263524263531%_
                                                           (cons _%g263523263528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g263526263535%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp269411
                             '()
                             _%symbol263408263499%_
                             _%method263409263501%_
                             _%type-t263410263502%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop263401263448%_
                                           _%target263398263442%_
                                           '()
                                           '()
                                           '()))
                                        (_%g263390263425%_
                                         _%g263391263429%_)))))
                              (_%g263390263425%_ _%g263391263429%_))))
                      (_%g263390263425%_ _%g263391263429%_)))))
          (_%g263389263538%_ _%$stx263386%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx263543%_)
        (let* ((_%g263547263580%_
                (lambda (_%g263548263576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263548263576%_))))
               (_%g263546263690%_
                (lambda (_%g263548263584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263548263584%_))
                      (let ((_%e263552263587%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263548263584%_))))
                        (let ((_%hd263553263591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263552263587%_)))
                              (_%tl263554263594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263552263587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263554263594%_))
                              (let ((_%e263555263597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263554263594%_))))
                                (let ((_%hd263556263601%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263555263597%_)))
                                      (_%tl263557263604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263555263597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl263557263604%_))
                                      (let ((_g269412_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl263557263604%_
                                                '0))))
                                        (begin
                                          (let ((_g269413_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g269412_)
                                                       (##values-length
                                                        _g269412_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g269413_ 2)))
                                                (error "Context expects 2 values"
                                                       _g269413_)))
                                          (let ((_%target263558263607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g269412_ 0)))
                                                (_%tl263560263610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g269412_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263560263610%_))
                                                (letrec ((_%loop263561263613%_
                                                          (lambda (_%hd263559263617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol263565263620%_
                           _%method263566263621%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd263559263617%_))
                        (let ((_%e263562263623%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd263559263617%_))))
                          (let ((_%lp-hd263563263627%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e263562263623%_)))
                                (_%lp-tl263564263630%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e263562263623%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd263563263627%_))
                                (let ((_%e263569263633%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd263563263627%_))))
                                  (let ((_%hd263570263637%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e263569263633%_)))
                                        (_%tl263571263640%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e263569263633%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl263571263640%_))
                                        (let ((_%e263572263643%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl263571263640%_))))
                                          (let ((_%hd263573263647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e263572263643%_)))
                                                (_%tl263574263650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e263572263643%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl263574263650%_))
                                                (_%loop263561263613%_
                                                 _%lp-tl263564263630%_
                                                 (cons _%hd263573263647%_
                                                       _%symbol263565263620%_)
                                                 (cons _%hd263570263637%_
                                                       _%method263566263621%_))
                                                (_%g263547263580%_
                                                 _%g263548263584%_))))
                                        (_%g263547263580%_
                                         _%g263548263584%_))))
                                (_%g263547263580%_ _%g263548263584%_))))
                        (let ((_%symbol263567263653%_
                               (reverse _%symbol263565263620%_))
                              (_%method263568263655%_
                               (reverse _%method263566263621%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%symbol263567263653%_
                                     _%method263568263655%_))
                                  (let ((__tmp269414
                                         (lambda (_%g263678263682%_
                                                  _%g263679263685%_
                                                  _%g263680263687%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%hd263556263601%_
                                                             (cons _%g263679263685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g263678263682%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g263680263687%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp269414
                                     '()
                                     _%symbol263567263653%_
                                     _%method263568263655%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop263561263613%_
                                                   _%target263558263607%_
                                                   '()
                                                   '()))
                                                (_%g263547263580%_
                                                 _%g263548263584%_)))))
                                      (_%g263547263580%_ _%g263548263584%_))))
                              (_%g263547263580%_ _%g263548263584%_))))
                      (_%g263547263580%_ _%g263548263584%_)))))
          (_%g263546263690%_ _%$stx263543%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx263695%_)
        (let* ((_%g263699263713%_
                (lambda (_%g263700263709%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263700263709%_))))
               (_%g263698263754%_
                (lambda (_%g263700263717%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263700263717%_))
                      (let ((_%e263702263720%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263700263717%_))))
                        (let ((_%hd263703263724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263702263720%_)))
                              (_%tl263704263727%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263702263720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263704263727%_))
                              (let ((_%e263705263730%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263704263727%_))))
                                (let ((_%hd263706263734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263705263730%_)))
                                      (_%tl263707263737%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263705263730%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263707263737%_))
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
                                                        (cons _%hd263706263734%_
                                                              '()))
                                                  '()))
                                      (_%g263699263713%_ _%g263700263717%_))))
                              (_%g263699263713%_ _%g263700263717%_))))
                      (_%g263699263713%_ _%g263700263717%_)))))
          (_%g263698263754%_ _%$stx263695%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx263758%_)
        (let* ((_%g263762263816%_
                (lambda (_%g263763263812%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g263763263812%_))))
               (_%g263761263997%_
                (lambda (_%g263763263820%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g263763263820%_))
                      (let ((_%e263775263823%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g263763263820%_))))
                        (let ((_%hd263776263827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263775263823%_)))
                              (_%tl263777263830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263775263823%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263777263830%_))
                              (let ((_%e263778263833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263777263830%_))))
                                (let ((_%hd263779263837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263778263833%_)))
                                      (_%tl263780263840%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263778263833%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263780263840%_))
                                      (let ((_%e263781263843%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263780263840%_))))
                                        (let ((_%hd263782263847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263781263843%_)))
                                              (_%tl263783263850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263781263843%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263783263850%_))
                                              (let ((_%e263784263853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263783263850%_))))
                                                (let ((_%hd263785263857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263784263853%_)))
                                                      (_%tl263786263860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263784263853%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl263786263860%_))
                                                      (let ((_%e263787263863%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl263786263860%_))))
                (let ((_%hd263788263867%_
                       (let () (declare (not safe)) (##car _%e263787263863%_)))
                      (_%tl263789263870%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e263787263863%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263789263870%_))
                      (let ((_%e263790263873%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263789263870%_))))
                        (let ((_%hd263791263877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263790263873%_)))
                              (_%tl263792263880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263790263873%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263792263880%_))
                              (let ((_%e263793263883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263792263880%_))))
                                (let ((_%hd263794263887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263793263883%_)))
                                      (_%tl263795263890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263793263883%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl263795263890%_))
                                      (let ((_%e263796263893%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl263795263890%_))))
                                        (let ((_%hd263797263897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e263796263893%_)))
                                              (_%tl263798263900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e263796263893%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl263798263900%_))
                                              (let ((_%e263799263903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl263798263900%_))))
                                                (let ((_%hd263800263907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e263799263903%_)))
                                                      (_%tl263801263910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e263799263903%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl263801263910%_))
                                                      (let ((_%e263802263913%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl263801263910%_))))
                (let ((_%hd263803263917%_
                       (let () (declare (not safe)) (##car _%e263802263913%_)))
                      (_%tl263804263920%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e263802263913%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl263804263920%_))
                      (let ((_%e263805263923%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl263804263920%_))))
                        (let ((_%hd263806263927%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e263805263923%_)))
                              (_%tl263807263930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e263805263923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl263807263930%_))
                              (let ((_%e263808263933%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl263807263930%_))))
                                (let ((_%hd263809263937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e263808263933%_)))
                                      (_%tl263810263940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e263808263933%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl263810263940%_))
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
                                                        (cons _%hd263779263837%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%hd263782263847%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%hd263785263857%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%hd263788263867%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%hd263791263877%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%hd263794263887%_ '()))
                                        (cons _%hd263797263897%_
                                              (cons _%hd263800263907%_
                                                    (cons _%hd263803263917%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd263806263927%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%hd263809263937%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%g263762263816%_ _%g263763263820%_))))
                              (_%g263762263816%_ _%g263763263820%_))))
                      (_%g263762263816%_ _%g263763263820%_))))
              (_%g263762263816%_ _%g263763263820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263762263816%_
                                               _%g263763263820%_))))
                                      (_%g263762263816%_ _%g263763263820%_))))
                              (_%g263762263816%_ _%g263763263820%_))))
                      (_%g263762263816%_ _%g263763263820%_))))
              (_%g263762263816%_ _%g263763263820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g263762263816%_
                                               _%g263763263820%_))))
                                      (_%g263762263816%_ _%g263763263820%_))))
                              (_%g263762263816%_ _%g263763263820%_))))
                      (_%g263762263816%_ _%g263763263820%_)))))
          (_%g263761263997%_ _%$stx263758%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx264001%_)
        (let* ((_%g264005264019%_
                (lambda (_%g264006264015%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264006264015%_))))
               (_%g264004264060%_
                (lambda (_%g264006264023%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264006264023%_))
                      (let ((_%e264008264026%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264006264023%_))))
                        (let ((_%hd264009264030%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264008264026%_)))
                              (_%tl264010264033%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264008264026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264010264033%_))
                              (let ((_%e264011264036%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264010264033%_))))
                                (let ((_%hd264012264040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264011264036%_)))
                                      (_%tl264013264043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264011264036%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264013264043%_))
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
                                                        (cons _%hd264012264040%_
                                                              '()))
                                                  '()))
                                      (_%g264005264019%_ _%g264006264023%_))))
                              (_%g264005264019%_ _%g264006264023%_))))
                      (_%g264005264019%_ _%g264006264023%_)))))
          (_%g264004264060%_ _%$stx264001%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx264064%_)
        (let* ((_%g264068264082%_
                (lambda (_%g264069264078%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264069264078%_))))
               (_%g264067264123%_
                (lambda (_%g264069264086%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264069264086%_))
                      (let ((_%e264071264089%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264069264086%_))))
                        (let ((_%hd264072264093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264071264089%_)))
                              (_%tl264073264096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264071264089%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264073264096%_))
                              (let ((_%e264074264099%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264073264096%_))))
                                (let ((_%hd264075264103%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264074264099%_)))
                                      (_%tl264076264106%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264074264099%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264076264106%_))
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
                                                        (cons _%hd264075264103%_
                                                              '()))
                                                  '()))
                                      (_%g264068264082%_ _%g264069264086%_))))
                              (_%g264068264082%_ _%g264069264086%_))))
                      (_%g264068264082%_ _%g264069264086%_)))))
          (_%g264067264123%_ _%$stx264064%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx264127%_)
        (let* ((_%g264131264153%_
                (lambda (_%g264132264149%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264132264149%_))))
               (_%g264130264222%_
                (lambda (_%g264132264157%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264132264157%_))
                      (let ((_%e264136264160%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264132264157%_))))
                        (let ((_%hd264137264164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264136264160%_)))
                              (_%tl264138264167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264136264160%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264138264167%_))
                              (let ((_%e264139264170%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264138264167%_))))
                                (let ((_%hd264140264174%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264139264170%_)))
                                      (_%tl264141264177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264139264170%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264141264177%_))
                                      (let ((_%e264142264180%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264141264177%_))))
                                        (let ((_%hd264143264184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264142264180%_)))
                                              (_%tl264144264187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264142264180%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264144264187%_))
                                              (let ((_%e264145264190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264144264187%_))))
                                                (let ((_%hd264146264194%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264145264190%_)))
                                                      (_%tl264147264197%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264145264190%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264147264197%_))
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
                                (cons _%hd264140264174%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%hd264143264184%_ '()))
                                (cons _%hd264146264194%_ '()))))
              (_%g264131264153%_ _%g264132264157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264131264153%_
                                               _%g264132264157%_))))
                                      (_%g264131264153%_ _%g264132264157%_))))
                              (_%g264131264153%_ _%g264132264157%_))))
                      (_%g264131264153%_ _%g264132264157%_)))))
          (_%g264130264222%_ _%$stx264127%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx264226%_)
        (let* ((_%g264230264252%_
                (lambda (_%g264231264248%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264231264248%_))))
               (_%g264229264321%_
                (lambda (_%g264231264256%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264231264256%_))
                      (let ((_%e264235264259%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264231264256%_))))
                        (let ((_%hd264236264263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264235264259%_)))
                              (_%tl264237264266%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264235264259%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264237264266%_))
                              (let ((_%e264238264269%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264237264266%_))))
                                (let ((_%hd264239264273%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264238264269%_)))
                                      (_%tl264240264276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264238264269%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264240264276%_))
                                      (let ((_%e264241264279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264240264276%_))))
                                        (let ((_%hd264242264283%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264241264279%_)))
                                              (_%tl264243264286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264241264279%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl264243264286%_))
                                              (let ((_%e264244264289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl264243264286%_))))
                                                (let ((_%hd264245264293%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e264244264289%_)))
                                                      (_%tl264246264296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e264244264289%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl264246264296%_))
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
                                (cons _%hd264239264273%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%hd264242264283%_ '()))
                                (cons _%hd264245264293%_ '()))))
              (_%g264230264252%_ _%g264231264256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264230264252%_
                                               _%g264231264256%_))))
                                      (_%g264230264252%_ _%g264231264256%_))))
                              (_%g264230264252%_ _%g264231264256%_))))
                      (_%g264230264252%_ _%g264231264256%_)))))
          (_%g264229264321%_ _%$stx264226%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx264325%_)
        (let* ((_%g264329264343%_
                (lambda (_%g264330264339%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264330264339%_))))
               (_%g264328264384%_
                (lambda (_%g264330264347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264330264347%_))
                      (let ((_%e264332264350%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264330264347%_))))
                        (let ((_%hd264333264354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264332264350%_)))
                              (_%tl264334264357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264332264350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264334264357%_))
                              (let ((_%e264335264360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264334264357%_))))
                                (let ((_%hd264336264364%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264335264360%_)))
                                      (_%tl264337264367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264335264360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl264337264367%_))
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
                                                        (cons _%hd264336264364%_
                                                              '()))
                                                  '()))
                                      (_%g264329264343%_ _%g264330264347%_))))
                              (_%g264329264343%_ _%g264330264347%_))))
                      (_%g264329264343%_ _%g264330264347%_)))))
          (_%g264328264384%_ _%$stx264325%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx264388%_)
        (let* ((_%g264392264410%_
                (lambda (_%g264393264406%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264393264406%_))))
               (_%g264391264465%_
                (lambda (_%g264393264414%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264393264414%_))
                      (let ((_%e264396264417%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264393264414%_))))
                        (let ((_%hd264397264421%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264396264417%_)))
                              (_%tl264398264424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264396264417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264398264424%_))
                              (let ((_%e264399264427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264398264424%_))))
                                (let ((_%hd264400264431%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264399264427%_)))
                                      (_%tl264401264434%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264399264427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264401264434%_))
                                      (let ((_%e264402264437%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264401264434%_))))
                                        (let ((_%hd264403264441%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264402264437%_)))
                                              (_%tl264404264444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264402264437%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264404264444%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd264400264431%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd264403264441%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264392264410%_
                                               _%g264393264414%_))))
                                      (_%g264392264410%_ _%g264393264414%_))))
                              (_%g264392264410%_ _%g264393264414%_))))
                      (_%g264392264410%_ _%g264393264414%_)))))
          (_%g264391264465%_ _%$stx264388%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx264469%_)
        (let* ((_%__stx268785268786%_ _%$stx264469%_)
               (_%g264476264537%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268785268786%_)))))
          (let ((_%__kont268788268789%_
                 (lambda (_%g264478264775%_ _%g264479264777%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264479264777%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g264478264775%_ '()))
                                     '())))))
                (_%__kont268790268791%_
                 (lambda (_%g264489264714%_
                          _%g264490264716%_
                          _%g264491264717%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g264491264717%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%g264490264716%_ '()))
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
                                 (cons _%g264489264714%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont268792268793%_
                 (lambda (_%g264508264638%_ _%g264509264640%_)
                   (cons _%g264509264640%_
                         (cons _%g264508264638%_ (cons '#f '())))))
                (_%__kont268794268795%_
                 (lambda (_%g264516264588%_
                          _%g264517264590%_
                          _%g264518264591%_)
                   (cons _%g264518264591%_
                         (cons _%g264517264590%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%g264516264588%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268785268786%_))
                (let ((_%e264480264745%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx268785268786%_))))
                  (let ((_%tl264482264752%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264480264745%_)))
                        (_%hd264481264749%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264480264745%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl264482264752%_))
                        (let ((_%e264483264755%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl264482264752%_))))
                          (let ((_%tl264485264762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e264483264755%_)))
                                (_%hd264484264759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e264483264755%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl264485264762%_))
                                (let ((_%e264486264765%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl264485264762%_))))
                                  (let ((_%tl264488264772%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e264486264765%_)))
                                        (_%hd264487264769%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e264486264765%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264488264772%_))
                                        (_%__kont268788268789%_
                                         _%hd264487264769%_
                                         _%hd264484264759%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl264488264772%_))
                                            (let ((_%e264501264690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl264488264772%_))))
                                              (let ((_%tl264503264697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e264501264690%_)))
                                                    (_%hd264502264694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e264501264690%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd264502264694%_))
                                                    (let ((_%e264504264700%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd264502264694%_))))
                                                      (if (equal? _%e264504264700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl264503264697%_))
                      (let ((_%e264505264704%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl264503264697%_))))
                        (let ((_%tl264507264711%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264505264704%_)))
                              (_%hd264506264708%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264505264704%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl264507264711%_))
                              (_%__kont268790268791%_
                               _%hd264506264708%_
                               _%hd264487264769%_
                               _%hd264484264759%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd264487264769%_))
                                  (let ((_%e264528264574%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd264487264769%_))))
                                    (declare (not safe))
                                    (_%g264476264537%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g264476264537%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd264487264769%_))
                          (let ((_%e264528264574%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd264487264769%_))))
                            (if (equal? _%e264528264574%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264503264697%_))
                                    (_%__kont268794268795%_
                                     _%hd264502264694%_
                                     _%hd264484264759%_
                                     _%hd264481264749%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g264476264537%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g264476264537%_))))
                          (let () (declare (not safe)) (_%g264476264537%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd264487264769%_))
                      (let ((_%e264528264574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd264487264769%_))))
                        (if (equal? _%e264528264574%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl264503264697%_))
                                (_%__kont268794268795%_
                                 _%hd264502264694%_
                                 _%hd264484264759%_
                                 _%hd264481264749%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g264476264537%_)))
                            (let () (declare (not safe)) (_%g264476264537%_))))
                      (let () (declare (not safe)) (_%g264476264537%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd264487264769%_))
                                                        (let ((_%e264528264574%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd264487264769%_))))
                  (if (equal? _%e264528264574%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl264503264697%_))
                          (_%__kont268794268795%_
                           _%hd264502264694%_
                           _%hd264484264759%_
                           _%hd264481264749%_)
                          (let () (declare (not safe)) (_%g264476264537%_)))
                      (let () (declare (not safe)) (_%g264476264537%_))))
                (let () (declare (not safe)) (_%g264476264537%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd264487264769%_))
                                                (let ((_%e264528264574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd264487264769%_))))
                                                  (declare (not safe))
                                                  (_%g264476264537%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g264476264537%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl264485264762%_))
                                    (_%__kont268792268793%_
                                     _%hd264484264759%_
                                     _%hd264481264749%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g264476264537%_))))))
                        (let () (declare (not safe)) (_%g264476264537%_)))))
                (let () (declare (not safe)) (_%g264476264537%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx264796%_)
        (let* ((_%g264800264829%_
                (lambda (_%g264801264825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264801264825%_))))
               (_%g264799264934%_
                (lambda (_%g264801264833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264801264833%_))
                      (let ((_%e264803264836%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264801264833%_))))
                        (let ((_%hd264804264840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264803264836%_)))
                              (_%tl264805264843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264803264836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl264805264843%_))
                              (let ((_g269415_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl264805264843%_
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
                                  (let ((_%target264806264846%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269415_ 0)))
                                        (_%tl264808264849%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269415_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl264808264849%_))
                                        (letrec ((_%loop264809264852%_
                                                  (lambda (_%hd264807264856%_
                                                           _%clause264813264859%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd264807264856%_))
                                                        (let ((_%e264810264861%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd264807264856%_))))
                  (let ((_%lp-hd264811264865%_
                         (let ()
                           (declare (not safe))
                           (##car _%e264810264861%_)))
                        (_%lp-tl264812264868%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e264810264861%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd264811264865%_))
                        (let ((_g269417_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd264811264865%_
                                  '0))))
                          (begin
                            (let ((_g269418_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g269417_)
                                         (##values-length _g269417_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g269418_ 2)))
                                  (error "Context expects 2 values"
                                         _g269418_)))
                            (let ((_%target264815264871%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g269417_ 0)))
                                  (_%tl264817264874%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g269417_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl264817264874%_))
                                  (letrec ((_%loop264818264877%_
                                            (lambda (_%hd264816264881%_
                                                     _%clause264822264884%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd264816264881%_))
                                                  (let ((_%e264819264886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd264816264881%_))))
                                                    (let ((_%lp-hd264820264890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e264819264886%_)))
                                                          (_%lp-tl264821264893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e264819264886%_))))
                                                      (_%loop264818264877%_
                                                       _%lp-tl264821264893%_
                                                       (cons _%lp-hd264820264890%_
                                                             _%clause264822264884%_))))
                                                  (let ((_%clause264823264896%_
                                                         (reverse _%clause264822264884%_)))
                                                    (_%loop264809264852%_
                                                     _%lp-tl264812264868%_
                                                     (cons _%clause264823264896%_
                                                           _%clause264813264859%_)))))))
                                    (_%loop264818264877%_
                                     _%target264815264871%_
                                     '()))
                                  (_%g264800264829%_ _%g264801264833%_)))))
                        (_%g264800264829%_ _%g264801264833%_))))
                (let ((_%clause264814264899%_
                       (reverse _%clause264813264859%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp269419
                                           (lambda (_%g264917264922%_
                                                    _%g264918264925%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp269420
                                                                (lambda (_%g264919264928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g264920264931%_)
                          (cons _%g264919264928%_ _%g264920264931%_))))
                   (declare (not safe))
                   (foldr__0 __tmp269420 '() _%g264917264922%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g264918264925%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp269419
                                       '()
                                       _%clause264814264899%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop264809264852%_
                                           _%target264806264846%_
                                           '()))
                                        (_%g264800264829%_
                                         _%g264801264833%_)))))
                              (_%g264800264829%_ _%g264801264833%_))))
                      (_%g264800264829%_ _%g264801264833%_)))))
          (_%g264799264934%_ _%$stx264796%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx264940%_)
        (let* ((_%g264944264962%_
                (lambda (_%g264945264958%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g264945264958%_))))
               (_%g264943265017%_
                (lambda (_%g264945264966%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g264945264966%_))
                      (let ((_%e264948264969%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g264945264966%_))))
                        (let ((_%hd264949264973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e264948264969%_)))
                              (_%tl264950264976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e264948264969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl264950264976%_))
                              (let ((_%e264951264979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl264950264976%_))))
                                (let ((_%hd264952264983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e264951264979%_)))
                                      (_%tl264953264986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e264951264979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl264953264986%_))
                                      (let ((_%e264954264989%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl264953264986%_))))
                                        (let ((_%hd264955264993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e264954264989%_)))
                                              (_%tl264956264996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e264954264989%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl264956264996%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd264952264983%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd264955264993%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g264944264962%_
                                               _%g264945264966%_))))
                                      (_%g264944264962%_ _%g264945264966%_))))
                              (_%g264944264962%_ _%g264945264966%_))))
                      (_%g264944264962%_ _%g264945264966%_)))))
          (_%g264943265017%_ _%$stx264940%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx265021%_)
        (let* ((_%g265025265043%_
                (lambda (_%g265026265039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265026265039%_))))
               (_%g265024265098%_
                (lambda (_%g265026265047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265026265047%_))
                      (let ((_%e265029265050%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265026265047%_))))
                        (let ((_%hd265030265054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265029265050%_)))
                              (_%tl265031265057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265029265050%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265031265057%_))
                              (let ((_%e265032265060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265031265057%_))))
                                (let ((_%hd265033265064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265032265060%_)))
                                      (_%tl265034265067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265032265060%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265034265067%_))
                                      (let ((_%e265035265070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265034265067%_))))
                                        (let ((_%hd265036265074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265035265070%_)))
                                              (_%tl265037265077%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265035265070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265037265077%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%hd265033265064%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%hd265036265074%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265025265043%_
                                               _%g265026265047%_))))
                                      (_%g265025265043%_ _%g265026265047%_))))
                              (_%g265025265043%_ _%g265026265047%_))))
                      (_%g265025265043%_ _%g265026265047%_)))))
          (_%g265024265098%_ _%$stx265021%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx265102%_)
        (let* ((_%g265106265135%_
                (lambda (_%g265107265131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265107265131%_))))
               (_%g265105265231%_
                (lambda (_%g265107265139%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265107265139%_))
                      (let ((_%e265110265142%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265107265139%_))))
                        (let ((_%hd265111265146%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265110265142%_)))
                              (_%tl265112265149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265110265142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265112265149%_))
                              (let ((_g269421_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl265112265149%_
                                        '0))))
                                (begin
                                  (let ((_g269422_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269421_)
                                               (##values-length _g269421_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269422_ 2)))
                                        (error "Context expects 2 values"
                                               _g269422_)))
                                  (let ((_%target265113265152%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269421_ 0)))
                                        (_%tl265115265155%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269421_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265115265155%_))
                                        (letrec ((_%loop265116265158%_
                                                  (lambda (_%hd265114265162%_
                                                           _%rule265120265165%_
                                                           _%proc265121265166%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265114265162%_))
                                                        (let ((_%e265117265168%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265114265162%_))))
                  (let ((_%lp-hd265118265172%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265117265168%_)))
                        (_%lp-tl265119265175%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265117265168%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd265118265172%_))
                        (let ((_%e265124265178%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd265118265172%_))))
                          (let ((_%hd265125265182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265124265178%_)))
                                (_%tl265126265185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265124265178%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265126265185%_))
                                (let ((_%e265127265188%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265126265185%_))))
                                  (let ((_%hd265128265192%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265127265188%_)))
                                        (_%tl265129265195%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265127265188%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265129265195%_))
                                        (_%loop265116265158%_
                                         _%lp-tl265119265175%_
                                         (cons _%hd265128265192%_
                                               _%rule265120265165%_)
                                         (cons _%hd265125265182%_
                                               _%proc265121265166%_))
                                        (_%g265106265135%_
                                         _%g265107265139%_))))
                                (_%g265106265135%_ _%g265107265139%_))))
                        (_%g265106265135%_ _%g265107265139%_))))
                (let ((_%rule265122265198%_ (reverse _%rule265120265165%_))
                      (_%proc265123265200%_ (reverse _%proc265121265166%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%rule265122265198%_
                             _%proc265123265200%_))
                          (let ((__tmp269423
                                 (lambda (_%g265219265223%_
                                          _%g265220265226%_
                                          _%g265221265228%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%g265220265226%_
                                                     (cons _%g265219265223%_
                                                           '())))
                                         _%g265221265228%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp269423
                             '()
                             _%rule265122265198%_
                             _%proc265123265200%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop265116265158%_
                                           _%target265113265152%_
                                           '()
                                           '()))
                                        (_%g265106265135%_
                                         _%g265107265139%_)))))
                              (_%g265106265135%_ _%g265107265139%_))))
                      (_%g265106265135%_ _%g265107265139%_)))))
          (_%g265105265231%_ _%$stx265102%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx265236%_)
        (let* ((_%g265240265258%_
                (lambda (_%g265241265254%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265241265254%_))))
               (_%g265239265313%_
                (lambda (_%g265241265262%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265241265262%_))
                      (let ((_%e265244265265%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265241265262%_))))
                        (let ((_%hd265245265269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265244265265%_)))
                              (_%tl265246265272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265244265265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265246265272%_))
                              (let ((_%e265247265275%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265246265272%_))))
                                (let ((_%hd265248265279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265247265275%_)))
                                      (_%tl265249265282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265247265275%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265249265282%_))
                                      (let ((_%e265250265285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl265249265282%_))))
                                        (let ((_%hd265251265289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265250265285%_)))
                                              (_%tl265252265292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265250265285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265252265292%_))
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
                                                (cons _%hd265248265279%_ '()))
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
              (cons _%hd265251265289%_ '())))
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
                                (cons _%hd265248265279%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265240265258%_
                                               _%g265241265262%_))))
                                      (_%g265240265258%_ _%g265241265262%_))))
                              (_%g265240265258%_ _%g265241265262%_))))
                      (_%g265240265258%_ _%g265241265262%_)))))
          (_%g265239265313%_ _%$stx265236%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx265317%_)
        (let* ((_%__stx268903268904%_ _%$stx265317%_)
               (_%g265322265347%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268903268904%_)))))
          (let ((_%__kont268906268907%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont268908268909%_
                 (lambda (_%g265327265394%_
                          _%g265328265396%_
                          _%g265329265397%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%g265329265397%_
                                           (cons _%g265328265396%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%g265327265394%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx268903268904%_))
                (let ((_%e265324265423%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx268903268904%_))))
                  (let ((_%tl265326265430%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265324265423%_)))
                        (_%hd265325265427%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265324265423%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl265326265430%_))
                        (_%__kont268906268907%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl265326265430%_))
                            (let ((_%e265333265364%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl265326265430%_))))
                              (let ((_%tl265335265371%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e265333265364%_)))
                                    (_%hd265334265368%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e265333265364%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd265334265368%_))
                                    (let ((_%e265336265374%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd265334265368%_))))
                                      (let ((_%tl265338265381%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e265336265374%_)))
                                            (_%hd265337265378%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e265336265374%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl265338265381%_))
                                            (let ((_%e265339265384%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl265338265381%_))))
                                              (let ((_%tl265341265391%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265339265384%_)))
                                                    (_%hd265340265388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265339265384%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl265341265391%_))
                                                    (_%__kont268908268909%_
                                                     _%tl265335265371%_
                                                     _%hd265340265388%_
                                                     _%hd265337265378%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g265322265347%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g265322265347%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g265322265347%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g265322265347%_))))))
                (let () (declare (not safe)) (_%g265322265347%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx265441%_)
        (let* ((_%__stx268947268948%_ _%$stx265441%_)
               (_%g265446265477%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268947268948%_)))))
          (let ((_%__kont268950268951%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont268952268953%_
                 (lambda (_%g265451265542%_
                          _%g265452265544%_
                          _%g265453265545%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%g265453265545%_
                                           (let ((__tmp269424
                                                  (lambda (_%g265565265568%_
                                                           _%g265566265571%_)
                                                    (cons _%g265565265568%_
                                                          _%g265566265571%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp269424
                                              '()
                                              _%g265452265544%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%g265451265542%_)
                                     '()))))))
            (let ((_%__match268990268991%_
                   (lambda (_%e265454265484%_
                            _%hd265455265488%_
                            _%tl265456265491%_
                            _%e265457265494%_
                            _%hd265458265498%_
                            _%tl265459265501%_
                            _%e265460265504%_
                            _%hd265461265508%_
                            _%tl265462265511%_
                            _%__splice268954268955%_
                            _%target265463265514%_
                            _%tl265465265517%_)
                     (letrec ((_%loop265466265520%_
                               (lambda (_%hd265464265524%_ _%sig265470265527%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd265464265524%_))
                                     (let ((_%e265467265529%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd265464265524%_))))
                                       (let ((_%lp-tl265469265536%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e265467265529%_)))
                                             (_%lp-hd265468265533%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e265467265529%_))))
                                         (_%loop265466265520%_
                                          _%lp-tl265469265536%_
                                          (cons _%lp-hd265468265533%_
                                                _%sig265470265527%_))))
                                     (let ((_%sig265471265539%_
                                            (reverse _%sig265470265527%_)))
                                       (_%__kont268952268953%_
                                        _%tl265459265501%_
                                        _%sig265471265539%_
                                        _%hd265461265508%_))))))
                       (_%loop265466265520%_ _%target265463265514%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268947268948%_))
                  (let ((_%e265448265581%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx268947268948%_))))
                    (let ((_%tl265450265588%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265448265581%_)))
                          (_%hd265449265585%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265448265581%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl265450265588%_))
                          (_%__kont268950268951%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265450265588%_))
                              (let ((_%e265457265494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265450265588%_))))
                                (let ((_%tl265459265501%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265457265494%_)))
                                      (_%hd265458265498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265457265494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd265458265498%_))
                                      (let ((_%e265460265504%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd265458265498%_))))
                                        (let ((_%tl265462265511%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265460265504%_)))
                                              (_%hd265461265508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265460265504%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl265462265511%_))
                                              (let ((_%__splice268954268955%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl265462265511%_
                                                        '0))))
                                                (let ((_%tl265465265517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice268954268955%_
                                                          '1)))
                                                      (_%target265463265514%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice268954268955%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl265465265517%_))
                                                      (_%__match268990268991%_
                                                       _%e265448265581%_
                                                       _%hd265449265585%_
                                                       _%tl265450265588%_
                                                       _%e265457265494%_
                                                       _%hd265458265498%_
                                                       _%tl265459265501%_
                                                       _%e265460265504%_
                                                       _%hd265461265508%_
                                                       _%tl265462265511%_
                                                       _%__splice268954268955%_
                                                       _%target265463265514%_
                                                       _%tl265465265517%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g265446265477%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265446265477%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g265446265477%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g265446265477%_))))))
                  (let () (declare (not safe)) (_%g265446265477%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx265600%_)
        (let* ((_%__stx268993268994%_ _%$stx265600%_)
               (_%g265605265652%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx268993268994%_)))))
          (let ((_%__kont268996268997%_
                 (lambda (_%g265607265810%_ _%g265608265812%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%g265608265812%_
                               (let ((__tmp269425
                                      (lambda (_%g265832265835%_
                                               _%g265833265838%_)
                                        (cons _%g265832265835%_
                                              _%g265833265838%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp269425
                                  '()
                                  _%g265607265810%_))))))
                (_%__kont269000269001%_
                 (lambda (_%g265630265707%_ _%g265631265709%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%g265631265709%_
                               (let ((__tmp269426
                                      (lambda (_%g265726265729%_
                                               _%g265727265732%_)
                                        (cons _%g265726265729%_
                                              _%g265727265732%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp269426
                                  '()
                                  _%g265630265707%_)))))))
            (let* ((_%__match269060269061%_
                    (lambda (_%e265632265659%_
                             _%hd265633265663%_
                             _%tl265634265666%_
                             _%e265635265669%_
                             _%hd265636265673%_
                             _%tl265637265676%_
                             _%__splice269002269003%_
                             _%target265638265679%_
                             _%tl265640265682%_)
                      (letrec ((_%loop265641265685%_
                                (lambda (_%hd265639265689%_
                                         _%sig265645265692%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd265639265689%_))
                                      (let ((_%e265642265694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd265639265689%_))))
                                        (let ((_%lp-tl265644265701%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265642265694%_)))
                                              (_%lp-hd265643265698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265642265694%_))))
                                          (_%loop265641265685%_
                                           _%lp-tl265644265701%_
                                           (cons _%lp-hd265643265698%_
                                                 _%sig265645265692%_))))
                                      (let ((_%sig265646265704%_
                                             (reverse _%sig265645265692%_)))
                                        (_%__kont269000269001%_
                                         _%sig265646265704%_
                                         _%hd265636265673%_))))))
                        (_%loop265641265685%_ _%target265638265679%_ '()))))
                   (_%__match269052269053%_
                    (lambda (_%e265632265659%_
                             _%hd265633265663%_
                             _%tl265634265666%_
                             _%e265635265669%_
                             _%hd265636265673%_
                             _%tl265637265676%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl265637265676%_))
                          (let ((_%__splice269002269003%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%tl265637265676%_
                                    '0))))
                            (let ((_%tl265640265682%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269002269003%_
                                      '1)))
                                  (_%target265638265679%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice269002269003%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl265640265682%_))
                                  (_%__match269060269061%_
                                   _%e265632265659%_
                                   _%hd265633265663%_
                                   _%tl265634265666%_
                                   _%e265635265669%_
                                   _%hd265636265673%_
                                   _%tl265637265676%_
                                   _%__splice269002269003%_
                                   _%target265638265679%_
                                   _%tl265640265682%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g265605265652%_)))))
                          (let () (declare (not safe)) (_%g265605265652%_)))))
                   (_%__match269040269041%_
                    (lambda (_%e265609265742%_
                             _%hd265610265746%_
                             _%tl265611265749%_
                             _%e265612265752%_
                             _%hd265613265756%_
                             _%tl265614265759%_
                             _%e265615265762%_
                             _%hd265616265766%_
                             _%tl265617265769%_
                             _%e265618265772%_
                             _%hd265619265776%_
                             _%tl265620265779%_
                             _%__splice268998268999%_
                             _%target265621265782%_
                             _%tl265623265785%_)
                      (letrec ((_%loop265624265788%_
                                (lambda (_%hd265622265792%_
                                         _%sig265628265795%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd265622265792%_))
                                      (let ((_%e265625265797%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd265622265792%_))))
                                        (let ((_%lp-tl265627265804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265625265797%_)))
                                              (_%lp-hd265626265801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265625265797%_))))
                                          (_%loop265624265788%_
                                           _%lp-tl265627265804%_
                                           (cons _%lp-hd265626265801%_
                                                 _%sig265628265795%_))))
                                      (let ((_%sig265629265807%_
                                             (reverse _%sig265628265795%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl265617265769%_))
                                            (_%__kont268996268997%_
                                             _%sig265629265807%_
                                             _%hd265613265756%_)
                                            (_%__match269052269053%_
                                             _%e265609265742%_
                                             _%hd265610265746%_
                                             _%tl265611265749%_
                                             _%e265612265752%_
                                             _%hd265613265756%_
                                             _%tl265614265759%_)))))))
                        (_%loop265624265788%_ _%target265621265782%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx268993268994%_))
                  (let ((_%e265609265742%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx268993268994%_))))
                    (let ((_%tl265611265749%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265609265742%_)))
                          (_%hd265610265746%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265609265742%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl265611265749%_))
                          (let ((_%e265612265752%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl265611265749%_))))
                            (let ((_%tl265614265759%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265612265752%_)))
                                  (_%hd265613265756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265612265752%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl265614265759%_))
                                  (let ((_%e265615265762%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl265614265759%_))))
                                    (let ((_%tl265617265769%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e265615265762%_)))
                                          (_%hd265616265766%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e265615265762%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd265616265766%_))
                                          (let ((_%e265618265772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd265616265766%_))))
                                            (let ((_%tl265620265779%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e265618265772%_)))
                                                  (_%hd265619265776%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e265618265772%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd265619265776%_))
                                                  (if (let ((__tmp269427
                                                             |gxc[1]#_g269428_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp269427
                                                         _%hd265619265776%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl265620265779%_))
                                                          (let ((_%__splice268998268999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl265620265779%_
                            '0))))
                    (let ((_%tl265623265785%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice268998268999%_ '1)))
                          (_%target265621265782%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice268998268999%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl265623265785%_))
                          (_%__match269040269041%_
                           _%e265609265742%_
                           _%hd265610265746%_
                           _%tl265611265749%_
                           _%e265612265752%_
                           _%hd265613265756%_
                           _%tl265614265759%_
                           _%e265615265762%_
                           _%hd265616265766%_
                           _%tl265617265769%_
                           _%e265618265772%_
                           _%hd265619265776%_
                           _%tl265620265779%_
                           _%__splice268998268999%_
                           _%target265621265782%_
                           _%tl265623265785%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl265614265759%_))
                              (let ((_%__splice269002269003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%tl265614265759%_
                                        '0))))
                                (let ((_%tl265640265682%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice269002269003%_
                                          '1)))
                                      (_%target265638265679%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice269002269003%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl265640265682%_))
                                      (_%__match269060269061%_
                                       _%e265609265742%_
                                       _%hd265610265746%_
                                       _%tl265611265749%_
                                       _%e265612265752%_
                                       _%hd265613265756%_
                                       _%tl265614265759%_
                                       _%__splice269002269003%_
                                       _%target265638265679%_
                                       _%tl265640265682%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g265605265652%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g265605265652%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl265614265759%_))
                      (let ((_%__splice269002269003%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl265614265759%_
                                '0))))
                        (let ((_%tl265640265682%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269002269003%_ '1)))
                              (_%target265638265679%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice269002269003%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl265640265682%_))
                              (_%__match269060269061%_
                               _%e265609265742%_
                               _%hd265610265746%_
                               _%tl265611265749%_
                               _%e265612265752%_
                               _%hd265613265756%_
                               _%tl265614265759%_
                               _%__splice269002269003%_
                               _%target265638265679%_
                               _%tl265640265682%_)
                              (let ()
                                (declare (not safe))
                                (_%g265605265652%_)))))
                      (let () (declare (not safe)) (_%g265605265652%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl265614265759%_))
                  (let ((_%__splice269002269003%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%tl265614265759%_
                            '0))))
                    (let ((_%tl265640265682%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269002269003%_ '1)))
                          (_%target265638265679%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice269002269003%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl265640265682%_))
                          (_%__match269060269061%_
                           _%e265609265742%_
                           _%hd265610265746%_
                           _%tl265611265749%_
                           _%e265612265752%_
                           _%hd265613265756%_
                           _%tl265614265759%_
                           _%__splice269002269003%_
                           _%target265638265679%_
                           _%tl265640265682%_)
                          (let () (declare (not safe)) (_%g265605265652%_)))))
                  (let () (declare (not safe)) (_%g265605265652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl265614265759%_))
                                                      (let ((_%__splice269002269003%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl265614265759%_
                        '0))))
                (let ((_%tl265640265682%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269002269003%_ '1)))
                      (_%target265638265679%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice269002269003%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl265640265682%_))
                      (_%__match269060269061%_
                       _%e265609265742%_
                       _%hd265610265746%_
                       _%tl265611265749%_
                       _%e265612265752%_
                       _%hd265613265756%_
                       _%tl265614265759%_
                       _%__splice269002269003%_
                       _%target265638265679%_
                       _%tl265640265682%_)
                      (let () (declare (not safe)) (_%g265605265652%_)))))
              (let () (declare (not safe)) (_%g265605265652%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl265614265759%_))
                                              (let ((_%__splice269002269003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl265614265759%_
                                                        '0))))
                                                (let ((_%tl265640265682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269002269003%_
                                                          '1)))
                                                      (_%target265638265679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice269002269003%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl265640265682%_))
                                                      (_%__match269060269061%_
                                                       _%e265609265742%_
                                                       _%hd265610265746%_
                                                       _%tl265611265749%_
                                                       _%e265612265752%_
                                                       _%hd265613265756%_
                                                       _%tl265614265759%_
                                                       _%__splice269002269003%_
                                                       _%target265638265679%_
                                                       _%tl265640265682%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g265605265652%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g265605265652%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl265614265759%_))
                                      (let ((_%__splice269002269003%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%tl265614265759%_
                                                '0))))
                                        (let ((_%tl265640265682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269002269003%_
                                                  '1)))
                                              (_%target265638265679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice269002269003%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265640265682%_))
                                              (_%__match269060269061%_
                                               _%e265609265742%_
                                               _%hd265610265746%_
                                               _%tl265611265749%_
                                               _%e265612265752%_
                                               _%hd265613265756%_
                                               _%tl265614265759%_
                                               _%__splice269002269003%_
                                               _%target265638265679%_
                                               _%tl265640265682%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g265605265652%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g265605265652%_))))))
                          (let () (declare (not safe)) (_%g265605265652%_)))))
                  (let () (declare (not safe)) (_%g265605265652%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx266995%_ _%id266997%_)
        (let ((_%proc267001%_
               (let ((__tmp269429
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id266997%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp269429))))
          (if (procedure? _%proc267001%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx266995%_
                 _%id266997%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx266986%_ _%id266988%_)
        (let ((_%klass266992%_
               (let ((__tmp269430
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id266988%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp269430))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass266992%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx266986%_
                 _%id266988%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx266236%_ _%proc266238%_ _%sig266239%_)
        (letrec ((_%signature-arity266241%_
                  (lambda (_%args266918%_)
                    (let _%loop266921%_ ((_%rest266924%_ _%args266918%_)
                                         (_%count266926%_ '0))
                      (let* ((_%rest266927266938%_ _%rest266924%_)
                             (_%E266931266944%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest266927266938%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K266934266975%_
                               (lambda (_%rest266972%_)
                                 (_%loop266921%_
                                  _%rest266972%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count266926%_ '1)))))
                              (_%K266933266964%_ (lambda () _%count266926%_))
                              (_%K266932266952%_
                               (lambda () (cons _%count266926%_ '()))))
                          (let ((_%try-match266929266968%_
                                 (lambda ()
                                   (if (null? _%rest266927266938%_)
                                       (_%K266933266964%_)
                                       (_%K266932266952%_)))))
                            (if (pair? _%rest266927266938%_)
                                (let* ((_%tl266936266979%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest266927266938%_)))
                                       (_%rest266983%_ _%tl266936266979%_))
                                  (_%K266934266975%_ _%rest266983%_))
                                (_%try-match266929266968%_))))))))
                 (_%make-signature266243%_
                  (lambda (_%args266800%_
                           _%return266802%_
                           _%effect266803%_
                           _%unchecked266804%_)
                    (let ((__tmp269431
                           (lambda (_%g266805266807%_)
                             (|gxc[1]#verify-class!|
                              _%ctx266236%_
                              _%g266805266807%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp269431 _%args266800%_))
                    (|gxc[1]#verify-class!| _%ctx266236%_ _%return266802%_)
                    (if _%unchecked266804%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx266236%_
                         _%unchecked266804%_)
                        '#!void)
                    (let ((_%arity266811%_
                           (_%signature-arity266241%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args266800%_)))))
                      (if _%effect266803%_
                          (let ((_%effect266814%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect266803%_))))
                            (if (and (list? _%effect266814%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect266814%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx266236%_
                                   _%proc266238%_
                                   _%effect266814%_))))
                          '#!void)
                      (cons _%arity266811%_
                            (cons (let* ((_%g266817266840%_
                                          (lambda (_%g266818266836%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g266818266836%_))))
                                         (_%g266816266914%_
                                          (lambda (_%g266818266844%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g266818266844%_))
                                                (let ((_%e266823266847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g266818266844%_))))
                                                  (let ((_%hd266824266851%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e266823266847%_)))
                                                        (_%tl266825266854%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e266823266847%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl266825266854%_))
                                                        (let ((_%e266826266857%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl266825266854%_))))
                  (let ((_%hd266827266861%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266826266857%_)))
                        (_%tl266828266864%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266826266857%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl266828266864%_))
                        (let ((_%e266829266867%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266828266864%_))))
                          (let ((_%hd266830266871%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266829266867%_)))
                                (_%tl266831266874%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266829266867%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl266831266874%_))
                                (let ((_%e266832266877%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl266831266874%_))))
                                  (let ((_%hd266833266881%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e266832266877%_)))
                                        (_%tl266834266884%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e266832266877%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl266834266884%_))
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
                        (cons _%hd266824266851%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%hd266827266861%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%hd266830266871%_ '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%hd266833266881%_
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
                                        (_%g266817266840%_
                                         _%g266818266844%_))))
                                (_%g266817266840%_ _%g266818266844%_))))
                        (_%g266817266840%_ _%g266818266844%_))))
                (_%g266817266840%_ _%g266818266844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g266817266840%_
                                                 _%g266818266844%_)))))
                                    (_%g266816266914%_
                                     (list _%args266800%_
                                           _%return266802%_
                                           _%effect266803%_
                                           _%unchecked266804%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx266236%_ _%proc266238%_)
          (let* ((_%__stx269071269072%_ _%sig266239%_)
                 (_%g266250266353%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx269071269072%_)))))
            (let ((_%__kont269074269075%_
                   (lambda (_%g266252266781%_ _%g266253266783%_)
                     (_%make-signature266243%_
                      _%g266253266783%_
                      _%g266252266781%_
                      '#f
                      '#f)))
                  (_%__kont269076269077%_
                   (lambda (_%g266260266732%_
                            _%g266261266734%_
                            _%g266262266735%_)
                     (_%make-signature266243%_
                      _%g266262266735%_
                      _%g266261266734%_
                      _%g266260266732%_
                      '#f)))
                  (_%__kont269078269079%_
                   (lambda (_%g266276266656%_
                            _%g266277266658%_
                            _%g266278266659%_)
                     (_%make-signature266243%_
                      _%g266278266659%_
                      _%g266277266658%_
                      _%g266276266656%_
                      (let ((__tmp269432
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc266238%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp269432)))))
                  (_%__kont269080269081%_
                   (lambda (_%g266296266562%_
                            _%g266297266564%_
                            _%g266298266565%_
                            _%g266299266566%_)
                     (_%make-signature266243%_
                      _%g266299266566%_
                      _%g266298266565%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g266296266562%_)))))
                  (_%__kont269082269083%_
                   (lambda (_%g266320266469%_ _%g266321266471%_)
                     (_%make-signature266243%_
                      _%g266321266471%_
                      _%g266320266469%_
                      '#f
                      (let ((__tmp269433
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc266238%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp269433)))))
                  (_%__kont269084269085%_
                   (lambda (_%g266332266404%_
                            _%g266333266406%_
                            _%g266334266407%_)
                     (_%make-signature266243%_
                      _%g266334266407%_
                      _%g266333266406%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%g266332266404%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx269071269072%_))
                  (let ((_%e266254266761%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx269071269072%_))))
                    (let ((_%tl266256266768%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e266254266761%_)))
                          (_%hd266255266765%_
                           (let ()
                             (declare (not safe))
                             (##car _%e266254266761%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl266256266768%_))
                          (let ((_%e266257266771%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl266256266768%_))))
                            (let ((_%tl266259266778%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e266257266771%_)))
                                  (_%hd266258266775%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e266257266771%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl266259266778%_))
                                  (_%__kont269074269075%_
                                   _%hd266258266775%_
                                   _%hd266255266765%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl266259266778%_))
                                      (let ((_%e266269266708%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl266259266778%_))))
                                        (let ((_%tl266271266715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e266269266708%_)))
                                              (_%hd266270266712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e266269266708%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd266270266712%_))
                                              (let ((_%e266272266718%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd266270266712%_))))
                                                (if (equal? _%e266272266718%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl266271266715%_))
                                                        (let ((_%e266273266722%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl266271266715%_))))
                  (let ((_%tl266275266729%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e266273266722%_)))
                        (_%hd266274266726%_
                         (let ()
                           (declare (not safe))
                           (##car _%e266273266722%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl266275266729%_))
                        (_%__kont269076269077%_
                         _%hd266274266726%_
                         _%hd266258266775%_
                         _%hd266255266765%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl266275266729%_))
                            (let ((_%e266292266642%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl266275266729%_))))
                              (let ((_%tl266294266649%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e266292266642%_)))
                                    (_%hd266293266646%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e266292266642%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd266293266646%_))
                                    (let ((_%e266295266652%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd266293266646%_))))
                                      (if (equal? _%e266295266652%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl266294266649%_))
                                              (_%__kont269078269079%_
                                               _%hd266274266726%_
                                               _%hd266258266775%_
                                               _%hd266255266765%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl266294266649%_))
                                                  (let ((_%e266317266552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl266294266649%_))))
                                                    (let ((_%tl266319266559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e266317266552%_)))
                                                          (_%hd266318266556%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e266317266552%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl266319266559%_))
                                                          (_%__kont269080269081%_
                                                           _%hd266318266556%_
                                                           _%hd266274266726%_
                                                           _%hd266258266775%_
                                                           _%hd266255266765%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g266250266353%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g266250266353%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g266250266353%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g266250266353%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g266250266353%_))))))
                (let () (declare (not safe)) (_%g266250266353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e266272266718%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl266271266715%_))
                                                            (_%__kont269082269083%_
                                                             _%hd266258266775%_
                                                             _%hd266255266765%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl266271266715%_))
                        (let ((_%e266345266394%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl266271266715%_))))
                          (let ((_%tl266347266401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e266345266394%_)))
                                (_%hd266346266398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e266345266394%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl266347266401%_))
                                (_%__kont269084269085%_
                                 _%hd266346266398%_
                                 _%hd266258266775%_
                                 _%hd266255266765%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g266250266353%_)))))
                        (let () (declare (not safe)) (_%g266250266353%_))))
                (let () (declare (not safe)) (_%g266250266353%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g266250266353%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g266250266353%_))))))
                          (let () (declare (not safe)) (_%g266250266353%_)))))
                  (let () (declare (not safe)) (_%g266250266353%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig265847%_)
        (let* ((_%g265850265930%_
                (lambda (_%g265851265926%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g265851265926%_))))
               (_%g265849266232%_
                (lambda (_%g265851265934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g265851265934%_))
                      (let ((_%e265857265937%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g265851265934%_))))
                        (let ((_%hd265858265941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265857265937%_)))
                              (_%tl265859265944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265857265937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl265859265944%_))
                              (let ((_%e265860265947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl265859265944%_))))
                                (let ((_%hd265861265951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265860265947%_)))
                                      (_%tl265862265954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265860265947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd265861265951%_))
                                      (let ((_%e265863265957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd265861265951%_))))
                                        (if (equal? _%e265863265957%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl265862265954%_))
                                                (let ((_%e265864265961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl265862265954%_))))
                                                  (let ((_%hd265865265965%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e265864265961%_)))
                                                        (_%tl265866265968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e265864265961%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd265865265965%_))
                                                        (let ((_%e265867265971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd265865265965%_))))
                  (let ((_%hd265868265975%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265867265971%_)))
                        (_%tl265869265978%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265867265971%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd265868265975%_))
                        (if (let ((__tmp269434 |gxc[1]#_g269435_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp269434
                               _%hd265868265975%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265869265978%_))
                                (let ((_%e265870265981%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265869265978%_))))
                                  (let ((_%hd265871265985%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265870265981%_)))
                                        (_%tl265872265988%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265870265981%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265872265988%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl265866265968%_))
                                            (let ((_%e265873265991%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl265866265968%_))))
                                              (let ((_%hd265874265995%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265873265991%_)))
                                                    (_%tl265875265998%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265873265991%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd265874265995%_))
                                                    (let ((_%e265876266001%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd265874265995%_))))
                                                      (if (equal? _%e265876266001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl265875265998%_))
                      (let ((_%e265877266005%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl265875265998%_))))
                        (let ((_%hd265878266009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265877266005%_)))
                              (_%tl265879266012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265877266005%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd265878266009%_))
                              (let ((_%e265880266015%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd265878266009%_))))
                                (let ((_%hd265881266019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265880266015%_)))
                                      (_%tl265882266022%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265880266015%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd265881266019%_))
                                      (if (let ((__tmp269436
                                                 |gxc[1]#_g269437_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp269436
                                             _%hd265881266019%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265882266022%_))
                                              (let ((_%e265883266025%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265882266022%_))))
                                                (let ((_%hd265884266029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265883266025%_)))
                                                      (_%tl265885266032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265883266025%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl265885266032%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl265879266012%_))
                                                          (let ((_%e265886266035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl265879266012%_))))
                    (let ((_%hd265887266039%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265886266035%_)))
                          (_%tl265888266042%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265886266035%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd265887266039%_))
                          (let ((_%e265889266045%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd265887266039%_))))
                            (if (equal? _%e265889266045%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl265888266042%_))
                                    (let ((_%e265890266049%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl265888266042%_))))
                                      (let ((_%hd265891266053%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e265890266049%_)))
                                            (_%tl265892266056%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e265890266049%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd265891266053%_))
                                            (let ((_%e265893266059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd265891266053%_))))
                                              (let ((_%hd265894266063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265893266059%_)))
                                                    (_%tl265895266066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265893266059%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd265894266063%_))
                                                    (if (let ((__tmp269438
                                                               |gxc[1]#_g269439_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp269438
                                                           _%hd265894266063%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl265895266066%_))
                                                            (let ((_%e265896266069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl265895266066%_))))
                      (let ((_%hd265897266073%_
                             (let ()
                               (declare (not safe))
                               (##car _%e265896266069%_)))
                            (_%tl265898266076%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e265896266069%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl265898266076%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl265892266056%_))
                                (let ((_%e265899266079%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl265892266056%_))))
                                  (let ((_%hd265900266083%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265899266079%_)))
                                        (_%tl265901266086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265899266079%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd265900266083%_))
                                        (let ((_%e265902266089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd265900266083%_))))
                                          (if (equal? _%e265902266089%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265901266086%_))
                                                  (let ((_%e265903266093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl265901266086%_))))
                                                    (let ((_%hd265904266097%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265903266093%_)))
                                                          (_%tl265905266100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265903266093%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd265904266097%_))
                                                          (let ((_%e265906266103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd265904266097%_))))
                    (let ((_%hd265907266107%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265906266103%_)))
                          (_%tl265908266110%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265906266103%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd265907266107%_))
                          (if (let ((__tmp269440 |gxc[1]#_g269441_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp269440
                                 _%hd265907266107%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl265908266110%_))
                                  (let ((_%e265909266113%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl265908266110%_))))
                                    (let ((_%hd265910266117%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e265909266113%_)))
                                          (_%tl265911266120%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e265909266113%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl265911266120%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265905266100%_))
                                              (let ((_%e265912266123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl265905266100%_))))
                                                (let ((_%hd265913266127%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265912266123%_)))
                                                      (_%tl265914266130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265912266123%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd265913266127%_))
                                                      (let ((_%e265915266133%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd265913266127%_))))
                (if (equal? _%e265915266133%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265914266130%_))
                        (let ((_%e265916266137%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl265914266130%_))))
                          (let ((_%hd265917266141%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265916266137%_)))
                                (_%tl265918266144%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265916266137%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd265917266141%_))
                                (let ((_%e265919266147%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd265917266141%_))))
                                  (let ((_%hd265920266151%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265919266147%_)))
                                        (_%tl265921266154%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265919266147%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd265920266151%_))
                                        (if (let ((__tmp269442
                                                   |gxc[1]#_g269443_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp269442
                                               _%hd265920266151%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl265921266154%_))
                                                (let ((_%e265922266157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl265921266154%_))))
                                                  (let ((_%hd265923266161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e265922266157%_)))
                                                        (_%tl265924266164%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e265922266157%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl265924266164%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl265918266144%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%hd265910266117%_))
                        (cons _%hd265910266117%_
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
                                                            (cons _%hd265884266029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%hd265923266161%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%g265850265930%_ _%g265851265934%_))
                (_%g265850265930%_ _%g265851265934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g265850265930%_
                                                 _%g265851265934%_))
                                            (_%g265850265930%_
                                             _%g265851265934%_))
                                        (_%g265850265930%_
                                         _%g265851265934%_))))
                                (_%g265850265930%_ _%g265851265934%_))))
                        (_%g265850265930%_ _%g265851265934%_))
                    (_%g265850265930%_ _%g265851265934%_)))
              (_%g265850265930%_ _%g265851265934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265850265930%_
                                               _%g265851265934%_))
                                          (_%g265850265930%_
                                           _%g265851265934%_))))
                                  (_%g265850265930%_ _%g265851265934%_))
                              (_%g265850265930%_ _%g265851265934%_))
                          (_%g265850265930%_ _%g265851265934%_))))
                  (_%g265850265930%_ _%g265851265934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g265850265930%_
                                                   _%g265851265934%_))
                                              (_%g265850265930%_
                                               _%g265851265934%_)))
                                        (_%g265850265930%_
                                         _%g265851265934%_))))
                                (_%g265850265930%_ _%g265851265934%_))
                            (_%g265850265930%_ _%g265851265934%_))))
                    (_%g265850265930%_ _%g265851265934%_))
                (_%g265850265930%_ _%g265851265934%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g265850265930%_
                                                     _%g265851265934%_))))
                                            (_%g265850265930%_
                                             _%g265851265934%_))))
                                    (_%g265850265930%_ _%g265851265934%_))
                                (_%g265850265930%_ _%g265851265934%_)))
                          (_%g265850265930%_ _%g265851265934%_))))
                  (_%g265850265930%_ _%g265851265934%_))
              (_%g265850265930%_ _%g265851265934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g265850265930%_
                                               _%g265851265934%_))
                                          (_%g265850265930%_
                                           _%g265851265934%_))
                                      (_%g265850265930%_ _%g265851265934%_))))
                              (_%g265850265930%_ _%g265851265934%_))))
                      (_%g265850265930%_ _%g265851265934%_))
                  (_%g265850265930%_ _%g265851265934%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g265850265930%_
                                                     _%g265851265934%_))))
                                            (_%g265850265930%_
                                             _%g265851265934%_))
                                        (_%g265850265930%_
                                         _%g265851265934%_))))
                                (_%g265850265930%_ _%g265851265934%_))
                            (_%g265850265930%_ _%g265851265934%_))
                        (_%g265850265930%_ _%g265851265934%_))))
                (_%g265850265930%_ _%g265851265934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g265850265930%_
                                                 _%g265851265934%_))
                                            (_%g265850265930%_
                                             _%g265851265934%_)))
                                      (_%g265850265930%_ _%g265851265934%_))))
                              (_%g265850265930%_ _%g265851265934%_))))
                      (_%g265850265930%_ _%g265851265934%_)))))
          (_%g265849266232%_ _%sig265847%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx267004%_)
        (let* ((_%g267007267025%_
                (lambda (_%g267008267021%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267008267021%_))))
               (_%g267006267080%_
                (lambda (_%g267008267029%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267008267029%_))
                      (let ((_%e267011267032%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267008267029%_))))
                        (let ((_%hd267012267036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267011267032%_)))
                              (_%tl267013267039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267011267032%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267013267039%_))
                              (let ((_%e267014267042%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267013267039%_))))
                                (let ((_%hd267015267046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267014267042%_)))
                                      (_%tl267016267049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267014267042%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl267016267049%_))
                                      (let ((_%e267017267052%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl267016267049%_))))
                                        (let ((_%hd267018267056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267017267052%_)))
                                              (_%tl267019267059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267017267052%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl267019267059%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%hd267015267046%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%hd267018267056%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx267004%_
                                                     _%hd267015267046%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx267004%_
                                                     _%hd267018267056%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%hd267015267046%_
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
                                                (cons _%hd267018267056%_ '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267007267025%_
                                                   _%g267008267029%_))
                                              (_%g267007267025%_
                                               _%g267008267029%_))))
                                      (_%g267007267025%_ _%g267008267029%_))))
                              (_%g267007267025%_ _%g267008267029%_))))
                      (_%g267007267025%_ _%g267008267029%_)))))
          (_%g267006267080%_ _%stx267004%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx267084%_)
        (let* ((_%g267087267111%_
                (lambda (_%g267088267107%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267088267107%_))))
               (_%g267086267392%_
                (lambda (_%g267088267115%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267088267115%_))
                      (let ((_%e267091267118%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267088267115%_))))
                        (let ((_%hd267092267122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267091267118%_)))
                              (_%tl267093267125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267091267118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267093267125%_))
                              (let ((_%e267094267128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267093267125%_))))
                                (let ((_%hd267095267132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267094267128%_)))
                                      (_%tl267096267135%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267094267128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl267096267135%_))
                                      (let ((_g269444_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl267096267135%_
                                                '0))))
                                        (begin
                                          (let ((_g269445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g269444_)
                                                       (##values-length
                                                        _g269444_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g269445_ 2)))
                                                (error "Context expects 2 values"
                                                       _g269445_)))
                                          (let ((_%target267097267138%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g269444_ 0)))
                                                (_%tl267099267141%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g269444_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl267099267141%_))
                                                (letrec ((_%loop267100267144%_
                                                          (lambda (_%hd267098267148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature267104267151%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd267098267148%_))
                        (let ((_%e267101267153%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd267098267148%_))))
                          (let ((_%lp-hd267102267157%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267101267153%_)))
                                (_%lp-tl267103267160%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267101267153%_))))
                            (_%loop267100267144%_
                             _%lp-tl267103267160%_
                             (cons _%lp-hd267102267157%_
                                   _%signature267104267151%_))))
                        (let ((_%signature267105267163%_
                               (reverse _%signature267104267151%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd267095267132%_))
                              (let* ((_%g267186267201%_
                                      (lambda (_%g267187267197%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g267187267197%_))))
                                     (_%g267185267380%_
                                      (lambda (_%g267187267205%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _%g267187267205%_))
                                            (let ((_%e267190267208%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%g267187267205%_))))
                                              (let ((_%hd267191267212%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e267190267208%_)))
                                                    (_%tl267192267215%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e267190267208%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl267192267215%_))
                                                    (let ((_%e267193267218%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%tl267192267215%_))))
                                                      (let ((_%hd267194267222%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e267193267218%_)))
                    (_%tl267195267225%_
                     (let () (declare (not safe)) (##cdr _%e267193267218%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl267195267225%_))
                    (let* ((_%g267246267254%_
                            (lambda (_%g267247267250%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g267247267250%_))))
                           (_%g267245267376%_
                            (lambda (_%g267247267258%_)
                              (let* ((_%unchecked267274%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%hd267194267222%_))
                                     (_%g267277267285%_
                                      (lambda (_%g267278267281%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g267278267281%_))))
                                     (_%g267276267308%_
                                      (lambda (_%g267278267289%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%g267247267258%_
                                                    (cons _%g267278267289%_
                                                          '()))))))
                                (_%g267276267308%_
                                 (if _%unchecked267274%_
                                     (let* ((_%g267312267327%_
                                             (lambda (_%g267313267323%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g267313267323%_))))
                                            (_%g267311267372%_
                                             (lambda (_%g267313267331%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%g267313267331%_))
                                                   (let ((_%e267316267334%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%g267313267331%_))))
                                                     (let ((_%hd267317267338%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e267316267334%_)))
                                                           (_%tl267318267341%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e267316267334%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl267318267341%_))
                                                           (let ((_%e267319267344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl267318267341%_))))
                     (let ((_%hd267320267348%_
                            (let ()
                              (declare (not safe))
                              (##car _%e267319267344%_)))
                           (_%tl267321267351%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e267319267344%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl267321267351%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%hd267317267338%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%hd267191267212%_ '()))
                 (cons '#f (cons 'signature: (cons _%hd267320267348%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%g267312267327%_ _%g267313267331%_))))
                   (_%g267312267327%_ _%g267313267331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g267312267327%_
                                                    _%g267313267331%_)))))
                                       (_%g267311267372%_ _%unchecked267274%_))
                                     '(begin)))))))
                      (_%g267245267376%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%hd267095267132%_
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
                                                           (cons _%hd267191267212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%hd267194267222%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%g267186267201%_ _%g267187267205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267186267201%_
                                                     _%g267187267205%_))))
                                            (_%g267186267201%_
                                             _%g267187267205%_)))))
                                (_%g267185267380%_
                                 (|gxc[1]#parse-signature|
                                  _%stx267084%_
                                  _%hd267095267132%_
                                  (let ((__tmp269446
                                         (lambda (_%g267383267386%_
                                                  _%g267384267389%_)
                                           (cons _%g267383267386%_
                                                 _%g267384267389%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp269446
                                     '()
                                     _%signature267105267163%_)))))
                              (_%g267087267111%_ _%g267088267115%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop267100267144%_
                                                   _%target267097267138%_
                                                   '()))
                                                (_%g267087267111%_
                                                 _%g267088267115%_)))))
                                      (_%g267087267111%_ _%g267088267115%_))))
                              (_%g267087267111%_ _%g267088267115%_))))
                      (_%g267087267111%_ _%g267088267115%_)))))
          (_%g267086267392%_ _%stx267084%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx267397%_)
        (let* ((_%g267400267424%_
                (lambda (_%g267401267420%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g267401267420%_))))
               (_%g267399268299%_
                (lambda (_%g267401267428%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g267401267428%_))
                      (let ((_%e267404267431%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g267401267428%_))))
                        (let ((_%hd267405267435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267404267431%_)))
                              (_%tl267406267438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267404267431%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl267406267438%_))
                              (let ((_%e267407267441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl267406267438%_))))
                                (let ((_%hd267408267445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267407267441%_)))
                                      (_%tl267409267448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267407267441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl267409267448%_))
                                      (let ((_g269447_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl267409267448%_
                                                '0))))
                                        (begin
                                          (let ((_g269448_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g269447_)
                                                       (##values-length
                                                        _g269447_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g269448_ 2)))
                                                (error "Context expects 2 values"
                                                       _g269448_)))
                                          (let ((_%target267410267451%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g269447_ 0)))
                                                (_%tl267412267454%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g269447_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl267412267454%_))
                                                (letrec ((_%loop267413267457%_
                                                          (lambda (_%hd267411267461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature267417267464%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd267411267461%_))
                        (let ((_%e267414267466%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd267411267461%_))))
                          (let ((_%lp-hd267415267470%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267414267466%_)))
                                (_%lp-tl267416267473%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267414267466%_))))
                            (_%loop267413267457%_
                             _%lp-tl267416267473%_
                             (cons _%lp-hd267415267470%_
                                   _%case-signature267417267464%_))))
                        (let ((_%case-signature267418267476%_
                               (reverse _%case-signature267417267464%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd267408267445%_))
                              (let* ((_%signatures267512%_
                                      (map (lambda (_%g267498267500%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx267397%_
                                              _%hd267408267445%_
                                              _%g267498267500%_))
                                           (let ((__tmp269449
                                                  (lambda (_%g267503267506%_
                                                           _%g267504267509%_)
                                                    (cons _%g267503267506%_
                                                          _%g267504267509%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp269449
                                              '()
                                              _%case-signature267418267476%_))))
                                     (_%g267515267541%_
                                      (lambda (_%g267516267537%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g267516267537%_))))
                                     (_%g267514268295%_
                                      (lambda (_%g267516267545%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%g267516267545%_))
                                            (let ((_g269450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%g267516267545%_
                                                      '0))))
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
                                                (let ((_%target267519267548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g269450_
                                                          0)))
                                                      (_%tl267521267551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g269450_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl267521267551%_))
                                                      (letrec ((_%loop267522267554%_
                                                                (lambda (_%hd267520267558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%sig267526267561%_
                                 _%arity267527267562%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd267520267558%_))
                              (let ((_%e267523267564%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd267520267558%_))))
                                (let ((_%lp-hd267524267568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e267523267564%_)))
                                      (_%lp-tl267525267571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e267523267564%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%lp-hd267524267568%_))
                                      (let ((_%e267530267574%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%lp-hd267524267568%_))))
                                        (let ((_%hd267531267578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267530267574%_)))
                                              (_%tl267532267581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267530267574%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl267532267581%_))
                                              (let ((_%e267533267584%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl267532267581%_))))
                                                (let ((_%hd267534267588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e267533267584%_)))
                                                      (_%tl267535267591%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e267533267584%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl267535267591%_))
                                                      (_%loop267522267554%_
                                                       _%lp-tl267525267571%_
                                                       (cons _%hd267534267588%_
                                                             _%sig267526267561%_)
                                                       (cons _%hd267531267578%_
                                                             _%arity267527267562%_))
                                                      (_%g267515267541%_
                                                       _%g267516267545%_))))
                                              (_%g267515267541%_
                                               _%g267516267545%_))))
                                      (_%g267515267541%_ _%g267516267545%_))))
                              (let ((_%sig267528267594%_
                                     (reverse _%sig267526267561%_))
                                    (_%arity267529267596%_
                                     (reverse _%arity267527267562%_)))
                                (let* ((_%g267617267625%_
                                        (lambda (_%g267618267621%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g267618267621%_))))
                                       (_%g267616268280%_
                                        (lambda (_%g267618267629%_)
                                          (let* ((_%g267645267653%_
                                                  (lambda (_%g267646267649%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g267646267649%_))))
                                                 (_%g267644267675%_
                                                  (lambda (_%g267646267657%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%g267618267629%_
                                                                (cons _%g267646267657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g267644267675%_
                                             (let ((_g269452_
                                                    (let _%loop267679%_ ((_%rest267682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures267512%_)
                                 (_%unchecked-proc267684%_ '#f)
                                 (_%unchecked-clauses267685%_ '()))
              (let* ((_%rest267686267694%_ _%rest267682%_)
                     (_%else267688267706%_
                      (lambda ()
                        (values _%unchecked-proc267684%_
                                (reverse! _%unchecked-clauses267685%_))))
                     (_%K267690268147%_
                      (lambda (_%rest267710%_ _%hd267712%_)
                        (let* ((_%g267714267801%_
                                (lambda (_%g267715267797%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g267715267797%_))))
                               (_%g267713268143%_
                                (lambda (_%g267715267805%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g267715267805%_))
                                      (let ((_%e267722267808%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g267715267805%_))))
                                        (let ((_%hd267723267812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267722267808%_)))
                                              (_%tl267724267815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267722267808%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl267724267815%_))
                                              (let ((_%e267725267818%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl267724267815%_))))
                                                (let ((_%hd267726267822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e267725267818%_)))
                                                      (_%tl267727267825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e267725267818%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd267726267822%_))
                                                      (let ((_%e267728267828%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%hd267726267822%_))))
                (let ((_%hd267729267832%_
                       (let () (declare (not safe)) (##car _%e267728267828%_)))
                      (_%tl267730267835%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e267728267828%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl267730267835%_))
                      (let ((_%e267731267838%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl267730267835%_))))
                        (let ((_%hd267732267842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267731267838%_)))
                              (_%tl267733267845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267731267838%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%hd267732267842%_))
                              (let ((_%e267734267848%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd267732267842%_))))
                                (if (equal? _%e267734267848%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl267733267845%_))
                                        (let ((_%e267735267852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl267733267845%_))))
                                          (let ((_%hd267736267856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e267735267852%_)))
                                                (_%tl267737267859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e267735267852%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd267736267856%_))
                                                (let ((_%e267738267862%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%hd267736267856%_))))
                                                  (let ((_%hd267739267866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e267738267862%_)))
                                                        (_%tl267740267869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e267738267862%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd267739267866%_))
                                                        (if (let ((__tmp269454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g269455_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp269454 _%hd267739267866%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl267740267869%_))
                        (let ((_%e267741267872%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl267740267869%_))))
                          (let ((_%hd267742267876%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267741267872%_)))
                                (_%tl267743267879%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267741267872%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl267743267879%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl267737267859%_))
                                    (let ((_%e267744267882%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl267737267859%_))))
                                      (let ((_%hd267745267886%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e267744267882%_)))
                                            (_%tl267746267889%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e267744267882%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%hd267745267886%_))
                                            (let ((_%e267747267892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd267745267886%_))))
                                              (if (equal? _%e267747267892%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl267746267889%_))
                                                      (let ((_%e267748267896%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl267746267889%_))))
                (let ((_%hd267749267900%_
                       (let () (declare (not safe)) (##car _%e267748267896%_)))
                      (_%tl267750267903%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e267748267896%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd267749267900%_))
                      (let ((_%e267751267906%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%hd267749267900%_))))
                        (let ((_%hd267752267910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e267751267906%_)))
                              (_%tl267753267913%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e267751267906%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd267752267910%_))
                              (if (let ((__tmp269456 |gxc[1]#_g269457_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp269456
                                     _%hd267752267910%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl267753267913%_))
                                      (let ((_%e267754267916%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl267753267913%_))))
                                        (let ((_%hd267755267920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267754267916%_)))
                                              (_%tl267756267923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267754267916%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl267756267923%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl267750267903%_))
                                                  (let ((_%e267757267926%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl267750267903%_))))
                                                    (let ((_%hd267758267930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e267757267926%_)))
                                                          (_%tl267759267933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e267757267926%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%hd267758267930%_))
                                                          (let ((_%e267760267936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd267758267930%_))))
                    (if (equal? _%e267760267936%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl267759267933%_))
                            (let ((_%e267761267940%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl267759267933%_))))
                              (let ((_%hd267762267944%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e267761267940%_)))
                                    (_%tl267763267947%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e267761267940%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd267762267944%_))
                                    (let ((_%e267764267950%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd267762267944%_))))
                                      (let ((_%hd267765267954%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e267764267950%_)))
                                            (_%tl267766267957%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e267764267950%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%hd267765267954%_))
                                            (if (let ((__tmp269458
                                                       |gxc[1]#_g269459_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp269458
                                                   _%hd267765267954%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl267766267957%_))
                                                    (let ((_%e267767267960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%tl267766267957%_))))
                                                      (let ((_%hd267768267964%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e267767267960%_)))
                    (_%tl267769267967%_
                     (let () (declare (not safe)) (##cdr _%e267767267960%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl267769267967%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl267763267947%_))
                        (let ((_%e267770267970%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl267763267947%_))))
                          (let ((_%hd267771267974%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267770267970%_)))
                                (_%tl267772267977%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267770267970%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd267771267974%_))
                                (let ((_%e267773267980%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd267771267974%_))))
                                  (if (equal? _%e267773267980%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl267772267977%_))
                                          (let ((_%e267774267984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl267772267977%_))))
                                            (let ((_%hd267775267988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e267774267984%_)))
                                                  (_%tl267776267991%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e267774267984%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd267775267988%_))
                                                  (let ((_%e267777267994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd267775267988%_))))
                                                    (let ((_%hd267778267998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e267777267994%_)))
                                                          (_%tl267779268001%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e267777267994%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd267778267998%_))
                                                          (if (let ((__tmp269460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g269461_|))
                        (declare (not safe))
                        (gx#free-identifier=? __tmp269460 _%hd267778267998%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl267779268001%_))
                          (let ((_%e267780268004%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl267779268001%_))))
                            (let ((_%hd267781268008%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e267780268004%_)))
                                  (_%tl267782268011%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e267780268004%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl267782268011%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl267776267991%_))
                                      (let ((_%e267783268014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl267776267991%_))))
                                        (let ((_%hd267784268018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e267783268014%_)))
                                              (_%tl267785268021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e267783268014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd267784268018%_))
                                              (let ((_%e267786268024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd267784268018%_))))
                                                (if (equal? _%e267786268024%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl267785268021%_))
                                                        (let ((_%e267787268028%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl267785268021%_))))
                  (let ((_%hd267788268032%_
                         (let ()
                           (declare (not safe))
                           (##car _%e267787268028%_)))
                        (_%tl267789268035%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e267787268028%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd267788268032%_))
                        (let ((_%e267790268038%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd267788268032%_))))
                          (let ((_%hd267791268042%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e267790268038%_)))
                                (_%tl267792268045%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e267790268038%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd267791268042%_))
                                (if (let ((__tmp269462 |gxc[1]#_g269463_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp269462
                                       _%hd267791268042%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl267792268045%_))
                                        (let ((_%e267793268048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl267792268045%_))))
                                          (let ((_%hd267794268052%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e267793268048%_)))
                                                (_%tl267795268055%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e267793268048%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl267795268055%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl267789268035%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl267727267825%_))
                                                        (let ((_%clause268135%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%hd267723267812%_ '()))
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
                                     (cons _%hd267755267920%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%hd267794268052%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked268137%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%hd267781268008%_))))
                  (_%loop267679%_
                   _%rest267710%_
                   (let ((_%$e268139%_ _%unchecked268137%_))
                     (if _%$e268139%_ _%$e268139%_ _%unchecked-proc267684%_))
                   (cons _%clause268135%_ _%unchecked-clauses267685%_)))
                (_%g267714267801%_ _%g267715267805%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267714267801%_
                                                     _%g267715267805%_))
                                                (_%g267714267801%_
                                                 _%g267715267805%_))))
                                        (_%g267714267801%_ _%g267715267805%_))
                                    (_%g267714267801%_ _%g267715267805%_))
                                (_%g267714267801%_ _%g267715267805%_))))
                        (_%g267714267801%_ _%g267715267805%_))))
                (_%g267714267801%_ _%g267715267805%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267714267801%_
                                                     _%g267715267805%_)))
                                              (_%g267714267801%_
                                               _%g267715267805%_))))
                                      (_%g267714267801%_ _%g267715267805%_))
                                  (_%g267714267801%_ _%g267715267805%_))))
                          (_%g267714267801%_ _%g267715267805%_))
                      (_%g267714267801%_ _%g267715267805%_))
                  (_%g267714267801%_ _%g267715267805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267714267801%_
                                                   _%g267715267805%_))))
                                          (_%g267714267801%_
                                           _%g267715267805%_))
                                      (_%g267714267801%_ _%g267715267805%_)))
                                (_%g267714267801%_ _%g267715267805%_))))
                        (_%g267714267801%_ _%g267715267805%_))
                    (_%g267714267801%_ _%g267715267805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g267714267801%_
                                                     _%g267715267805%_))
                                                (_%g267714267801%_
                                                 _%g267715267805%_))
                                            (_%g267714267801%_
                                             _%g267715267805%_))))
                                    (_%g267714267801%_ _%g267715267805%_))))
                            (_%g267714267801%_ _%g267715267805%_))
                        (_%g267714267801%_ _%g267715267805%_)))
                  (_%g267714267801%_ _%g267715267805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267714267801%_
                                                   _%g267715267805%_))
                                              (_%g267714267801%_
                                               _%g267715267805%_))))
                                      (_%g267714267801%_ _%g267715267805%_))
                                  (_%g267714267801%_ _%g267715267805%_))
                              (_%g267714267801%_ _%g267715267805%_))))
                      (_%g267714267801%_ _%g267715267805%_))))
              (_%g267714267801%_ _%g267715267805%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g267714267801%_
                                                   _%g267715267805%_)))
                                            (_%g267714267801%_
                                             _%g267715267805%_))))
                                    (_%g267714267801%_ _%g267715267805%_))
                                (_%g267714267801%_ _%g267715267805%_))))
                        (_%g267714267801%_ _%g267715267805%_))
                    (_%g267714267801%_ _%g267715267805%_))
                (_%g267714267801%_ _%g267715267805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g267714267801%_
                                                 _%g267715267805%_))))
                                        (_%g267714267801%_ _%g267715267805%_))
                                    (_%g267714267801%_ _%g267715267805%_)))
                              (_%g267714267801%_ _%g267715267805%_))))
                      (_%g267714267801%_ _%g267715267805%_))))
              (_%g267714267801%_ _%g267715267805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g267714267801%_
                                               _%g267715267805%_))))
                                      (_%g267714267801%_ _%g267715267805%_)))))
                          (_%g267713268143%_ _%hd267712%_)))))
                (if (pair? _%rest267686267694%_)
                    (let ((_%hd267691268151%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest267686267694%_)))
                          (_%tl267692268154%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest267686267694%_))))
                      (let* ((_%hd268157%_ _%hd267691268151%_)
                             (_%rest268160%_ _%tl267692268154%_))
                        (_%K267690268147%_ _%rest268160%_ _%hd268157%_)))
                    (_%else267688267706%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g269453_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g269452_)
                                                              (##values-length
                                                               _g269452_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g269453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g269453_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc268163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g269452_
                                                           0)))
                                                       (_%unchecked-clauses268165%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g269452_
                                                           1))))
                                                   (if _%unchecked-proc268163%_
                                                       (let* ((_%g268167268191%_
                                                               (lambda (_%g268168268187%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g268168268187%_))))
                      (_%g268166268276%_
                       (lambda (_%g268168268195%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%g268168268195%_))
                             (let ((_%e268171268198%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%g268168268195%_))))
                               (let ((_%hd268172268202%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e268171268198%_)))
                                     (_%tl268173268205%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e268171268198%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl268173268205%_))
                                     (let ((_%e268174268208%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl268173268205%_))))
                                       (let ((_%hd268175268212%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e268174268208%_)))
                                             (_%tl268176268215%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e268174268208%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%hd268175268212%_))
                                             (let ((_g269464_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%hd268175268212%_
                                                       '0))))
                                               (begin
                                                 (let ((_g269465_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g269464_)
                                                              (##values-length
                                                               _g269464_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g269465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g269465_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target268177268218%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g269464_
                                                           0)))
                                                       (_%tl268179268221%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g269464_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl268179268221%_))
                                                       (letrec ((_%loop268180268224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd268178268228%_ _%clause268184268231%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd268178268228%_))
                               (let ((_%e268181268233%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd268178268228%_))))
                                 (let ((_%lp-hd268182268237%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e268181268233%_)))
                                       (_%lp-tl268183268240%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e268181268233%_))))
                                   (_%loop268180268224%_
                                    _%lp-tl268183268240%_
                                    (cons _%lp-hd268182268237%_
                                          _%clause268184268231%_))))
                               (let ((_%clause268185268243%_
                                      (reverse _%clause268184268231%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl268176268215%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%hd268172268202%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp269466
                                        (lambda (_%g268267268270%_
                                                 _%g268268268273%_)
                                          (cons _%g268267268270%_
                                                _%g268268268273%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp269466
                                    '()
                                    _%clause268185268243%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%g268167268191%_
                                      _%g268168268195%_)))))))
                 (_%loop268180268224%_ _%target268177268218%_ '()))
               (_%g268167268191%_ _%g268168268195%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g268167268191%_
                                              _%g268168268195%_))))
                                     (_%g268167268191%_ _%g268168268195%_))))
                             (_%g268167268191%_ _%g268168268195%_)))))
                 (_%g268166268276%_
                  (list _%unchecked-proc268163%_ _%unchecked-clauses268165%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%g267616268280%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%hd267408267445%_
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
                                    _%sig267528267594%_
                                    _%arity267529267596%_))
                                 (let ((__tmp269467
                                        (lambda (_%g268283268287%_
                                                 _%g268284268290%_
                                                 _%g268285268292%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%g268284268290%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%g268283268287%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g268285268292%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp269467
                                    '()
                                    _%sig267528267594%_
                                    _%arity267529267596%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%loop267522267554%_ _%target267519267548%_ '() '()))
              (_%g267515267541%_ _%g267516267545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g267515267541%_
                                             _%g267516267545%_)))))
                                (_%g267514268295%_ _%signatures267512%_))
                              (_%g267400267424%_ _%g267401267428%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop267413267457%_
                                                   _%target267410267451%_
                                                   '()))
                                                (_%g267400267424%_
                                                 _%g267401267428%_)))))
                                      (_%g267400267424%_ _%g267401267428%_))))
                              (_%g267400267424%_ _%g267401267428%_))))
                      (_%g267400267424%_ _%g267401267428%_)))))
          (_%g267399268299%_ _%stx267397%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx268307%_)
        (let* ((_%__stx269287269288%_ _%$stx268307%_)
               (_%g268313268373%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx269287269288%_)))))
          (let ((_%__kont269290269291%_
                 (lambda (_%g268315268595%_ _%g268316268597%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268316268597%_ '()))
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
                                                       (cons _%g268316268597%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268315268595%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont269292269293%_
                 (lambda (_%g268330268520%_
                          _%g268331268522%_
                          _%g268332268523%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268332268523%_ '()))
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
                                                       (cons _%g268332268523%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268331268522%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g268330268520%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont269294269295%_
                 (lambda (_%g268349268434%_
                          _%g268350268436%_
                          _%g268351268437%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%g268351268437%_ '()))
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
                                                       (cons _%g268351268437%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%g268350268436%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%g268349268434%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx269287269288%_))
                (let ((_%e268317268551%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx269287269288%_))))
                  (let ((_%tl268319268558%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e268317268551%_)))
                        (_%hd268318268555%_
                         (let ()
                           (declare (not safe))
                           (##car _%e268317268551%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl268319268558%_))
                        (let ((_%e268320268561%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl268319268558%_))))
                          (let ((_%tl268322268568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e268320268561%_)))
                                (_%hd268321268565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e268320268561%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd268321268565%_))
                                (let ((_%e268323268571%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd268321268565%_))))
                                  (if (equal? _%e268323268571%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl268322268568%_))
                                          (let ((_%e268324268575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl268322268568%_))))
                                            (let ((_%tl268326268582%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e268324268575%_)))
                                                  (_%hd268325268579%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e268324268575%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl268326268582%_))
                                                  (let ((_%e268327268585%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl268326268582%_))))
                                                    (let ((_%tl268329268592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e268327268585%_)))
                                                          (_%hd268328268589%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e268327268585%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl268329268592%_))
                                                          (_%__kont269290269291%_
                                                           _%hd268328268589%_
                                                           _%hd268325268579%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g268313268373%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g268313268373%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g268313268373%_)))
                                      (if (equal? _%e268323268571%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl268322268568%_))
                                              (let ((_%e268340268490%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl268322268568%_))))
                                                (let ((_%tl268342268497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e268340268490%_)))
                                                      (_%hd268341268494%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e268340268490%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl268342268497%_))
                                                      (let ((_%e268343268500%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl268342268497%_))))
                (let ((_%tl268345268507%_
                       (let () (declare (not safe)) (##cdr _%e268343268500%_)))
                      (_%hd268344268504%_
                       (let ()
                         (declare (not safe))
                         (##car _%e268343268500%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl268345268507%_))
                      (let ((_%e268346268510%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl268345268507%_))))
                        (let ((_%tl268348268517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e268346268510%_)))
                              (_%hd268347268514%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e268346268510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl268348268517%_))
                              (_%__kont269292269293%_
                               _%hd268347268514%_
                               _%hd268344268504%_
                               _%hd268341268494%_)
                              (let ()
                                (declare (not safe))
                                (_%g268313268373%_)))))
                      (let () (declare (not safe)) (_%g268313268373%_)))))
              (let () (declare (not safe)) (_%g268313268373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g268313268373%_)))
                                          (if (equal? _%e268323268571%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl268322268568%_))
                                                  (let ((_%e268359268404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl268322268568%_))))
                                                    (let ((_%tl268361268411%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e268359268404%_)))
                                                          (_%hd268360268408%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e268359268404%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl268361268411%_))
                                                          (let ((_%e268362268414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl268361268411%_))))
                    (let ((_%tl268364268421%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e268362268414%_)))
                          (_%hd268363268418%_
                           (let ()
                             (declare (not safe))
                             (##car _%e268362268414%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl268364268421%_))
                          (let ((_%e268365268424%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl268364268421%_))))
                            (let ((_%tl268367268431%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e268365268424%_)))
                                  (_%hd268366268428%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e268365268424%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl268367268431%_))
                                  (_%__kont269294269295%_
                                   _%hd268366268428%_
                                   _%hd268363268418%_
                                   _%hd268360268408%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g268313268373%_)))))
                          (let () (declare (not safe)) (_%g268313268373%_)))))
                  (let () (declare (not safe)) (_%g268313268373%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g268313268373%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g268313268373%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g268313268373%_)))))
                        (let () (declare (not safe)) (_%g268313268373%_)))))
                (let () (declare (not safe)) (_%g268313268373%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx268619%_)
        (let* ((_%g268623268643%_
                (lambda (_%g268624268639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g268624268639%_))))
               (_%g268622268712%_
                (lambda (_%g268624268647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g268624268647%_))
                      (let ((_%e268626268650%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g268624268647%_))))
                        (let ((_%hd268627268654%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e268626268650%_)))
                              (_%tl268628268657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e268626268650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl268628268657%_))
                              (let ((_g269468_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl268628268657%_
                                        '0))))
                                (begin
                                  (let ((_g269469_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g269468_)
                                               (##values-length _g269468_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g269469_ 2)))
                                        (error "Context expects 2 values"
                                               _g269469_)))
                                  (let ((_%target268629268660%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269468_ 0)))
                                        (_%tl268631268663%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g269468_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl268631268663%_))
                                        (letrec ((_%loop268632268666%_
                                                  (lambda (_%hd268630268670%_
                                                           _%decl268636268673%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd268630268670%_))
                                                        (let ((_%e268633268675%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd268630268670%_))))
                  (let ((_%lp-hd268634268679%_
                         (let ()
                           (declare (not safe))
                           (##car _%e268633268675%_)))
                        (_%lp-tl268635268682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e268633268675%_))))
                    (_%loop268632268666%_
                     _%lp-tl268635268682%_
                     (cons _%lp-hd268634268679%_ _%decl268636268673%_))))
                (let ((_%decl268637268685%_ (reverse _%decl268636268673%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp269470
                               (lambda (_%g268703268706%_ _%g268704268709%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%g268703268706%_)
                                       _%g268704268709%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp269470
                           '()
                           _%decl268637268685%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop268632268666%_
                                           _%target268629268660%_
                                           '()))
                                        (_%g268623268643%_
                                         _%g268624268647%_)))))
                              (_%g268623268643%_ _%g268624268647%_))))
                      (_%g268623268643%_ _%g268624268647%_)))))
          (_%g268622268712%_ _%$stx268619%_))))))
