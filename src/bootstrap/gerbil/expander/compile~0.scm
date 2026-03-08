(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1773012986)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx187914%_)
        (let* ((_%e187915187922%_ _%stx187914%_)
               (_%E187917187926%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187915187922%_)))
               (_%E187916187940%_
                (lambda ()
                  (if (gx#stx-pair? _%e187915187922%_)
                      (let ((_%e187918187930%_
                             (gx#syntax-e _%e187915187922%_)))
                        (let ((_%hd187919187933%_ (##car _%e187918187930%_))
                              (_%tl187920187935%_ (##cdr _%e187918187930%_)))
                          (let* ((_%form187938%_ _%hd187919187933%_)
                                 (__self187943
                                  (gx#syntax-local-e__0 _%form187938%_))
                                 (__method187944
                                  (__method-ref
                                   __self187943
                                   'compile-top-syntax)))
                            (if __method187944
                                (__method187944 __self187943 _%stx187914%_)
                                (begin
                                  (error '"Missing method"
                                         __self187943
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E187917187926%_)))))
          (_%E187916187940%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self187863%_ _%stx187864%_)
        (let* ((_%self187867%_ _%self187863%_)
               (_%self187876187884%_ _%self187867%_)
               (_%E187878187887%_
                (lambda ()
                  (error '"No clause matching"
                         _%self187876187884%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K187879187900%_
                (lambda (_%K187890%_)
                  (let ((_%$e187892%_ (gx#stx-source _%stx187864%_)))
                    (if _%$e187892%_
                        ((lambda (_%g187894187896%_)
                           (gx#stx-wrap-source
                            (_%K187890%_ _%stx187864%_)
                            _%g187894187896%_))
                         _%$e187892%_)
                        (_%K187890%_ _%stx187864%_)))))
               (_%e187880187903%_
                (##unchecked-structure-ref _%self187876187884%_ '1 '#f '#f))
               (_%e187881187906%_
                (##unchecked-structure-ref _%self187876187884%_ '2 '#f '#f))
               (_%e187882187909%_
                (##unchecked-structure-ref _%self187876187884%_ '3 '#f '#f))
               (_%K187912%_ _%e187882187909%_))
          (_%K187879187900%_ _%K187912%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx187737%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx187737%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx187707%_)
        (let* ((_%e187708187715%_ _%stx187707%_)
               (_%E187710187719%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187708187715%_)))
               (_%E187709187733%_
                (lambda ()
                  (if (gx#stx-pair? _%e187708187715%_)
                      (let ((_%e187711187723%_
                             (gx#syntax-e _%e187708187715%_)))
                        (let ((_%hd187712187726%_ (##car _%e187711187723%_))
                              (_%tl187713187728%_ (##cdr _%e187711187723%_)))
                          (let ((_%body187731%_ _%tl187713187728%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body187731%_)))))
                      (_%E187710187719%_)))))
          (_%E187709187733%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx187676%_)
        (let* ((_%e187677187684%_ _%stx187676%_)
               (_%E187679187688%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187677187684%_)))
               (_%E187678187703%_
                (lambda ()
                  (if (gx#stx-pair? _%e187677187684%_)
                      (let ((_%e187680187692%_
                             (gx#syntax-e _%e187677187684%_)))
                        (let ((_%hd187681187695%_ (##car _%e187680187692%_))
                              (_%tl187682187697%_ (##cdr _%e187680187692%_)))
                          (let ((_%body187700%_ _%tl187682187697%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body187700%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E187679187688%_)))))
          (_%E187678187703%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx187646%_)
        (let* ((_%e187647187654%_ _%stx187646%_)
               (_%E187649187658%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187647187654%_)))
               (_%E187648187672%_
                (lambda ()
                  (if (gx#stx-pair? _%e187647187654%_)
                      (let ((_%e187650187662%_
                             (gx#syntax-e _%e187647187654%_)))
                        (let ((_%hd187651187665%_ (##car _%e187650187662%_))
                              (_%tl187652187667%_ (##cdr _%e187650187662%_)))
                          (let ((_%body187670%_ _%tl187652187667%_))
                            (cons '%#begin-foreign _%body187670%_))))
                      (_%E187649187658%_)))))
          (_%E187648187672%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx187592%_)
        (let* ((_%e187593187606%_ _%stx187592%_)
               (_%E187595187610%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187593187606%_)))
               (_%E187594187642%_
                (lambda ()
                  (if (gx#stx-pair? _%e187593187606%_)
                      (let ((_%e187596187614%_
                             (gx#syntax-e _%e187593187606%_)))
                        (let ((_%hd187597187617%_ (##car _%e187596187614%_))
                              (_%tl187598187619%_ (##cdr _%e187596187614%_)))
                          (if (gx#stx-pair? _%tl187598187619%_)
                              (let ((_%e187599187622%_
                                     (gx#syntax-e _%tl187598187619%_)))
                                (let ((_%hd187600187625%_
                                       (##car _%e187599187622%_))
                                      (_%tl187601187627%_
                                       (##cdr _%e187599187622%_)))
                                  (let ((_%ann187630%_ _%hd187600187625%_))
                                    (if (gx#stx-pair? _%tl187601187627%_)
                                        (let ((_%e187602187632%_
                                               (gx#syntax-e
                                                _%tl187601187627%_)))
                                          (let ((_%hd187603187635%_
                                                 (##car _%e187602187632%_))
                                                (_%tl187604187637%_
                                                 (##cdr _%e187602187632%_)))
                                            (let ((_%expr187640%_
                                                   _%hd187603187635%_))
                                              (if (gx#stx-null?
                                                   _%tl187604187637%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr187640%_)
                                                  (_%E187595187610%_)))))
                                        (_%E187595187610%_)))))
                              (_%E187595187610%_))))
                      (_%E187595187610%_)))))
          (_%E187594187642%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx187562%_)
        (let* ((_%e187563187570%_ _%stx187562%_)
               (_%E187565187574%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187563187570%_)))
               (_%E187564187588%_
                (lambda ()
                  (if (gx#stx-pair? _%e187563187570%_)
                      (let ((_%e187566187578%_
                             (gx#syntax-e _%e187563187570%_)))
                        (let ((_%hd187567187581%_ (##car _%e187566187578%_))
                              (_%tl187568187583%_ (##cdr _%e187566187578%_)))
                          (let ((_%body187586%_ _%tl187568187583%_))
                            (cons '%#import _%body187586%_))))
                      (_%E187565187574%_)))))
          (_%E187564187588%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx187519%_)
        (let* ((_%e187520187530%_ _%stx187519%_)
               (_%E187522187534%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187520187530%_)))
               (_%E187521187558%_
                (lambda ()
                  (if (gx#stx-pair? _%e187520187530%_)
                      (let ((_%e187523187538%_
                             (gx#syntax-e _%e187520187530%_)))
                        (let ((_%hd187524187541%_ (##car _%e187523187538%_))
                              (_%tl187525187543%_ (##cdr _%e187523187538%_)))
                          (if (gx#stx-pair? _%tl187525187543%_)
                              (let ((_%e187526187546%_
                                     (gx#syntax-e _%tl187525187543%_)))
                                (let ((_%hd187527187549%_
                                       (##car _%e187526187546%_))
                                      (_%tl187528187551%_
                                       (##cdr _%e187526187546%_)))
                                  (let* ((_%hd187554%_ _%hd187527187549%_)
                                         (_%body187556%_ _%tl187528187551%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd187554%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body187556%_))))))
                              (_%E187522187534%_))))
                      (_%E187522187534%_)))))
          (_%E187521187558%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx187489%_)
        (let* ((_%e187490187497%_ _%stx187489%_)
               (_%E187492187501%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187490187497%_)))
               (_%E187491187515%_
                (lambda ()
                  (if (gx#stx-pair? _%e187490187497%_)
                      (let ((_%e187493187505%_
                             (gx#syntax-e _%e187490187497%_)))
                        (let ((_%hd187494187508%_ (##car _%e187493187505%_))
                              (_%tl187495187510%_ (##cdr _%e187493187505%_)))
                          (let ((_%body187513%_ _%tl187495187510%_))
                            (cons '%#export _%body187513%_))))
                      (_%E187492187501%_)))))
          (_%E187491187515%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx187459%_)
        (let* ((_%e187460187467%_ _%stx187459%_)
               (_%E187462187471%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187460187467%_)))
               (_%E187461187485%_
                (lambda ()
                  (if (gx#stx-pair? _%e187460187467%_)
                      (let ((_%e187463187475%_
                             (gx#syntax-e _%e187460187467%_)))
                        (let ((_%hd187464187478%_ (##car _%e187463187475%_))
                              (_%tl187465187480%_ (##cdr _%e187463187475%_)))
                          (let ((_%body187483%_ _%tl187465187480%_))
                            (cons '%#provide _%body187483%_))))
                      (_%E187462187471%_)))))
          (_%E187461187485%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx187429%_)
        (let* ((_%e187430187437%_ _%stx187429%_)
               (_%E187432187441%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187430187437%_)))
               (_%E187431187455%_
                (lambda ()
                  (if (gx#stx-pair? _%e187430187437%_)
                      (let ((_%e187433187445%_
                             (gx#syntax-e _%e187430187437%_)))
                        (let ((_%hd187434187448%_ (##car _%e187433187445%_))
                              (_%tl187435187450%_ (##cdr _%e187433187445%_)))
                          (let ((_%body187453%_ _%tl187435187450%_))
                            (cons '%#extern _%body187453%_))))
                      (_%E187432187441%_)))))
          (_%E187431187455%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx187375%_)
        (let* ((_%e187376187389%_ _%stx187375%_)
               (_%E187378187393%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187376187389%_)))
               (_%E187377187425%_
                (lambda ()
                  (if (gx#stx-pair? _%e187376187389%_)
                      (let ((_%e187379187397%_
                             (gx#syntax-e _%e187376187389%_)))
                        (let ((_%hd187380187400%_ (##car _%e187379187397%_))
                              (_%tl187381187402%_ (##cdr _%e187379187397%_)))
                          (if (gx#stx-pair? _%tl187381187402%_)
                              (let ((_%e187382187405%_
                                     (gx#syntax-e _%tl187381187402%_)))
                                (let ((_%hd187383187408%_
                                       (##car _%e187382187405%_))
                                      (_%tl187384187410%_
                                       (##cdr _%e187382187405%_)))
                                  (let ((_%hd187413%_ _%hd187383187408%_))
                                    (if (gx#stx-pair? _%tl187384187410%_)
                                        (let ((_%e187385187415%_
                                               (gx#syntax-e
                                                _%tl187384187410%_)))
                                          (let ((_%hd187386187418%_
                                                 (##car _%e187385187415%_))
                                                (_%tl187387187420%_
                                                 (##cdr _%e187385187415%_)))
                                            (let ((_%expr187423%_
                                                   _%hd187386187418%_))
                                              (if (gx#stx-null?
                                                   _%tl187387187420%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd187413%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr187423%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187378187393%_)))))
                                        (_%E187378187393%_)))))
                              (_%E187378187393%_))))
                      (_%E187378187393%_)))))
          (_%E187377187425%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx187320%_)
        (let* ((_%e187321187334%_ _%stx187320%_)
               (_%E187323187338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187321187334%_)))
               (_%E187322187371%_
                (lambda ()
                  (if (gx#stx-pair? _%e187321187334%_)
                      (let ((_%e187324187342%_
                             (gx#syntax-e _%e187321187334%_)))
                        (let ((_%hd187325187345%_ (##car _%e187324187342%_))
                              (_%tl187326187347%_ (##cdr _%e187324187342%_)))
                          (if (gx#stx-pair? _%tl187326187347%_)
                              (let ((_%e187327187350%_
                                     (gx#syntax-e _%tl187326187347%_)))
                                (let ((_%hd187328187353%_
                                       (##car _%e187327187350%_))
                                      (_%tl187329187355%_
                                       (##cdr _%e187327187350%_)))
                                  (let ((_%hd187358%_ _%hd187328187353%_))
                                    (if (gx#stx-pair? _%tl187329187355%_)
                                        (let ((_%e187330187360%_
                                               (gx#syntax-e
                                                _%tl187329187355%_)))
                                          (let ((_%hd187331187363%_
                                                 (##car _%e187330187360%_))
                                                (_%tl187332187365%_
                                                 (##cdr _%e187330187360%_)))
                                            (let ((_%expr187368%_
                                                   _%hd187331187363%_))
                                              (if (gx#stx-null?
                                                   _%tl187332187365%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd187358%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr187368%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187323187338%_)))))
                                        (_%E187323187338%_)))))
                              (_%E187323187338%_))))
                      (_%E187323187338%_)))))
          (_%E187322187371%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx187290%_)
        (let* ((_%e187291187298%_ _%stx187290%_)
               (_%E187293187302%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187291187298%_)))
               (_%E187292187316%_
                (lambda ()
                  (if (gx#stx-pair? _%e187291187298%_)
                      (let ((_%e187294187306%_
                             (gx#syntax-e _%e187291187298%_)))
                        (let ((_%hd187295187309%_ (##car _%e187294187306%_))
                              (_%tl187296187311%_ (##cdr _%e187294187306%_)))
                          (let ((_%body187314%_ _%tl187296187311%_))
                            (cons '%#define-alias _%body187314%_))))
                      (_%E187293187302%_)))))
          (_%E187292187316%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx187260%_)
        (let* ((_%e187261187268%_ _%stx187260%_)
               (_%E187263187272%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187261187268%_)))
               (_%E187262187286%_
                (lambda ()
                  (if (gx#stx-pair? _%e187261187268%_)
                      (let ((_%e187264187276%_
                             (gx#syntax-e _%e187261187268%_)))
                        (let ((_%hd187265187279%_ (##car _%e187264187276%_))
                              (_%tl187266187281%_ (##cdr _%e187264187276%_)))
                          (let ((_%body187284%_ _%tl187266187281%_))
                            (cons '%#define-runtime _%body187284%_))))
                      (_%E187263187272%_)))))
          (_%E187262187286%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx187230%_)
        (let* ((_%e187231187238%_ _%stx187230%_)
               (_%E187233187242%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187231187238%_)))
               (_%E187232187256%_
                (lambda ()
                  (if (gx#stx-pair? _%e187231187238%_)
                      (let ((_%e187234187246%_
                             (gx#syntax-e _%e187231187238%_)))
                        (let ((_%hd187235187249%_ (##car _%e187234187246%_))
                              (_%tl187236187251%_ (##cdr _%e187234187246%_)))
                          (let ((_%decls187254%_ _%tl187236187251%_))
                            (cons '%#declare _%decls187254%_))))
                      (_%E187233187242%_)))))
          (_%E187232187256%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx187200%_)
        (let* ((_%e187201187208%_ _%stx187200%_)
               (_%E187203187212%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187201187208%_)))
               (_%E187202187226%_
                (lambda ()
                  (if (gx#stx-pair? _%e187201187208%_)
                      (let ((_%e187204187216%_
                             (gx#syntax-e _%e187201187208%_)))
                        (let ((_%hd187205187219%_ (##car _%e187204187216%_))
                              (_%tl187206187221%_ (##cdr _%e187204187216%_)))
                          (let ((_%clause187224%_ _%tl187206187221%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause187224%_)))))
                      (_%E187203187212%_)))))
          (_%E187202187226%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx187157%_)
        (let* ((_%e187158187168%_ _%stx187157%_)
               (_%E187160187172%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187158187168%_)))
               (_%E187159187196%_
                (lambda ()
                  (if (gx#stx-pair? _%e187158187168%_)
                      (let ((_%e187161187176%_
                             (gx#syntax-e _%e187158187168%_)))
                        (let ((_%hd187162187179%_ (##car _%e187161187176%_))
                              (_%tl187163187181%_ (##cdr _%e187161187176%_)))
                          (let ((_%hd187184%_ _%hd187162187179%_))
                            (if (gx#stx-pair? _%tl187163187181%_)
                                (let ((_%e187164187186%_
                                       (gx#syntax-e _%tl187163187181%_)))
                                  (let ((_%hd187165187189%_
                                         (##car _%e187164187186%_))
                                        (_%tl187166187191%_
                                         (##cdr _%e187164187186%_)))
                                    (let ((_%body187194%_ _%hd187165187189%_))
                                      (if (gx#stx-null? _%tl187166187191%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd187184%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body187194%_)
                                                      '()))
                                          (_%E187160187172%_)))))
                                (_%E187160187172%_)))))
                      (_%E187160187172%_)))))
          (_%E187159187196%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx187127%_)
        (let* ((_%e187128187135%_ _%stx187127%_)
               (_%E187130187139%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187128187135%_)))
               (_%E187129187153%_
                (lambda ()
                  (if (gx#stx-pair? _%e187128187135%_)
                      (let ((_%e187131187143%_
                             (gx#syntax-e _%e187128187135%_)))
                        (let ((_%hd187132187146%_ (##car _%e187131187143%_))
                              (_%tl187133187148%_ (##cdr _%e187131187143%_)))
                          (let ((_%clauses187151%_ _%tl187133187148%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses187151%_)))))
                      (_%E187130187139%_)))))
          (_%E187129187153%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx187062%_ _%form187063%_)
        (let* ((_%e187064187077%_ _%stx187062%_)
               (_%E187066187081%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187064187077%_)))
               (_%E187065187113%_
                (lambda ()
                  (if (gx#stx-pair? _%e187064187077%_)
                      (let ((_%e187067187085%_
                             (gx#syntax-e _%e187064187077%_)))
                        (let ((_%hd187068187088%_ (##car _%e187067187085%_))
                              (_%tl187069187090%_ (##cdr _%e187067187085%_)))
                          (if (gx#stx-pair? _%tl187069187090%_)
                              (let ((_%e187070187093%_
                                     (gx#syntax-e _%tl187069187090%_)))
                                (let ((_%hd187071187096%_
                                       (##car _%e187070187093%_))
                                      (_%tl187072187098%_
                                       (##cdr _%e187070187093%_)))
                                  (let ((_%hd187101%_ _%hd187071187096%_))
                                    (if (gx#stx-pair? _%tl187072187098%_)
                                        (let ((_%e187073187103%_
                                               (gx#syntax-e
                                                _%tl187072187098%_)))
                                          (let ((_%hd187074187106%_
                                                 (##car _%e187073187103%_))
                                                (_%tl187075187108%_
                                                 (##cdr _%e187073187103%_)))
                                            (let ((_%body187111%_
                                                   _%hd187074187106%_))
                                              (if (gx#stx-null?
                                                   _%tl187075187108%_)
                                                  (cons _%form187063%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd187101%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body187111%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E187066187081%_)))))
                                        (_%E187066187081%_)))))
                              (_%E187066187081%_))))
                      (_%E187066187081%_)))))
          (_%E187065187113%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx187120%_)
        (let ((_%form187122%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx187120%_ _%form187122%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g187945_
        (let ((_g187946_ (##length _g187945_)))
          (cond ((##fx= _g187946_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g187945_))
                ((##fx= _g187946_ 2)
                 (apply gx#core-compile-top-let-values%__% _g187945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g187945_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx187059%_)
        (gx#core-compile-top-let-values%__% _%stx187059%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx187057%_)
        (gx#core-compile-top-let-values%__% _%stx187057%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx187016%_)
        (let* ((_%e187017187027%_ _%stx187016%_)
               (_%E187019187031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e187017187027%_)))
               (_%E187018187053%_
                (lambda ()
                  (if (gx#stx-pair? _%e187017187027%_)
                      (let ((_%e187020187035%_
                             (gx#syntax-e _%e187017187027%_)))
                        (let ((_%hd187021187038%_ (##car _%e187020187035%_))
                              (_%tl187022187040%_ (##cdr _%e187020187035%_)))
                          (if (gx#stx-pair? _%tl187022187040%_)
                              (let ((_%e187023187043%_
                                     (gx#syntax-e _%tl187022187040%_)))
                                (let ((_%hd187024187046%_
                                       (##car _%e187023187043%_))
                                      (_%tl187025187048%_
                                       (##cdr _%e187023187043%_)))
                                  (let ((_%e187051%_ _%hd187024187046%_))
                                    (if (gx#stx-null? _%tl187025187048%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e187051%_)
                                                    '()))
                                        (_%E187019187031%_)))))
                              (_%E187019187031%_))))
                      (_%E187019187031%_)))))
          (_%E187018187053%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx186975%_)
        (let* ((_%e186976186986%_ _%stx186975%_)
               (_%E186978186990%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186976186986%_)))
               (_%E186977187012%_
                (lambda ()
                  (if (gx#stx-pair? _%e186976186986%_)
                      (let ((_%e186979186994%_
                             (gx#syntax-e _%e186976186986%_)))
                        (let ((_%hd186980186997%_ (##car _%e186979186994%_))
                              (_%tl186981186999%_ (##cdr _%e186979186994%_)))
                          (if (gx#stx-pair? _%tl186981186999%_)
                              (let ((_%e186982187002%_
                                     (gx#syntax-e _%tl186981186999%_)))
                                (let ((_%hd186983187005%_
                                       (##car _%e186982187002%_))
                                      (_%tl186984187007%_
                                       (##cdr _%e186982187002%_)))
                                  (let ((_%e187010%_ _%hd186983187005%_))
                                    (if (gx#stx-null? _%tl186984187007%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e187010%_)
                                                    '()))
                                        (_%E186978186990%_)))))
                              (_%E186978186990%_))))
                      (_%E186978186990%_)))))
          (_%E186977187012%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx186932%_)
        (let* ((_%e186933186943%_ _%stx186932%_)
               (_%E186935186947%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186933186943%_)))
               (_%E186934186971%_
                (lambda ()
                  (if (gx#stx-pair? _%e186933186943%_)
                      (let ((_%e186936186951%_
                             (gx#syntax-e _%e186933186943%_)))
                        (let ((_%hd186937186954%_ (##car _%e186936186951%_))
                              (_%tl186938186956%_ (##cdr _%e186936186951%_)))
                          (if (gx#stx-pair? _%tl186938186956%_)
                              (let ((_%e186939186959%_
                                     (gx#syntax-e _%tl186938186956%_)))
                                (let ((_%hd186940186962%_
                                       (##car _%e186939186959%_))
                                      (_%tl186941186964%_
                                       (##cdr _%e186939186959%_)))
                                  (let* ((_%rator186967%_ _%hd186940186962%_)
                                         (_%args186969%_ _%tl186941186964%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator186967%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args186969%_))))))
                              (_%E186935186947%_))))
                      (_%E186935186947%_)))))
          (_%E186934186971%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx186865%_)
        (let* ((_%e186866186882%_ _%stx186865%_)
               (_%E186868186886%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186866186882%_)))
               (_%E186867186928%_
                (lambda ()
                  (if (gx#stx-pair? _%e186866186882%_)
                      (let ((_%e186869186890%_
                             (gx#syntax-e _%e186866186882%_)))
                        (let ((_%hd186870186893%_ (##car _%e186869186890%_))
                              (_%tl186871186895%_ (##cdr _%e186869186890%_)))
                          (if (gx#stx-pair? _%tl186871186895%_)
                              (let ((_%e186872186898%_
                                     (gx#syntax-e _%tl186871186895%_)))
                                (let ((_%hd186873186901%_
                                       (##car _%e186872186898%_))
                                      (_%tl186874186903%_
                                       (##cdr _%e186872186898%_)))
                                  (let ((_%test186906%_ _%hd186873186901%_))
                                    (if (gx#stx-pair? _%tl186874186903%_)
                                        (let ((_%e186875186908%_
                                               (gx#syntax-e
                                                _%tl186874186903%_)))
                                          (let ((_%hd186876186911%_
                                                 (##car _%e186875186908%_))
                                                (_%tl186877186913%_
                                                 (##cdr _%e186875186908%_)))
                                            (let ((_%K186916%_
                                                   _%hd186876186911%_))
                                              (if (gx#stx-pair?
                                                   _%tl186877186913%_)
                                                  (let ((_%e186878186918%_
                                                         (gx#syntax-e
                                                          _%tl186877186913%_)))
                                                    (let ((_%hd186879186921%_
                                                           (##car _%e186878186918%_))
                                                          (_%tl186880186923%_
                                                           (##cdr _%e186878186918%_)))
                                                      (let ((_%E186926%_
                                                             _%hd186879186921%_))
                                                        (if (gx#stx-null?
                                                             _%tl186880186923%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test186906%_)
                                (cons (gx#core-compile-top-syntax _%K186916%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E186926%_)
                                            '()))))
                    (_%E186868186886%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186868186886%_)))))
                                        (_%E186868186886%_)))))
                              (_%E186868186886%_))))
                      (_%E186868186886%_)))))
          (_%E186867186928%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx186824%_)
        (let* ((_%e186825186835%_ _%stx186824%_)
               (_%E186827186839%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186825186835%_)))
               (_%E186826186861%_
                (lambda ()
                  (if (gx#stx-pair? _%e186825186835%_)
                      (let ((_%e186828186843%_
                             (gx#syntax-e _%e186825186835%_)))
                        (let ((_%hd186829186846%_ (##car _%e186828186843%_))
                              (_%tl186830186848%_ (##cdr _%e186828186843%_)))
                          (if (gx#stx-pair? _%tl186830186848%_)
                              (let ((_%e186831186851%_
                                     (gx#syntax-e _%tl186830186848%_)))
                                (let ((_%hd186832186854%_
                                       (##car _%e186831186851%_))
                                      (_%tl186833186856%_
                                       (##cdr _%e186831186851%_)))
                                  (let ((_%id186859%_ _%hd186832186854%_))
                                    (if (gx#stx-null? _%tl186833186856%_)
                                        (if (gx#identifier? _%id186859%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id186859%_)
                                                        '()))
                                            (_%E186827186839%_))
                                        (_%E186827186839%_)))))
                              (_%E186827186839%_))))
                      (_%E186827186839%_)))))
          (_%E186826186861%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx186770%_)
        (let* ((_%e186771186784%_ _%stx186770%_)
               (_%E186773186788%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e186771186784%_)))
               (_%E186772186820%_
                (lambda ()
                  (if (gx#stx-pair? _%e186771186784%_)
                      (let ((_%e186774186792%_
                             (gx#syntax-e _%e186771186784%_)))
                        (let ((_%hd186775186795%_ (##car _%e186774186792%_))
                              (_%tl186776186797%_ (##cdr _%e186774186792%_)))
                          (if (gx#stx-pair? _%tl186776186797%_)
                              (let ((_%e186777186800%_
                                     (gx#syntax-e _%tl186776186797%_)))
                                (let ((_%hd186778186803%_
                                       (##car _%e186777186800%_))
                                      (_%tl186779186805%_
                                       (##cdr _%e186777186800%_)))
                                  (let ((_%id186808%_ _%hd186778186803%_))
                                    (if (gx#stx-pair? _%tl186779186805%_)
                                        (let ((_%e186780186810%_
                                               (gx#syntax-e
                                                _%tl186779186805%_)))
                                          (let ((_%hd186781186813%_
                                                 (##car _%e186780186810%_))
                                                (_%tl186782186815%_
                                                 (##cdr _%e186780186810%_)))
                                            (let ((_%expr186818%_
                                                   _%hd186781186813%_))
                                              (if (gx#stx-null?
                                                   _%tl186782186815%_)
                                                  (if (gx#identifier?
                                                       _%id186808%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id186808%_)
                          (cons (gx#core-compile-top-syntax _%expr186818%_)
                                '())))
              (_%E186773186788%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E186773186788%_)))))
                                        (_%E186773186788%_)))))
                              (_%E186773186788%_))))
                      (_%E186773186788%_)))))
          (_%E186772186820%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id186764%_)
        (let ((_%$e186766%_ (gx#resolve-identifier__0 _%id186764%_)))
          (if _%$e186766%_
              (##unchecked-structure-ref _%$e186766%_ '1 '#f '#f)
              _%id186764%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd186762%_)
        (if (gx#identifier? _%hd186762%_)
            (gx#core-compile-top-runtime-ref _%hd186762%_)
            '#f)))))
