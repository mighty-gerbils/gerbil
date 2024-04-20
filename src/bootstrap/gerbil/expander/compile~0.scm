(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1713454411)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx129043%_)
        (let* ((_%e129044129051%_ _%stx129043%_)
               (_%E129046129055%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129044129051%_)))
               (_%E129045129069%_
                (lambda ()
                  (if (gx#stx-pair? _%e129044129051%_)
                      (let ((_%e129047129059%_
                             (gx#syntax-e _%e129044129051%_)))
                        (let ((_%hd129048129062%_ (##car _%e129047129059%_))
                              (_%tl129049129064%_ (##cdr _%e129047129059%_)))
                          (let* ((_%form129067%_ _%hd129048129062%_)
                                 (__self129072
                                  (gx#syntax-local-e__0 _%form129067%_))
                                 (__method129073
                                  (__method-ref
                                   __self129072
                                   'compile-top-syntax)))
                            (if __method129073
                                (__method129073 __self129072 _%stx129043%_)
                                (begin
                                  (error '"Missing method"
                                         __self129072
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E129046129055%_)))))
          (_%E129045129069%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127886128989%_ _%stx128991%_)
        (let* ((_%self128993%_ _%self127886128989%_)
               (_%self128995%_ _%self128993%_)
               (_%self129004129012%_ _%self128995%_)
               (_%E129006129016%_
                (lambda ()
                  (error '"No clause matching"
                         _%self129004129012%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K129007129029%_
                (lambda (_%K129019%_)
                  (let ((_%$e129021%_ (gx#stx-source _%stx128991%_)))
                    (if _%$e129021%_
                        ((lambda (_%g129023129025%_)
                           (gx#stx-wrap-source
                            (_%K129019%_ _%stx128991%_)
                            _%g129023129025%_))
                         _%$e129021%_)
                        (_%K129019%_ _%stx128991%_)))))
               (_%e129008129032%_
                (##unchecked-structure-ref _%self129004129012%_ '1 '#f '#f))
               (_%e129009129035%_
                (##unchecked-structure-ref _%self129004129012%_ '2 '#f '#f))
               (_%e129010129038%_
                (##unchecked-structure-ref _%self129004129012%_ '3 '#f '#f))
               (_%K129041%_ _%e129010129038%_))
          (_%K129007129029%_ _%K129041%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx128863%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx128863%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx128833%_)
        (let* ((_%e128834128841%_ _%stx128833%_)
               (_%E128836128845%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128834128841%_)))
               (_%E128835128859%_
                (lambda ()
                  (if (gx#stx-pair? _%e128834128841%_)
                      (let ((_%e128837128849%_
                             (gx#syntax-e _%e128834128841%_)))
                        (let ((_%hd128838128852%_ (##car _%e128837128849%_))
                              (_%tl128839128854%_ (##cdr _%e128837128849%_)))
                          (let ((_%body128857%_ _%tl128839128854%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body128857%_)))))
                      (_%E128836128845%_)))))
          (_%E128835128859%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx128802%_)
        (let* ((_%e128803128810%_ _%stx128802%_)
               (_%E128805128814%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128803128810%_)))
               (_%E128804128829%_
                (lambda ()
                  (if (gx#stx-pair? _%e128803128810%_)
                      (let ((_%e128806128818%_
                             (gx#syntax-e _%e128803128810%_)))
                        (let ((_%hd128807128821%_ (##car _%e128806128818%_))
                              (_%tl128808128823%_ (##cdr _%e128806128818%_)))
                          (let ((_%body128826%_ _%tl128808128823%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body128826%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E128805128814%_)))))
          (_%E128804128829%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx128772%_)
        (let* ((_%e128773128780%_ _%stx128772%_)
               (_%E128775128784%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128773128780%_)))
               (_%E128774128798%_
                (lambda ()
                  (if (gx#stx-pair? _%e128773128780%_)
                      (let ((_%e128776128788%_
                             (gx#syntax-e _%e128773128780%_)))
                        (let ((_%hd128777128791%_ (##car _%e128776128788%_))
                              (_%tl128778128793%_ (##cdr _%e128776128788%_)))
                          (let ((_%body128796%_ _%tl128778128793%_))
                            (cons '%#begin-foreign _%body128796%_))))
                      (_%E128775128784%_)))))
          (_%E128774128798%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx128718%_)
        (let* ((_%e128719128732%_ _%stx128718%_)
               (_%E128721128736%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128719128732%_)))
               (_%E128720128768%_
                (lambda ()
                  (if (gx#stx-pair? _%e128719128732%_)
                      (let ((_%e128722128740%_
                             (gx#syntax-e _%e128719128732%_)))
                        (let ((_%hd128723128743%_ (##car _%e128722128740%_))
                              (_%tl128724128745%_ (##cdr _%e128722128740%_)))
                          (if (gx#stx-pair? _%tl128724128745%_)
                              (let ((_%e128725128748%_
                                     (gx#syntax-e _%tl128724128745%_)))
                                (let ((_%hd128726128751%_
                                       (##car _%e128725128748%_))
                                      (_%tl128727128753%_
                                       (##cdr _%e128725128748%_)))
                                  (let ((_%ann128756%_ _%hd128726128751%_))
                                    (if (gx#stx-pair? _%tl128727128753%_)
                                        (let ((_%e128728128758%_
                                               (gx#syntax-e
                                                _%tl128727128753%_)))
                                          (let ((_%hd128729128761%_
                                                 (##car _%e128728128758%_))
                                                (_%tl128730128763%_
                                                 (##cdr _%e128728128758%_)))
                                            (let ((_%expr128766%_
                                                   _%hd128729128761%_))
                                              (if (gx#stx-null?
                                                   _%tl128730128763%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr128766%_)
                                                  (_%E128721128736%_)))))
                                        (_%E128721128736%_)))))
                              (_%E128721128736%_))))
                      (_%E128721128736%_)))))
          (_%E128720128768%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx128688%_)
        (let* ((_%e128689128696%_ _%stx128688%_)
               (_%E128691128700%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128689128696%_)))
               (_%E128690128714%_
                (lambda ()
                  (if (gx#stx-pair? _%e128689128696%_)
                      (let ((_%e128692128704%_
                             (gx#syntax-e _%e128689128696%_)))
                        (let ((_%hd128693128707%_ (##car _%e128692128704%_))
                              (_%tl128694128709%_ (##cdr _%e128692128704%_)))
                          (let ((_%body128712%_ _%tl128694128709%_))
                            (cons '%#import _%body128712%_))))
                      (_%E128691128700%_)))))
          (_%E128690128714%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx128645%_)
        (let* ((_%e128646128656%_ _%stx128645%_)
               (_%E128648128660%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128646128656%_)))
               (_%E128647128684%_
                (lambda ()
                  (if (gx#stx-pair? _%e128646128656%_)
                      (let ((_%e128649128664%_
                             (gx#syntax-e _%e128646128656%_)))
                        (let ((_%hd128650128667%_ (##car _%e128649128664%_))
                              (_%tl128651128669%_ (##cdr _%e128649128664%_)))
                          (if (gx#stx-pair? _%tl128651128669%_)
                              (let ((_%e128652128672%_
                                     (gx#syntax-e _%tl128651128669%_)))
                                (let ((_%hd128653128675%_
                                       (##car _%e128652128672%_))
                                      (_%tl128654128677%_
                                       (##cdr _%e128652128672%_)))
                                  (let* ((_%hd128680%_ _%hd128653128675%_)
                                         (_%body128682%_ _%tl128654128677%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd128680%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body128682%_))))))
                              (_%E128648128660%_))))
                      (_%E128648128660%_)))))
          (_%E128647128684%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx128615%_)
        (let* ((_%e128616128623%_ _%stx128615%_)
               (_%E128618128627%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128616128623%_)))
               (_%E128617128641%_
                (lambda ()
                  (if (gx#stx-pair? _%e128616128623%_)
                      (let ((_%e128619128631%_
                             (gx#syntax-e _%e128616128623%_)))
                        (let ((_%hd128620128634%_ (##car _%e128619128631%_))
                              (_%tl128621128636%_ (##cdr _%e128619128631%_)))
                          (let ((_%body128639%_ _%tl128621128636%_))
                            (cons '%#export _%body128639%_))))
                      (_%E128618128627%_)))))
          (_%E128617128641%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx128585%_)
        (let* ((_%e128586128593%_ _%stx128585%_)
               (_%E128588128597%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128586128593%_)))
               (_%E128587128611%_
                (lambda ()
                  (if (gx#stx-pair? _%e128586128593%_)
                      (let ((_%e128589128601%_
                             (gx#syntax-e _%e128586128593%_)))
                        (let ((_%hd128590128604%_ (##car _%e128589128601%_))
                              (_%tl128591128606%_ (##cdr _%e128589128601%_)))
                          (let ((_%body128609%_ _%tl128591128606%_))
                            (cons '%#provide _%body128609%_))))
                      (_%E128588128597%_)))))
          (_%E128587128611%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx128555%_)
        (let* ((_%e128556128563%_ _%stx128555%_)
               (_%E128558128567%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128556128563%_)))
               (_%E128557128581%_
                (lambda ()
                  (if (gx#stx-pair? _%e128556128563%_)
                      (let ((_%e128559128571%_
                             (gx#syntax-e _%e128556128563%_)))
                        (let ((_%hd128560128574%_ (##car _%e128559128571%_))
                              (_%tl128561128576%_ (##cdr _%e128559128571%_)))
                          (let ((_%body128579%_ _%tl128561128576%_))
                            (cons '%#extern _%body128579%_))))
                      (_%E128558128567%_)))))
          (_%E128557128581%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx128501%_)
        (let* ((_%e128502128515%_ _%stx128501%_)
               (_%E128504128519%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128502128515%_)))
               (_%E128503128551%_
                (lambda ()
                  (if (gx#stx-pair? _%e128502128515%_)
                      (let ((_%e128505128523%_
                             (gx#syntax-e _%e128502128515%_)))
                        (let ((_%hd128506128526%_ (##car _%e128505128523%_))
                              (_%tl128507128528%_ (##cdr _%e128505128523%_)))
                          (if (gx#stx-pair? _%tl128507128528%_)
                              (let ((_%e128508128531%_
                                     (gx#syntax-e _%tl128507128528%_)))
                                (let ((_%hd128509128534%_
                                       (##car _%e128508128531%_))
                                      (_%tl128510128536%_
                                       (##cdr _%e128508128531%_)))
                                  (let ((_%hd128539%_ _%hd128509128534%_))
                                    (if (gx#stx-pair? _%tl128510128536%_)
                                        (let ((_%e128511128541%_
                                               (gx#syntax-e
                                                _%tl128510128536%_)))
                                          (let ((_%hd128512128544%_
                                                 (##car _%e128511128541%_))
                                                (_%tl128513128546%_
                                                 (##cdr _%e128511128541%_)))
                                            (let ((_%expr128549%_
                                                   _%hd128512128544%_))
                                              (if (gx#stx-null?
                                                   _%tl128513128546%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd128539%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr128549%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128504128519%_)))))
                                        (_%E128504128519%_)))))
                              (_%E128504128519%_))))
                      (_%E128504128519%_)))))
          (_%E128503128551%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx128446%_)
        (let* ((_%e128447128460%_ _%stx128446%_)
               (_%E128449128464%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128447128460%_)))
               (_%E128448128497%_
                (lambda ()
                  (if (gx#stx-pair? _%e128447128460%_)
                      (let ((_%e128450128468%_
                             (gx#syntax-e _%e128447128460%_)))
                        (let ((_%hd128451128471%_ (##car _%e128450128468%_))
                              (_%tl128452128473%_ (##cdr _%e128450128468%_)))
                          (if (gx#stx-pair? _%tl128452128473%_)
                              (let ((_%e128453128476%_
                                     (gx#syntax-e _%tl128452128473%_)))
                                (let ((_%hd128454128479%_
                                       (##car _%e128453128476%_))
                                      (_%tl128455128481%_
                                       (##cdr _%e128453128476%_)))
                                  (let ((_%hd128484%_ _%hd128454128479%_))
                                    (if (gx#stx-pair? _%tl128455128481%_)
                                        (let ((_%e128456128486%_
                                               (gx#syntax-e
                                                _%tl128455128481%_)))
                                          (let ((_%hd128457128489%_
                                                 (##car _%e128456128486%_))
                                                (_%tl128458128491%_
                                                 (##cdr _%e128456128486%_)))
                                            (let ((_%expr128494%_
                                                   _%hd128457128489%_))
                                              (if (gx#stx-null?
                                                   _%tl128458128491%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd128484%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr128494%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128449128464%_)))))
                                        (_%E128449128464%_)))))
                              (_%E128449128464%_))))
                      (_%E128449128464%_)))))
          (_%E128448128497%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx128416%_)
        (let* ((_%e128417128424%_ _%stx128416%_)
               (_%E128419128428%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128417128424%_)))
               (_%E128418128442%_
                (lambda ()
                  (if (gx#stx-pair? _%e128417128424%_)
                      (let ((_%e128420128432%_
                             (gx#syntax-e _%e128417128424%_)))
                        (let ((_%hd128421128435%_ (##car _%e128420128432%_))
                              (_%tl128422128437%_ (##cdr _%e128420128432%_)))
                          (let ((_%body128440%_ _%tl128422128437%_))
                            (cons '%#define-alias _%body128440%_))))
                      (_%E128419128428%_)))))
          (_%E128418128442%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx128386%_)
        (let* ((_%e128387128394%_ _%stx128386%_)
               (_%E128389128398%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128387128394%_)))
               (_%E128388128412%_
                (lambda ()
                  (if (gx#stx-pair? _%e128387128394%_)
                      (let ((_%e128390128402%_
                             (gx#syntax-e _%e128387128394%_)))
                        (let ((_%hd128391128405%_ (##car _%e128390128402%_))
                              (_%tl128392128407%_ (##cdr _%e128390128402%_)))
                          (let ((_%body128410%_ _%tl128392128407%_))
                            (cons '%#define-runtime _%body128410%_))))
                      (_%E128389128398%_)))))
          (_%E128388128412%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx128356%_)
        (let* ((_%e128357128364%_ _%stx128356%_)
               (_%E128359128368%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128357128364%_)))
               (_%E128358128382%_
                (lambda ()
                  (if (gx#stx-pair? _%e128357128364%_)
                      (let ((_%e128360128372%_
                             (gx#syntax-e _%e128357128364%_)))
                        (let ((_%hd128361128375%_ (##car _%e128360128372%_))
                              (_%tl128362128377%_ (##cdr _%e128360128372%_)))
                          (let ((_%decls128380%_ _%tl128362128377%_))
                            (cons '%#declare _%decls128380%_))))
                      (_%E128359128368%_)))))
          (_%E128358128382%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx128326%_)
        (let* ((_%e128327128334%_ _%stx128326%_)
               (_%E128329128338%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128327128334%_)))
               (_%E128328128352%_
                (lambda ()
                  (if (gx#stx-pair? _%e128327128334%_)
                      (let ((_%e128330128342%_
                             (gx#syntax-e _%e128327128334%_)))
                        (let ((_%hd128331128345%_ (##car _%e128330128342%_))
                              (_%tl128332128347%_ (##cdr _%e128330128342%_)))
                          (let ((_%clause128350%_ _%tl128332128347%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause128350%_)))))
                      (_%E128329128338%_)))))
          (_%E128328128352%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx128283%_)
        (let* ((_%e128284128294%_ _%stx128283%_)
               (_%E128286128298%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128284128294%_)))
               (_%E128285128322%_
                (lambda ()
                  (if (gx#stx-pair? _%e128284128294%_)
                      (let ((_%e128287128302%_
                             (gx#syntax-e _%e128284128294%_)))
                        (let ((_%hd128288128305%_ (##car _%e128287128302%_))
                              (_%tl128289128307%_ (##cdr _%e128287128302%_)))
                          (let ((_%hd128310%_ _%hd128288128305%_))
                            (if (gx#stx-pair? _%tl128289128307%_)
                                (let ((_%e128290128312%_
                                       (gx#syntax-e _%tl128289128307%_)))
                                  (let ((_%hd128291128315%_
                                         (##car _%e128290128312%_))
                                        (_%tl128292128317%_
                                         (##cdr _%e128290128312%_)))
                                    (let ((_%body128320%_ _%hd128291128315%_))
                                      (if (gx#stx-null? _%tl128292128317%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd128310%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body128320%_)
                                                      '()))
                                          (_%E128286128298%_)))))
                                (_%E128286128298%_)))))
                      (_%E128286128298%_)))))
          (_%E128285128322%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx128253%_)
        (let* ((_%e128254128261%_ _%stx128253%_)
               (_%E128256128265%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128254128261%_)))
               (_%E128255128279%_
                (lambda ()
                  (if (gx#stx-pair? _%e128254128261%_)
                      (let ((_%e128257128269%_
                             (gx#syntax-e _%e128254128261%_)))
                        (let ((_%hd128258128272%_ (##car _%e128257128269%_))
                              (_%tl128259128274%_ (##cdr _%e128257128269%_)))
                          (let ((_%clauses128277%_ _%tl128259128274%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses128277%_)))))
                      (_%E128256128265%_)))))
          (_%E128255128279%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx128188%_ _%form128189%_)
        (let* ((_%e128190128203%_ _%stx128188%_)
               (_%E128192128207%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128190128203%_)))
               (_%E128191128239%_
                (lambda ()
                  (if (gx#stx-pair? _%e128190128203%_)
                      (let ((_%e128193128211%_
                             (gx#syntax-e _%e128190128203%_)))
                        (let ((_%hd128194128214%_ (##car _%e128193128211%_))
                              (_%tl128195128216%_ (##cdr _%e128193128211%_)))
                          (if (gx#stx-pair? _%tl128195128216%_)
                              (let ((_%e128196128219%_
                                     (gx#syntax-e _%tl128195128216%_)))
                                (let ((_%hd128197128222%_
                                       (##car _%e128196128219%_))
                                      (_%tl128198128224%_
                                       (##cdr _%e128196128219%_)))
                                  (let ((_%hd128227%_ _%hd128197128222%_))
                                    (if (gx#stx-pair? _%tl128198128224%_)
                                        (let ((_%e128199128229%_
                                               (gx#syntax-e
                                                _%tl128198128224%_)))
                                          (let ((_%hd128200128232%_
                                                 (##car _%e128199128229%_))
                                                (_%tl128201128234%_
                                                 (##cdr _%e128199128229%_)))
                                            (let ((_%body128237%_
                                                   _%hd128200128232%_))
                                              (if (gx#stx-null?
                                                   _%tl128201128234%_)
                                                  (cons _%form128189%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd128227%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body128237%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E128192128207%_)))))
                                        (_%E128192128207%_)))))
                              (_%E128192128207%_))))
                      (_%E128192128207%_)))))
          (_%E128191128239%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx128246%_)
        (let ((_%form128248%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx128246%_ _%form128248%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g129075_
        (let ((_g129074_ (##length _g129075_)))
          (cond ((##fx= _g129074_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g129075_))
                ((##fx= _g129074_ 2)
                 (apply gx#core-compile-top-let-values%__% _g129075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g129075_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx128185%_)
        (gx#core-compile-top-let-values%__% _%stx128185%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx128183%_)
        (gx#core-compile-top-let-values%__% _%stx128183%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx128142%_)
        (let* ((_%e128143128153%_ _%stx128142%_)
               (_%E128145128157%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128143128153%_)))
               (_%E128144128179%_
                (lambda ()
                  (if (gx#stx-pair? _%e128143128153%_)
                      (let ((_%e128146128161%_
                             (gx#syntax-e _%e128143128153%_)))
                        (let ((_%hd128147128164%_ (##car _%e128146128161%_))
                              (_%tl128148128166%_ (##cdr _%e128146128161%_)))
                          (if (gx#stx-pair? _%tl128148128166%_)
                              (let ((_%e128149128169%_
                                     (gx#syntax-e _%tl128148128166%_)))
                                (let ((_%hd128150128172%_
                                       (##car _%e128149128169%_))
                                      (_%tl128151128174%_
                                       (##cdr _%e128149128169%_)))
                                  (let ((_%e128177%_ _%hd128150128172%_))
                                    (if (gx#stx-null? _%tl128151128174%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e128177%_)
                                                    '()))
                                        (_%E128145128157%_)))))
                              (_%E128145128157%_))))
                      (_%E128145128157%_)))))
          (_%E128144128179%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx128101%_)
        (let* ((_%e128102128112%_ _%stx128101%_)
               (_%E128104128116%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128102128112%_)))
               (_%E128103128138%_
                (lambda ()
                  (if (gx#stx-pair? _%e128102128112%_)
                      (let ((_%e128105128120%_
                             (gx#syntax-e _%e128102128112%_)))
                        (let ((_%hd128106128123%_ (##car _%e128105128120%_))
                              (_%tl128107128125%_ (##cdr _%e128105128120%_)))
                          (if (gx#stx-pair? _%tl128107128125%_)
                              (let ((_%e128108128128%_
                                     (gx#syntax-e _%tl128107128125%_)))
                                (let ((_%hd128109128131%_
                                       (##car _%e128108128128%_))
                                      (_%tl128110128133%_
                                       (##cdr _%e128108128128%_)))
                                  (let ((_%e128136%_ _%hd128109128131%_))
                                    (if (gx#stx-null? _%tl128110128133%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e128136%_)
                                                    '()))
                                        (_%E128104128116%_)))))
                              (_%E128104128116%_))))
                      (_%E128104128116%_)))))
          (_%E128103128138%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx128058%_)
        (let* ((_%e128059128069%_ _%stx128058%_)
               (_%E128061128073%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e128059128069%_)))
               (_%E128060128097%_
                (lambda ()
                  (if (gx#stx-pair? _%e128059128069%_)
                      (let ((_%e128062128077%_
                             (gx#syntax-e _%e128059128069%_)))
                        (let ((_%hd128063128080%_ (##car _%e128062128077%_))
                              (_%tl128064128082%_ (##cdr _%e128062128077%_)))
                          (if (gx#stx-pair? _%tl128064128082%_)
                              (let ((_%e128065128085%_
                                     (gx#syntax-e _%tl128064128082%_)))
                                (let ((_%hd128066128088%_
                                       (##car _%e128065128085%_))
                                      (_%tl128067128090%_
                                       (##cdr _%e128065128085%_)))
                                  (let* ((_%rator128093%_ _%hd128066128088%_)
                                         (_%args128095%_ _%tl128067128090%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator128093%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args128095%_))))))
                              (_%E128061128073%_))))
                      (_%E128061128073%_)))))
          (_%E128060128097%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx127991%_)
        (let* ((_%e127992128008%_ _%stx127991%_)
               (_%E127994128012%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127992128008%_)))
               (_%E127993128054%_
                (lambda ()
                  (if (gx#stx-pair? _%e127992128008%_)
                      (let ((_%e127995128016%_
                             (gx#syntax-e _%e127992128008%_)))
                        (let ((_%hd127996128019%_ (##car _%e127995128016%_))
                              (_%tl127997128021%_ (##cdr _%e127995128016%_)))
                          (if (gx#stx-pair? _%tl127997128021%_)
                              (let ((_%e127998128024%_
                                     (gx#syntax-e _%tl127997128021%_)))
                                (let ((_%hd127999128027%_
                                       (##car _%e127998128024%_))
                                      (_%tl128000128029%_
                                       (##cdr _%e127998128024%_)))
                                  (let ((_%test128032%_ _%hd127999128027%_))
                                    (if (gx#stx-pair? _%tl128000128029%_)
                                        (let ((_%e128001128034%_
                                               (gx#syntax-e
                                                _%tl128000128029%_)))
                                          (let ((_%hd128002128037%_
                                                 (##car _%e128001128034%_))
                                                (_%tl128003128039%_
                                                 (##cdr _%e128001128034%_)))
                                            (let ((_%K128042%_
                                                   _%hd128002128037%_))
                                              (if (gx#stx-pair?
                                                   _%tl128003128039%_)
                                                  (let ((_%e128004128044%_
                                                         (gx#syntax-e
                                                          _%tl128003128039%_)))
                                                    (let ((_%hd128005128047%_
                                                           (##car _%e128004128044%_))
                                                          (_%tl128006128049%_
                                                           (##cdr _%e128004128044%_)))
                                                      (let ((_%E128052%_
                                                             _%hd128005128047%_))
                                                        (if (gx#stx-null?
                                                             _%tl128006128049%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test128032%_)
                                (cons (gx#core-compile-top-syntax _%K128042%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E128052%_)
                                            '()))))
                    (_%E127994128012%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127994128012%_)))))
                                        (_%E127994128012%_)))))
                              (_%E127994128012%_))))
                      (_%E127994128012%_)))))
          (_%E127993128054%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx127950%_)
        (let* ((_%e127951127961%_ _%stx127950%_)
               (_%E127953127965%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127951127961%_)))
               (_%E127952127987%_
                (lambda ()
                  (if (gx#stx-pair? _%e127951127961%_)
                      (let ((_%e127954127969%_
                             (gx#syntax-e _%e127951127961%_)))
                        (let ((_%hd127955127972%_ (##car _%e127954127969%_))
                              (_%tl127956127974%_ (##cdr _%e127954127969%_)))
                          (if (gx#stx-pair? _%tl127956127974%_)
                              (let ((_%e127957127977%_
                                     (gx#syntax-e _%tl127956127974%_)))
                                (let ((_%hd127958127980%_
                                       (##car _%e127957127977%_))
                                      (_%tl127959127982%_
                                       (##cdr _%e127957127977%_)))
                                  (let ((_%id127985%_ _%hd127958127980%_))
                                    (if (gx#stx-null? _%tl127959127982%_)
                                        (if (gx#identifier? _%id127985%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id127985%_)
                                                        '()))
                                            (_%E127953127965%_))
                                        (_%E127953127965%_)))))
                              (_%E127953127965%_))))
                      (_%E127953127965%_)))))
          (_%E127952127987%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx127896%_)
        (let* ((_%e127897127910%_ _%stx127896%_)
               (_%E127899127914%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127897127910%_)))
               (_%E127898127946%_
                (lambda ()
                  (if (gx#stx-pair? _%e127897127910%_)
                      (let ((_%e127900127918%_
                             (gx#syntax-e _%e127897127910%_)))
                        (let ((_%hd127901127921%_ (##car _%e127900127918%_))
                              (_%tl127902127923%_ (##cdr _%e127900127918%_)))
                          (if (gx#stx-pair? _%tl127902127923%_)
                              (let ((_%e127903127926%_
                                     (gx#syntax-e _%tl127902127923%_)))
                                (let ((_%hd127904127929%_
                                       (##car _%e127903127926%_))
                                      (_%tl127905127931%_
                                       (##cdr _%e127903127926%_)))
                                  (let ((_%id127934%_ _%hd127904127929%_))
                                    (if (gx#stx-pair? _%tl127905127931%_)
                                        (let ((_%e127906127936%_
                                               (gx#syntax-e
                                                _%tl127905127931%_)))
                                          (let ((_%hd127907127939%_
                                                 (##car _%e127906127936%_))
                                                (_%tl127908127941%_
                                                 (##cdr _%e127906127936%_)))
                                            (let ((_%expr127944%_
                                                   _%hd127907127939%_))
                                              (if (gx#stx-null?
                                                   _%tl127908127941%_)
                                                  (if (gx#identifier?
                                                       _%id127934%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id127934%_)
                          (cons (gx#core-compile-top-syntax _%expr127944%_)
                                '())))
              (_%E127899127914%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E127899127914%_)))))
                                        (_%E127899127914%_)))))
                              (_%E127899127914%_))))
                      (_%E127899127914%_)))))
          (_%E127898127946%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id127890%_)
        (let ((_%$e127892%_ (gx#resolve-identifier__0 _%id127890%_)))
          (if _%$e127892%_
              (##unchecked-structure-ref _%$e127892%_ '1 '#f '#f)
              _%id127890%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd127888%_)
        (if (gx#identifier? _%hd127888%_)
            (gx#core-compile-top-runtime-ref _%hd127888%_)
            '#f)))))
