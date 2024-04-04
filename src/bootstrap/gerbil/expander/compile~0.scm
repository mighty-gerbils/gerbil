(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1712262514)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx127136%_)
        (let* ((_%e127137127144%_ _%stx127136%_)
               (_%E127139127148%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e127137127144%_)))
               (_%E127138127162%_
                (lambda ()
                  (if (gx#stx-pair? _%e127137127144%_)
                      (let ((_%e127140127152%_
                             (gx#syntax-e _%e127137127144%_)))
                        (let ((_%hd127141127155%_ (##car _%e127140127152%_))
                              (_%tl127142127157%_ (##cdr _%e127140127152%_)))
                          (let ((_%form127160%_ _%hd127141127155%_))
                            (if '#t
                                (let* ((__self127165
                                        (gx#syntax-local-e__0 _%form127160%_))
                                       (__method127166
                                        (__method-ref
                                         __self127165
                                         'compile-top-syntax)))
                                  (if __method127166
                                      (__method127166
                                       __self127165
                                       _%stx127136%_)
                                      (error '"Missing method"
                                             __self127165
                                             'compile-top-syntax)))
                                (_%E127139127148%_)))))
                      (_%E127139127148%_)))))
          (_%E127138127162%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self127084%_ _%stx127085%_)
        (let ((_%self127088%_ _%self127084%_))
          (let* ((_%self127097127105%_ _%self127088%_)
                 (_%E127099127109%_
                  (lambda ()
                    (error '"No clause matching"
                           _%self127097127105%_
                           '((core-expander _ _ K)))
                    '#!void))
                 (_%K127100127122%_
                  (lambda (_%K127112%_)
                    (let ((_%$e127114%_ (gx#stx-source _%stx127085%_)))
                      (if _%$e127114%_
                          ((lambda (_%g127116127118%_)
                             (gx#stx-wrap-source
                              (_%K127112%_ _%stx127085%_)
                              _%g127116127118%_))
                           _%$e127114%_)
                          (let () (_%K127112%_ _%stx127085%_)))))))
            (if '#t
                (let* ((_%e127101127125%_
                        (##unchecked-structure-ref
                         _%self127097127105%_
                         '1
                         '#f
                         '#f))
                       (_%e127102127128%_
                        (##unchecked-structure-ref
                         _%self127097127105%_
                         '2
                         '#f
                         '#f))
                       (_%e127103127131%_
                        (##unchecked-structure-ref
                         _%self127097127105%_
                         '3
                         '#f
                         '#f))
                       (_%K127134%_ _%e127103127131%_))
                  (_%K127100127122%_ _%K127134%_))
                (_%E127099127109%_))))))
    (__bind-method!
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx126958%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx126958%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx126928%_)
        (let* ((_%e126929126936%_ _%stx126928%_)
               (_%E126931126940%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126929126936%_)))
               (_%E126930126954%_
                (lambda ()
                  (if (gx#stx-pair? _%e126929126936%_)
                      (let ((_%e126932126944%_
                             (gx#syntax-e _%e126929126936%_)))
                        (let ((_%hd126933126947%_ (##car _%e126932126944%_))
                              (_%tl126934126949%_ (##cdr _%e126932126944%_)))
                          (let ((_%body126952%_ _%tl126934126949%_))
                            (if '#t
                                (cons '%#begin
                                      (gx#stx-map1
                                       gx#core-compile-top-syntax
                                       _%body126952%_))
                                (_%E126931126940%_)))))
                      (_%E126931126940%_)))))
          (_%E126930126954%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx126897%_)
        (let* ((_%e126898126905%_ _%stx126897%_)
               (_%E126900126909%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126898126905%_)))
               (_%E126899126924%_
                (lambda ()
                  (if (gx#stx-pair? _%e126898126905%_)
                      (let ((_%e126901126913%_
                             (gx#syntax-e _%e126898126905%_)))
                        (let ((_%hd126902126916%_ (##car _%e126901126913%_))
                              (_%tl126903126918%_ (##cdr _%e126901126913%_)))
                          (let ((_%body126921%_ _%tl126903126918%_))
                            (if '#t
                                (cons '%#begin-syntax
                                      (__call-with-parameters
                                       (lambda ()
                                         (gx#stx-map1
                                          gx#core-compile-top-syntax
                                          _%body126921%_))
                                       gx#current-expander-phi
                                       (##fx+ (gx#current-expander-phi) '1)))
                                (_%E126900126909%_)))))
                      (_%E126900126909%_)))))
          (_%E126899126924%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx126867%_)
        (let* ((_%e126868126875%_ _%stx126867%_)
               (_%E126870126879%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126868126875%_)))
               (_%E126869126893%_
                (lambda ()
                  (if (gx#stx-pair? _%e126868126875%_)
                      (let ((_%e126871126883%_
                             (gx#syntax-e _%e126868126875%_)))
                        (let ((_%hd126872126886%_ (##car _%e126871126883%_))
                              (_%tl126873126888%_ (##cdr _%e126871126883%_)))
                          (let ((_%body126891%_ _%tl126873126888%_))
                            (if '#t
                                (cons '%#begin-foreign _%body126891%_)
                                (_%E126870126879%_)))))
                      (_%E126870126879%_)))))
          (_%E126869126893%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx126813%_)
        (let* ((_%e126814126827%_ _%stx126813%_)
               (_%E126816126831%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126814126827%_)))
               (_%E126815126863%_
                (lambda ()
                  (if (gx#stx-pair? _%e126814126827%_)
                      (let ((_%e126817126835%_
                             (gx#syntax-e _%e126814126827%_)))
                        (let ((_%hd126818126838%_ (##car _%e126817126835%_))
                              (_%tl126819126840%_ (##cdr _%e126817126835%_)))
                          (if (gx#stx-pair? _%tl126819126840%_)
                              (let ((_%e126820126843%_
                                     (gx#syntax-e _%tl126819126840%_)))
                                (let ((_%hd126821126846%_
                                       (##car _%e126820126843%_))
                                      (_%tl126822126848%_
                                       (##cdr _%e126820126843%_)))
                                  (let ((_%ann126851%_ _%hd126821126846%_))
                                    (if (gx#stx-pair? _%tl126822126848%_)
                                        (let ((_%e126823126853%_
                                               (gx#syntax-e
                                                _%tl126822126848%_)))
                                          (let ((_%hd126824126856%_
                                                 (##car _%e126823126853%_))
                                                (_%tl126825126858%_
                                                 (##cdr _%e126823126853%_)))
                                            (let ((_%expr126861%_
                                                   _%hd126824126856%_))
                                              (if (gx#stx-null?
                                                   _%tl126825126858%_)
                                                  (if '#t
                                                      (gx#core-compile-top-syntax
                                                       _%expr126861%_)
                                                      (_%E126816126831%_))
                                                  (_%E126816126831%_)))))
                                        (_%E126816126831%_)))))
                              (_%E126816126831%_))))
                      (_%E126816126831%_)))))
          (_%E126815126863%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx126783%_)
        (let* ((_%e126784126791%_ _%stx126783%_)
               (_%E126786126795%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126784126791%_)))
               (_%E126785126809%_
                (lambda ()
                  (if (gx#stx-pair? _%e126784126791%_)
                      (let ((_%e126787126799%_
                             (gx#syntax-e _%e126784126791%_)))
                        (let ((_%hd126788126802%_ (##car _%e126787126799%_))
                              (_%tl126789126804%_ (##cdr _%e126787126799%_)))
                          (let ((_%body126807%_ _%tl126789126804%_))
                            (if '#t
                                (cons '%#import _%body126807%_)
                                (_%E126786126795%_)))))
                      (_%E126786126795%_)))))
          (_%E126785126809%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx126740%_)
        (let* ((_%e126741126751%_ _%stx126740%_)
               (_%E126743126755%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126741126751%_)))
               (_%E126742126779%_
                (lambda ()
                  (if (gx#stx-pair? _%e126741126751%_)
                      (let ((_%e126744126759%_
                             (gx#syntax-e _%e126741126751%_)))
                        (let ((_%hd126745126762%_ (##car _%e126744126759%_))
                              (_%tl126746126764%_ (##cdr _%e126744126759%_)))
                          (if (gx#stx-pair? _%tl126746126764%_)
                              (let ((_%e126747126767%_
                                     (gx#syntax-e _%tl126746126764%_)))
                                (let ((_%hd126748126770%_
                                       (##car _%e126747126767%_))
                                      (_%tl126749126772%_
                                       (##cdr _%e126747126767%_)))
                                  (let* ((_%hd126775%_ _%hd126748126770%_)
                                         (_%body126777%_ _%tl126749126772%_))
                                    (if '#t
                                        (cons '%#module
                                              (cons (##structure-ref
                                                     (gx#syntax-local-e__0
                                                      _%hd126775%_)
                                                     '1
                                                     gx#expander-context::t
                                                     '#f)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%body126777%_)))
                                        (_%E126743126755%_)))))
                              (_%E126743126755%_))))
                      (_%E126743126755%_)))))
          (_%E126742126779%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx126710%_)
        (let* ((_%e126711126718%_ _%stx126710%_)
               (_%E126713126722%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126711126718%_)))
               (_%E126712126736%_
                (lambda ()
                  (if (gx#stx-pair? _%e126711126718%_)
                      (let ((_%e126714126726%_
                             (gx#syntax-e _%e126711126718%_)))
                        (let ((_%hd126715126729%_ (##car _%e126714126726%_))
                              (_%tl126716126731%_ (##cdr _%e126714126726%_)))
                          (let ((_%body126734%_ _%tl126716126731%_))
                            (if '#t
                                (cons '%#export _%body126734%_)
                                (_%E126713126722%_)))))
                      (_%E126713126722%_)))))
          (_%E126712126736%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx126680%_)
        (let* ((_%e126681126688%_ _%stx126680%_)
               (_%E126683126692%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126681126688%_)))
               (_%E126682126706%_
                (lambda ()
                  (if (gx#stx-pair? _%e126681126688%_)
                      (let ((_%e126684126696%_
                             (gx#syntax-e _%e126681126688%_)))
                        (let ((_%hd126685126699%_ (##car _%e126684126696%_))
                              (_%tl126686126701%_ (##cdr _%e126684126696%_)))
                          (let ((_%body126704%_ _%tl126686126701%_))
                            (if '#t
                                (cons '%#provide _%body126704%_)
                                (_%E126683126692%_)))))
                      (_%E126683126692%_)))))
          (_%E126682126706%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx126650%_)
        (let* ((_%e126651126658%_ _%stx126650%_)
               (_%E126653126662%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126651126658%_)))
               (_%E126652126676%_
                (lambda ()
                  (if (gx#stx-pair? _%e126651126658%_)
                      (let ((_%e126654126666%_
                             (gx#syntax-e _%e126651126658%_)))
                        (let ((_%hd126655126669%_ (##car _%e126654126666%_))
                              (_%tl126656126671%_ (##cdr _%e126654126666%_)))
                          (let ((_%body126674%_ _%tl126656126671%_))
                            (if '#t
                                (cons '%#extern _%body126674%_)
                                (_%E126653126662%_)))))
                      (_%E126653126662%_)))))
          (_%E126652126676%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx126596%_)
        (let* ((_%e126597126610%_ _%stx126596%_)
               (_%E126599126614%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126597126610%_)))
               (_%E126598126646%_
                (lambda ()
                  (if (gx#stx-pair? _%e126597126610%_)
                      (let ((_%e126600126618%_
                             (gx#syntax-e _%e126597126610%_)))
                        (let ((_%hd126601126621%_ (##car _%e126600126618%_))
                              (_%tl126602126623%_ (##cdr _%e126600126618%_)))
                          (if (gx#stx-pair? _%tl126602126623%_)
                              (let ((_%e126603126626%_
                                     (gx#syntax-e _%tl126602126623%_)))
                                (let ((_%hd126604126629%_
                                       (##car _%e126603126626%_))
                                      (_%tl126605126631%_
                                       (##cdr _%e126603126626%_)))
                                  (let ((_%hd126634%_ _%hd126604126629%_))
                                    (if (gx#stx-pair? _%tl126605126631%_)
                                        (let ((_%e126606126636%_
                                               (gx#syntax-e
                                                _%tl126605126631%_)))
                                          (let ((_%hd126607126639%_
                                                 (##car _%e126606126636%_))
                                                (_%tl126608126641%_
                                                 (##cdr _%e126606126636%_)))
                                            (let ((_%expr126644%_
                                                   _%hd126607126639%_))
                                              (if (gx#stx-null?
                                                   _%tl126608126641%_)
                                                  (if '#t
                                                      (cons '%#define-values
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-runtime-bind
                           _%hd126634%_)
                          (cons (gx#core-compile-top-syntax _%expr126644%_)
                                '())))
              (_%E126599126614%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126599126614%_)))))
                                        (_%E126599126614%_)))))
                              (_%E126599126614%_))))
                      (_%E126599126614%_)))))
          (_%E126598126646%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx126541%_)
        (let* ((_%e126542126555%_ _%stx126541%_)
               (_%E126544126559%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126542126555%_)))
               (_%E126543126592%_
                (lambda ()
                  (if (gx#stx-pair? _%e126542126555%_)
                      (let ((_%e126545126563%_
                             (gx#syntax-e _%e126542126555%_)))
                        (let ((_%hd126546126566%_ (##car _%e126545126563%_))
                              (_%tl126547126568%_ (##cdr _%e126545126563%_)))
                          (if (gx#stx-pair? _%tl126547126568%_)
                              (let ((_%e126548126571%_
                                     (gx#syntax-e _%tl126547126568%_)))
                                (let ((_%hd126549126574%_
                                       (##car _%e126548126571%_))
                                      (_%tl126550126576%_
                                       (##cdr _%e126548126571%_)))
                                  (let ((_%hd126579%_ _%hd126549126574%_))
                                    (if (gx#stx-pair? _%tl126550126576%_)
                                        (let ((_%e126551126581%_
                                               (gx#syntax-e
                                                _%tl126550126576%_)))
                                          (let ((_%hd126552126584%_
                                                 (##car _%e126551126581%_))
                                                (_%tl126553126586%_
                                                 (##cdr _%e126551126581%_)))
                                            (let ((_%expr126589%_
                                                   _%hd126552126584%_))
                                              (if (gx#stx-null?
                                                   _%tl126553126586%_)
                                                  (if '#t
                                                      (cons '%#define-syntax
                                                            (cons _%hd126579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (__call-with-parameters
                                 (lambda ()
                                   (gx#core-compile-top-syntax _%expr126589%_))
                                 gx#current-expander-phi
                                 (##fx+ (gx#current-expander-phi) '1))
                                '())))
              (_%E126544126559%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126544126559%_)))))
                                        (_%E126544126559%_)))))
                              (_%E126544126559%_))))
                      (_%E126544126559%_)))))
          (_%E126543126592%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx126511%_)
        (let* ((_%e126512126519%_ _%stx126511%_)
               (_%E126514126523%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126512126519%_)))
               (_%E126513126537%_
                (lambda ()
                  (if (gx#stx-pair? _%e126512126519%_)
                      (let ((_%e126515126527%_
                             (gx#syntax-e _%e126512126519%_)))
                        (let ((_%hd126516126530%_ (##car _%e126515126527%_))
                              (_%tl126517126532%_ (##cdr _%e126515126527%_)))
                          (let ((_%body126535%_ _%tl126517126532%_))
                            (if '#t
                                (cons '%#define-alias _%body126535%_)
                                (_%E126514126523%_)))))
                      (_%E126514126523%_)))))
          (_%E126513126537%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx126481%_)
        (let* ((_%e126482126489%_ _%stx126481%_)
               (_%E126484126493%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126482126489%_)))
               (_%E126483126507%_
                (lambda ()
                  (if (gx#stx-pair? _%e126482126489%_)
                      (let ((_%e126485126497%_
                             (gx#syntax-e _%e126482126489%_)))
                        (let ((_%hd126486126500%_ (##car _%e126485126497%_))
                              (_%tl126487126502%_ (##cdr _%e126485126497%_)))
                          (let ((_%body126505%_ _%tl126487126502%_))
                            (if '#t
                                (cons '%#define-runtime _%body126505%_)
                                (_%E126484126493%_)))))
                      (_%E126484126493%_)))))
          (_%E126483126507%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx126451%_)
        (let* ((_%e126452126459%_ _%stx126451%_)
               (_%E126454126463%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126452126459%_)))
               (_%E126453126477%_
                (lambda ()
                  (if (gx#stx-pair? _%e126452126459%_)
                      (let ((_%e126455126467%_
                             (gx#syntax-e _%e126452126459%_)))
                        (let ((_%hd126456126470%_ (##car _%e126455126467%_))
                              (_%tl126457126472%_ (##cdr _%e126455126467%_)))
                          (let ((_%decls126475%_ _%tl126457126472%_))
                            (if '#t
                                (cons '%#declare _%decls126475%_)
                                (_%E126454126463%_)))))
                      (_%E126454126463%_)))))
          (_%E126453126477%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx126421%_)
        (let* ((_%e126422126429%_ _%stx126421%_)
               (_%E126424126433%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126422126429%_)))
               (_%E126423126447%_
                (lambda ()
                  (if (gx#stx-pair? _%e126422126429%_)
                      (let ((_%e126425126437%_
                             (gx#syntax-e _%e126422126429%_)))
                        (let ((_%hd126426126440%_ (##car _%e126425126437%_))
                              (_%tl126427126442%_ (##cdr _%e126425126437%_)))
                          (let ((_%clause126445%_ _%tl126427126442%_))
                            (if '#t
                                (cons '%#lambda
                                      (gx#core-compile-top-lambda-clause
                                       _%clause126445%_))
                                (_%E126424126433%_)))))
                      (_%E126424126433%_)))))
          (_%E126423126447%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx126378%_)
        (let* ((_%e126379126389%_ _%stx126378%_)
               (_%E126381126393%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126379126389%_)))
               (_%E126380126417%_
                (lambda ()
                  (if (gx#stx-pair? _%e126379126389%_)
                      (let ((_%e126382126397%_
                             (gx#syntax-e _%e126379126389%_)))
                        (let ((_%hd126383126400%_ (##car _%e126382126397%_))
                              (_%tl126384126402%_ (##cdr _%e126382126397%_)))
                          (let ((_%hd126405%_ _%hd126383126400%_))
                            (if (gx#stx-pair? _%tl126384126402%_)
                                (let ((_%e126385126407%_
                                       (gx#syntax-e _%tl126384126402%_)))
                                  (let ((_%hd126386126410%_
                                         (##car _%e126385126407%_))
                                        (_%tl126387126412%_
                                         (##cdr _%e126385126407%_)))
                                    (let ((_%body126415%_ _%hd126386126410%_))
                                      (if (gx#stx-null? _%tl126387126412%_)
                                          (if '#t
                                              (cons (gx#stx-map1
                                                     gx#core-compile-top-runtime-bind
                                                     _%hd126405%_)
                                                    (cons (gx#core-compile-top-syntax
                                                           _%body126415%_)
                                                          '()))
                                              (_%E126381126393%_))
                                          (_%E126381126393%_)))))
                                (_%E126381126393%_)))))
                      (_%E126381126393%_)))))
          (_%E126380126417%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx126348%_)
        (let* ((_%e126349126356%_ _%stx126348%_)
               (_%E126351126360%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126349126356%_)))
               (_%E126350126374%_
                (lambda ()
                  (if (gx#stx-pair? _%e126349126356%_)
                      (let ((_%e126352126364%_
                             (gx#syntax-e _%e126349126356%_)))
                        (let ((_%hd126353126367%_ (##car _%e126352126364%_))
                              (_%tl126354126369%_ (##cdr _%e126352126364%_)))
                          (let ((_%clauses126372%_ _%tl126354126369%_))
                            (if '#t
                                (cons '%#case-lambda
                                      (gx#stx-map1
                                       gx#core-compile-top-lambda-clause
                                       _%clauses126372%_))
                                (_%E126351126360%_)))))
                      (_%E126351126360%_)))))
          (_%E126350126374%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx126283%_ _%form126284%_)
        (let* ((_%e126285126298%_ _%stx126283%_)
               (_%E126287126302%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126285126298%_)))
               (_%E126286126334%_
                (lambda ()
                  (if (gx#stx-pair? _%e126285126298%_)
                      (let ((_%e126288126306%_
                             (gx#syntax-e _%e126285126298%_)))
                        (let ((_%hd126289126309%_ (##car _%e126288126306%_))
                              (_%tl126290126311%_ (##cdr _%e126288126306%_)))
                          (if (gx#stx-pair? _%tl126290126311%_)
                              (let ((_%e126291126314%_
                                     (gx#syntax-e _%tl126290126311%_)))
                                (let ((_%hd126292126317%_
                                       (##car _%e126291126314%_))
                                      (_%tl126293126319%_
                                       (##cdr _%e126291126314%_)))
                                  (let ((_%hd126322%_ _%hd126292126317%_))
                                    (if (gx#stx-pair? _%tl126293126319%_)
                                        (let ((_%e126294126324%_
                                               (gx#syntax-e
                                                _%tl126293126319%_)))
                                          (let ((_%hd126295126327%_
                                                 (##car _%e126294126324%_))
                                                (_%tl126296126329%_
                                                 (##cdr _%e126294126324%_)))
                                            (let ((_%body126332%_
                                                   _%hd126295126327%_))
                                              (if (gx#stx-null?
                                                   _%tl126296126329%_)
                                                  (if '#t
                                                      (cons _%form126284%_
                                                            (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           gx#core-compile-top-lambda-clause
                           _%hd126322%_)
                          (cons (gx#core-compile-top-syntax _%body126332%_)
                                '())))
              (_%E126287126302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126287126302%_)))))
                                        (_%E126287126302%_)))))
                              (_%E126287126302%_))))
                      (_%E126287126302%_)))))
          (_%E126286126334%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx126341%_)
        (let ((_%form126343%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx126341%_ _%form126343%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g127168_
        (let ((_g127167_ (##length _g127168_)))
          (cond ((##fx= _g127167_ 1)
                 (apply (lambda (_%stx126341%_)
                          (gx#core-compile-top-let-values%__0 _%stx126341%_))
                        _g127168_))
                ((##fx= _g127167_ 2)
                 (apply (lambda (_%stx126345%_ _%form126346%_)
                          (gx#core-compile-top-let-values%__%
                           _%stx126345%_
                           _%form126346%_))
                        _g127168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g127168_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx126280%_)
        (gx#core-compile-top-let-values%__% _%stx126280%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx126278%_)
        (gx#core-compile-top-let-values%__% _%stx126278%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx126237%_)
        (let* ((_%e126238126248%_ _%stx126237%_)
               (_%E126240126252%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126238126248%_)))
               (_%E126239126274%_
                (lambda ()
                  (if (gx#stx-pair? _%e126238126248%_)
                      (let ((_%e126241126256%_
                             (gx#syntax-e _%e126238126248%_)))
                        (let ((_%hd126242126259%_ (##car _%e126241126256%_))
                              (_%tl126243126261%_ (##cdr _%e126241126256%_)))
                          (if (gx#stx-pair? _%tl126243126261%_)
                              (let ((_%e126244126264%_
                                     (gx#syntax-e _%tl126243126261%_)))
                                (let ((_%hd126245126267%_
                                       (##car _%e126244126264%_))
                                      (_%tl126246126269%_
                                       (##cdr _%e126244126264%_)))
                                  (let ((_%e126272%_ _%hd126245126267%_))
                                    (if (gx#stx-null? _%tl126246126269%_)
                                        (if '#t
                                            (cons '%#quote
                                                  (cons (gx#syntax->datum
                                                         _%e126272%_)
                                                        '()))
                                            (_%E126240126252%_))
                                        (_%E126240126252%_)))))
                              (_%E126240126252%_))))
                      (_%E126240126252%_)))))
          (_%E126239126274%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx126196%_)
        (let* ((_%e126197126207%_ _%stx126196%_)
               (_%E126199126211%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126197126207%_)))
               (_%E126198126233%_
                (lambda ()
                  (if (gx#stx-pair? _%e126197126207%_)
                      (let ((_%e126200126215%_
                             (gx#syntax-e _%e126197126207%_)))
                        (let ((_%hd126201126218%_ (##car _%e126200126215%_))
                              (_%tl126202126220%_ (##cdr _%e126200126215%_)))
                          (if (gx#stx-pair? _%tl126202126220%_)
                              (let ((_%e126203126223%_
                                     (gx#syntax-e _%tl126202126220%_)))
                                (let ((_%hd126204126226%_
                                       (##car _%e126203126223%_))
                                      (_%tl126205126228%_
                                       (##cdr _%e126203126223%_)))
                                  (let ((_%e126231%_ _%hd126204126226%_))
                                    (if (gx#stx-null? _%tl126205126228%_)
                                        (if '#t
                                            (cons '%#quote-syntax
                                                  (cons (gx#core-quote-syntax__0
                                                         _%e126231%_)
                                                        '()))
                                            (_%E126199126211%_))
                                        (_%E126199126211%_)))))
                              (_%E126199126211%_))))
                      (_%E126199126211%_)))))
          (_%E126198126233%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx126153%_)
        (let* ((_%e126154126164%_ _%stx126153%_)
               (_%E126156126168%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126154126164%_)))
               (_%E126155126192%_
                (lambda ()
                  (if (gx#stx-pair? _%e126154126164%_)
                      (let ((_%e126157126172%_
                             (gx#syntax-e _%e126154126164%_)))
                        (let ((_%hd126158126175%_ (##car _%e126157126172%_))
                              (_%tl126159126177%_ (##cdr _%e126157126172%_)))
                          (if (gx#stx-pair? _%tl126159126177%_)
                              (let ((_%e126160126180%_
                                     (gx#syntax-e _%tl126159126177%_)))
                                (let ((_%hd126161126183%_
                                       (##car _%e126160126180%_))
                                      (_%tl126162126185%_
                                       (##cdr _%e126160126180%_)))
                                  (let* ((_%rator126188%_ _%hd126161126183%_)
                                         (_%args126190%_ _%tl126162126185%_))
                                    (if '#t
                                        (cons '%#call
                                              (cons (gx#core-compile-top-syntax
                                                     _%rator126188%_)
                                                    (gx#stx-map1
                                                     gx#core-compile-top-syntax
                                                     _%args126190%_)))
                                        (_%E126156126168%_)))))
                              (_%E126156126168%_))))
                      (_%E126156126168%_)))))
          (_%E126155126192%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx126086%_)
        (let* ((_%e126087126103%_ _%stx126086%_)
               (_%E126089126107%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126087126103%_)))
               (_%E126088126149%_
                (lambda ()
                  (if (gx#stx-pair? _%e126087126103%_)
                      (let ((_%e126090126111%_
                             (gx#syntax-e _%e126087126103%_)))
                        (let ((_%hd126091126114%_ (##car _%e126090126111%_))
                              (_%tl126092126116%_ (##cdr _%e126090126111%_)))
                          (if (gx#stx-pair? _%tl126092126116%_)
                              (let ((_%e126093126119%_
                                     (gx#syntax-e _%tl126092126116%_)))
                                (let ((_%hd126094126122%_
                                       (##car _%e126093126119%_))
                                      (_%tl126095126124%_
                                       (##cdr _%e126093126119%_)))
                                  (let ((_%test126127%_ _%hd126094126122%_))
                                    (if (gx#stx-pair? _%tl126095126124%_)
                                        (let ((_%e126096126129%_
                                               (gx#syntax-e
                                                _%tl126095126124%_)))
                                          (let ((_%hd126097126132%_
                                                 (##car _%e126096126129%_))
                                                (_%tl126098126134%_
                                                 (##cdr _%e126096126129%_)))
                                            (let ((_%K126137%_
                                                   _%hd126097126132%_))
                                              (if (gx#stx-pair?
                                                   _%tl126098126134%_)
                                                  (let ((_%e126099126139%_
                                                         (gx#syntax-e
                                                          _%tl126098126134%_)))
                                                    (let ((_%hd126100126142%_
                                                           (##car _%e126099126139%_))
                                                          (_%tl126101126144%_
                                                           (##cdr _%e126099126139%_)))
                                                      (let ((_%E126147%_
                                                             _%hd126100126142%_))
                                                        (if (gx#stx-null?
                                                             _%tl126101126144%_)
                                                            (if '#t
                                                                (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#core-compile-top-syntax _%test126127%_)
                                    (cons (gx#core-compile-top-syntax
                                           _%K126137%_)
                                          (cons (gx#core-compile-top-syntax
                                                 _%E126147%_)
                                                '()))))
                        (_%E126089126107%_))
                    (_%E126089126107%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E126089126107%_)))))
                                        (_%E126089126107%_)))))
                              (_%E126089126107%_))))
                      (_%E126089126107%_)))))
          (_%E126088126149%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx126045%_)
        (let* ((_%e126046126056%_ _%stx126045%_)
               (_%E126048126060%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e126046126056%_)))
               (_%E126047126082%_
                (lambda ()
                  (if (gx#stx-pair? _%e126046126056%_)
                      (let ((_%e126049126064%_
                             (gx#syntax-e _%e126046126056%_)))
                        (let ((_%hd126050126067%_ (##car _%e126049126064%_))
                              (_%tl126051126069%_ (##cdr _%e126049126064%_)))
                          (if (gx#stx-pair? _%tl126051126069%_)
                              (let ((_%e126052126072%_
                                     (gx#syntax-e _%tl126051126069%_)))
                                (let ((_%hd126053126075%_
                                       (##car _%e126052126072%_))
                                      (_%tl126054126077%_
                                       (##cdr _%e126052126072%_)))
                                  (let ((_%id126080%_ _%hd126053126075%_))
                                    (if (gx#stx-null? _%tl126054126077%_)
                                        (if (gx#identifier? _%id126080%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id126080%_)
                                                        '()))
                                            (_%E126048126060%_))
                                        (_%E126048126060%_)))))
                              (_%E126048126060%_))))
                      (_%E126048126060%_)))))
          (_%E126047126082%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx125991%_)
        (let* ((_%e125992126005%_ _%stx125991%_)
               (_%E125994126009%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e125992126005%_)))
               (_%E125993126041%_
                (lambda ()
                  (if (gx#stx-pair? _%e125992126005%_)
                      (let ((_%e125995126013%_
                             (gx#syntax-e _%e125992126005%_)))
                        (let ((_%hd125996126016%_ (##car _%e125995126013%_))
                              (_%tl125997126018%_ (##cdr _%e125995126013%_)))
                          (if (gx#stx-pair? _%tl125997126018%_)
                              (let ((_%e125998126021%_
                                     (gx#syntax-e _%tl125997126018%_)))
                                (let ((_%hd125999126024%_
                                       (##car _%e125998126021%_))
                                      (_%tl126000126026%_
                                       (##cdr _%e125998126021%_)))
                                  (let ((_%id126029%_ _%hd125999126024%_))
                                    (if (gx#stx-pair? _%tl126000126026%_)
                                        (let ((_%e126001126031%_
                                               (gx#syntax-e
                                                _%tl126000126026%_)))
                                          (let ((_%hd126002126034%_
                                                 (##car _%e126001126031%_))
                                                (_%tl126003126036%_
                                                 (##cdr _%e126001126031%_)))
                                            (let ((_%expr126039%_
                                                   _%hd126002126034%_))
                                              (if (gx#stx-null?
                                                   _%tl126003126036%_)
                                                  (if (gx#identifier?
                                                       _%id126029%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id126029%_)
                          (cons (gx#core-compile-top-syntax _%expr126039%_)
                                '())))
              (_%E125994126009%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E125994126009%_)))))
                                        (_%E125994126009%_)))))
                              (_%E125994126009%_))))
                      (_%E125994126009%_)))))
          (_%E125993126041%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id125985%_)
        (let ((_%$e125987%_ (gx#resolve-identifier__0 _%id125985%_)))
          (if _%$e125987%_
              (##unchecked-structure-ref _%$e125987%_ '1 '#f '#f)
              (let () _%id125985%_)))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd125983%_)
        (if (gx#identifier? _%hd125983%_)
            (gx#core-compile-top-runtime-ref _%hd125983%_)
            '#f)))))
