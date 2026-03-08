(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1773009269)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx187904%_)
        (let* ((_%e187905187912%_ _%stx187904%_)
               (_%E187907187916%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187905187912%_)))
               (_%E187906187930%_
                (lambda ()
                  (if (gx#stx-pair? _%e187905187912%_)
                      (let ((_%e187908187920%_
                             (gx#syntax-e _%e187905187912%_)))
                        (let ((_%hd187909187923%_ (##car _%e187908187920%_))
                              (_%tl187910187925%_ (##cdr _%e187908187920%_)))
                          (let* ((_%form187928%_ _%hd187909187923%_)
                                 (__self187933
                                  (gx#syntax-local-e__0 _%form187928%_))
                                 (__method187934
                                  (__method-ref
                                   __self187933
                                   'compile-top-syntax)))
                            (if __method187934
                                (__method187934 __self187933 _%stx187904%_)
                                (begin
                                  (error '"Missing method"
                                         __self187933
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E187907187916%_)))))
          (_%E187906187930%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self187853%_ _%stx187854%_)
        (let* ((_%self187857%_ _%self187853%_)
               (_%self187866187874%_ _%self187857%_)
               (_%E187868187877%_
                (lambda ()
                  (error '"No clause matching"
                         _%self187866187874%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K187869187890%_
                (lambda (_%K187880%_)
                  (let ((_%$e187882%_ (gx#stx-source _%stx187854%_)))
                    (if _%$e187882%_
                        ((lambda (_%g187884187886%_)
                           (gx#stx-wrap-source
                            (_%K187880%_ _%stx187854%_)
                            _%g187884187886%_))
                         _%$e187882%_)
                        (_%K187880%_ _%stx187854%_)))))
               (_%e187870187893%_
                (##unchecked-structure-ref _%self187866187874%_ '1 '#f '#f))
               (_%e187871187896%_
                (##unchecked-structure-ref _%self187866187874%_ '2 '#f '#f))
               (_%e187872187899%_
                (##unchecked-structure-ref _%self187866187874%_ '3 '#f '#f))
               (_%K187902%_ _%e187872187899%_))
          (_%K187869187890%_ _%K187902%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx187727%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx187727%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx187697%_)
        (let* ((_%e187698187705%_ _%stx187697%_)
               (_%E187700187709%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187698187705%_)))
               (_%E187699187723%_
                (lambda ()
                  (if (gx#stx-pair? _%e187698187705%_)
                      (let ((_%e187701187713%_
                             (gx#syntax-e _%e187698187705%_)))
                        (let ((_%hd187702187716%_ (##car _%e187701187713%_))
                              (_%tl187703187718%_ (##cdr _%e187701187713%_)))
                          (let ((_%body187721%_ _%tl187703187718%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body187721%_)))))
                      (_%E187700187709%_)))))
          (_%E187699187723%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx187666%_)
        (let* ((_%e187667187674%_ _%stx187666%_)
               (_%E187669187678%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187667187674%_)))
               (_%E187668187693%_
                (lambda ()
                  (if (gx#stx-pair? _%e187667187674%_)
                      (let ((_%e187670187682%_
                             (gx#syntax-e _%e187667187674%_)))
                        (let ((_%hd187671187685%_ (##car _%e187670187682%_))
                              (_%tl187672187687%_ (##cdr _%e187670187682%_)))
                          (let ((_%body187690%_ _%tl187672187687%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body187690%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E187669187678%_)))))
          (_%E187668187693%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx187636%_)
        (let* ((_%e187637187644%_ _%stx187636%_)
               (_%E187639187648%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187637187644%_)))
               (_%E187638187662%_
                (lambda ()
                  (if (gx#stx-pair? _%e187637187644%_)
                      (let ((_%e187640187652%_
                             (gx#syntax-e _%e187637187644%_)))
                        (let ((_%hd187641187655%_ (##car _%e187640187652%_))
                              (_%tl187642187657%_ (##cdr _%e187640187652%_)))
                          (let ((_%body187660%_ _%tl187642187657%_))
                            (cons '%#begin-foreign _%body187660%_))))
                      (_%E187639187648%_)))))
          (_%E187638187662%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx187582%_)
        (let* ((_%e187583187596%_ _%stx187582%_)
               (_%E187585187600%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187583187596%_)))
               (_%E187584187632%_
                (lambda ()
                  (if (gx#stx-pair? _%e187583187596%_)
                      (let ((_%e187586187604%_
                             (gx#syntax-e _%e187583187596%_)))
                        (let ((_%hd187587187607%_ (##car _%e187586187604%_))
                              (_%tl187588187609%_ (##cdr _%e187586187604%_)))
                          (if (gx#stx-pair? _%tl187588187609%_)
                              (let ((_%e187589187612%_
                                     (gx#syntax-e _%tl187588187609%_)))
                                (let ((_%hd187590187615%_
                                       (##car _%e187589187612%_))
                                      (_%tl187591187617%_
                                       (##cdr _%e187589187612%_)))
                                  (let ((_%ann187620%_ _%hd187590187615%_))
                                    (if (gx#stx-pair? _%tl187591187617%_)
                                        (let ((_%e187592187622%_
                                               (gx#syntax-e
                                                _%tl187591187617%_)))
                                          (let ((_%hd187593187625%_
                                                 (##car _%e187592187622%_))
                                                (_%tl187594187627%_
                                                 (##cdr _%e187592187622%_)))
                                            (let ((_%expr187630%_
                                                   _%hd187593187625%_))
                                              (if (gx#stx-null?
                                                   _%tl187594187627%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr187630%_)
                                                  (_%E187585187600%_)))))
                                        (_%E187585187600%_)))))
                              (_%E187585187600%_))))
                      (_%E187585187600%_)))))
          (_%E187584187632%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx187552%_)
        (let* ((_%e187553187560%_ _%stx187552%_)
               (_%E187555187564%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187553187560%_)))
               (_%E187554187578%_
                (lambda ()
                  (if (gx#stx-pair? _%e187553187560%_)
                      (let ((_%e187556187568%_
                             (gx#syntax-e _%e187553187560%_)))
                        (let ((_%hd187557187571%_ (##car _%e187556187568%_))
                              (_%tl187558187573%_ (##cdr _%e187556187568%_)))
                          (let ((_%body187576%_ _%tl187558187573%_))
                            (cons '%#import _%body187576%_))))
                      (_%E187555187564%_)))))
          (_%E187554187578%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx187509%_)
        (let* ((_%e187510187520%_ _%stx187509%_)
               (_%E187512187524%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187510187520%_)))
               (_%E187511187548%_
                (lambda ()
                  (if (gx#stx-pair? _%e187510187520%_)
                      (let ((_%e187513187528%_
                             (gx#syntax-e _%e187510187520%_)))
                        (let ((_%hd187514187531%_ (##car _%e187513187528%_))
                              (_%tl187515187533%_ (##cdr _%e187513187528%_)))
                          (if (gx#stx-pair? _%tl187515187533%_)
                              (let ((_%e187516187536%_
                                     (gx#syntax-e _%tl187515187533%_)))
                                (let ((_%hd187517187539%_
                                       (##car _%e187516187536%_))
                                      (_%tl187518187541%_
                                       (##cdr _%e187516187536%_)))
                                  (let* ((_%hd187544%_ _%hd187517187539%_)
                                         (_%body187546%_ _%tl187518187541%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd187544%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body187546%_))))))
                              (_%E187512187524%_))))
                      (_%E187512187524%_)))))
          (_%E187511187548%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx187479%_)
        (let* ((_%e187480187487%_ _%stx187479%_)
               (_%E187482187491%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187480187487%_)))
               (_%E187481187505%_
                (lambda ()
                  (if (gx#stx-pair? _%e187480187487%_)
                      (let ((_%e187483187495%_
                             (gx#syntax-e _%e187480187487%_)))
                        (let ((_%hd187484187498%_ (##car _%e187483187495%_))
                              (_%tl187485187500%_ (##cdr _%e187483187495%_)))
                          (let ((_%body187503%_ _%tl187485187500%_))
                            (cons '%#export _%body187503%_))))
                      (_%E187482187491%_)))))
          (_%E187481187505%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx187449%_)
        (let* ((_%e187450187457%_ _%stx187449%_)
               (_%E187452187461%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187450187457%_)))
               (_%E187451187475%_
                (lambda ()
                  (if (gx#stx-pair? _%e187450187457%_)
                      (let ((_%e187453187465%_
                             (gx#syntax-e _%e187450187457%_)))
                        (let ((_%hd187454187468%_ (##car _%e187453187465%_))
                              (_%tl187455187470%_ (##cdr _%e187453187465%_)))
                          (let ((_%body187473%_ _%tl187455187470%_))
                            (cons '%#provide _%body187473%_))))
                      (_%E187452187461%_)))))
          (_%E187451187475%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx187419%_)
        (let* ((_%e187420187427%_ _%stx187419%_)
               (_%E187422187431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187420187427%_)))
               (_%E187421187445%_
                (lambda ()
                  (if (gx#stx-pair? _%e187420187427%_)
                      (let ((_%e187423187435%_
                             (gx#syntax-e _%e187420187427%_)))
                        (let ((_%hd187424187438%_ (##car _%e187423187435%_))
                              (_%tl187425187440%_ (##cdr _%e187423187435%_)))
                          (let ((_%body187443%_ _%tl187425187440%_))
                            (cons '%#extern _%body187443%_))))
                      (_%E187422187431%_)))))
          (_%E187421187445%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx187365%_)
        (let* ((_%e187366187379%_ _%stx187365%_)
               (_%E187368187383%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187366187379%_)))
               (_%E187367187415%_
                (lambda ()
                  (if (gx#stx-pair? _%e187366187379%_)
                      (let ((_%e187369187387%_
                             (gx#syntax-e _%e187366187379%_)))
                        (let ((_%hd187370187390%_ (##car _%e187369187387%_))
                              (_%tl187371187392%_ (##cdr _%e187369187387%_)))
                          (if (gx#stx-pair? _%tl187371187392%_)
                              (let ((_%e187372187395%_
                                     (gx#syntax-e _%tl187371187392%_)))
                                (let ((_%hd187373187398%_
                                       (##car _%e187372187395%_))
                                      (_%tl187374187400%_
                                       (##cdr _%e187372187395%_)))
                                  (let ((_%hd187403%_ _%hd187373187398%_))
                                    (if (gx#stx-pair? _%tl187374187400%_)
                                        (let ((_%e187375187405%_
                                               (gx#syntax-e
                                                _%tl187374187400%_)))
                                          (let ((_%hd187376187408%_
                                                 (##car _%e187375187405%_))
                                                (_%tl187377187410%_
                                                 (##cdr _%e187375187405%_)))
                                            (let ((_%expr187413%_
                                                   _%hd187376187408%_))
                                              (if (gx#stx-null?
                                                   _%tl187377187410%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd187403%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr187413%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187368187383%_)))))
                                        (_%E187368187383%_)))))
                              (_%E187368187383%_))))
                      (_%E187368187383%_)))))
          (_%E187367187415%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx187310%_)
        (let* ((_%e187311187324%_ _%stx187310%_)
               (_%E187313187328%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187311187324%_)))
               (_%E187312187361%_
                (lambda ()
                  (if (gx#stx-pair? _%e187311187324%_)
                      (let ((_%e187314187332%_
                             (gx#syntax-e _%e187311187324%_)))
                        (let ((_%hd187315187335%_ (##car _%e187314187332%_))
                              (_%tl187316187337%_ (##cdr _%e187314187332%_)))
                          (if (gx#stx-pair? _%tl187316187337%_)
                              (let ((_%e187317187340%_
                                     (gx#syntax-e _%tl187316187337%_)))
                                (let ((_%hd187318187343%_
                                       (##car _%e187317187340%_))
                                      (_%tl187319187345%_
                                       (##cdr _%e187317187340%_)))
                                  (let ((_%hd187348%_ _%hd187318187343%_))
                                    (if (gx#stx-pair? _%tl187319187345%_)
                                        (let ((_%e187320187350%_
                                               (gx#syntax-e
                                                _%tl187319187345%_)))
                                          (let ((_%hd187321187353%_
                                                 (##car _%e187320187350%_))
                                                (_%tl187322187355%_
                                                 (##cdr _%e187320187350%_)))
                                            (let ((_%expr187358%_
                                                   _%hd187321187353%_))
                                              (if (gx#stx-null?
                                                   _%tl187322187355%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd187348%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr187358%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187313187328%_)))))
                                        (_%E187313187328%_)))))
                              (_%E187313187328%_))))
                      (_%E187313187328%_)))))
          (_%E187312187361%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx187280%_)
        (let* ((_%e187281187288%_ _%stx187280%_)
               (_%E187283187292%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187281187288%_)))
               (_%E187282187306%_
                (lambda ()
                  (if (gx#stx-pair? _%e187281187288%_)
                      (let ((_%e187284187296%_
                             (gx#syntax-e _%e187281187288%_)))
                        (let ((_%hd187285187299%_ (##car _%e187284187296%_))
                              (_%tl187286187301%_ (##cdr _%e187284187296%_)))
                          (let ((_%body187304%_ _%tl187286187301%_))
                            (cons '%#define-alias _%body187304%_))))
                      (_%E187283187292%_)))))
          (_%E187282187306%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx187250%_)
        (let* ((_%e187251187258%_ _%stx187250%_)
               (_%E187253187262%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187251187258%_)))
               (_%E187252187276%_
                (lambda ()
                  (if (gx#stx-pair? _%e187251187258%_)
                      (let ((_%e187254187266%_
                             (gx#syntax-e _%e187251187258%_)))
                        (let ((_%hd187255187269%_ (##car _%e187254187266%_))
                              (_%tl187256187271%_ (##cdr _%e187254187266%_)))
                          (let ((_%body187274%_ _%tl187256187271%_))
                            (cons '%#define-runtime _%body187274%_))))
                      (_%E187253187262%_)))))
          (_%E187252187276%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx187220%_)
        (let* ((_%e187221187228%_ _%stx187220%_)
               (_%E187223187232%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187221187228%_)))
               (_%E187222187246%_
                (lambda ()
                  (if (gx#stx-pair? _%e187221187228%_)
                      (let ((_%e187224187236%_
                             (gx#syntax-e _%e187221187228%_)))
                        (let ((_%hd187225187239%_ (##car _%e187224187236%_))
                              (_%tl187226187241%_ (##cdr _%e187224187236%_)))
                          (let ((_%decls187244%_ _%tl187226187241%_))
                            (cons '%#declare _%decls187244%_))))
                      (_%E187223187232%_)))))
          (_%E187222187246%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx187190%_)
        (let* ((_%e187191187198%_ _%stx187190%_)
               (_%E187193187202%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187191187198%_)))
               (_%E187192187216%_
                (lambda ()
                  (if (gx#stx-pair? _%e187191187198%_)
                      (let ((_%e187194187206%_
                             (gx#syntax-e _%e187191187198%_)))
                        (let ((_%hd187195187209%_ (##car _%e187194187206%_))
                              (_%tl187196187211%_ (##cdr _%e187194187206%_)))
                          (let ((_%clause187214%_ _%tl187196187211%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause187214%_)))))
                      (_%E187193187202%_)))))
          (_%E187192187216%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx187147%_)
        (let* ((_%e187148187158%_ _%stx187147%_)
               (_%E187150187162%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187148187158%_)))
               (_%E187149187186%_
                (lambda ()
                  (if (gx#stx-pair? _%e187148187158%_)
                      (let ((_%e187151187166%_
                             (gx#syntax-e _%e187148187158%_)))
                        (let ((_%hd187152187169%_ (##car _%e187151187166%_))
                              (_%tl187153187171%_ (##cdr _%e187151187166%_)))
                          (let ((_%hd187174%_ _%hd187152187169%_))
                            (if (gx#stx-pair? _%tl187153187171%_)
                                (let ((_%e187154187176%_
                                       (gx#syntax-e _%tl187153187171%_)))
                                  (let ((_%hd187155187179%_
                                         (##car _%e187154187176%_))
                                        (_%tl187156187181%_
                                         (##cdr _%e187154187176%_)))
                                    (let ((_%body187184%_ _%hd187155187179%_))
                                      (if (gx#stx-null? _%tl187156187181%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd187174%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body187184%_)
                                                      '()))
                                          (_%E187150187162%_)))))
                                (_%E187150187162%_)))))
                      (_%E187150187162%_)))))
          (_%E187149187186%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx187117%_)
        (let* ((_%e187118187125%_ _%stx187117%_)
               (_%E187120187129%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187118187125%_)))
               (_%E187119187143%_
                (lambda ()
                  (if (gx#stx-pair? _%e187118187125%_)
                      (let ((_%e187121187133%_
                             (gx#syntax-e _%e187118187125%_)))
                        (let ((_%hd187122187136%_ (##car _%e187121187133%_))
                              (_%tl187123187138%_ (##cdr _%e187121187133%_)))
                          (let ((_%clauses187141%_ _%tl187123187138%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses187141%_)))))
                      (_%E187120187129%_)))))
          (_%E187119187143%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx187052%_ _%form187053%_)
        (let* ((_%e187054187067%_ _%stx187052%_)
               (_%E187056187071%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187054187067%_)))
               (_%E187055187103%_
                (lambda ()
                  (if (gx#stx-pair? _%e187054187067%_)
                      (let ((_%e187057187075%_
                             (gx#syntax-e _%e187054187067%_)))
                        (let ((_%hd187058187078%_ (##car _%e187057187075%_))
                              (_%tl187059187080%_ (##cdr _%e187057187075%_)))
                          (if (gx#stx-pair? _%tl187059187080%_)
                              (let ((_%e187060187083%_
                                     (gx#syntax-e _%tl187059187080%_)))
                                (let ((_%hd187061187086%_
                                       (##car _%e187060187083%_))
                                      (_%tl187062187088%_
                                       (##cdr _%e187060187083%_)))
                                  (let ((_%hd187091%_ _%hd187061187086%_))
                                    (if (gx#stx-pair? _%tl187062187088%_)
                                        (let ((_%e187063187093%_
                                               (gx#syntax-e
                                                _%tl187062187088%_)))
                                          (let ((_%hd187064187096%_
                                                 (##car _%e187063187093%_))
                                                (_%tl187065187098%_
                                                 (##cdr _%e187063187093%_)))
                                            (let ((_%body187101%_
                                                   _%hd187064187096%_))
                                              (if (gx#stx-null?
                                                   _%tl187065187098%_)
                                                  (cons _%form187053%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd187091%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body187101%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187056187071%_)))))
                                        (_%E187056187071%_)))))
                              (_%E187056187071%_))))
                      (_%E187056187071%_)))))
          (_%E187055187103%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx187110%_)
        (let ((_%form187112%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx187110%_ _%form187112%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g187935_
        (let ((_g187936_ (##length _g187935_)))
          (cond ((##fx= _g187936_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g187935_))
                ((##fx= _g187936_ 2)
                 (apply gx#core-compile-top-let-values%__% _g187935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g187935_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx187049%_)
        (gx#core-compile-top-let-values%__% _%stx187049%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx187047%_)
        (gx#core-compile-top-let-values%__% _%stx187047%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx187006%_)
        (let* ((_%e187007187017%_ _%stx187006%_)
               (_%E187009187021%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187007187017%_)))
               (_%E187008187043%_
                (lambda ()
                  (if (gx#stx-pair? _%e187007187017%_)
                      (let ((_%e187010187025%_
                             (gx#syntax-e _%e187007187017%_)))
                        (let ((_%hd187011187028%_ (##car _%e187010187025%_))
                              (_%tl187012187030%_ (##cdr _%e187010187025%_)))
                          (if (gx#stx-pair? _%tl187012187030%_)
                              (let ((_%e187013187033%_
                                     (gx#syntax-e _%tl187012187030%_)))
                                (let ((_%hd187014187036%_
                                       (##car _%e187013187033%_))
                                      (_%tl187015187038%_
                                       (##cdr _%e187013187033%_)))
                                  (let ((_%e187041%_ _%hd187014187036%_))
                                    (if (gx#stx-null? _%tl187015187038%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e187041%_)
                                                    '()))
                                        (_%E187009187021%_)))))
                              (_%E187009187021%_))))
                      (_%E187009187021%_)))))
          (_%E187008187043%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx186965%_)
        (let* ((_%e186966186976%_ _%stx186965%_)
               (_%E186968186980%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186966186976%_)))
               (_%E186967187002%_
                (lambda ()
                  (if (gx#stx-pair? _%e186966186976%_)
                      (let ((_%e186969186984%_
                             (gx#syntax-e _%e186966186976%_)))
                        (let ((_%hd186970186987%_ (##car _%e186969186984%_))
                              (_%tl186971186989%_ (##cdr _%e186969186984%_)))
                          (if (gx#stx-pair? _%tl186971186989%_)
                              (let ((_%e186972186992%_
                                     (gx#syntax-e _%tl186971186989%_)))
                                (let ((_%hd186973186995%_
                                       (##car _%e186972186992%_))
                                      (_%tl186974186997%_
                                       (##cdr _%e186972186992%_)))
                                  (let ((_%e187000%_ _%hd186973186995%_))
                                    (if (gx#stx-null? _%tl186974186997%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e187000%_)
                                                    '()))
                                        (_%E186968186980%_)))))
                              (_%E186968186980%_))))
                      (_%E186968186980%_)))))
          (_%E186967187002%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx186922%_)
        (let* ((_%e186923186933%_ _%stx186922%_)
               (_%E186925186937%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186923186933%_)))
               (_%E186924186961%_
                (lambda ()
                  (if (gx#stx-pair? _%e186923186933%_)
                      (let ((_%e186926186941%_
                             (gx#syntax-e _%e186923186933%_)))
                        (let ((_%hd186927186944%_ (##car _%e186926186941%_))
                              (_%tl186928186946%_ (##cdr _%e186926186941%_)))
                          (if (gx#stx-pair? _%tl186928186946%_)
                              (let ((_%e186929186949%_
                                     (gx#syntax-e _%tl186928186946%_)))
                                (let ((_%hd186930186952%_
                                       (##car _%e186929186949%_))
                                      (_%tl186931186954%_
                                       (##cdr _%e186929186949%_)))
                                  (let* ((_%rator186957%_ _%hd186930186952%_)
                                         (_%args186959%_ _%tl186931186954%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator186957%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args186959%_))))))
                              (_%E186925186937%_))))
                      (_%E186925186937%_)))))
          (_%E186924186961%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx186855%_)
        (let* ((_%e186856186872%_ _%stx186855%_)
               (_%E186858186876%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186856186872%_)))
               (_%E186857186918%_
                (lambda ()
                  (if (gx#stx-pair? _%e186856186872%_)
                      (let ((_%e186859186880%_
                             (gx#syntax-e _%e186856186872%_)))
                        (let ((_%hd186860186883%_ (##car _%e186859186880%_))
                              (_%tl186861186885%_ (##cdr _%e186859186880%_)))
                          (if (gx#stx-pair? _%tl186861186885%_)
                              (let ((_%e186862186888%_
                                     (gx#syntax-e _%tl186861186885%_)))
                                (let ((_%hd186863186891%_
                                       (##car _%e186862186888%_))
                                      (_%tl186864186893%_
                                       (##cdr _%e186862186888%_)))
                                  (let ((_%test186896%_ _%hd186863186891%_))
                                    (if (gx#stx-pair? _%tl186864186893%_)
                                        (let ((_%e186865186898%_
                                               (gx#syntax-e
                                                _%tl186864186893%_)))
                                          (let ((_%hd186866186901%_
                                                 (##car _%e186865186898%_))
                                                (_%tl186867186903%_
                                                 (##cdr _%e186865186898%_)))
                                            (let ((_%K186906%_
                                                   _%hd186866186901%_))
                                              (if (gx#stx-pair?
                                                   _%tl186867186903%_)
                                                  (let ((_%e186868186908%_
                                                         (gx#syntax-e
                                                          _%tl186867186903%_)))
                                                    (let ((_%hd186869186911%_
                                                           (##car _%e186868186908%_))
                                                          (_%tl186870186913%_
                                                           (##cdr _%e186868186908%_)))
                                                      (let ((_%E186916%_
                                                             _%hd186869186911%_))
                                                        (if (gx#stx-null?
                                                             _%tl186870186913%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test186896%_)
                                (cons (gx#core-compile-top-syntax _%K186906%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E186916%_)
                                            '()))))
                    (_%E186858186876%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186858186876%_)))))
                                        (_%E186858186876%_)))))
                              (_%E186858186876%_))))
                      (_%E186858186876%_)))))
          (_%E186857186918%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx186814%_)
        (let* ((_%e186815186825%_ _%stx186814%_)
               (_%E186817186829%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186815186825%_)))
               (_%E186816186851%_
                (lambda ()
                  (if (gx#stx-pair? _%e186815186825%_)
                      (let ((_%e186818186833%_
                             (gx#syntax-e _%e186815186825%_)))
                        (let ((_%hd186819186836%_ (##car _%e186818186833%_))
                              (_%tl186820186838%_ (##cdr _%e186818186833%_)))
                          (if (gx#stx-pair? _%tl186820186838%_)
                              (let ((_%e186821186841%_
                                     (gx#syntax-e _%tl186820186838%_)))
                                (let ((_%hd186822186844%_
                                       (##car _%e186821186841%_))
                                      (_%tl186823186846%_
                                       (##cdr _%e186821186841%_)))
                                  (let ((_%id186849%_ _%hd186822186844%_))
                                    (if (gx#stx-null? _%tl186823186846%_)
                                        (if (gx#identifier? _%id186849%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id186849%_)
                                                        '()))
                                            (_%E186817186829%_))
                                        (_%E186817186829%_)))))
                              (_%E186817186829%_))))
                      (_%E186817186829%_)))))
          (_%E186816186851%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx186760%_)
        (let* ((_%e186761186774%_ _%stx186760%_)
               (_%E186763186778%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186761186774%_)))
               (_%E186762186810%_
                (lambda ()
                  (if (gx#stx-pair? _%e186761186774%_)
                      (let ((_%e186764186782%_
                             (gx#syntax-e _%e186761186774%_)))
                        (let ((_%hd186765186785%_ (##car _%e186764186782%_))
                              (_%tl186766186787%_ (##cdr _%e186764186782%_)))
                          (if (gx#stx-pair? _%tl186766186787%_)
                              (let ((_%e186767186790%_
                                     (gx#syntax-e _%tl186766186787%_)))
                                (let ((_%hd186768186793%_
                                       (##car _%e186767186790%_))
                                      (_%tl186769186795%_
                                       (##cdr _%e186767186790%_)))
                                  (let ((_%id186798%_ _%hd186768186793%_))
                                    (if (gx#stx-pair? _%tl186769186795%_)
                                        (let ((_%e186770186800%_
                                               (gx#syntax-e
                                                _%tl186769186795%_)))
                                          (let ((_%hd186771186803%_
                                                 (##car _%e186770186800%_))
                                                (_%tl186772186805%_
                                                 (##cdr _%e186770186800%_)))
                                            (let ((_%expr186808%_
                                                   _%hd186771186803%_))
                                              (if (gx#stx-null?
                                                   _%tl186772186805%_)
                                                  (if (gx#identifier?
                                                       _%id186798%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id186798%_)
                          (cons (gx#core-compile-top-syntax _%expr186808%_)
                                '())))
              (_%E186763186778%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186763186778%_)))))
                                        (_%E186763186778%_)))))
                              (_%E186763186778%_))))
                      (_%E186763186778%_)))))
          (_%E186762186810%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id186754%_)
        (let ((_%$e186756%_ (gx#resolve-identifier__0 _%id186754%_)))
          (if _%$e186756%_
              (##unchecked-structure-ref _%$e186756%_ '1 '#f '#f)
              _%id186754%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd186752%_)
        (if (gx#identifier? _%hd186752%_)
            (gx#core-compile-top-runtime-ref _%hd186752%_)
            '#f)))))
