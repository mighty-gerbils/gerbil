(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1734225194)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx131373%_)
        (let* ((_%e131374131381%_ _%stx131373%_)
               (_%E131376131385%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131374131381%_)))
               (_%E131375131399%_
                (lambda ()
                  (if (gx#stx-pair? _%e131374131381%_)
                      (let ((_%e131377131389%_
                             (gx#syntax-e _%e131374131381%_)))
                        (let ((_%hd131378131392%_ (##car _%e131377131389%_))
                              (_%tl131379131394%_ (##cdr _%e131377131389%_)))
                          (let* ((_%form131397%_ _%hd131378131392%_)
                                 (__self131402
                                  (gx#syntax-local-e__0 _%form131397%_))
                                 (__method131403
                                  (__method-ref
                                   __self131402
                                   'compile-top-syntax)))
                            (if __method131403
                                (__method131403 __self131402 _%stx131373%_)
                                (begin
                                  (error '"Missing method"
                                         __self131402
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E131376131385%_)))))
          (_%E131375131399%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self130216131319%_ _%stx131321%_)
        (let* ((_%self131323%_ _%self130216131319%_)
               (_%self131325%_ _%self131323%_)
               (_%self131334131342%_ _%self131325%_)
               (_%E131336131346%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131334131342%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K131337131359%_
                (lambda (_%K131349%_)
                  (let ((_%$e131351%_ (gx#stx-source _%stx131321%_)))
                    (if _%$e131351%_
                        ((lambda (_%g131353131355%_)
                           (gx#stx-wrap-source
                            (_%K131349%_ _%stx131321%_)
                            _%g131353131355%_))
                         _%$e131351%_)
                        (_%K131349%_ _%stx131321%_)))))
               (_%e131338131362%_
                (##unchecked-structure-ref _%self131334131342%_ '1 '#f '#f))
               (_%e131339131365%_
                (##unchecked-structure-ref _%self131334131342%_ '2 '#f '#f))
               (_%e131340131368%_
                (##unchecked-structure-ref _%self131334131342%_ '3 '#f '#f))
               (_%K131371%_ _%e131340131368%_))
          (_%K131337131359%_ _%K131371%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx131193%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx131193%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx131163%_)
        (let* ((_%e131164131171%_ _%stx131163%_)
               (_%E131166131175%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131164131171%_)))
               (_%E131165131189%_
                (lambda ()
                  (if (gx#stx-pair? _%e131164131171%_)
                      (let ((_%e131167131179%_
                             (gx#syntax-e _%e131164131171%_)))
                        (let ((_%hd131168131182%_ (##car _%e131167131179%_))
                              (_%tl131169131184%_ (##cdr _%e131167131179%_)))
                          (let ((_%body131187%_ _%tl131169131184%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body131187%_)))))
                      (_%E131166131175%_)))))
          (_%E131165131189%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx131132%_)
        (let* ((_%e131133131140%_ _%stx131132%_)
               (_%E131135131144%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131133131140%_)))
               (_%E131134131159%_
                (lambda ()
                  (if (gx#stx-pair? _%e131133131140%_)
                      (let ((_%e131136131148%_
                             (gx#syntax-e _%e131133131140%_)))
                        (let ((_%hd131137131151%_ (##car _%e131136131148%_))
                              (_%tl131138131153%_ (##cdr _%e131136131148%_)))
                          (let ((_%body131156%_ _%tl131138131153%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body131156%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E131135131144%_)))))
          (_%E131134131159%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx131102%_)
        (let* ((_%e131103131110%_ _%stx131102%_)
               (_%E131105131114%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131103131110%_)))
               (_%E131104131128%_
                (lambda ()
                  (if (gx#stx-pair? _%e131103131110%_)
                      (let ((_%e131106131118%_
                             (gx#syntax-e _%e131103131110%_)))
                        (let ((_%hd131107131121%_ (##car _%e131106131118%_))
                              (_%tl131108131123%_ (##cdr _%e131106131118%_)))
                          (let ((_%body131126%_ _%tl131108131123%_))
                            (cons '%#begin-foreign _%body131126%_))))
                      (_%E131105131114%_)))))
          (_%E131104131128%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx131048%_)
        (let* ((_%e131049131062%_ _%stx131048%_)
               (_%E131051131066%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131049131062%_)))
               (_%E131050131098%_
                (lambda ()
                  (if (gx#stx-pair? _%e131049131062%_)
                      (let ((_%e131052131070%_
                             (gx#syntax-e _%e131049131062%_)))
                        (let ((_%hd131053131073%_ (##car _%e131052131070%_))
                              (_%tl131054131075%_ (##cdr _%e131052131070%_)))
                          (if (gx#stx-pair? _%tl131054131075%_)
                              (let ((_%e131055131078%_
                                     (gx#syntax-e _%tl131054131075%_)))
                                (let ((_%hd131056131081%_
                                       (##car _%e131055131078%_))
                                      (_%tl131057131083%_
                                       (##cdr _%e131055131078%_)))
                                  (let ((_%ann131086%_ _%hd131056131081%_))
                                    (if (gx#stx-pair? _%tl131057131083%_)
                                        (let ((_%e131058131088%_
                                               (gx#syntax-e
                                                _%tl131057131083%_)))
                                          (let ((_%hd131059131091%_
                                                 (##car _%e131058131088%_))
                                                (_%tl131060131093%_
                                                 (##cdr _%e131058131088%_)))
                                            (let ((_%expr131096%_
                                                   _%hd131059131091%_))
                                              (if (gx#stx-null?
                                                   _%tl131060131093%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr131096%_)
                                                  (_%E131051131066%_)))))
                                        (_%E131051131066%_)))))
                              (_%E131051131066%_))))
                      (_%E131051131066%_)))))
          (_%E131050131098%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx131018%_)
        (let* ((_%e131019131026%_ _%stx131018%_)
               (_%E131021131030%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131019131026%_)))
               (_%E131020131044%_
                (lambda ()
                  (if (gx#stx-pair? _%e131019131026%_)
                      (let ((_%e131022131034%_
                             (gx#syntax-e _%e131019131026%_)))
                        (let ((_%hd131023131037%_ (##car _%e131022131034%_))
                              (_%tl131024131039%_ (##cdr _%e131022131034%_)))
                          (let ((_%body131042%_ _%tl131024131039%_))
                            (cons '%#import _%body131042%_))))
                      (_%E131021131030%_)))))
          (_%E131020131044%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx130975%_)
        (let* ((_%e130976130986%_ _%stx130975%_)
               (_%E130978130990%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130976130986%_)))
               (_%E130977131014%_
                (lambda ()
                  (if (gx#stx-pair? _%e130976130986%_)
                      (let ((_%e130979130994%_
                             (gx#syntax-e _%e130976130986%_)))
                        (let ((_%hd130980130997%_ (##car _%e130979130994%_))
                              (_%tl130981130999%_ (##cdr _%e130979130994%_)))
                          (if (gx#stx-pair? _%tl130981130999%_)
                              (let ((_%e130982131002%_
                                     (gx#syntax-e _%tl130981130999%_)))
                                (let ((_%hd130983131005%_
                                       (##car _%e130982131002%_))
                                      (_%tl130984131007%_
                                       (##cdr _%e130982131002%_)))
                                  (let* ((_%hd131010%_ _%hd130983131005%_)
                                         (_%body131012%_ _%tl130984131007%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd131010%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body131012%_))))))
                              (_%E130978130990%_))))
                      (_%E130978130990%_)))))
          (_%E130977131014%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx130945%_)
        (let* ((_%e130946130953%_ _%stx130945%_)
               (_%E130948130957%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130946130953%_)))
               (_%E130947130971%_
                (lambda ()
                  (if (gx#stx-pair? _%e130946130953%_)
                      (let ((_%e130949130961%_
                             (gx#syntax-e _%e130946130953%_)))
                        (let ((_%hd130950130964%_ (##car _%e130949130961%_))
                              (_%tl130951130966%_ (##cdr _%e130949130961%_)))
                          (let ((_%body130969%_ _%tl130951130966%_))
                            (cons '%#export _%body130969%_))))
                      (_%E130948130957%_)))))
          (_%E130947130971%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx130915%_)
        (let* ((_%e130916130923%_ _%stx130915%_)
               (_%E130918130927%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130916130923%_)))
               (_%E130917130941%_
                (lambda ()
                  (if (gx#stx-pair? _%e130916130923%_)
                      (let ((_%e130919130931%_
                             (gx#syntax-e _%e130916130923%_)))
                        (let ((_%hd130920130934%_ (##car _%e130919130931%_))
                              (_%tl130921130936%_ (##cdr _%e130919130931%_)))
                          (let ((_%body130939%_ _%tl130921130936%_))
                            (cons '%#provide _%body130939%_))))
                      (_%E130918130927%_)))))
          (_%E130917130941%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx130885%_)
        (let* ((_%e130886130893%_ _%stx130885%_)
               (_%E130888130897%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130886130893%_)))
               (_%E130887130911%_
                (lambda ()
                  (if (gx#stx-pair? _%e130886130893%_)
                      (let ((_%e130889130901%_
                             (gx#syntax-e _%e130886130893%_)))
                        (let ((_%hd130890130904%_ (##car _%e130889130901%_))
                              (_%tl130891130906%_ (##cdr _%e130889130901%_)))
                          (let ((_%body130909%_ _%tl130891130906%_))
                            (cons '%#extern _%body130909%_))))
                      (_%E130888130897%_)))))
          (_%E130887130911%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx130831%_)
        (let* ((_%e130832130845%_ _%stx130831%_)
               (_%E130834130849%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130832130845%_)))
               (_%E130833130881%_
                (lambda ()
                  (if (gx#stx-pair? _%e130832130845%_)
                      (let ((_%e130835130853%_
                             (gx#syntax-e _%e130832130845%_)))
                        (let ((_%hd130836130856%_ (##car _%e130835130853%_))
                              (_%tl130837130858%_ (##cdr _%e130835130853%_)))
                          (if (gx#stx-pair? _%tl130837130858%_)
                              (let ((_%e130838130861%_
                                     (gx#syntax-e _%tl130837130858%_)))
                                (let ((_%hd130839130864%_
                                       (##car _%e130838130861%_))
                                      (_%tl130840130866%_
                                       (##cdr _%e130838130861%_)))
                                  (let ((_%hd130869%_ _%hd130839130864%_))
                                    (if (gx#stx-pair? _%tl130840130866%_)
                                        (let ((_%e130841130871%_
                                               (gx#syntax-e
                                                _%tl130840130866%_)))
                                          (let ((_%hd130842130874%_
                                                 (##car _%e130841130871%_))
                                                (_%tl130843130876%_
                                                 (##cdr _%e130841130871%_)))
                                            (let ((_%expr130879%_
                                                   _%hd130842130874%_))
                                              (if (gx#stx-null?
                                                   _%tl130843130876%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd130869%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr130879%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130834130849%_)))))
                                        (_%E130834130849%_)))))
                              (_%E130834130849%_))))
                      (_%E130834130849%_)))))
          (_%E130833130881%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx130776%_)
        (let* ((_%e130777130790%_ _%stx130776%_)
               (_%E130779130794%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130777130790%_)))
               (_%E130778130827%_
                (lambda ()
                  (if (gx#stx-pair? _%e130777130790%_)
                      (let ((_%e130780130798%_
                             (gx#syntax-e _%e130777130790%_)))
                        (let ((_%hd130781130801%_ (##car _%e130780130798%_))
                              (_%tl130782130803%_ (##cdr _%e130780130798%_)))
                          (if (gx#stx-pair? _%tl130782130803%_)
                              (let ((_%e130783130806%_
                                     (gx#syntax-e _%tl130782130803%_)))
                                (let ((_%hd130784130809%_
                                       (##car _%e130783130806%_))
                                      (_%tl130785130811%_
                                       (##cdr _%e130783130806%_)))
                                  (let ((_%hd130814%_ _%hd130784130809%_))
                                    (if (gx#stx-pair? _%tl130785130811%_)
                                        (let ((_%e130786130816%_
                                               (gx#syntax-e
                                                _%tl130785130811%_)))
                                          (let ((_%hd130787130819%_
                                                 (##car _%e130786130816%_))
                                                (_%tl130788130821%_
                                                 (##cdr _%e130786130816%_)))
                                            (let ((_%expr130824%_
                                                   _%hd130787130819%_))
                                              (if (gx#stx-null?
                                                   _%tl130788130821%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd130814%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr130824%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130779130794%_)))))
                                        (_%E130779130794%_)))))
                              (_%E130779130794%_))))
                      (_%E130779130794%_)))))
          (_%E130778130827%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx130746%_)
        (let* ((_%e130747130754%_ _%stx130746%_)
               (_%E130749130758%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130747130754%_)))
               (_%E130748130772%_
                (lambda ()
                  (if (gx#stx-pair? _%e130747130754%_)
                      (let ((_%e130750130762%_
                             (gx#syntax-e _%e130747130754%_)))
                        (let ((_%hd130751130765%_ (##car _%e130750130762%_))
                              (_%tl130752130767%_ (##cdr _%e130750130762%_)))
                          (let ((_%body130770%_ _%tl130752130767%_))
                            (cons '%#define-alias _%body130770%_))))
                      (_%E130749130758%_)))))
          (_%E130748130772%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx130716%_)
        (let* ((_%e130717130724%_ _%stx130716%_)
               (_%E130719130728%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130717130724%_)))
               (_%E130718130742%_
                (lambda ()
                  (if (gx#stx-pair? _%e130717130724%_)
                      (let ((_%e130720130732%_
                             (gx#syntax-e _%e130717130724%_)))
                        (let ((_%hd130721130735%_ (##car _%e130720130732%_))
                              (_%tl130722130737%_ (##cdr _%e130720130732%_)))
                          (let ((_%body130740%_ _%tl130722130737%_))
                            (cons '%#define-runtime _%body130740%_))))
                      (_%E130719130728%_)))))
          (_%E130718130742%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx130686%_)
        (let* ((_%e130687130694%_ _%stx130686%_)
               (_%E130689130698%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130687130694%_)))
               (_%E130688130712%_
                (lambda ()
                  (if (gx#stx-pair? _%e130687130694%_)
                      (let ((_%e130690130702%_
                             (gx#syntax-e _%e130687130694%_)))
                        (let ((_%hd130691130705%_ (##car _%e130690130702%_))
                              (_%tl130692130707%_ (##cdr _%e130690130702%_)))
                          (let ((_%decls130710%_ _%tl130692130707%_))
                            (cons '%#declare _%decls130710%_))))
                      (_%E130689130698%_)))))
          (_%E130688130712%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx130656%_)
        (let* ((_%e130657130664%_ _%stx130656%_)
               (_%E130659130668%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130657130664%_)))
               (_%E130658130682%_
                (lambda ()
                  (if (gx#stx-pair? _%e130657130664%_)
                      (let ((_%e130660130672%_
                             (gx#syntax-e _%e130657130664%_)))
                        (let ((_%hd130661130675%_ (##car _%e130660130672%_))
                              (_%tl130662130677%_ (##cdr _%e130660130672%_)))
                          (let ((_%clause130680%_ _%tl130662130677%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause130680%_)))))
                      (_%E130659130668%_)))))
          (_%E130658130682%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx130613%_)
        (let* ((_%e130614130624%_ _%stx130613%_)
               (_%E130616130628%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130614130624%_)))
               (_%E130615130652%_
                (lambda ()
                  (if (gx#stx-pair? _%e130614130624%_)
                      (let ((_%e130617130632%_
                             (gx#syntax-e _%e130614130624%_)))
                        (let ((_%hd130618130635%_ (##car _%e130617130632%_))
                              (_%tl130619130637%_ (##cdr _%e130617130632%_)))
                          (let ((_%hd130640%_ _%hd130618130635%_))
                            (if (gx#stx-pair? _%tl130619130637%_)
                                (let ((_%e130620130642%_
                                       (gx#syntax-e _%tl130619130637%_)))
                                  (let ((_%hd130621130645%_
                                         (##car _%e130620130642%_))
                                        (_%tl130622130647%_
                                         (##cdr _%e130620130642%_)))
                                    (let ((_%body130650%_ _%hd130621130645%_))
                                      (if (gx#stx-null? _%tl130622130647%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd130640%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body130650%_)
                                                      '()))
                                          (_%E130616130628%_)))))
                                (_%E130616130628%_)))))
                      (_%E130616130628%_)))))
          (_%E130615130652%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx130583%_)
        (let* ((_%e130584130591%_ _%stx130583%_)
               (_%E130586130595%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130584130591%_)))
               (_%E130585130609%_
                (lambda ()
                  (if (gx#stx-pair? _%e130584130591%_)
                      (let ((_%e130587130599%_
                             (gx#syntax-e _%e130584130591%_)))
                        (let ((_%hd130588130602%_ (##car _%e130587130599%_))
                              (_%tl130589130604%_ (##cdr _%e130587130599%_)))
                          (let ((_%clauses130607%_ _%tl130589130604%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses130607%_)))))
                      (_%E130586130595%_)))))
          (_%E130585130609%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx130518%_ _%form130519%_)
        (let* ((_%e130520130533%_ _%stx130518%_)
               (_%E130522130537%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130520130533%_)))
               (_%E130521130569%_
                (lambda ()
                  (if (gx#stx-pair? _%e130520130533%_)
                      (let ((_%e130523130541%_
                             (gx#syntax-e _%e130520130533%_)))
                        (let ((_%hd130524130544%_ (##car _%e130523130541%_))
                              (_%tl130525130546%_ (##cdr _%e130523130541%_)))
                          (if (gx#stx-pair? _%tl130525130546%_)
                              (let ((_%e130526130549%_
                                     (gx#syntax-e _%tl130525130546%_)))
                                (let ((_%hd130527130552%_
                                       (##car _%e130526130549%_))
                                      (_%tl130528130554%_
                                       (##cdr _%e130526130549%_)))
                                  (let ((_%hd130557%_ _%hd130527130552%_))
                                    (if (gx#stx-pair? _%tl130528130554%_)
                                        (let ((_%e130529130559%_
                                               (gx#syntax-e
                                                _%tl130528130554%_)))
                                          (let ((_%hd130530130562%_
                                                 (##car _%e130529130559%_))
                                                (_%tl130531130564%_
                                                 (##cdr _%e130529130559%_)))
                                            (let ((_%body130567%_
                                                   _%hd130530130562%_))
                                              (if (gx#stx-null?
                                                   _%tl130531130564%_)
                                                  (cons _%form130519%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd130557%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body130567%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130522130537%_)))))
                                        (_%E130522130537%_)))))
                              (_%E130522130537%_))))
                      (_%E130522130537%_)))))
          (_%E130521130569%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx130576%_)
        (let ((_%form130578%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx130576%_ _%form130578%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g131405_
        (let ((_g131404_ (##length _g131405_)))
          (cond ((##fx= _g131404_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g131405_))
                ((##fx= _g131404_ 2)
                 (apply gx#core-compile-top-let-values%__% _g131405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g131405_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx130515%_)
        (gx#core-compile-top-let-values%__% _%stx130515%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx130513%_)
        (gx#core-compile-top-let-values%__% _%stx130513%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx130472%_)
        (let* ((_%e130473130483%_ _%stx130472%_)
               (_%E130475130487%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130473130483%_)))
               (_%E130474130509%_
                (lambda ()
                  (if (gx#stx-pair? _%e130473130483%_)
                      (let ((_%e130476130491%_
                             (gx#syntax-e _%e130473130483%_)))
                        (let ((_%hd130477130494%_ (##car _%e130476130491%_))
                              (_%tl130478130496%_ (##cdr _%e130476130491%_)))
                          (if (gx#stx-pair? _%tl130478130496%_)
                              (let ((_%e130479130499%_
                                     (gx#syntax-e _%tl130478130496%_)))
                                (let ((_%hd130480130502%_
                                       (##car _%e130479130499%_))
                                      (_%tl130481130504%_
                                       (##cdr _%e130479130499%_)))
                                  (let ((_%e130507%_ _%hd130480130502%_))
                                    (if (gx#stx-null? _%tl130481130504%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e130507%_)
                                                    '()))
                                        (_%E130475130487%_)))))
                              (_%E130475130487%_))))
                      (_%E130475130487%_)))))
          (_%E130474130509%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx130431%_)
        (let* ((_%e130432130442%_ _%stx130431%_)
               (_%E130434130446%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130432130442%_)))
               (_%E130433130468%_
                (lambda ()
                  (if (gx#stx-pair? _%e130432130442%_)
                      (let ((_%e130435130450%_
                             (gx#syntax-e _%e130432130442%_)))
                        (let ((_%hd130436130453%_ (##car _%e130435130450%_))
                              (_%tl130437130455%_ (##cdr _%e130435130450%_)))
                          (if (gx#stx-pair? _%tl130437130455%_)
                              (let ((_%e130438130458%_
                                     (gx#syntax-e _%tl130437130455%_)))
                                (let ((_%hd130439130461%_
                                       (##car _%e130438130458%_))
                                      (_%tl130440130463%_
                                       (##cdr _%e130438130458%_)))
                                  (let ((_%e130466%_ _%hd130439130461%_))
                                    (if (gx#stx-null? _%tl130440130463%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e130466%_)
                                                    '()))
                                        (_%E130434130446%_)))))
                              (_%E130434130446%_))))
                      (_%E130434130446%_)))))
          (_%E130433130468%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx130388%_)
        (let* ((_%e130389130399%_ _%stx130388%_)
               (_%E130391130403%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130389130399%_)))
               (_%E130390130427%_
                (lambda ()
                  (if (gx#stx-pair? _%e130389130399%_)
                      (let ((_%e130392130407%_
                             (gx#syntax-e _%e130389130399%_)))
                        (let ((_%hd130393130410%_ (##car _%e130392130407%_))
                              (_%tl130394130412%_ (##cdr _%e130392130407%_)))
                          (if (gx#stx-pair? _%tl130394130412%_)
                              (let ((_%e130395130415%_
                                     (gx#syntax-e _%tl130394130412%_)))
                                (let ((_%hd130396130418%_
                                       (##car _%e130395130415%_))
                                      (_%tl130397130420%_
                                       (##cdr _%e130395130415%_)))
                                  (let* ((_%rator130423%_ _%hd130396130418%_)
                                         (_%args130425%_ _%tl130397130420%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator130423%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args130425%_))))))
                              (_%E130391130403%_))))
                      (_%E130391130403%_)))))
          (_%E130390130427%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx130321%_)
        (let* ((_%e130322130338%_ _%stx130321%_)
               (_%E130324130342%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130322130338%_)))
               (_%E130323130384%_
                (lambda ()
                  (if (gx#stx-pair? _%e130322130338%_)
                      (let ((_%e130325130346%_
                             (gx#syntax-e _%e130322130338%_)))
                        (let ((_%hd130326130349%_ (##car _%e130325130346%_))
                              (_%tl130327130351%_ (##cdr _%e130325130346%_)))
                          (if (gx#stx-pair? _%tl130327130351%_)
                              (let ((_%e130328130354%_
                                     (gx#syntax-e _%tl130327130351%_)))
                                (let ((_%hd130329130357%_
                                       (##car _%e130328130354%_))
                                      (_%tl130330130359%_
                                       (##cdr _%e130328130354%_)))
                                  (let ((_%test130362%_ _%hd130329130357%_))
                                    (if (gx#stx-pair? _%tl130330130359%_)
                                        (let ((_%e130331130364%_
                                               (gx#syntax-e
                                                _%tl130330130359%_)))
                                          (let ((_%hd130332130367%_
                                                 (##car _%e130331130364%_))
                                                (_%tl130333130369%_
                                                 (##cdr _%e130331130364%_)))
                                            (let ((_%K130372%_
                                                   _%hd130332130367%_))
                                              (if (gx#stx-pair?
                                                   _%tl130333130369%_)
                                                  (let ((_%e130334130374%_
                                                         (gx#syntax-e
                                                          _%tl130333130369%_)))
                                                    (let ((_%hd130335130377%_
                                                           (##car _%e130334130374%_))
                                                          (_%tl130336130379%_
                                                           (##cdr _%e130334130374%_)))
                                                      (let ((_%E130382%_
                                                             _%hd130335130377%_))
                                                        (if (gx#stx-null?
                                                             _%tl130336130379%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test130362%_)
                                (cons (gx#core-compile-top-syntax _%K130372%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E130382%_)
                                            '()))))
                    (_%E130324130342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130324130342%_)))))
                                        (_%E130324130342%_)))))
                              (_%E130324130342%_))))
                      (_%E130324130342%_)))))
          (_%E130323130384%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx130280%_)
        (let* ((_%e130281130291%_ _%stx130280%_)
               (_%E130283130295%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130281130291%_)))
               (_%E130282130317%_
                (lambda ()
                  (if (gx#stx-pair? _%e130281130291%_)
                      (let ((_%e130284130299%_
                             (gx#syntax-e _%e130281130291%_)))
                        (let ((_%hd130285130302%_ (##car _%e130284130299%_))
                              (_%tl130286130304%_ (##cdr _%e130284130299%_)))
                          (if (gx#stx-pair? _%tl130286130304%_)
                              (let ((_%e130287130307%_
                                     (gx#syntax-e _%tl130286130304%_)))
                                (let ((_%hd130288130310%_
                                       (##car _%e130287130307%_))
                                      (_%tl130289130312%_
                                       (##cdr _%e130287130307%_)))
                                  (let ((_%id130315%_ _%hd130288130310%_))
                                    (if (gx#stx-null? _%tl130289130312%_)
                                        (if (gx#identifier? _%id130315%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id130315%_)
                                                        '()))
                                            (_%E130283130295%_))
                                        (_%E130283130295%_)))))
                              (_%E130283130295%_))))
                      (_%E130283130295%_)))))
          (_%E130282130317%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx130226%_)
        (let* ((_%e130227130240%_ _%stx130226%_)
               (_%E130229130244%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130227130240%_)))
               (_%E130228130276%_
                (lambda ()
                  (if (gx#stx-pair? _%e130227130240%_)
                      (let ((_%e130230130248%_
                             (gx#syntax-e _%e130227130240%_)))
                        (let ((_%hd130231130251%_ (##car _%e130230130248%_))
                              (_%tl130232130253%_ (##cdr _%e130230130248%_)))
                          (if (gx#stx-pair? _%tl130232130253%_)
                              (let ((_%e130233130256%_
                                     (gx#syntax-e _%tl130232130253%_)))
                                (let ((_%hd130234130259%_
                                       (##car _%e130233130256%_))
                                      (_%tl130235130261%_
                                       (##cdr _%e130233130256%_)))
                                  (let ((_%id130264%_ _%hd130234130259%_))
                                    (if (gx#stx-pair? _%tl130235130261%_)
                                        (let ((_%e130236130266%_
                                               (gx#syntax-e
                                                _%tl130235130261%_)))
                                          (let ((_%hd130237130269%_
                                                 (##car _%e130236130266%_))
                                                (_%tl130238130271%_
                                                 (##cdr _%e130236130266%_)))
                                            (let ((_%expr130274%_
                                                   _%hd130237130269%_))
                                              (if (gx#stx-null?
                                                   _%tl130238130271%_)
                                                  (if (gx#identifier?
                                                       _%id130264%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id130264%_)
                          (cons (gx#core-compile-top-syntax _%expr130274%_)
                                '())))
              (_%E130229130244%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130229130244%_)))))
                                        (_%E130229130244%_)))))
                              (_%E130229130244%_))))
                      (_%E130229130244%_)))))
          (_%E130228130276%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id130220%_)
        (let ((_%$e130222%_ (gx#resolve-identifier__0 _%id130220%_)))
          (if _%$e130222%_
              (##unchecked-structure-ref _%$e130222%_ '1 '#f '#f)
              _%id130220%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd130218%_)
        (if (gx#identifier? _%hd130218%_)
            (gx#core-compile-top-runtime-ref _%hd130218%_)
            '#f)))))
