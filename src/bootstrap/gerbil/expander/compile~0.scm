(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1768864949)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx142148%_)
        (let* ((_%e142149142156%_ _%stx142148%_)
               (_%E142151142160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e142149142156%_)))
               (_%E142150142174%_
                (lambda ()
                  (if (gx#stx-pair? _%e142149142156%_)
                      (let ((_%e142152142164%_
                             (gx#syntax-e _%e142149142156%_)))
                        (let ((_%hd142153142167%_ (##car _%e142152142164%_))
                              (_%tl142154142169%_ (##cdr _%e142152142164%_)))
                          (let* ((_%form142172%_ _%hd142153142167%_)
                                 (__self142177
                                  (gx#syntax-local-e__0 _%form142172%_))
                                 (__method142178
                                  (__method-ref
                                   __self142177
                                   'compile-top-syntax)))
                            (if __method142178
                                (__method142178 __self142177 _%stx142148%_)
                                (begin
                                  (error '"Missing method"
                                         __self142177
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E142151142160%_)))))
          (_%E142150142174%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self142096%_ _%stx142097%_)
        (let* ((_%self142100%_ _%self142096%_)
               (_%self142109142117%_ _%self142100%_)
               (_%E142111142121%_
                (lambda ()
                  (error '"No clause matching"
                         _%self142109142117%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K142112142134%_
                (lambda (_%K142124%_)
                  (let ((_%$e142126%_ (gx#stx-source _%stx142097%_)))
                    (if _%$e142126%_
                        ((lambda (_%g142128142130%_)
                           (gx#stx-wrap-source
                            (_%K142124%_ _%stx142097%_)
                            _%g142128142130%_))
                         _%$e142126%_)
                        (_%K142124%_ _%stx142097%_)))))
               (_%e142113142137%_
                (##unchecked-structure-ref _%self142109142117%_ '1 '#f '#f))
               (_%e142114142140%_
                (##unchecked-structure-ref _%self142109142117%_ '2 '#f '#f))
               (_%e142115142143%_
                (##unchecked-structure-ref _%self142109142117%_ '3 '#f '#f))
               (_%K142146%_ _%e142115142143%_))
          (_%K142112142134%_ _%K142146%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx141970%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx141970%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx141940%_)
        (let* ((_%e141941141948%_ _%stx141940%_)
               (_%E141943141952%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141941141948%_)))
               (_%E141942141966%_
                (lambda ()
                  (if (gx#stx-pair? _%e141941141948%_)
                      (let ((_%e141944141956%_
                             (gx#syntax-e _%e141941141948%_)))
                        (let ((_%hd141945141959%_ (##car _%e141944141956%_))
                              (_%tl141946141961%_ (##cdr _%e141944141956%_)))
                          (let ((_%body141964%_ _%tl141946141961%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body141964%_)))))
                      (_%E141943141952%_)))))
          (_%E141942141966%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx141909%_)
        (let* ((_%e141910141917%_ _%stx141909%_)
               (_%E141912141921%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141910141917%_)))
               (_%E141911141936%_
                (lambda ()
                  (if (gx#stx-pair? _%e141910141917%_)
                      (let ((_%e141913141925%_
                             (gx#syntax-e _%e141910141917%_)))
                        (let ((_%hd141914141928%_ (##car _%e141913141925%_))
                              (_%tl141915141930%_ (##cdr _%e141913141925%_)))
                          (let ((_%body141933%_ _%tl141915141930%_))
                            (cons '%#begin-syntax
                                  (call-with-parameters__1
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body141933%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E141912141921%_)))))
          (_%E141911141936%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx141879%_)
        (let* ((_%e141880141887%_ _%stx141879%_)
               (_%E141882141891%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141880141887%_)))
               (_%E141881141905%_
                (lambda ()
                  (if (gx#stx-pair? _%e141880141887%_)
                      (let ((_%e141883141895%_
                             (gx#syntax-e _%e141880141887%_)))
                        (let ((_%hd141884141898%_ (##car _%e141883141895%_))
                              (_%tl141885141900%_ (##cdr _%e141883141895%_)))
                          (let ((_%body141903%_ _%tl141885141900%_))
                            (cons '%#begin-foreign _%body141903%_))))
                      (_%E141882141891%_)))))
          (_%E141881141905%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx141825%_)
        (let* ((_%e141826141839%_ _%stx141825%_)
               (_%E141828141843%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141826141839%_)))
               (_%E141827141875%_
                (lambda ()
                  (if (gx#stx-pair? _%e141826141839%_)
                      (let ((_%e141829141847%_
                             (gx#syntax-e _%e141826141839%_)))
                        (let ((_%hd141830141850%_ (##car _%e141829141847%_))
                              (_%tl141831141852%_ (##cdr _%e141829141847%_)))
                          (if (gx#stx-pair? _%tl141831141852%_)
                              (let ((_%e141832141855%_
                                     (gx#syntax-e _%tl141831141852%_)))
                                (let ((_%hd141833141858%_
                                       (##car _%e141832141855%_))
                                      (_%tl141834141860%_
                                       (##cdr _%e141832141855%_)))
                                  (let ((_%ann141863%_ _%hd141833141858%_))
                                    (if (gx#stx-pair? _%tl141834141860%_)
                                        (let ((_%e141835141865%_
                                               (gx#syntax-e
                                                _%tl141834141860%_)))
                                          (let ((_%hd141836141868%_
                                                 (##car _%e141835141865%_))
                                                (_%tl141837141870%_
                                                 (##cdr _%e141835141865%_)))
                                            (let ((_%expr141873%_
                                                   _%hd141836141868%_))
                                              (if (gx#stx-null?
                                                   _%tl141837141870%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr141873%_)
                                                  (_%E141828141843%_)))))
                                        (_%E141828141843%_)))))
                              (_%E141828141843%_))))
                      (_%E141828141843%_)))))
          (_%E141827141875%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx141795%_)
        (let* ((_%e141796141803%_ _%stx141795%_)
               (_%E141798141807%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141796141803%_)))
               (_%E141797141821%_
                (lambda ()
                  (if (gx#stx-pair? _%e141796141803%_)
                      (let ((_%e141799141811%_
                             (gx#syntax-e _%e141796141803%_)))
                        (let ((_%hd141800141814%_ (##car _%e141799141811%_))
                              (_%tl141801141816%_ (##cdr _%e141799141811%_)))
                          (let ((_%body141819%_ _%tl141801141816%_))
                            (cons '%#import _%body141819%_))))
                      (_%E141798141807%_)))))
          (_%E141797141821%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx141752%_)
        (let* ((_%e141753141763%_ _%stx141752%_)
               (_%E141755141767%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141753141763%_)))
               (_%E141754141791%_
                (lambda ()
                  (if (gx#stx-pair? _%e141753141763%_)
                      (let ((_%e141756141771%_
                             (gx#syntax-e _%e141753141763%_)))
                        (let ((_%hd141757141774%_ (##car _%e141756141771%_))
                              (_%tl141758141776%_ (##cdr _%e141756141771%_)))
                          (if (gx#stx-pair? _%tl141758141776%_)
                              (let ((_%e141759141779%_
                                     (gx#syntax-e _%tl141758141776%_)))
                                (let ((_%hd141760141782%_
                                       (##car _%e141759141779%_))
                                      (_%tl141761141784%_
                                       (##cdr _%e141759141779%_)))
                                  (let* ((_%hd141787%_ _%hd141760141782%_)
                                         (_%body141789%_ _%tl141761141784%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd141787%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body141789%_))))))
                              (_%E141755141767%_))))
                      (_%E141755141767%_)))))
          (_%E141754141791%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx141722%_)
        (let* ((_%e141723141730%_ _%stx141722%_)
               (_%E141725141734%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141723141730%_)))
               (_%E141724141748%_
                (lambda ()
                  (if (gx#stx-pair? _%e141723141730%_)
                      (let ((_%e141726141738%_
                             (gx#syntax-e _%e141723141730%_)))
                        (let ((_%hd141727141741%_ (##car _%e141726141738%_))
                              (_%tl141728141743%_ (##cdr _%e141726141738%_)))
                          (let ((_%body141746%_ _%tl141728141743%_))
                            (cons '%#export _%body141746%_))))
                      (_%E141725141734%_)))))
          (_%E141724141748%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx141692%_)
        (let* ((_%e141693141700%_ _%stx141692%_)
               (_%E141695141704%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141693141700%_)))
               (_%E141694141718%_
                (lambda ()
                  (if (gx#stx-pair? _%e141693141700%_)
                      (let ((_%e141696141708%_
                             (gx#syntax-e _%e141693141700%_)))
                        (let ((_%hd141697141711%_ (##car _%e141696141708%_))
                              (_%tl141698141713%_ (##cdr _%e141696141708%_)))
                          (let ((_%body141716%_ _%tl141698141713%_))
                            (cons '%#provide _%body141716%_))))
                      (_%E141695141704%_)))))
          (_%E141694141718%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx141662%_)
        (let* ((_%e141663141670%_ _%stx141662%_)
               (_%E141665141674%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141663141670%_)))
               (_%E141664141688%_
                (lambda ()
                  (if (gx#stx-pair? _%e141663141670%_)
                      (let ((_%e141666141678%_
                             (gx#syntax-e _%e141663141670%_)))
                        (let ((_%hd141667141681%_ (##car _%e141666141678%_))
                              (_%tl141668141683%_ (##cdr _%e141666141678%_)))
                          (let ((_%body141686%_ _%tl141668141683%_))
                            (cons '%#extern _%body141686%_))))
                      (_%E141665141674%_)))))
          (_%E141664141688%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx141608%_)
        (let* ((_%e141609141622%_ _%stx141608%_)
               (_%E141611141626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141609141622%_)))
               (_%E141610141658%_
                (lambda ()
                  (if (gx#stx-pair? _%e141609141622%_)
                      (let ((_%e141612141630%_
                             (gx#syntax-e _%e141609141622%_)))
                        (let ((_%hd141613141633%_ (##car _%e141612141630%_))
                              (_%tl141614141635%_ (##cdr _%e141612141630%_)))
                          (if (gx#stx-pair? _%tl141614141635%_)
                              (let ((_%e141615141638%_
                                     (gx#syntax-e _%tl141614141635%_)))
                                (let ((_%hd141616141641%_
                                       (##car _%e141615141638%_))
                                      (_%tl141617141643%_
                                       (##cdr _%e141615141638%_)))
                                  (let ((_%hd141646%_ _%hd141616141641%_))
                                    (if (gx#stx-pair? _%tl141617141643%_)
                                        (let ((_%e141618141648%_
                                               (gx#syntax-e
                                                _%tl141617141643%_)))
                                          (let ((_%hd141619141651%_
                                                 (##car _%e141618141648%_))
                                                (_%tl141620141653%_
                                                 (##cdr _%e141618141648%_)))
                                            (let ((_%expr141656%_
                                                   _%hd141619141651%_))
                                              (if (gx#stx-null?
                                                   _%tl141620141653%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd141646%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr141656%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141611141626%_)))))
                                        (_%E141611141626%_)))))
                              (_%E141611141626%_))))
                      (_%E141611141626%_)))))
          (_%E141610141658%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx141553%_)
        (let* ((_%e141554141567%_ _%stx141553%_)
               (_%E141556141571%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141554141567%_)))
               (_%E141555141604%_
                (lambda ()
                  (if (gx#stx-pair? _%e141554141567%_)
                      (let ((_%e141557141575%_
                             (gx#syntax-e _%e141554141567%_)))
                        (let ((_%hd141558141578%_ (##car _%e141557141575%_))
                              (_%tl141559141580%_ (##cdr _%e141557141575%_)))
                          (if (gx#stx-pair? _%tl141559141580%_)
                              (let ((_%e141560141583%_
                                     (gx#syntax-e _%tl141559141580%_)))
                                (let ((_%hd141561141586%_
                                       (##car _%e141560141583%_))
                                      (_%tl141562141588%_
                                       (##cdr _%e141560141583%_)))
                                  (let ((_%hd141591%_ _%hd141561141586%_))
                                    (if (gx#stx-pair? _%tl141562141588%_)
                                        (let ((_%e141563141593%_
                                               (gx#syntax-e
                                                _%tl141562141588%_)))
                                          (let ((_%hd141564141596%_
                                                 (##car _%e141563141593%_))
                                                (_%tl141565141598%_
                                                 (##cdr _%e141563141593%_)))
                                            (let ((_%expr141601%_
                                                   _%hd141564141596%_))
                                              (if (gx#stx-null?
                                                   _%tl141565141598%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd141591%_
                                                              (cons (call-with-parameters__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr141601%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141556141571%_)))))
                                        (_%E141556141571%_)))))
                              (_%E141556141571%_))))
                      (_%E141556141571%_)))))
          (_%E141555141604%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx141523%_)
        (let* ((_%e141524141531%_ _%stx141523%_)
               (_%E141526141535%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141524141531%_)))
               (_%E141525141549%_
                (lambda ()
                  (if (gx#stx-pair? _%e141524141531%_)
                      (let ((_%e141527141539%_
                             (gx#syntax-e _%e141524141531%_)))
                        (let ((_%hd141528141542%_ (##car _%e141527141539%_))
                              (_%tl141529141544%_ (##cdr _%e141527141539%_)))
                          (let ((_%body141547%_ _%tl141529141544%_))
                            (cons '%#define-alias _%body141547%_))))
                      (_%E141526141535%_)))))
          (_%E141525141549%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx141493%_)
        (let* ((_%e141494141501%_ _%stx141493%_)
               (_%E141496141505%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141494141501%_)))
               (_%E141495141519%_
                (lambda ()
                  (if (gx#stx-pair? _%e141494141501%_)
                      (let ((_%e141497141509%_
                             (gx#syntax-e _%e141494141501%_)))
                        (let ((_%hd141498141512%_ (##car _%e141497141509%_))
                              (_%tl141499141514%_ (##cdr _%e141497141509%_)))
                          (let ((_%body141517%_ _%tl141499141514%_))
                            (cons '%#define-runtime _%body141517%_))))
                      (_%E141496141505%_)))))
          (_%E141495141519%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx141463%_)
        (let* ((_%e141464141471%_ _%stx141463%_)
               (_%E141466141475%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141464141471%_)))
               (_%E141465141489%_
                (lambda ()
                  (if (gx#stx-pair? _%e141464141471%_)
                      (let ((_%e141467141479%_
                             (gx#syntax-e _%e141464141471%_)))
                        (let ((_%hd141468141482%_ (##car _%e141467141479%_))
                              (_%tl141469141484%_ (##cdr _%e141467141479%_)))
                          (let ((_%decls141487%_ _%tl141469141484%_))
                            (cons '%#declare _%decls141487%_))))
                      (_%E141466141475%_)))))
          (_%E141465141489%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx141433%_)
        (let* ((_%e141434141441%_ _%stx141433%_)
               (_%E141436141445%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141434141441%_)))
               (_%E141435141459%_
                (lambda ()
                  (if (gx#stx-pair? _%e141434141441%_)
                      (let ((_%e141437141449%_
                             (gx#syntax-e _%e141434141441%_)))
                        (let ((_%hd141438141452%_ (##car _%e141437141449%_))
                              (_%tl141439141454%_ (##cdr _%e141437141449%_)))
                          (let ((_%clause141457%_ _%tl141439141454%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause141457%_)))))
                      (_%E141436141445%_)))))
          (_%E141435141459%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx141390%_)
        (let* ((_%e141391141401%_ _%stx141390%_)
               (_%E141393141405%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141391141401%_)))
               (_%E141392141429%_
                (lambda ()
                  (if (gx#stx-pair? _%e141391141401%_)
                      (let ((_%e141394141409%_
                             (gx#syntax-e _%e141391141401%_)))
                        (let ((_%hd141395141412%_ (##car _%e141394141409%_))
                              (_%tl141396141414%_ (##cdr _%e141394141409%_)))
                          (let ((_%hd141417%_ _%hd141395141412%_))
                            (if (gx#stx-pair? _%tl141396141414%_)
                                (let ((_%e141397141419%_
                                       (gx#syntax-e _%tl141396141414%_)))
                                  (let ((_%hd141398141422%_
                                         (##car _%e141397141419%_))
                                        (_%tl141399141424%_
                                         (##cdr _%e141397141419%_)))
                                    (let ((_%body141427%_ _%hd141398141422%_))
                                      (if (gx#stx-null? _%tl141399141424%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd141417%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body141427%_)
                                                      '()))
                                          (_%E141393141405%_)))))
                                (_%E141393141405%_)))))
                      (_%E141393141405%_)))))
          (_%E141392141429%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx141360%_)
        (let* ((_%e141361141368%_ _%stx141360%_)
               (_%E141363141372%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141361141368%_)))
               (_%E141362141386%_
                (lambda ()
                  (if (gx#stx-pair? _%e141361141368%_)
                      (let ((_%e141364141376%_
                             (gx#syntax-e _%e141361141368%_)))
                        (let ((_%hd141365141379%_ (##car _%e141364141376%_))
                              (_%tl141366141381%_ (##cdr _%e141364141376%_)))
                          (let ((_%clauses141384%_ _%tl141366141381%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses141384%_)))))
                      (_%E141363141372%_)))))
          (_%E141362141386%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx141295%_ _%form141296%_)
        (let* ((_%e141297141310%_ _%stx141295%_)
               (_%E141299141314%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141297141310%_)))
               (_%E141298141346%_
                (lambda ()
                  (if (gx#stx-pair? _%e141297141310%_)
                      (let ((_%e141300141318%_
                             (gx#syntax-e _%e141297141310%_)))
                        (let ((_%hd141301141321%_ (##car _%e141300141318%_))
                              (_%tl141302141323%_ (##cdr _%e141300141318%_)))
                          (if (gx#stx-pair? _%tl141302141323%_)
                              (let ((_%e141303141326%_
                                     (gx#syntax-e _%tl141302141323%_)))
                                (let ((_%hd141304141329%_
                                       (##car _%e141303141326%_))
                                      (_%tl141305141331%_
                                       (##cdr _%e141303141326%_)))
                                  (let ((_%hd141334%_ _%hd141304141329%_))
                                    (if (gx#stx-pair? _%tl141305141331%_)
                                        (let ((_%e141306141336%_
                                               (gx#syntax-e
                                                _%tl141305141331%_)))
                                          (let ((_%hd141307141339%_
                                                 (##car _%e141306141336%_))
                                                (_%tl141308141341%_
                                                 (##cdr _%e141306141336%_)))
                                            (let ((_%body141344%_
                                                   _%hd141307141339%_))
                                              (if (gx#stx-null?
                                                   _%tl141308141341%_)
                                                  (cons _%form141296%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd141334%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body141344%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141299141314%_)))))
                                        (_%E141299141314%_)))))
                              (_%E141299141314%_))))
                      (_%E141299141314%_)))))
          (_%E141298141346%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx141353%_)
        (let ((_%form141355%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx141353%_ _%form141355%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g142179_
        (let ((_g142180_ (##length _g142179_)))
          (cond ((##fx= _g142180_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g142179_))
                ((##fx= _g142180_ 2)
                 (apply gx#core-compile-top-let-values%__% _g142179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g142179_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx141292%_)
        (gx#core-compile-top-let-values%__% _%stx141292%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx141290%_)
        (gx#core-compile-top-let-values%__% _%stx141290%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx141249%_)
        (let* ((_%e141250141260%_ _%stx141249%_)
               (_%E141252141264%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141250141260%_)))
               (_%E141251141286%_
                (lambda ()
                  (if (gx#stx-pair? _%e141250141260%_)
                      (let ((_%e141253141268%_
                             (gx#syntax-e _%e141250141260%_)))
                        (let ((_%hd141254141271%_ (##car _%e141253141268%_))
                              (_%tl141255141273%_ (##cdr _%e141253141268%_)))
                          (if (gx#stx-pair? _%tl141255141273%_)
                              (let ((_%e141256141276%_
                                     (gx#syntax-e _%tl141255141273%_)))
                                (let ((_%hd141257141279%_
                                       (##car _%e141256141276%_))
                                      (_%tl141258141281%_
                                       (##cdr _%e141256141276%_)))
                                  (let ((_%e141284%_ _%hd141257141279%_))
                                    (if (gx#stx-null? _%tl141258141281%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e141284%_)
                                                    '()))
                                        (_%E141252141264%_)))))
                              (_%E141252141264%_))))
                      (_%E141252141264%_)))))
          (_%E141251141286%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx141208%_)
        (let* ((_%e141209141219%_ _%stx141208%_)
               (_%E141211141223%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141209141219%_)))
               (_%E141210141245%_
                (lambda ()
                  (if (gx#stx-pair? _%e141209141219%_)
                      (let ((_%e141212141227%_
                             (gx#syntax-e _%e141209141219%_)))
                        (let ((_%hd141213141230%_ (##car _%e141212141227%_))
                              (_%tl141214141232%_ (##cdr _%e141212141227%_)))
                          (if (gx#stx-pair? _%tl141214141232%_)
                              (let ((_%e141215141235%_
                                     (gx#syntax-e _%tl141214141232%_)))
                                (let ((_%hd141216141238%_
                                       (##car _%e141215141235%_))
                                      (_%tl141217141240%_
                                       (##cdr _%e141215141235%_)))
                                  (let ((_%e141243%_ _%hd141216141238%_))
                                    (if (gx#stx-null? _%tl141217141240%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e141243%_)
                                                    '()))
                                        (_%E141211141223%_)))))
                              (_%E141211141223%_))))
                      (_%E141211141223%_)))))
          (_%E141210141245%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx141165%_)
        (let* ((_%e141166141176%_ _%stx141165%_)
               (_%E141168141180%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141166141176%_)))
               (_%E141167141204%_
                (lambda ()
                  (if (gx#stx-pair? _%e141166141176%_)
                      (let ((_%e141169141184%_
                             (gx#syntax-e _%e141166141176%_)))
                        (let ((_%hd141170141187%_ (##car _%e141169141184%_))
                              (_%tl141171141189%_ (##cdr _%e141169141184%_)))
                          (if (gx#stx-pair? _%tl141171141189%_)
                              (let ((_%e141172141192%_
                                     (gx#syntax-e _%tl141171141189%_)))
                                (let ((_%hd141173141195%_
                                       (##car _%e141172141192%_))
                                      (_%tl141174141197%_
                                       (##cdr _%e141172141192%_)))
                                  (let* ((_%rator141200%_ _%hd141173141195%_)
                                         (_%args141202%_ _%tl141174141197%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator141200%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args141202%_))))))
                              (_%E141168141180%_))))
                      (_%E141168141180%_)))))
          (_%E141167141204%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx141098%_)
        (let* ((_%e141099141115%_ _%stx141098%_)
               (_%E141101141119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141099141115%_)))
               (_%E141100141161%_
                (lambda ()
                  (if (gx#stx-pair? _%e141099141115%_)
                      (let ((_%e141102141123%_
                             (gx#syntax-e _%e141099141115%_)))
                        (let ((_%hd141103141126%_ (##car _%e141102141123%_))
                              (_%tl141104141128%_ (##cdr _%e141102141123%_)))
                          (if (gx#stx-pair? _%tl141104141128%_)
                              (let ((_%e141105141131%_
                                     (gx#syntax-e _%tl141104141128%_)))
                                (let ((_%hd141106141134%_
                                       (##car _%e141105141131%_))
                                      (_%tl141107141136%_
                                       (##cdr _%e141105141131%_)))
                                  (let ((_%test141139%_ _%hd141106141134%_))
                                    (if (gx#stx-pair? _%tl141107141136%_)
                                        (let ((_%e141108141141%_
                                               (gx#syntax-e
                                                _%tl141107141136%_)))
                                          (let ((_%hd141109141144%_
                                                 (##car _%e141108141141%_))
                                                (_%tl141110141146%_
                                                 (##cdr _%e141108141141%_)))
                                            (let ((_%K141149%_
                                                   _%hd141109141144%_))
                                              (if (gx#stx-pair?
                                                   _%tl141110141146%_)
                                                  (let ((_%e141111141151%_
                                                         (gx#syntax-e
                                                          _%tl141110141146%_)))
                                                    (let ((_%hd141112141154%_
                                                           (##car _%e141111141151%_))
                                                          (_%tl141113141156%_
                                                           (##cdr _%e141111141151%_)))
                                                      (let ((_%E141159%_
                                                             _%hd141112141154%_))
                                                        (if (gx#stx-null?
                                                             _%tl141113141156%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test141139%_)
                                (cons (gx#core-compile-top-syntax _%K141149%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E141159%_)
                                            '()))))
                    (_%E141101141119%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141101141119%_)))))
                                        (_%E141101141119%_)))))
                              (_%E141101141119%_))))
                      (_%E141101141119%_)))))
          (_%E141100141161%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx141057%_)
        (let* ((_%e141058141068%_ _%stx141057%_)
               (_%E141060141072%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141058141068%_)))
               (_%E141059141094%_
                (lambda ()
                  (if (gx#stx-pair? _%e141058141068%_)
                      (let ((_%e141061141076%_
                             (gx#syntax-e _%e141058141068%_)))
                        (let ((_%hd141062141079%_ (##car _%e141061141076%_))
                              (_%tl141063141081%_ (##cdr _%e141061141076%_)))
                          (if (gx#stx-pair? _%tl141063141081%_)
                              (let ((_%e141064141084%_
                                     (gx#syntax-e _%tl141063141081%_)))
                                (let ((_%hd141065141087%_
                                       (##car _%e141064141084%_))
                                      (_%tl141066141089%_
                                       (##cdr _%e141064141084%_)))
                                  (let ((_%id141092%_ _%hd141065141087%_))
                                    (if (gx#stx-null? _%tl141066141089%_)
                                        (if (gx#identifier? _%id141092%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id141092%_)
                                                        '()))
                                            (_%E141060141072%_))
                                        (_%E141060141072%_)))))
                              (_%E141060141072%_))))
                      (_%E141060141072%_)))))
          (_%E141059141094%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx141003%_)
        (let* ((_%e141004141017%_ _%stx141003%_)
               (_%E141006141021%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e141004141017%_)))
               (_%E141005141053%_
                (lambda ()
                  (if (gx#stx-pair? _%e141004141017%_)
                      (let ((_%e141007141025%_
                             (gx#syntax-e _%e141004141017%_)))
                        (let ((_%hd141008141028%_ (##car _%e141007141025%_))
                              (_%tl141009141030%_ (##cdr _%e141007141025%_)))
                          (if (gx#stx-pair? _%tl141009141030%_)
                              (let ((_%e141010141033%_
                                     (gx#syntax-e _%tl141009141030%_)))
                                (let ((_%hd141011141036%_
                                       (##car _%e141010141033%_))
                                      (_%tl141012141038%_
                                       (##cdr _%e141010141033%_)))
                                  (let ((_%id141041%_ _%hd141011141036%_))
                                    (if (gx#stx-pair? _%tl141012141038%_)
                                        (let ((_%e141013141043%_
                                               (gx#syntax-e
                                                _%tl141012141038%_)))
                                          (let ((_%hd141014141046%_
                                                 (##car _%e141013141043%_))
                                                (_%tl141015141048%_
                                                 (##cdr _%e141013141043%_)))
                                            (let ((_%expr141051%_
                                                   _%hd141014141046%_))
                                              (if (gx#stx-null?
                                                   _%tl141015141048%_)
                                                  (if (gx#identifier?
                                                       _%id141041%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id141041%_)
                          (cons (gx#core-compile-top-syntax _%expr141051%_)
                                '())))
              (_%E141006141021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E141006141021%_)))))
                                        (_%E141006141021%_)))))
                              (_%E141006141021%_))))
                      (_%E141006141021%_)))))
          (_%E141005141053%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id140997%_)
        (let ((_%$e140999%_ (gx#resolve-identifier__0 _%id140997%_)))
          (if _%$e140999%_
              (##unchecked-structure-ref _%$e140999%_ '1 '#f '#f)
              _%id140997%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd140995%_)
        (if (gx#identifier? _%hd140995%_)
            (gx#core-compile-top-runtime-ref _%hd140995%_)
            '#f)))))
