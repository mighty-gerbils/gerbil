(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1734357962)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx131462%_)
        (let* ((_%e131463131470%_ _%stx131462%_)
               (_%E131465131474%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131463131470%_)))
               (_%E131464131488%_
                (lambda ()
                  (if (gx#stx-pair? _%e131463131470%_)
                      (let ((_%e131466131478%_
                             (gx#syntax-e _%e131463131470%_)))
                        (let ((_%hd131467131481%_ (##car _%e131466131478%_))
                              (_%tl131468131483%_ (##cdr _%e131466131478%_)))
                          (let* ((_%form131486%_ _%hd131467131481%_)
                                 (__self131491
                                  (gx#syntax-local-e__0 _%form131486%_))
                                 (__method131492
                                  (__method-ref
                                   __self131491
                                   'compile-top-syntax)))
                            (if __method131492
                                (__method131492 __self131491 _%stx131462%_)
                                (begin
                                  (error '"Missing method"
                                         __self131491
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E131465131474%_)))))
          (_%E131464131488%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self130305131408%_ _%stx131410%_)
        (let* ((_%self131412%_ _%self130305131408%_)
               (_%self131414%_ _%self131412%_)
               (_%self131423131431%_ _%self131414%_)
               (_%E131425131435%_
                (lambda ()
                  (error '"No clause matching"
                         _%self131423131431%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K131426131448%_
                (lambda (_%K131438%_)
                  (let ((_%$e131440%_ (gx#stx-source _%stx131410%_)))
                    (if _%$e131440%_
                        ((lambda (_%g131442131444%_)
                           (gx#stx-wrap-source
                            (_%K131438%_ _%stx131410%_)
                            _%g131442131444%_))
                         _%$e131440%_)
                        (_%K131438%_ _%stx131410%_)))))
               (_%e131427131451%_
                (##unchecked-structure-ref _%self131423131431%_ '1 '#f '#f))
               (_%e131428131454%_
                (##unchecked-structure-ref _%self131423131431%_ '2 '#f '#f))
               (_%e131429131457%_
                (##unchecked-structure-ref _%self131423131431%_ '3 '#f '#f))
               (_%K131460%_ _%e131429131457%_))
          (_%K131426131448%_ _%K131460%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx131282%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx131282%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx131252%_)
        (let* ((_%e131253131260%_ _%stx131252%_)
               (_%E131255131264%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131253131260%_)))
               (_%E131254131278%_
                (lambda ()
                  (if (gx#stx-pair? _%e131253131260%_)
                      (let ((_%e131256131268%_
                             (gx#syntax-e _%e131253131260%_)))
                        (let ((_%hd131257131271%_ (##car _%e131256131268%_))
                              (_%tl131258131273%_ (##cdr _%e131256131268%_)))
                          (let ((_%body131276%_ _%tl131258131273%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body131276%_)))))
                      (_%E131255131264%_)))))
          (_%E131254131278%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx131221%_)
        (let* ((_%e131222131229%_ _%stx131221%_)
               (_%E131224131233%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131222131229%_)))
               (_%E131223131248%_
                (lambda ()
                  (if (gx#stx-pair? _%e131222131229%_)
                      (let ((_%e131225131237%_
                             (gx#syntax-e _%e131222131229%_)))
                        (let ((_%hd131226131240%_ (##car _%e131225131237%_))
                              (_%tl131227131242%_ (##cdr _%e131225131237%_)))
                          (let ((_%body131245%_ _%tl131227131242%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body131245%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E131224131233%_)))))
          (_%E131223131248%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx131191%_)
        (let* ((_%e131192131199%_ _%stx131191%_)
               (_%E131194131203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131192131199%_)))
               (_%E131193131217%_
                (lambda ()
                  (if (gx#stx-pair? _%e131192131199%_)
                      (let ((_%e131195131207%_
                             (gx#syntax-e _%e131192131199%_)))
                        (let ((_%hd131196131210%_ (##car _%e131195131207%_))
                              (_%tl131197131212%_ (##cdr _%e131195131207%_)))
                          (let ((_%body131215%_ _%tl131197131212%_))
                            (cons '%#begin-foreign _%body131215%_))))
                      (_%E131194131203%_)))))
          (_%E131193131217%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx131137%_)
        (let* ((_%e131138131151%_ _%stx131137%_)
               (_%E131140131155%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131138131151%_)))
               (_%E131139131187%_
                (lambda ()
                  (if (gx#stx-pair? _%e131138131151%_)
                      (let ((_%e131141131159%_
                             (gx#syntax-e _%e131138131151%_)))
                        (let ((_%hd131142131162%_ (##car _%e131141131159%_))
                              (_%tl131143131164%_ (##cdr _%e131141131159%_)))
                          (if (gx#stx-pair? _%tl131143131164%_)
                              (let ((_%e131144131167%_
                                     (gx#syntax-e _%tl131143131164%_)))
                                (let ((_%hd131145131170%_
                                       (##car _%e131144131167%_))
                                      (_%tl131146131172%_
                                       (##cdr _%e131144131167%_)))
                                  (let ((_%ann131175%_ _%hd131145131170%_))
                                    (if (gx#stx-pair? _%tl131146131172%_)
                                        (let ((_%e131147131177%_
                                               (gx#syntax-e
                                                _%tl131146131172%_)))
                                          (let ((_%hd131148131180%_
                                                 (##car _%e131147131177%_))
                                                (_%tl131149131182%_
                                                 (##cdr _%e131147131177%_)))
                                            (let ((_%expr131185%_
                                                   _%hd131148131180%_))
                                              (if (gx#stx-null?
                                                   _%tl131149131182%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr131185%_)
                                                  (_%E131140131155%_)))))
                                        (_%E131140131155%_)))))
                              (_%E131140131155%_))))
                      (_%E131140131155%_)))))
          (_%E131139131187%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx131107%_)
        (let* ((_%e131108131115%_ _%stx131107%_)
               (_%E131110131119%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131108131115%_)))
               (_%E131109131133%_
                (lambda ()
                  (if (gx#stx-pair? _%e131108131115%_)
                      (let ((_%e131111131123%_
                             (gx#syntax-e _%e131108131115%_)))
                        (let ((_%hd131112131126%_ (##car _%e131111131123%_))
                              (_%tl131113131128%_ (##cdr _%e131111131123%_)))
                          (let ((_%body131131%_ _%tl131113131128%_))
                            (cons '%#import _%body131131%_))))
                      (_%E131110131119%_)))))
          (_%E131109131133%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx131064%_)
        (let* ((_%e131065131075%_ _%stx131064%_)
               (_%E131067131079%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131065131075%_)))
               (_%E131066131103%_
                (lambda ()
                  (if (gx#stx-pair? _%e131065131075%_)
                      (let ((_%e131068131083%_
                             (gx#syntax-e _%e131065131075%_)))
                        (let ((_%hd131069131086%_ (##car _%e131068131083%_))
                              (_%tl131070131088%_ (##cdr _%e131068131083%_)))
                          (if (gx#stx-pair? _%tl131070131088%_)
                              (let ((_%e131071131091%_
                                     (gx#syntax-e _%tl131070131088%_)))
                                (let ((_%hd131072131094%_
                                       (##car _%e131071131091%_))
                                      (_%tl131073131096%_
                                       (##cdr _%e131071131091%_)))
                                  (let* ((_%hd131099%_ _%hd131072131094%_)
                                         (_%body131101%_ _%tl131073131096%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd131099%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body131101%_))))))
                              (_%E131067131079%_))))
                      (_%E131067131079%_)))))
          (_%E131066131103%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx131034%_)
        (let* ((_%e131035131042%_ _%stx131034%_)
               (_%E131037131046%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131035131042%_)))
               (_%E131036131060%_
                (lambda ()
                  (if (gx#stx-pair? _%e131035131042%_)
                      (let ((_%e131038131050%_
                             (gx#syntax-e _%e131035131042%_)))
                        (let ((_%hd131039131053%_ (##car _%e131038131050%_))
                              (_%tl131040131055%_ (##cdr _%e131038131050%_)))
                          (let ((_%body131058%_ _%tl131040131055%_))
                            (cons '%#export _%body131058%_))))
                      (_%E131037131046%_)))))
          (_%E131036131060%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx131004%_)
        (let* ((_%e131005131012%_ _%stx131004%_)
               (_%E131007131016%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e131005131012%_)))
               (_%E131006131030%_
                (lambda ()
                  (if (gx#stx-pair? _%e131005131012%_)
                      (let ((_%e131008131020%_
                             (gx#syntax-e _%e131005131012%_)))
                        (let ((_%hd131009131023%_ (##car _%e131008131020%_))
                              (_%tl131010131025%_ (##cdr _%e131008131020%_)))
                          (let ((_%body131028%_ _%tl131010131025%_))
                            (cons '%#provide _%body131028%_))))
                      (_%E131007131016%_)))))
          (_%E131006131030%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx130974%_)
        (let* ((_%e130975130982%_ _%stx130974%_)
               (_%E130977130986%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130975130982%_)))
               (_%E130976131000%_
                (lambda ()
                  (if (gx#stx-pair? _%e130975130982%_)
                      (let ((_%e130978130990%_
                             (gx#syntax-e _%e130975130982%_)))
                        (let ((_%hd130979130993%_ (##car _%e130978130990%_))
                              (_%tl130980130995%_ (##cdr _%e130978130990%_)))
                          (let ((_%body130998%_ _%tl130980130995%_))
                            (cons '%#extern _%body130998%_))))
                      (_%E130977130986%_)))))
          (_%E130976131000%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx130920%_)
        (let* ((_%e130921130934%_ _%stx130920%_)
               (_%E130923130938%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130921130934%_)))
               (_%E130922130970%_
                (lambda ()
                  (if (gx#stx-pair? _%e130921130934%_)
                      (let ((_%e130924130942%_
                             (gx#syntax-e _%e130921130934%_)))
                        (let ((_%hd130925130945%_ (##car _%e130924130942%_))
                              (_%tl130926130947%_ (##cdr _%e130924130942%_)))
                          (if (gx#stx-pair? _%tl130926130947%_)
                              (let ((_%e130927130950%_
                                     (gx#syntax-e _%tl130926130947%_)))
                                (let ((_%hd130928130953%_
                                       (##car _%e130927130950%_))
                                      (_%tl130929130955%_
                                       (##cdr _%e130927130950%_)))
                                  (let ((_%hd130958%_ _%hd130928130953%_))
                                    (if (gx#stx-pair? _%tl130929130955%_)
                                        (let ((_%e130930130960%_
                                               (gx#syntax-e
                                                _%tl130929130955%_)))
                                          (let ((_%hd130931130963%_
                                                 (##car _%e130930130960%_))
                                                (_%tl130932130965%_
                                                 (##cdr _%e130930130960%_)))
                                            (let ((_%expr130968%_
                                                   _%hd130931130963%_))
                                              (if (gx#stx-null?
                                                   _%tl130932130965%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd130958%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr130968%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130923130938%_)))))
                                        (_%E130923130938%_)))))
                              (_%E130923130938%_))))
                      (_%E130923130938%_)))))
          (_%E130922130970%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx130865%_)
        (let* ((_%e130866130879%_ _%stx130865%_)
               (_%E130868130883%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130866130879%_)))
               (_%E130867130916%_
                (lambda ()
                  (if (gx#stx-pair? _%e130866130879%_)
                      (let ((_%e130869130887%_
                             (gx#syntax-e _%e130866130879%_)))
                        (let ((_%hd130870130890%_ (##car _%e130869130887%_))
                              (_%tl130871130892%_ (##cdr _%e130869130887%_)))
                          (if (gx#stx-pair? _%tl130871130892%_)
                              (let ((_%e130872130895%_
                                     (gx#syntax-e _%tl130871130892%_)))
                                (let ((_%hd130873130898%_
                                       (##car _%e130872130895%_))
                                      (_%tl130874130900%_
                                       (##cdr _%e130872130895%_)))
                                  (let ((_%hd130903%_ _%hd130873130898%_))
                                    (if (gx#stx-pair? _%tl130874130900%_)
                                        (let ((_%e130875130905%_
                                               (gx#syntax-e
                                                _%tl130874130900%_)))
                                          (let ((_%hd130876130908%_
                                                 (##car _%e130875130905%_))
                                                (_%tl130877130910%_
                                                 (##cdr _%e130875130905%_)))
                                            (let ((_%expr130913%_
                                                   _%hd130876130908%_))
                                              (if (gx#stx-null?
                                                   _%tl130877130910%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd130903%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr130913%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130868130883%_)))))
                                        (_%E130868130883%_)))))
                              (_%E130868130883%_))))
                      (_%E130868130883%_)))))
          (_%E130867130916%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx130835%_)
        (let* ((_%e130836130843%_ _%stx130835%_)
               (_%E130838130847%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130836130843%_)))
               (_%E130837130861%_
                (lambda ()
                  (if (gx#stx-pair? _%e130836130843%_)
                      (let ((_%e130839130851%_
                             (gx#syntax-e _%e130836130843%_)))
                        (let ((_%hd130840130854%_ (##car _%e130839130851%_))
                              (_%tl130841130856%_ (##cdr _%e130839130851%_)))
                          (let ((_%body130859%_ _%tl130841130856%_))
                            (cons '%#define-alias _%body130859%_))))
                      (_%E130838130847%_)))))
          (_%E130837130861%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx130805%_)
        (let* ((_%e130806130813%_ _%stx130805%_)
               (_%E130808130817%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130806130813%_)))
               (_%E130807130831%_
                (lambda ()
                  (if (gx#stx-pair? _%e130806130813%_)
                      (let ((_%e130809130821%_
                             (gx#syntax-e _%e130806130813%_)))
                        (let ((_%hd130810130824%_ (##car _%e130809130821%_))
                              (_%tl130811130826%_ (##cdr _%e130809130821%_)))
                          (let ((_%body130829%_ _%tl130811130826%_))
                            (cons '%#define-runtime _%body130829%_))))
                      (_%E130808130817%_)))))
          (_%E130807130831%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx130775%_)
        (let* ((_%e130776130783%_ _%stx130775%_)
               (_%E130778130787%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130776130783%_)))
               (_%E130777130801%_
                (lambda ()
                  (if (gx#stx-pair? _%e130776130783%_)
                      (let ((_%e130779130791%_
                             (gx#syntax-e _%e130776130783%_)))
                        (let ((_%hd130780130794%_ (##car _%e130779130791%_))
                              (_%tl130781130796%_ (##cdr _%e130779130791%_)))
                          (let ((_%decls130799%_ _%tl130781130796%_))
                            (cons '%#declare _%decls130799%_))))
                      (_%E130778130787%_)))))
          (_%E130777130801%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx130745%_)
        (let* ((_%e130746130753%_ _%stx130745%_)
               (_%E130748130757%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130746130753%_)))
               (_%E130747130771%_
                (lambda ()
                  (if (gx#stx-pair? _%e130746130753%_)
                      (let ((_%e130749130761%_
                             (gx#syntax-e _%e130746130753%_)))
                        (let ((_%hd130750130764%_ (##car _%e130749130761%_))
                              (_%tl130751130766%_ (##cdr _%e130749130761%_)))
                          (let ((_%clause130769%_ _%tl130751130766%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause130769%_)))))
                      (_%E130748130757%_)))))
          (_%E130747130771%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx130702%_)
        (let* ((_%e130703130713%_ _%stx130702%_)
               (_%E130705130717%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130703130713%_)))
               (_%E130704130741%_
                (lambda ()
                  (if (gx#stx-pair? _%e130703130713%_)
                      (let ((_%e130706130721%_
                             (gx#syntax-e _%e130703130713%_)))
                        (let ((_%hd130707130724%_ (##car _%e130706130721%_))
                              (_%tl130708130726%_ (##cdr _%e130706130721%_)))
                          (let ((_%hd130729%_ _%hd130707130724%_))
                            (if (gx#stx-pair? _%tl130708130726%_)
                                (let ((_%e130709130731%_
                                       (gx#syntax-e _%tl130708130726%_)))
                                  (let ((_%hd130710130734%_
                                         (##car _%e130709130731%_))
                                        (_%tl130711130736%_
                                         (##cdr _%e130709130731%_)))
                                    (let ((_%body130739%_ _%hd130710130734%_))
                                      (if (gx#stx-null? _%tl130711130736%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd130729%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body130739%_)
                                                      '()))
                                          (_%E130705130717%_)))))
                                (_%E130705130717%_)))))
                      (_%E130705130717%_)))))
          (_%E130704130741%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx130672%_)
        (let* ((_%e130673130680%_ _%stx130672%_)
               (_%E130675130684%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130673130680%_)))
               (_%E130674130698%_
                (lambda ()
                  (if (gx#stx-pair? _%e130673130680%_)
                      (let ((_%e130676130688%_
                             (gx#syntax-e _%e130673130680%_)))
                        (let ((_%hd130677130691%_ (##car _%e130676130688%_))
                              (_%tl130678130693%_ (##cdr _%e130676130688%_)))
                          (let ((_%clauses130696%_ _%tl130678130693%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses130696%_)))))
                      (_%E130675130684%_)))))
          (_%E130674130698%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx130607%_ _%form130608%_)
        (let* ((_%e130609130622%_ _%stx130607%_)
               (_%E130611130626%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130609130622%_)))
               (_%E130610130658%_
                (lambda ()
                  (if (gx#stx-pair? _%e130609130622%_)
                      (let ((_%e130612130630%_
                             (gx#syntax-e _%e130609130622%_)))
                        (let ((_%hd130613130633%_ (##car _%e130612130630%_))
                              (_%tl130614130635%_ (##cdr _%e130612130630%_)))
                          (if (gx#stx-pair? _%tl130614130635%_)
                              (let ((_%e130615130638%_
                                     (gx#syntax-e _%tl130614130635%_)))
                                (let ((_%hd130616130641%_
                                       (##car _%e130615130638%_))
                                      (_%tl130617130643%_
                                       (##cdr _%e130615130638%_)))
                                  (let ((_%hd130646%_ _%hd130616130641%_))
                                    (if (gx#stx-pair? _%tl130617130643%_)
                                        (let ((_%e130618130648%_
                                               (gx#syntax-e
                                                _%tl130617130643%_)))
                                          (let ((_%hd130619130651%_
                                                 (##car _%e130618130648%_))
                                                (_%tl130620130653%_
                                                 (##cdr _%e130618130648%_)))
                                            (let ((_%body130656%_
                                                   _%hd130619130651%_))
                                              (if (gx#stx-null?
                                                   _%tl130620130653%_)
                                                  (cons _%form130608%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd130646%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body130656%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130611130626%_)))))
                                        (_%E130611130626%_)))))
                              (_%E130611130626%_))))
                      (_%E130611130626%_)))))
          (_%E130610130658%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx130665%_)
        (let ((_%form130667%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx130665%_ _%form130667%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g131494_
        (let ((_g131493_ (##length _g131494_)))
          (cond ((##fx= _g131493_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g131494_))
                ((##fx= _g131493_ 2)
                 (apply gx#core-compile-top-let-values%__% _g131494_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g131494_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx130604%_)
        (gx#core-compile-top-let-values%__% _%stx130604%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx130602%_)
        (gx#core-compile-top-let-values%__% _%stx130602%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx130561%_)
        (let* ((_%e130562130572%_ _%stx130561%_)
               (_%E130564130576%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130562130572%_)))
               (_%E130563130598%_
                (lambda ()
                  (if (gx#stx-pair? _%e130562130572%_)
                      (let ((_%e130565130580%_
                             (gx#syntax-e _%e130562130572%_)))
                        (let ((_%hd130566130583%_ (##car _%e130565130580%_))
                              (_%tl130567130585%_ (##cdr _%e130565130580%_)))
                          (if (gx#stx-pair? _%tl130567130585%_)
                              (let ((_%e130568130588%_
                                     (gx#syntax-e _%tl130567130585%_)))
                                (let ((_%hd130569130591%_
                                       (##car _%e130568130588%_))
                                      (_%tl130570130593%_
                                       (##cdr _%e130568130588%_)))
                                  (let ((_%e130596%_ _%hd130569130591%_))
                                    (if (gx#stx-null? _%tl130570130593%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e130596%_)
                                                    '()))
                                        (_%E130564130576%_)))))
                              (_%E130564130576%_))))
                      (_%E130564130576%_)))))
          (_%E130563130598%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx130520%_)
        (let* ((_%e130521130531%_ _%stx130520%_)
               (_%E130523130535%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130521130531%_)))
               (_%E130522130557%_
                (lambda ()
                  (if (gx#stx-pair? _%e130521130531%_)
                      (let ((_%e130524130539%_
                             (gx#syntax-e _%e130521130531%_)))
                        (let ((_%hd130525130542%_ (##car _%e130524130539%_))
                              (_%tl130526130544%_ (##cdr _%e130524130539%_)))
                          (if (gx#stx-pair? _%tl130526130544%_)
                              (let ((_%e130527130547%_
                                     (gx#syntax-e _%tl130526130544%_)))
                                (let ((_%hd130528130550%_
                                       (##car _%e130527130547%_))
                                      (_%tl130529130552%_
                                       (##cdr _%e130527130547%_)))
                                  (let ((_%e130555%_ _%hd130528130550%_))
                                    (if (gx#stx-null? _%tl130529130552%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e130555%_)
                                                    '()))
                                        (_%E130523130535%_)))))
                              (_%E130523130535%_))))
                      (_%E130523130535%_)))))
          (_%E130522130557%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx130477%_)
        (let* ((_%e130478130488%_ _%stx130477%_)
               (_%E130480130492%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130478130488%_)))
               (_%E130479130516%_
                (lambda ()
                  (if (gx#stx-pair? _%e130478130488%_)
                      (let ((_%e130481130496%_
                             (gx#syntax-e _%e130478130488%_)))
                        (let ((_%hd130482130499%_ (##car _%e130481130496%_))
                              (_%tl130483130501%_ (##cdr _%e130481130496%_)))
                          (if (gx#stx-pair? _%tl130483130501%_)
                              (let ((_%e130484130504%_
                                     (gx#syntax-e _%tl130483130501%_)))
                                (let ((_%hd130485130507%_
                                       (##car _%e130484130504%_))
                                      (_%tl130486130509%_
                                       (##cdr _%e130484130504%_)))
                                  (let* ((_%rator130512%_ _%hd130485130507%_)
                                         (_%args130514%_ _%tl130486130509%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator130512%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args130514%_))))))
                              (_%E130480130492%_))))
                      (_%E130480130492%_)))))
          (_%E130479130516%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx130410%_)
        (let* ((_%e130411130427%_ _%stx130410%_)
               (_%E130413130431%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130411130427%_)))
               (_%E130412130473%_
                (lambda ()
                  (if (gx#stx-pair? _%e130411130427%_)
                      (let ((_%e130414130435%_
                             (gx#syntax-e _%e130411130427%_)))
                        (let ((_%hd130415130438%_ (##car _%e130414130435%_))
                              (_%tl130416130440%_ (##cdr _%e130414130435%_)))
                          (if (gx#stx-pair? _%tl130416130440%_)
                              (let ((_%e130417130443%_
                                     (gx#syntax-e _%tl130416130440%_)))
                                (let ((_%hd130418130446%_
                                       (##car _%e130417130443%_))
                                      (_%tl130419130448%_
                                       (##cdr _%e130417130443%_)))
                                  (let ((_%test130451%_ _%hd130418130446%_))
                                    (if (gx#stx-pair? _%tl130419130448%_)
                                        (let ((_%e130420130453%_
                                               (gx#syntax-e
                                                _%tl130419130448%_)))
                                          (let ((_%hd130421130456%_
                                                 (##car _%e130420130453%_))
                                                (_%tl130422130458%_
                                                 (##cdr _%e130420130453%_)))
                                            (let ((_%K130461%_
                                                   _%hd130421130456%_))
                                              (if (gx#stx-pair?
                                                   _%tl130422130458%_)
                                                  (let ((_%e130423130463%_
                                                         (gx#syntax-e
                                                          _%tl130422130458%_)))
                                                    (let ((_%hd130424130466%_
                                                           (##car _%e130423130463%_))
                                                          (_%tl130425130468%_
                                                           (##cdr _%e130423130463%_)))
                                                      (let ((_%E130471%_
                                                             _%hd130424130466%_))
                                                        (if (gx#stx-null?
                                                             _%tl130425130468%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test130451%_)
                                (cons (gx#core-compile-top-syntax _%K130461%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E130471%_)
                                            '()))))
                    (_%E130413130431%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130413130431%_)))))
                                        (_%E130413130431%_)))))
                              (_%E130413130431%_))))
                      (_%E130413130431%_)))))
          (_%E130412130473%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx130369%_)
        (let* ((_%e130370130380%_ _%stx130369%_)
               (_%E130372130384%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130370130380%_)))
               (_%E130371130406%_
                (lambda ()
                  (if (gx#stx-pair? _%e130370130380%_)
                      (let ((_%e130373130388%_
                             (gx#syntax-e _%e130370130380%_)))
                        (let ((_%hd130374130391%_ (##car _%e130373130388%_))
                              (_%tl130375130393%_ (##cdr _%e130373130388%_)))
                          (if (gx#stx-pair? _%tl130375130393%_)
                              (let ((_%e130376130396%_
                                     (gx#syntax-e _%tl130375130393%_)))
                                (let ((_%hd130377130399%_
                                       (##car _%e130376130396%_))
                                      (_%tl130378130401%_
                                       (##cdr _%e130376130396%_)))
                                  (let ((_%id130404%_ _%hd130377130399%_))
                                    (if (gx#stx-null? _%tl130378130401%_)
                                        (if (gx#identifier? _%id130404%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id130404%_)
                                                        '()))
                                            (_%E130372130384%_))
                                        (_%E130372130384%_)))))
                              (_%E130372130384%_))))
                      (_%E130372130384%_)))))
          (_%E130371130406%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx130315%_)
        (let* ((_%e130316130329%_ _%stx130315%_)
               (_%E130318130333%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130316130329%_)))
               (_%E130317130365%_
                (lambda ()
                  (if (gx#stx-pair? _%e130316130329%_)
                      (let ((_%e130319130337%_
                             (gx#syntax-e _%e130316130329%_)))
                        (let ((_%hd130320130340%_ (##car _%e130319130337%_))
                              (_%tl130321130342%_ (##cdr _%e130319130337%_)))
                          (if (gx#stx-pair? _%tl130321130342%_)
                              (let ((_%e130322130345%_
                                     (gx#syntax-e _%tl130321130342%_)))
                                (let ((_%hd130323130348%_
                                       (##car _%e130322130345%_))
                                      (_%tl130324130350%_
                                       (##cdr _%e130322130345%_)))
                                  (let ((_%id130353%_ _%hd130323130348%_))
                                    (if (gx#stx-pair? _%tl130324130350%_)
                                        (let ((_%e130325130355%_
                                               (gx#syntax-e
                                                _%tl130324130350%_)))
                                          (let ((_%hd130326130358%_
                                                 (##car _%e130325130355%_))
                                                (_%tl130327130360%_
                                                 (##cdr _%e130325130355%_)))
                                            (let ((_%expr130363%_
                                                   _%hd130326130358%_))
                                              (if (gx#stx-null?
                                                   _%tl130327130360%_)
                                                  (if (gx#identifier?
                                                       _%id130353%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id130353%_)
                          (cons (gx#core-compile-top-syntax _%expr130363%_)
                                '())))
              (_%E130318130333%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E130318130333%_)))))
                                        (_%E130318130333%_)))))
                              (_%E130318130333%_))))
                      (_%E130318130333%_)))))
          (_%E130317130365%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id130309%_)
        (let ((_%$e130311%_ (gx#resolve-identifier__0 _%id130309%_)))
          (if _%$e130311%_
              (##unchecked-structure-ref _%$e130311%_ '1 '#f '#f)
              _%id130309%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd130307%_)
        (if (gx#identifier? _%hd130307%_)
            (gx#core-compile-top-runtime-ref _%hd130307%_)
            '#f)))))
