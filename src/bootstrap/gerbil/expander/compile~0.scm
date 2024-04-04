(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712251112)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx127128%_)
        (let* ((_%e127129127136%_ _%stx127128%_)
               (_%E127131127140%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127129127136%_)))
               (_%E127130127154%_
                (lambda ()
                  (if (gx#stx-pair? _%e127129127136%_)
                      (let ((_%e127132127144%_
                             (gx#syntax-e _%e127129127136%_)))
                        (let ((_%hd127133127147%_ (##car _%e127132127144%_))
                              (_%tl127134127149%_ (##cdr _%e127132127144%_)))
                          (let ((_%form127152%_ _%hd127133127147%_))
                            (if '#t
                                (let* ((__self127157
                                        (gx#syntax-local-e__0 _%form127152%_))
                                       (__method127158
                                        (__method-ref
                                         __self127157
                                         'compile-top-syntax)))
                                  (if __method127158
                                      (__method127158
                                       __self127157
                                       _%stx127128%_)
                                      (error '"Missing method"
                                             __self127157
                                             'compile-top-syntax)))
                                (_%E127131127140%_)))))
                      (_%E127131127140%_)))))
          (_%E127130127154%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127076%_ _%stx127077%_)
        (let ((_%self127080%_ _%self127076%_))
          (let* ((_%self127089127097%_ _%self127080%_)
                 (_%E127091127101%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self127089127097%_
                           '((core-expander _ _ K)))
                    '#!void))
                 (_%K127092127114%_
                  (lambda (_%K127104%_)
                    (let ((_%$e127106%_ (gx#stx-source _%stx127077%_)))
                      (if _%$e127106%_
                          ((lambda (_%g127108127110%_)
                             (gx#stx-wrap-source
                              (_%K127104%_ _%stx127077%_)
                              _%g127108127110%_))
                           _%$e127106%_)
                          (let () (_%K127104%_ _%stx127077%_)))))))
            (if '#t
                (let* ((_%e127093127117%_
                        (##unchecked-structure-ref
                         _%self127089127097%_
                         '1
                         '#f
                         '#f))
                       (_%e127094127120%_
                        (##unchecked-structure-ref
                         _%self127089127097%_
                         '2
                         '#f
                         '#f))
                       (_%e127095127123%_
                        (##unchecked-structure-ref
                         _%self127089127097%_
                         '3
                         '#f
                         '#f))
                       (_%K127126%_ _%e127095127123%_))
                  (_%K127092127114%_ _%K127126%_))
                (_%E127091127101%_))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126950%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126950%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126920%_)
        (let* ((_%e126921126928%_ _%stx126920%_)
               (_%E126923126932%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126921126928%_)))
               (_%E126922126946%_
                (lambda ()
                  (if (gx#stx-pair? _%e126921126928%_)
                      (let ((_%e126924126936%_
                             (gx#syntax-e _%e126921126928%_)))
                        (let ((_%hd126925126939%_ (##car _%e126924126936%_))
                              (_%tl126926126941%_ (##cdr _%e126924126936%_)))
                          (let ((_%body126944%_ _%tl126926126941%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126944%_))
                                (_%E126923126932%_)))))
                      (_%E126923126932%_)))))
          (_%E126922126946%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126889%_)
        (let* ((_%e126890126897%_ _%stx126889%_)
               (_%E126892126901%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126890126897%_)))
               (_%E126891126916%_
                (lambda ()
                  (if (gx#stx-pair? _%e126890126897%_)
                      (let ((_%e126893126905%_
                             (gx#syntax-e _%e126890126897%_)))
                        (let ((_%hd126894126908%_ (##car _%e126893126905%_))
                              (_%tl126895126910%_ (##cdr _%e126893126905%_)))
                          (let ((_%body126913%_ _%tl126895126910%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126913%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126892126901%_)))))
                      (_%E126892126901%_)))))
          (_%E126891126916%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126859%_)
        (let* ((_%e126860126867%_ _%stx126859%_)
               (_%E126862126871%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126860126867%_)))
               (_%E126861126885%_
                (lambda ()
                  (if (gx#stx-pair? _%e126860126867%_)
                      (let ((_%e126863126875%_
                             (gx#syntax-e _%e126860126867%_)))
                        (let ((_%hd126864126878%_ (##car _%e126863126875%_))
                              (_%tl126865126880%_ (##cdr _%e126863126875%_)))
                          (let ((_%body126883%_ _%tl126865126880%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126883%_)
                                (_%E126862126871%_)))))
                      (_%E126862126871%_)))))
          (_%E126861126885%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126805%_)
        (let* ((_%e126806126819%_ _%stx126805%_)
               (_%E126808126823%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126806126819%_)))
               (_%E126807126855%_
                (lambda ()
                  (if (gx#stx-pair? _%e126806126819%_)
                      (let ((_%e126809126827%_
                             (gx#syntax-e _%e126806126819%_)))
                        (let ((_%hd126810126830%_ (##car _%e126809126827%_))
                              (_%tl126811126832%_ (##cdr _%e126809126827%_)))
                          (if (gx#stx-pair? _%tl126811126832%_)
                              (let ((_%e126812126835%_
                                     (gx#syntax-e _%tl126811126832%_)))
                                (let ((_%hd126813126838%_
                                       (##car _%e126812126835%_))
                                      (_%tl126814126840%_
                                       (##cdr _%e126812126835%_)))
                                  (let ((_%ann126843%_ _%hd126813126838%_))
                                    (if (gx#stx-pair? _%tl126814126840%_)
                                        (let ((_%e126815126845%_
                                               (gx#syntax-e
                                                _%tl126814126840%_)))
                                          (let ((_%hd126816126848%_
                                                 (##car _%e126815126845%_))
                                                (_%tl126817126850%_
                                                 (##cdr _%e126815126845%_)))
                                            (let ((_%expr126853%_
                                                   _%hd126816126848%_))
                                              (if (gx#stx-null?
                                                   _%tl126817126850%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126853%_)
                                                      (_%E126808126823%_))
                                                  (_%E126808126823%_)))))
                                        (_%E126808126823%_)))))
                              (_%E126808126823%_))))
                      (_%E126808126823%_)))))
          (_%E126807126855%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126775%_)
        (let* ((_%e126776126783%_ _%stx126775%_)
               (_%E126778126787%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126776126783%_)))
               (_%E126777126801%_
                (lambda ()
                  (if (gx#stx-pair? _%e126776126783%_)
                      (let ((_%e126779126791%_
                             (gx#syntax-e _%e126776126783%_)))
                        (let ((_%hd126780126794%_ (##car _%e126779126791%_))
                              (_%tl126781126796%_ (##cdr _%e126779126791%_)))
                          (let ((_%body126799%_ _%tl126781126796%_))
                            (if '#t
                                (cons '%#import _%body126799%_)
                                (_%E126778126787%_)))))
                      (_%E126778126787%_)))))
          (_%E126777126801%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126732%_)
        (let* ((_%e126733126743%_ _%stx126732%_)
               (_%E126735126747%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126733126743%_)))
               (_%E126734126771%_
                (lambda ()
                  (if (gx#stx-pair? _%e126733126743%_)
                      (let ((_%e126736126751%_
                             (gx#syntax-e _%e126733126743%_)))
                        (let ((_%hd126737126754%_ (##car _%e126736126751%_))
                              (_%tl126738126756%_ (##cdr _%e126736126751%_)))
                          (if (gx#stx-pair? _%tl126738126756%_)
                              (let ((_%e126739126759%_
                                     (gx#syntax-e _%tl126738126756%_)))
                                (let ((_%hd126740126762%_
                                       (##car _%e126739126759%_))
                                      (_%tl126741126764%_
                                       (##cdr _%e126739126759%_)))
                                  (let* ((_%hd126767%_ _%hd126740126762%_)
                                         (_%body126769%_ _%tl126741126764%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126767%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126769%_)))
                                        (_%E126735126747%_)))))
                              (_%E126735126747%_))))
                      (_%E126735126747%_)))))
          (_%E126734126771%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126702%_)
        (let* ((_%e126703126710%_ _%stx126702%_)
               (_%E126705126714%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126703126710%_)))
               (_%E126704126728%_
                (lambda ()
                  (if (gx#stx-pair? _%e126703126710%_)
                      (let ((_%e126706126718%_
                             (gx#syntax-e _%e126703126710%_)))
                        (let ((_%hd126707126721%_ (##car _%e126706126718%_))
                              (_%tl126708126723%_ (##cdr _%e126706126718%_)))
                          (let ((_%body126726%_ _%tl126708126723%_))
                            (if '#t
                                (cons '%#export _%body126726%_)
                                (_%E126705126714%_)))))
                      (_%E126705126714%_)))))
          (_%E126704126728%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126672%_)
        (let* ((_%e126673126680%_ _%stx126672%_)
               (_%E126675126684%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126673126680%_)))
               (_%E126674126698%_
                (lambda ()
                  (if (gx#stx-pair? _%e126673126680%_)
                      (let ((_%e126676126688%_
                             (gx#syntax-e _%e126673126680%_)))
                        (let ((_%hd126677126691%_ (##car _%e126676126688%_))
                              (_%tl126678126693%_ (##cdr _%e126676126688%_)))
                          (let ((_%body126696%_ _%tl126678126693%_))
                            (if '#t
                                (cons '%#provide _%body126696%_)
                                (_%E126675126684%_)))))
                      (_%E126675126684%_)))))
          (_%E126674126698%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126642%_)
        (let* ((_%e126643126650%_ _%stx126642%_)
               (_%E126645126654%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126643126650%_)))
               (_%E126644126668%_
                (lambda ()
                  (if (gx#stx-pair? _%e126643126650%_)
                      (let ((_%e126646126658%_
                             (gx#syntax-e _%e126643126650%_)))
                        (let ((_%hd126647126661%_ (##car _%e126646126658%_))
                              (_%tl126648126663%_ (##cdr _%e126646126658%_)))
                          (let ((_%body126666%_ _%tl126648126663%_))
                            (if '#t
                                (cons '%#extern _%body126666%_)
                                (_%E126645126654%_)))))
                      (_%E126645126654%_)))))
          (_%E126644126668%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126588%_)
        (let* ((_%e126589126602%_ _%stx126588%_)
               (_%E126591126606%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126589126602%_)))
               (_%E126590126638%_
                (lambda ()
                  (if (gx#stx-pair? _%e126589126602%_)
                      (let ((_%e126592126610%_
                             (gx#syntax-e _%e126589126602%_)))
                        (let ((_%hd126593126613%_ (##car _%e126592126610%_))
                              (_%tl126594126615%_ (##cdr _%e126592126610%_)))
                          (if (gx#stx-pair? _%tl126594126615%_)
                              (let ((_%e126595126618%_
                                     (gx#syntax-e _%tl126594126615%_)))
                                (let ((_%hd126596126621%_
                                       (##car _%e126595126618%_))
                                      (_%tl126597126623%_
                                       (##cdr _%e126595126618%_)))
                                  (let ((_%hd126626%_ _%hd126596126621%_))
                                    (if (gx#stx-pair? _%tl126597126623%_)
                                        (let ((_%e126598126628%_
                                               (gx#syntax-e
                                                _%tl126597126623%_)))
                                          (let ((_%hd126599126631%_
                                                 (##car _%e126598126628%_))
                                                (_%tl126600126633%_
                                                 (##cdr _%e126598126628%_)))
                                            (let ((_%expr126636%_
                                                   _%hd126599126631%_))
                                              (if (gx#stx-null?
                                                   _%tl126600126633%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126626%_)
                          (cons (gx#core-compile-top-syntax _%expr126636%_)
                                '())))
              (_%E126591126606%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126591126606%_)))))
                                        (_%E126591126606%_)))))
                              (_%E126591126606%_))))
                      (_%E126591126606%_)))))
          (_%E126590126638%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126533%_)
        (let* ((_%e126534126547%_ _%stx126533%_)
               (_%E126536126551%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126534126547%_)))
               (_%E126535126584%_
                (lambda ()
                  (if (gx#stx-pair? _%e126534126547%_)
                      (let ((_%e126537126555%_
                             (gx#syntax-e _%e126534126547%_)))
                        (let ((_%hd126538126558%_ (##car _%e126537126555%_))
                              (_%tl126539126560%_ (##cdr _%e126537126555%_)))
                          (if (gx#stx-pair? _%tl126539126560%_)
                              (let ((_%e126540126563%_
                                     (gx#syntax-e _%tl126539126560%_)))
                                (let ((_%hd126541126566%_
                                       (##car _%e126540126563%_))
                                      (_%tl126542126568%_
                                       (##cdr _%e126540126563%_)))
                                  (let ((_%hd126571%_ _%hd126541126566%_))
                                    (if (gx#stx-pair? _%tl126542126568%_)
                                        (let ((_%e126543126573%_
                                               (gx#syntax-e
                                                _%tl126542126568%_)))
                                          (let ((_%hd126544126576%_
                                                 (##car _%e126543126573%_))
                                                (_%tl126545126578%_
                                                 (##cdr _%e126543126573%_)))
                                            (let ((_%expr126581%_
                                                   _%hd126544126576%_))
                                              (if (gx#stx-null?
                                                   _%tl126545126578%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126581%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126536126551%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126536126551%_)))))
                                        (_%E126536126551%_)))))
                              (_%E126536126551%_))))
                      (_%E126536126551%_)))))
          (_%E126535126584%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx126503%_)
        (let* ((_%e126504126511%_ _%stx126503%_)
               (_%E126506126515%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126504126511%_)))
               (_%E126505126529%_
                (lambda ()
                  (if (gx#stx-pair? _%e126504126511%_)
                      (let ((_%e126507126519%_
                             (gx#syntax-e _%e126504126511%_)))
                        (let ((_%hd126508126522%_ (##car _%e126507126519%_))
                              (_%tl126509126524%_ (##cdr _%e126507126519%_)))
                          (let ((_%body126527%_ _%tl126509126524%_))
                            (if '#t
                                (cons '%#define-alias _%body126527%_)
                                (_%E126506126515%_)))))
                      (_%E126506126515%_)))))
          (_%E126505126529%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126473%_)
        (let* ((_%e126474126481%_ _%stx126473%_)
               (_%E126476126485%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126474126481%_)))
               (_%E126475126499%_
                (lambda ()
                  (if (gx#stx-pair? _%e126474126481%_)
                      (let ((_%e126477126489%_
                             (gx#syntax-e _%e126474126481%_)))
                        (let ((_%hd126478126492%_ (##car _%e126477126489%_))
                              (_%tl126479126494%_ (##cdr _%e126477126489%_)))
                          (let ((_%body126497%_ _%tl126479126494%_))
                            (if '#t
                                (cons '%#define-runtime _%body126497%_)
                                (_%E126476126485%_)))))
                      (_%E126476126485%_)))))
          (_%E126475126499%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126443%_)
        (let* ((_%e126444126451%_ _%stx126443%_)
               (_%E126446126455%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126444126451%_)))
               (_%E126445126469%_
                (lambda ()
                  (if (gx#stx-pair? _%e126444126451%_)
                      (let ((_%e126447126459%_
                             (gx#syntax-e _%e126444126451%_)))
                        (let ((_%hd126448126462%_ (##car _%e126447126459%_))
                              (_%tl126449126464%_ (##cdr _%e126447126459%_)))
                          (let ((_%decls126467%_ _%tl126449126464%_))
                            (if '#t
                                (cons '%#declare _%decls126467%_)
                                (_%E126446126455%_)))))
                      (_%E126446126455%_)))))
          (_%E126445126469%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126413%_)
        (let* ((_%e126414126421%_ _%stx126413%_)
               (_%E126416126425%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126414126421%_)))
               (_%E126415126439%_
                (lambda ()
                  (if (gx#stx-pair? _%e126414126421%_)
                      (let ((_%e126417126429%_
                             (gx#syntax-e _%e126414126421%_)))
                        (let ((_%hd126418126432%_ (##car _%e126417126429%_))
                              (_%tl126419126434%_ (##cdr _%e126417126429%_)))
                          (let ((_%clause126437%_ _%tl126419126434%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126437%_))
                                (_%E126416126425%_)))))
                      (_%E126416126425%_)))))
          (_%E126415126439%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126370%_)
        (let* ((_%e126371126381%_ _%stx126370%_)
               (_%E126373126385%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126371126381%_)))
               (_%E126372126409%_
                (lambda ()
                  (if (gx#stx-pair? _%e126371126381%_)
                      (let ((_%e126374126389%_
                             (gx#syntax-e _%e126371126381%_)))
                        (let ((_%hd126375126392%_ (##car _%e126374126389%_))
                              (_%tl126376126394%_ (##cdr _%e126374126389%_)))
                          (let ((_%hd126397%_ _%hd126375126392%_))
                            (if (gx#stx-pair? _%tl126376126394%_)
                                (let ((_%e126377126399%_
                                       (gx#syntax-e _%tl126376126394%_)))
                                  (let ((_%hd126378126402%_
                                         (##car _%e126377126399%_))
                                        (_%tl126379126404%_
                                         (##cdr _%e126377126399%_)))
                                    (let ((_%body126407%_ _%hd126378126402%_))
                                      (if (gx#stx-null? _%tl126379126404%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126397%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126407%_)
                                                          '()))
                                              (_%E126373126385%_))
                                          (_%E126373126385%_)))))
                                (_%E126373126385%_)))))
                      (_%E126373126385%_)))))
          (_%E126372126409%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126340%_)
        (let* ((_%e126341126348%_ _%stx126340%_)
               (_%E126343126352%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126341126348%_)))
               (_%E126342126366%_
                (lambda ()
                  (if (gx#stx-pair? _%e126341126348%_)
                      (let ((_%e126344126356%_
                             (gx#syntax-e _%e126341126348%_)))
                        (let ((_%hd126345126359%_ (##car _%e126344126356%_))
                              (_%tl126346126361%_ (##cdr _%e126344126356%_)))
                          (let ((_%clauses126364%_ _%tl126346126361%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126364%_))
                                (_%E126343126352%_)))))
                      (_%E126343126352%_)))))
          (_%E126342126366%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx126275%_ _%form126276%_)
        (let* ((_%e126277126290%_ _%stx126275%_)
               (_%E126279126294%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126277126290%_)))
               (_%E126278126326%_
                (lambda ()
                  (if (gx#stx-pair? _%e126277126290%_)
                      (let ((_%e126280126298%_
                             (gx#syntax-e _%e126277126290%_)))
                        (let ((_%hd126281126301%_ (##car _%e126280126298%_))
                              (_%tl126282126303%_ (##cdr _%e126280126298%_)))
                          (if (gx#stx-pair? _%tl126282126303%_)
                              (let ((_%e126283126306%_
                                     (gx#syntax-e _%tl126282126303%_)))
                                (let ((_%hd126284126309%_
                                       (##car _%e126283126306%_))
                                      (_%tl126285126311%_
                                       (##cdr _%e126283126306%_)))
                                  (let ((_%hd126314%_ _%hd126284126309%_))
                                    (if (gx#stx-pair? _%tl126285126311%_)
                                        (let ((_%e126286126316%_
                                               (gx#syntax-e
                                                _%tl126285126311%_)))
                                          (let ((_%hd126287126319%_
                                                 (##car _%e126286126316%_))
                                                (_%tl126288126321%_
                                                 (##cdr _%e126286126316%_)))
                                            (let ((_%body126324%_
                                                   _%hd126287126319%_))
                                              (if (gx#stx-null?
                                                   _%tl126288126321%_)
                                                  (if '#t
                                                      (cons _%form126276%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126314%_)
                          (cons (gx#core-compile-top-syntax _%body126324%_)
                                '())))
              (_%E126279126294%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126279126294%_)))))
                                        (_%E126279126294%_)))))
                              (_%E126279126294%_))))
                      (_%E126279126294%_)))))
          (_%E126278126326%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126333%_)
        (let ((_%form126335%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126333%_ _%form126335%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g127160_
        (let ((_g127159_ (##length _g127160_)))
          (cond ((##fx= _g127159_ 1)
                 (apply (lambda (_%stx126333%_)
                          (gx#core-compile-top-let-values%__0 _%stx126333%_))
                        _g127160_))
                ((##fx= _g127159_ 2)
                 (apply (lambda (_%stx126337%_ _%form126338%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx126337%_
                           _%form126338%_))
                        _g127160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g127160_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx126272%_)
        (gx#core-compile-top-let-values%__% _%stx126272%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx126270%_)
        (gx#core-compile-top-let-values%__% _%stx126270%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx126229%_)
        (let* ((_%e126230126240%_ _%stx126229%_)
               (_%E126232126244%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126230126240%_)))
               (_%E126231126266%_
                (lambda ()
                  (if (gx#stx-pair? _%e126230126240%_)
                      (let ((_%e126233126248%_
                             (gx#syntax-e _%e126230126240%_)))
                        (let ((_%hd126234126251%_ (##car _%e126233126248%_))
                              (_%tl126235126253%_ (##cdr _%e126233126248%_)))
                          (if (gx#stx-pair? _%tl126235126253%_)
                              (let ((_%e126236126256%_
                                     (gx#syntax-e _%tl126235126253%_)))
                                (let ((_%hd126237126259%_
                                       (##car _%e126236126256%_))
                                      (_%tl126238126261%_
                                       (##cdr _%e126236126256%_)))
                                  (let ((_%e126264%_ _%hd126237126259%_))
                                    (if (gx#stx-null? _%tl126238126261%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e126264%_)
                                                        '()))
                                            (_%E126232126244%_))
                                        (_%E126232126244%_)))))
                              (_%E126232126244%_))))
                      (_%E126232126244%_)))))
          (_%E126231126266%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx126188%_)
        (let* ((_%e126189126199%_ _%stx126188%_)
               (_%E126191126203%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126189126199%_)))
               (_%E126190126225%_
                (lambda ()
                  (if (gx#stx-pair? _%e126189126199%_)
                      (let ((_%e126192126207%_
                             (gx#syntax-e _%e126189126199%_)))
                        (let ((_%hd126193126210%_ (##car _%e126192126207%_))
                              (_%tl126194126212%_ (##cdr _%e126192126207%_)))
                          (if (gx#stx-pair? _%tl126194126212%_)
                              (let ((_%e126195126215%_
                                     (gx#syntax-e _%tl126194126212%_)))
                                (let ((_%hd126196126218%_
                                       (##car _%e126195126215%_))
                                      (_%tl126197126220%_
                                       (##cdr _%e126195126215%_)))
                                  (let ((_%e126223%_ _%hd126196126218%_))
                                    (if (gx#stx-null? _%tl126197126220%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e126223%_)
                                                        '()))
                                            (_%E126191126203%_))
                                        (_%E126191126203%_)))))
                              (_%E126191126203%_))))
                      (_%E126191126203%_)))))
          (_%E126190126225%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx126145%_)
        (let* ((_%e126146126156%_ _%stx126145%_)
               (_%E126148126160%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126146126156%_)))
               (_%E126147126184%_
                (lambda ()
                  (if (gx#stx-pair? _%e126146126156%_)
                      (let ((_%e126149126164%_
                             (gx#syntax-e _%e126146126156%_)))
                        (let ((_%hd126150126167%_ (##car _%e126149126164%_))
                              (_%tl126151126169%_ (##cdr _%e126149126164%_)))
                          (if (gx#stx-pair? _%tl126151126169%_)
                              (let ((_%e126152126172%_
                                     (gx#syntax-e _%tl126151126169%_)))
                                (let ((_%hd126153126175%_
                                       (##car _%e126152126172%_))
                                      (_%tl126154126177%_
                                       (##cdr _%e126152126172%_)))
                                  (let* ((_%rator126180%_ _%hd126153126175%_)
                                         (_%args126182%_ _%tl126154126177%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator126180%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args126182%_)))
                                        (_%E126148126160%_)))))
                              (_%E126148126160%_))))
                      (_%E126148126160%_)))))
          (_%E126147126184%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx126078%_)
        (let* ((_%e126079126095%_ _%stx126078%_)
               (_%E126081126099%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126079126095%_)))
               (_%E126080126141%_
                (lambda ()
                  (if (gx#stx-pair? _%e126079126095%_)
                      (let ((_%e126082126103%_
                             (gx#syntax-e _%e126079126095%_)))
                        (let ((_%hd126083126106%_ (##car _%e126082126103%_))
                              (_%tl126084126108%_ (##cdr _%e126082126103%_)))
                          (if (gx#stx-pair? _%tl126084126108%_)
                              (let ((_%e126085126111%_
                                     (gx#syntax-e _%tl126084126108%_)))
                                (let ((_%hd126086126114%_
                                       (##car _%e126085126111%_))
                                      (_%tl126087126116%_
                                       (##cdr _%e126085126111%_)))
                                  (let ((_%test126119%_ _%hd126086126114%_))
                                    (if (gx#stx-pair? _%tl126087126116%_)
                                        (let ((_%e126088126121%_
                                               (gx#syntax-e
                                                _%tl126087126116%_)))
                                          (let ((_%hd126089126124%_
                                                 (##car _%e126088126121%_))
                                                (_%tl126090126126%_
                                                 (##cdr _%e126088126121%_)))
                                            (let ((_%K126129%_
                                                   _%hd126089126124%_))
                                              (if (gx#stx-pair?
                                                   _%tl126090126126%_)
                                                  (let ((_%e126091126131%_
                                                         (gx#syntax-e
                                                          _%tl126090126126%_)))
                                                    (let ((_%hd126092126134%_
                                                           (##car _%e126091126131%_))
                                                          (_%tl126093126136%_
                                                           (##cdr _%e126091126131%_)))
                                                      (let ((_%E126139%_
                                                             _%hd126092126134%_))
                                                        (if (gx#stx-null?
                                                             _%tl126093126136%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test126119%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K126129%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E126139%_)
                                                '()))))
                        (_%E126081126099%_))
                    (_%E126081126099%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126081126099%_)))))
                                        (_%E126081126099%_)))))
                              (_%E126081126099%_))))
                      (_%E126081126099%_)))))
          (_%E126080126141%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx126037%_)
        (let* ((_%e126038126048%_ _%stx126037%_)
               (_%E126040126052%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126038126048%_)))
               (_%E126039126074%_
                (lambda ()
                  (if (gx#stx-pair? _%e126038126048%_)
                      (let ((_%e126041126056%_
                             (gx#syntax-e _%e126038126048%_)))
                        (let ((_%hd126042126059%_ (##car _%e126041126056%_))
                              (_%tl126043126061%_ (##cdr _%e126041126056%_)))
                          (if (gx#stx-pair? _%tl126043126061%_)
                              (let ((_%e126044126064%_
                                     (gx#syntax-e _%tl126043126061%_)))
                                (let ((_%hd126045126067%_
                                       (##car _%e126044126064%_))
                                      (_%tl126046126069%_
                                       (##cdr _%e126044126064%_)))
                                  (let ((_%id126072%_ _%hd126045126067%_))
                                    (if (gx#stx-null? _%tl126046126069%_)
                                        (if (gx#identifier? _%id126072%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id126072%_)
                                                        '()))
                                            (_%E126040126052%_))
                                        (_%E126040126052%_)))))
                              (_%E126040126052%_))))
                      (_%E126040126052%_)))))
          (_%E126039126074%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125983%_)
        (let* ((_%e125984125997%_ _%stx125983%_)
               (_%E125986126001%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125984125997%_)))
               (_%E125985126033%_
                (lambda ()
                  (if (gx#stx-pair? _%e125984125997%_)
                      (let ((_%e125987126005%_
                             (gx#syntax-e _%e125984125997%_)))
                        (let ((_%hd125988126008%_ (##car _%e125987126005%_))
                              (_%tl125989126010%_ (##cdr _%e125987126005%_)))
                          (if (gx#stx-pair? _%tl125989126010%_)
                              (let ((_%e125990126013%_
                                     (gx#syntax-e _%tl125989126010%_)))
                                (let ((_%hd125991126016%_
                                       (##car _%e125990126013%_))
                                      (_%tl125992126018%_
                                       (##cdr _%e125990126013%_)))
                                  (let ((_%id126021%_ _%hd125991126016%_))
                                    (if (gx#stx-pair? _%tl125992126018%_)
                                        (let ((_%e125993126023%_
                                               (gx#syntax-e
                                                _%tl125992126018%_)))
                                          (let ((_%hd125994126026%_
                                                 (##car _%e125993126023%_))
                                                (_%tl125995126028%_
                                                 (##cdr _%e125993126023%_)))
                                            (let ((_%expr126031%_
                                                   _%hd125994126026%_))
                                              (if (gx#stx-null?
                                                   _%tl125995126028%_)
                                                  (if (gx#identifier?
                                                       _%id126021%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id126021%_)
                          (cons (gx#core-compile-top-syntax _%expr126031%_)
                                '())))
              (_%E125986126001%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125986126001%_)))))
                                        (_%E125986126001%_)))))
                              (_%E125986126001%_))))
                      (_%E125986126001%_)))))
          (_%E125985126033%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125977%_)
        (let ((_%$e125979%_ (gx#resolve-identifier__0 _%id125977%_)))
          (if _%$e125979%_
              (##unchecked-structure-ref _%$e125979%_ '1 '#f '#f)
              (let () _%id125977%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125975%_)
        (if (gx#identifier? _%hd125975%_)
            (gx#core-compile-top-runtime-ref _%hd125975%_)
            '#f)))))
