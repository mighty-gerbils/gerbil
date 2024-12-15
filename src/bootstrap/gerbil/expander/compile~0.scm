(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1734278445)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx131369%_)
        (let* ((_%e131370131377%_ _%stx131369%_)
               (_%E131372131381%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131370131377%_)))
               (_%E131371131395%_
                (lambda ()
                  (if (gx#stx-pair? _%e131370131377%_)
                      (let ((_%e131373131385%_
                             (gx#syntax-e _%e131370131377%_)))
                        (let ((_%hd131374131388%_ (##car _%e131373131385%_))
                              (_%tl131375131390%_ (##cdr _%e131373131385%_)))
                          (let* ((_%form131393%_ _%hd131374131388%_)
                                 (__self131398
                                  (gx#syntax-local-e__0 _%form131393%_))
                                 (__method131399
                                  (__method-ref
                                   __self131398
                                   'compile-top-syntax)))
                            (if __method131399
                                (__method131399 __self131398 _%stx131369%_)
                                (begin
                                  (error '"Missing method"
                                         __self131398
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E131372131381%_)))))
          (_%E131371131395%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self130212131315%_ _%stx131317%_)
        (let* ((_%self131319%_ _%self130212131315%_)
               (_%self131321%_ _%self131319%_)
               (_%self131330131338%_ _%self131321%_)
               (_%E131332131342%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131330131338%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K131333131355%_
                (lambda (_%K131345%_)
                  (let ((_%$e131347%_ (gx#stx-source _%stx131317%_)))
                    (if _%$e131347%_
                        ((lambda (_%g131349131351%_)
                           (gx#stx-wrap-source
                            (_%K131345%_ _%stx131317%_)
                            _%g131349131351%_))
                         _%$e131347%_)
                        (_%K131345%_ _%stx131317%_)))))
               (_%e131334131358%_
                (##unchecked-structure-ref _%self131330131338%_ '1 '#f '#f))
               (_%e131335131361%_
                (##unchecked-structure-ref _%self131330131338%_ '2 '#f '#f))
               (_%e131336131364%_
                (##unchecked-structure-ref _%self131330131338%_ '3 '#f '#f))
               (_%K131367%_ _%e131336131364%_))
          (_%K131333131355%_ _%K131367%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx131189%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx131189%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx131159%_)
        (let* ((_%e131160131167%_ _%stx131159%_)
               (_%E131162131171%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131160131167%_)))
               (_%E131161131185%_
                (lambda ()
                  (if (gx#stx-pair? _%e131160131167%_)
                      (let ((_%e131163131175%_
                             (gx#syntax-e _%e131160131167%_)))
                        (let ((_%hd131164131178%_ (##car _%e131163131175%_))
                              (_%tl131165131180%_ (##cdr _%e131163131175%_)))
                          (let ((_%body131183%_ _%tl131165131180%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body131183%_)))))
                      (_%E131162131171%_)))))
          (_%E131161131185%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx131128%_)
        (let* ((_%e131129131136%_ _%stx131128%_)
               (_%E131131131140%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131129131136%_)))
               (_%E131130131155%_
                (lambda ()
                  (if (gx#stx-pair? _%e131129131136%_)
                      (let ((_%e131132131144%_
                             (gx#syntax-e _%e131129131136%_)))
                        (let ((_%hd131133131147%_ (##car _%e131132131144%_))
                              (_%tl131134131149%_ (##cdr _%e131132131144%_)))
                          (let ((_%body131152%_ _%tl131134131149%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body131152%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E131131131140%_)))))
          (_%E131130131155%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx131098%_)
        (let* ((_%e131099131106%_ _%stx131098%_)
               (_%E131101131110%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131099131106%_)))
               (_%E131100131124%_
                (lambda ()
                  (if (gx#stx-pair? _%e131099131106%_)
                      (let ((_%e131102131114%_
                             (gx#syntax-e _%e131099131106%_)))
                        (let ((_%hd131103131117%_ (##car _%e131102131114%_))
                              (_%tl131104131119%_ (##cdr _%e131102131114%_)))
                          (let ((_%body131122%_ _%tl131104131119%_))
                            (cons '%#begin-foreign _%body131122%_))))
                      (_%E131101131110%_)))))
          (_%E131100131124%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx131044%_)
        (let* ((_%e131045131058%_ _%stx131044%_)
               (_%E131047131062%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131045131058%_)))
               (_%E131046131094%_
                (lambda ()
                  (if (gx#stx-pair? _%e131045131058%_)
                      (let ((_%e131048131066%_
                             (gx#syntax-e _%e131045131058%_)))
                        (let ((_%hd131049131069%_ (##car _%e131048131066%_))
                              (_%tl131050131071%_ (##cdr _%e131048131066%_)))
                          (if (gx#stx-pair? _%tl131050131071%_)
                              (let ((_%e131051131074%_
                                     (gx#syntax-e _%tl131050131071%_)))
                                (let ((_%hd131052131077%_
                                       (##car _%e131051131074%_))
                                      (_%tl131053131079%_
                                       (##cdr _%e131051131074%_)))
                                  (let ((_%ann131082%_ _%hd131052131077%_))
                                    (if (gx#stx-pair? _%tl131053131079%_)
                                        (let ((_%e131054131084%_
                                               (gx#syntax-e
                                                _%tl131053131079%_)))
                                          (let ((_%hd131055131087%_
                                                 (##car _%e131054131084%_))
                                                (_%tl131056131089%_
                                                 (##cdr _%e131054131084%_)))
                                            (let ((_%expr131092%_
                                                   _%hd131055131087%_))
                                              (if (gx#stx-null?
                                                   _%tl131056131089%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr131092%_)
                                                  (_%E131047131062%_)))))
                                        (_%E131047131062%_)))))
                              (_%E131047131062%_))))
                      (_%E131047131062%_)))))
          (_%E131046131094%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx131014%_)
        (let* ((_%e131015131022%_ _%stx131014%_)
               (_%E131017131026%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131015131022%_)))
               (_%E131016131040%_
                (lambda ()
                  (if (gx#stx-pair? _%e131015131022%_)
                      (let ((_%e131018131030%_
                             (gx#syntax-e _%e131015131022%_)))
                        (let ((_%hd131019131033%_ (##car _%e131018131030%_))
                              (_%tl131020131035%_ (##cdr _%e131018131030%_)))
                          (let ((_%body131038%_ _%tl131020131035%_))
                            (cons '%#import _%body131038%_))))
                      (_%E131017131026%_)))))
          (_%E131016131040%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx130971%_)
        (let* ((_%e130972130982%_ _%stx130971%_)
               (_%E130974130986%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130972130982%_)))
               (_%E130973131010%_
                (lambda ()
                  (if (gx#stx-pair? _%e130972130982%_)
                      (let ((_%e130975130990%_
                             (gx#syntax-e _%e130972130982%_)))
                        (let ((_%hd130976130993%_ (##car _%e130975130990%_))
                              (_%tl130977130995%_ (##cdr _%e130975130990%_)))
                          (if (gx#stx-pair? _%tl130977130995%_)
                              (let ((_%e130978130998%_
                                     (gx#syntax-e _%tl130977130995%_)))
                                (let ((_%hd130979131001%_
                                       (##car _%e130978130998%_))
                                      (_%tl130980131003%_
                                       (##cdr _%e130978130998%_)))
                                  (let* ((_%hd131006%_ _%hd130979131001%_)
                                         (_%body131008%_ _%tl130980131003%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd131006%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body131008%_))))))
                              (_%E130974130986%_))))
                      (_%E130974130986%_)))))
          (_%E130973131010%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx130941%_)
        (let* ((_%e130942130949%_ _%stx130941%_)
               (_%E130944130953%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130942130949%_)))
               (_%E130943130967%_
                (lambda ()
                  (if (gx#stx-pair? _%e130942130949%_)
                      (let ((_%e130945130957%_
                             (gx#syntax-e _%e130942130949%_)))
                        (let ((_%hd130946130960%_ (##car _%e130945130957%_))
                              (_%tl130947130962%_ (##cdr _%e130945130957%_)))
                          (let ((_%body130965%_ _%tl130947130962%_))
                            (cons '%#export _%body130965%_))))
                      (_%E130944130953%_)))))
          (_%E130943130967%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx130911%_)
        (let* ((_%e130912130919%_ _%stx130911%_)
               (_%E130914130923%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130912130919%_)))
               (_%E130913130937%_
                (lambda ()
                  (if (gx#stx-pair? _%e130912130919%_)
                      (let ((_%e130915130927%_
                             (gx#syntax-e _%e130912130919%_)))
                        (let ((_%hd130916130930%_ (##car _%e130915130927%_))
                              (_%tl130917130932%_ (##cdr _%e130915130927%_)))
                          (let ((_%body130935%_ _%tl130917130932%_))
                            (cons '%#provide _%body130935%_))))
                      (_%E130914130923%_)))))
          (_%E130913130937%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx130881%_)
        (let* ((_%e130882130889%_ _%stx130881%_)
               (_%E130884130893%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130882130889%_)))
               (_%E130883130907%_
                (lambda ()
                  (if (gx#stx-pair? _%e130882130889%_)
                      (let ((_%e130885130897%_
                             (gx#syntax-e _%e130882130889%_)))
                        (let ((_%hd130886130900%_ (##car _%e130885130897%_))
                              (_%tl130887130902%_ (##cdr _%e130885130897%_)))
                          (let ((_%body130905%_ _%tl130887130902%_))
                            (cons '%#extern _%body130905%_))))
                      (_%E130884130893%_)))))
          (_%E130883130907%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx130827%_)
        (let* ((_%e130828130841%_ _%stx130827%_)
               (_%E130830130845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130828130841%_)))
               (_%E130829130877%_
                (lambda ()
                  (if (gx#stx-pair? _%e130828130841%_)
                      (let ((_%e130831130849%_
                             (gx#syntax-e _%e130828130841%_)))
                        (let ((_%hd130832130852%_ (##car _%e130831130849%_))
                              (_%tl130833130854%_ (##cdr _%e130831130849%_)))
                          (if (gx#stx-pair? _%tl130833130854%_)
                              (let ((_%e130834130857%_
                                     (gx#syntax-e _%tl130833130854%_)))
                                (let ((_%hd130835130860%_
                                       (##car _%e130834130857%_))
                                      (_%tl130836130862%_
                                       (##cdr _%e130834130857%_)))
                                  (let ((_%hd130865%_ _%hd130835130860%_))
                                    (if (gx#stx-pair? _%tl130836130862%_)
                                        (let ((_%e130837130867%_
                                               (gx#syntax-e
                                                _%tl130836130862%_)))
                                          (let ((_%hd130838130870%_
                                                 (##car _%e130837130867%_))
                                                (_%tl130839130872%_
                                                 (##cdr _%e130837130867%_)))
                                            (let ((_%expr130875%_
                                                   _%hd130838130870%_))
                                              (if (gx#stx-null?
                                                   _%tl130839130872%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd130865%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr130875%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130830130845%_)))))
                                        (_%E130830130845%_)))))
                              (_%E130830130845%_))))
                      (_%E130830130845%_)))))
          (_%E130829130877%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx130772%_)
        (let* ((_%e130773130786%_ _%stx130772%_)
               (_%E130775130790%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130773130786%_)))
               (_%E130774130823%_
                (lambda ()
                  (if (gx#stx-pair? _%e130773130786%_)
                      (let ((_%e130776130794%_
                             (gx#syntax-e _%e130773130786%_)))
                        (let ((_%hd130777130797%_ (##car _%e130776130794%_))
                              (_%tl130778130799%_ (##cdr _%e130776130794%_)))
                          (if (gx#stx-pair? _%tl130778130799%_)
                              (let ((_%e130779130802%_
                                     (gx#syntax-e _%tl130778130799%_)))
                                (let ((_%hd130780130805%_
                                       (##car _%e130779130802%_))
                                      (_%tl130781130807%_
                                       (##cdr _%e130779130802%_)))
                                  (let ((_%hd130810%_ _%hd130780130805%_))
                                    (if (gx#stx-pair? _%tl130781130807%_)
                                        (let ((_%e130782130812%_
                                               (gx#syntax-e
                                                _%tl130781130807%_)))
                                          (let ((_%hd130783130815%_
                                                 (##car _%e130782130812%_))
                                                (_%tl130784130817%_
                                                 (##cdr _%e130782130812%_)))
                                            (let ((_%expr130820%_
                                                   _%hd130783130815%_))
                                              (if (gx#stx-null?
                                                   _%tl130784130817%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd130810%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr130820%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130775130790%_)))))
                                        (_%E130775130790%_)))))
                              (_%E130775130790%_))))
                      (_%E130775130790%_)))))
          (_%E130774130823%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx130742%_)
        (let* ((_%e130743130750%_ _%stx130742%_)
               (_%E130745130754%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130743130750%_)))
               (_%E130744130768%_
                (lambda ()
                  (if (gx#stx-pair? _%e130743130750%_)
                      (let ((_%e130746130758%_
                             (gx#syntax-e _%e130743130750%_)))
                        (let ((_%hd130747130761%_ (##car _%e130746130758%_))
                              (_%tl130748130763%_ (##cdr _%e130746130758%_)))
                          (let ((_%body130766%_ _%tl130748130763%_))
                            (cons '%#define-alias _%body130766%_))))
                      (_%E130745130754%_)))))
          (_%E130744130768%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx130712%_)
        (let* ((_%e130713130720%_ _%stx130712%_)
               (_%E130715130724%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130713130720%_)))
               (_%E130714130738%_
                (lambda ()
                  (if (gx#stx-pair? _%e130713130720%_)
                      (let ((_%e130716130728%_
                             (gx#syntax-e _%e130713130720%_)))
                        (let ((_%hd130717130731%_ (##car _%e130716130728%_))
                              (_%tl130718130733%_ (##cdr _%e130716130728%_)))
                          (let ((_%body130736%_ _%tl130718130733%_))
                            (cons '%#define-runtime _%body130736%_))))
                      (_%E130715130724%_)))))
          (_%E130714130738%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx130682%_)
        (let* ((_%e130683130690%_ _%stx130682%_)
               (_%E130685130694%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130683130690%_)))
               (_%E130684130708%_
                (lambda ()
                  (if (gx#stx-pair? _%e130683130690%_)
                      (let ((_%e130686130698%_
                             (gx#syntax-e _%e130683130690%_)))
                        (let ((_%hd130687130701%_ (##car _%e130686130698%_))
                              (_%tl130688130703%_ (##cdr _%e130686130698%_)))
                          (let ((_%decls130706%_ _%tl130688130703%_))
                            (cons '%#declare _%decls130706%_))))
                      (_%E130685130694%_)))))
          (_%E130684130708%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx130652%_)
        (let* ((_%e130653130660%_ _%stx130652%_)
               (_%E130655130664%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130653130660%_)))
               (_%E130654130678%_
                (lambda ()
                  (if (gx#stx-pair? _%e130653130660%_)
                      (let ((_%e130656130668%_
                             (gx#syntax-e _%e130653130660%_)))
                        (let ((_%hd130657130671%_ (##car _%e130656130668%_))
                              (_%tl130658130673%_ (##cdr _%e130656130668%_)))
                          (let ((_%clause130676%_ _%tl130658130673%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause130676%_)))))
                      (_%E130655130664%_)))))
          (_%E130654130678%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx130609%_)
        (let* ((_%e130610130620%_ _%stx130609%_)
               (_%E130612130624%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130610130620%_)))
               (_%E130611130648%_
                (lambda ()
                  (if (gx#stx-pair? _%e130610130620%_)
                      (let ((_%e130613130628%_
                             (gx#syntax-e _%e130610130620%_)))
                        (let ((_%hd130614130631%_ (##car _%e130613130628%_))
                              (_%tl130615130633%_ (##cdr _%e130613130628%_)))
                          (let ((_%hd130636%_ _%hd130614130631%_))
                            (if (gx#stx-pair? _%tl130615130633%_)
                                (let ((_%e130616130638%_
                                       (gx#syntax-e _%tl130615130633%_)))
                                  (let ((_%hd130617130641%_
                                         (##car _%e130616130638%_))
                                        (_%tl130618130643%_
                                         (##cdr _%e130616130638%_)))
                                    (let ((_%body130646%_ _%hd130617130641%_))
                                      (if (gx#stx-null? _%tl130618130643%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd130636%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body130646%_)
                                                      '()))
                                          (_%E130612130624%_)))))
                                (_%E130612130624%_)))))
                      (_%E130612130624%_)))))
          (_%E130611130648%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx130579%_)
        (let* ((_%e130580130587%_ _%stx130579%_)
               (_%E130582130591%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130580130587%_)))
               (_%E130581130605%_
                (lambda ()
                  (if (gx#stx-pair? _%e130580130587%_)
                      (let ((_%e130583130595%_
                             (gx#syntax-e _%e130580130587%_)))
                        (let ((_%hd130584130598%_ (##car _%e130583130595%_))
                              (_%tl130585130600%_ (##cdr _%e130583130595%_)))
                          (let ((_%clauses130603%_ _%tl130585130600%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses130603%_)))))
                      (_%E130582130591%_)))))
          (_%E130581130605%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx130514%_ _%form130515%_)
        (let* ((_%e130516130529%_ _%stx130514%_)
               (_%E130518130533%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130516130529%_)))
               (_%E130517130565%_
                (lambda ()
                  (if (gx#stx-pair? _%e130516130529%_)
                      (let ((_%e130519130537%_
                             (gx#syntax-e _%e130516130529%_)))
                        (let ((_%hd130520130540%_ (##car _%e130519130537%_))
                              (_%tl130521130542%_ (##cdr _%e130519130537%_)))
                          (if (gx#stx-pair? _%tl130521130542%_)
                              (let ((_%e130522130545%_
                                     (gx#syntax-e _%tl130521130542%_)))
                                (let ((_%hd130523130548%_
                                       (##car _%e130522130545%_))
                                      (_%tl130524130550%_
                                       (##cdr _%e130522130545%_)))
                                  (let ((_%hd130553%_ _%hd130523130548%_))
                                    (if (gx#stx-pair? _%tl130524130550%_)
                                        (let ((_%e130525130555%_
                                               (gx#syntax-e
                                                _%tl130524130550%_)))
                                          (let ((_%hd130526130558%_
                                                 (##car _%e130525130555%_))
                                                (_%tl130527130560%_
                                                 (##cdr _%e130525130555%_)))
                                            (let ((_%body130563%_
                                                   _%hd130526130558%_))
                                              (if (gx#stx-null?
                                                   _%tl130527130560%_)
                                                  (cons _%form130515%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd130553%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body130563%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130518130533%_)))))
                                        (_%E130518130533%_)))))
                              (_%E130518130533%_))))
                      (_%E130518130533%_)))))
          (_%E130517130565%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx130572%_)
        (let ((_%form130574%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx130572%_ _%form130574%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g131401_
        (let ((_g131400_ (##length _g131401_)))
          (cond ((##fx= _g131400_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g131401_))
                ((##fx= _g131400_ 2)
                 (apply gx#core-compile-top-let-values%__% _g131401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g131401_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx130511%_)
        (gx#core-compile-top-let-values%__% _%stx130511%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx130509%_)
        (gx#core-compile-top-let-values%__% _%stx130509%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx130468%_)
        (let* ((_%e130469130479%_ _%stx130468%_)
               (_%E130471130483%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130469130479%_)))
               (_%E130470130505%_
                (lambda ()
                  (if (gx#stx-pair? _%e130469130479%_)
                      (let ((_%e130472130487%_
                             (gx#syntax-e _%e130469130479%_)))
                        (let ((_%hd130473130490%_ (##car _%e130472130487%_))
                              (_%tl130474130492%_ (##cdr _%e130472130487%_)))
                          (if (gx#stx-pair? _%tl130474130492%_)
                              (let ((_%e130475130495%_
                                     (gx#syntax-e _%tl130474130492%_)))
                                (let ((_%hd130476130498%_
                                       (##car _%e130475130495%_))
                                      (_%tl130477130500%_
                                       (##cdr _%e130475130495%_)))
                                  (let ((_%e130503%_ _%hd130476130498%_))
                                    (if (gx#stx-null? _%tl130477130500%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e130503%_)
                                                    '()))
                                        (_%E130471130483%_)))))
                              (_%E130471130483%_))))
                      (_%E130471130483%_)))))
          (_%E130470130505%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx130427%_)
        (let* ((_%e130428130438%_ _%stx130427%_)
               (_%E130430130442%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130428130438%_)))
               (_%E130429130464%_
                (lambda ()
                  (if (gx#stx-pair? _%e130428130438%_)
                      (let ((_%e130431130446%_
                             (gx#syntax-e _%e130428130438%_)))
                        (let ((_%hd130432130449%_ (##car _%e130431130446%_))
                              (_%tl130433130451%_ (##cdr _%e130431130446%_)))
                          (if (gx#stx-pair? _%tl130433130451%_)
                              (let ((_%e130434130454%_
                                     (gx#syntax-e _%tl130433130451%_)))
                                (let ((_%hd130435130457%_
                                       (##car _%e130434130454%_))
                                      (_%tl130436130459%_
                                       (##cdr _%e130434130454%_)))
                                  (let ((_%e130462%_ _%hd130435130457%_))
                                    (if (gx#stx-null? _%tl130436130459%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e130462%_)
                                                    '()))
                                        (_%E130430130442%_)))))
                              (_%E130430130442%_))))
                      (_%E130430130442%_)))))
          (_%E130429130464%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx130384%_)
        (let* ((_%e130385130395%_ _%stx130384%_)
               (_%E130387130399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130385130395%_)))
               (_%E130386130423%_
                (lambda ()
                  (if (gx#stx-pair? _%e130385130395%_)
                      (let ((_%e130388130403%_
                             (gx#syntax-e _%e130385130395%_)))
                        (let ((_%hd130389130406%_ (##car _%e130388130403%_))
                              (_%tl130390130408%_ (##cdr _%e130388130403%_)))
                          (if (gx#stx-pair? _%tl130390130408%_)
                              (let ((_%e130391130411%_
                                     (gx#syntax-e _%tl130390130408%_)))
                                (let ((_%hd130392130414%_
                                       (##car _%e130391130411%_))
                                      (_%tl130393130416%_
                                       (##cdr _%e130391130411%_)))
                                  (let* ((_%rator130419%_ _%hd130392130414%_)
                                         (_%args130421%_ _%tl130393130416%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator130419%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args130421%_))))))
                              (_%E130387130399%_))))
                      (_%E130387130399%_)))))
          (_%E130386130423%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx130317%_)
        (let* ((_%e130318130334%_ _%stx130317%_)
               (_%E130320130338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130318130334%_)))
               (_%E130319130380%_
                (lambda ()
                  (if (gx#stx-pair? _%e130318130334%_)
                      (let ((_%e130321130342%_
                             (gx#syntax-e _%e130318130334%_)))
                        (let ((_%hd130322130345%_ (##car _%e130321130342%_))
                              (_%tl130323130347%_ (##cdr _%e130321130342%_)))
                          (if (gx#stx-pair? _%tl130323130347%_)
                              (let ((_%e130324130350%_
                                     (gx#syntax-e _%tl130323130347%_)))
                                (let ((_%hd130325130353%_
                                       (##car _%e130324130350%_))
                                      (_%tl130326130355%_
                                       (##cdr _%e130324130350%_)))
                                  (let ((_%test130358%_ _%hd130325130353%_))
                                    (if (gx#stx-pair? _%tl130326130355%_)
                                        (let ((_%e130327130360%_
                                               (gx#syntax-e
                                                _%tl130326130355%_)))
                                          (let ((_%hd130328130363%_
                                                 (##car _%e130327130360%_))
                                                (_%tl130329130365%_
                                                 (##cdr _%e130327130360%_)))
                                            (let ((_%K130368%_
                                                   _%hd130328130363%_))
                                              (if (gx#stx-pair?
                                                   _%tl130329130365%_)
                                                  (let ((_%e130330130370%_
                                                         (gx#syntax-e
                                                          _%tl130329130365%_)))
                                                    (let ((_%hd130331130373%_
                                                           (##car _%e130330130370%_))
                                                          (_%tl130332130375%_
                                                           (##cdr _%e130330130370%_)))
                                                      (let ((_%E130378%_
                                                             _%hd130331130373%_))
                                                        (if (gx#stx-null?
                                                             _%tl130332130375%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test130358%_)
                                (cons (gx#core-compile-top-syntax _%K130368%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E130378%_)
                                            '()))))
                    (_%E130320130338%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130320130338%_)))))
                                        (_%E130320130338%_)))))
                              (_%E130320130338%_))))
                      (_%E130320130338%_)))))
          (_%E130319130380%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx130276%_)
        (let* ((_%e130277130287%_ _%stx130276%_)
               (_%E130279130291%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130277130287%_)))
               (_%E130278130313%_
                (lambda ()
                  (if (gx#stx-pair? _%e130277130287%_)
                      (let ((_%e130280130295%_
                             (gx#syntax-e _%e130277130287%_)))
                        (let ((_%hd130281130298%_ (##car _%e130280130295%_))
                              (_%tl130282130300%_ (##cdr _%e130280130295%_)))
                          (if (gx#stx-pair? _%tl130282130300%_)
                              (let ((_%e130283130303%_
                                     (gx#syntax-e _%tl130282130300%_)))
                                (let ((_%hd130284130306%_
                                       (##car _%e130283130303%_))
                                      (_%tl130285130308%_
                                       (##cdr _%e130283130303%_)))
                                  (let ((_%id130311%_ _%hd130284130306%_))
                                    (if (gx#stx-null? _%tl130285130308%_)
                                        (if (gx#identifier? _%id130311%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id130311%_)
                                                        '()))
                                            (_%E130279130291%_))
                                        (_%E130279130291%_)))))
                              (_%E130279130291%_))))
                      (_%E130279130291%_)))))
          (_%E130278130313%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx130222%_)
        (let* ((_%e130223130236%_ _%stx130222%_)
               (_%E130225130240%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130223130236%_)))
               (_%E130224130272%_
                (lambda ()
                  (if (gx#stx-pair? _%e130223130236%_)
                      (let ((_%e130226130244%_
                             (gx#syntax-e _%e130223130236%_)))
                        (let ((_%hd130227130247%_ (##car _%e130226130244%_))
                              (_%tl130228130249%_ (##cdr _%e130226130244%_)))
                          (if (gx#stx-pair? _%tl130228130249%_)
                              (let ((_%e130229130252%_
                                     (gx#syntax-e _%tl130228130249%_)))
                                (let ((_%hd130230130255%_
                                       (##car _%e130229130252%_))
                                      (_%tl130231130257%_
                                       (##cdr _%e130229130252%_)))
                                  (let ((_%id130260%_ _%hd130230130255%_))
                                    (if (gx#stx-pair? _%tl130231130257%_)
                                        (let ((_%e130232130262%_
                                               (gx#syntax-e
                                                _%tl130231130257%_)))
                                          (let ((_%hd130233130265%_
                                                 (##car _%e130232130262%_))
                                                (_%tl130234130267%_
                                                 (##cdr _%e130232130262%_)))
                                            (let ((_%expr130270%_
                                                   _%hd130233130265%_))
                                              (if (gx#stx-null?
                                                   _%tl130234130267%_)
                                                  (if (gx#identifier?
                                                       _%id130260%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id130260%_)
                          (cons (gx#core-compile-top-syntax _%expr130270%_)
                                '())))
              (_%E130225130240%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130225130240%_)))))
                                        (_%E130225130240%_)))))
                              (_%E130225130240%_))))
                      (_%E130225130240%_)))))
          (_%E130224130272%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id130216%_)
        (let ((_%$e130218%_ (gx#resolve-identifier__0 _%id130216%_)))
          (if _%$e130218%_
              (##unchecked-structure-ref _%$e130218%_ '1 '#f '#f)
              _%id130216%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd130214%_)
        (if (gx#identifier? _%hd130214%_)
            (gx#core-compile-top-runtime-ref _%hd130214%_)
            '#f)))))
